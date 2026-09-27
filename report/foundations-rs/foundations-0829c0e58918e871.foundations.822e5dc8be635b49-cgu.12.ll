Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsf_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_4RecvNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17041
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17042 ; 2 uses
  %i.d = load atomic i8, ptr %i.c acquire, align 8, !dbg !17043
  %.not = icmp eq i8 %i.d, 0, !dbg !17044
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !17045

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.h, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  ret void, !dbg !17046

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !dbg !17031, !nonnull !465, !align !617, !noundef !465
  %i.f = load ptr, ptr %i.e, align 8, !dbg !17047, !nonnull !465, !noundef !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17048
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !17048
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g), !dbg !17049
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17050
  %i.i = load ptr, ptr %i.h, align 8, !dbg !17050, !nonnull !465, !align !617 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17050
  %i.k = load i8, ptr %i.j, align 8, !dbg !17050, !range !537 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17051
  %i.l = load atomic i8, ptr %i.c monotonic, align 8, !dbg !17052
  %.not1 = icmp eq i8 %i.l, 0, !dbg !17053
  br i1 %.not1, label %bb.d, label %bb.i, !dbg !17054

bb.c:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.i, i8 %i.k) #31
          to label %bb.k unwind label %bb.j, !dbg !17055

bb.d:                                             ; preds = %bb.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4, !dbg !17056
  %i.o = trunc nuw i8 %i.k to i1, !dbg !17057
  br i1 %i.o, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.e, !dbg !17057

bb.e:                                             ; preds = %bb.d
  %i.p = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17058
  %i.q = and i64 %i.p, 9223372036854775807, !dbg !17059
  %i.r = icmp eq i64 %i.q, 0, !dbg !17059
  br i1 %i.r, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f, !dbg !17059, !prof !468

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33, !dbg !17060
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g, !dbg !17061

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.n monotonic, align 4, !dbg !17062
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !17063

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.t = atomicrmw xchg ptr %i.i, i32 0 release, align 4, !dbg !17064
  %i.u = icmp eq i32 %i.t, 2, !dbg !17065
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailEECsbaWXNhtWAp9_11foundations.exit, !dbg !17065, !prof !527

bb.h:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.i), !dbg !17066
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast4TailEECsbaWXNhtWAp9_11foundations.exit, !dbg !17066

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !17067
  %i.w = invoke noundef ptr @_RNvMs2_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync9broadcast6WaiterE6removeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.c, !dbg !17068 ; 0 uses

bb.j:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !17069
  unreachable, !dbg !17069

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m, !dbg !17069
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtNtNtCsaCYLheajBls_5hyper5proto2h16decodeNtB5_14IncompleteBodyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17070 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 14), !dbg !17072
  ret i1 %i.a, !dbg !17073
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpscINtB5_9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2i_5boxed3BoxDNtNtB1H_5error5ErrorNtNtB1H_6marker4SendNtB3w_4SyncEL_EEEENtNtB1H_3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17074 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17076
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 9), !dbg !17077
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !17078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17079
  ret i1 %i.b, !dbg !17080
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCsaL1QbXo9JQH_3std4sync4mpscINtB5_9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2i_5boxed3BoxDNtNtB1H_5error5ErrorNtNtB1H_6marker4SendNtB3w_4SyncEL_EEEENtNtB1H_3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17081 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 27, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17083
  ret i1 %i.a, !dbg !17084
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsl_NtCs3oUPovFnLWP_4core3fmtPNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6WaiterNtB5_7Pointer3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17085 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17091, !noundef !465
  %i.b = ptrtoint ptr %i.a to i64, !dbg !17092
  %i.c = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17093
  ret i1 %i.c, !dbg !17094
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !388 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17095, !nonnull !465, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17095
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17095, !nonnull !465, !align !617, !noundef !465
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !17096
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17096, !invariant.load !465, !nonnull !465
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #37, !dbg !17096
  ret i1 %i.f, !dbg !17097
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtB7_6string6StringENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17098 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17102, !nonnull !465, !noundef !465 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !17103
  %.val = load ptr, ptr %i.b, align 8, !dbg !17103, !nonnull !465, !noundef !465
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !17103
  %.val1 = load i64, ptr %i.c, align 8, !dbg !17103, !noundef !465
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17104
  ret i1 %i.d, !dbg !17105
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtBM_3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17106 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17107, !nonnull !465, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17107
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17107, !nonnull !465, !align !617, !noundef !465
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCs3oUPovFnLWP_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17108
  ret i1 %i.d, !dbg !17109
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3fmt5DebugEL_EBI_3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !17110 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17111, !nonnull !465, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17111
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17111, !nonnull !465, !align !617, !noundef !465
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !17112
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17112, !invariant.load !465, !nonnull !465
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #37, !dbg !17112
  ret i1 %i.f, !dbg !17113
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !387 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17114, !nonnull !465, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17114
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17114, !nonnull !465, !align !617, !noundef !465
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !17115
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17115, !invariant.load !465, !nonnull !465
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #37, !dbg !17115
  ret i1 %i.f, !dbg !17116
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCsfUalJnHtWpm_5tonic6statusNtB5_12ConnectErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17117 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17119
  store ptr %0, ptr %i.a, align 8, !dbg !17119
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @276), !dbg !17120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17121
  ret i1 %i.b, !dbg !17122
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs2NttipCe0aR_5prost5errorNtB5_11EncodeErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17123 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17127
  store ptr %i.b, ptr %i.a, align 8, !dbg !17127
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 8, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @278), !dbg !17128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17129
  ret i1 %i.c, !dbg !17130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs74LoFwSioHw_4http3uriNtB5_10InvalidUriNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17131 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17133
  store ptr %0, ptr %i.a, align 8, !dbg !17133
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @282), !dbg !17134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17135
  ret i1 %i.b, !dbg !17136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17137 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17139 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @285, i64 16, i1 false), !dbg !17142
  ret void, !dbg !17143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtB1u_5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17144 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtB1u_5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17146 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @286, i64 16, i1 false), !dbg !17149
  ret void, !dbg !17150
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17151 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17152
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17153 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @287, i64 16, i1 false), !dbg !17156
  ret void, !dbg !17157
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17158 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17160 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @288, i64 16, i1 false), !dbg !17163
  ret void, !dbg !17164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17165 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17167 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @289, i64 16, i1 false), !dbg !17170
  ret void, !dbg !17171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17172 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17173
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17174 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @290, i64 16, i1 false), !dbg !17177
  ret void, !dbg !17178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1K_5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17179 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17180
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1K_5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17181 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @291, i64 16, i1 false), !dbg !17184
  ret void, !dbg !17185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17186 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17188 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @292, i64 16, i1 false), !dbg !17191
  ret void, !dbg !17192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17193 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17195 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @293, i64 16, i1 false), !dbg !17198
  ret void, !dbg !17199
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17200 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17202 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @294, i64 16, i1 false), !dbg !17205
  ret void, !dbg !17206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17207 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17209 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @295, i64 16, i1 false), !dbg !17212
  ret void, !dbg !17213
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17214 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17215
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17216 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @296, i64 16, i1 false), !dbg !17219
  ret void, !dbg !17220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17221 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17222
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17223 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @297, i64 16, i1 false), !dbg !17226
  ret void, !dbg !17227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs74LoFwSioHw_4http3uri10InvalidUriENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17228 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17229
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs74LoFwSioHw_4http3uri10InvalidUriENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17230 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @298, i64 16, i1 false), !dbg !17233
  ret void, !dbg !17234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17235 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17237 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @299, i64 16, i1 false), !dbg !17240
  ret void, !dbg !17241
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17242 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17243
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow5error9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17244 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @300, i64 16, i1 false), !dbg !17247
  ret void, !dbg !17248
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17249 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17251 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17253 {
bb.a:
  ret void, !dbg !17254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17255 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @301, i64 16, i1 false), !dbg !17258
  ret void, !dbg !17259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17260 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17262 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17264 {
bb.a:
  ret void, !dbg !17265
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs7XllS0bOcsN_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17266 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @302, i64 16, i1 false), !dbg !17269
  ret void, !dbg !17270
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs8QTyv2gZm5j_5bytes3buf4take4TakeQINtNtCsefgzIPu8p8D_14http_body_util4util7BufListNtNtB9_5bytes5BytesEENtNtB7_8buf_impl3Buf13has_remainingCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17271 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17282), !dbg !17283
  %.val.i = load ptr, ptr %0, align 8, !dbg !17284, !alias.scope !17282, !nonnull !465, !align !617, !noundef !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17285, !noalias !17282
  call void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE4iterCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i), !dbg !17285, !noalias !17282
  %i.b = call noundef i64 @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCsefgzIPu8p8D_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 0), !dbg !17286, !noalias !17282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17287, !noalias !17282
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17288
  %i.d = load i64, ptr %i.c, align 8, !dbg !17288, !alias.scope !17282, !noundef !465
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b), !dbg !17289
  %i.e = icmp ne i64 %..i.i, 0, !dbg !17290
  ret i1 %i.e, !dbg !17291
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs8QTyv2gZm5j_5bytes3buf4take4TakeQINtNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtB9_5bytes5BytesEEENtNtB7_8buf_impl3Buf13has_remainingCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17292 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17299), !dbg !17300
  %.val.i = load ptr, ptr %0, align 8, !dbg !17301, !alias.scope !17299, !nonnull !465, !align !617, !noundef !465
  %i.a = tail call noundef i64 @_RNvXs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf9remainingCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %.val.i), !dbg !17302, !noalias !17299
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17303
  %i.c = load i64, ptr %i.b, align 8, !dbg !17303, !alias.scope !17299, !noundef !465
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.a), !dbg !17304
  %i.d = icmp ne i64 %..i.i, 0, !dbg !17305
  ret i1 %i.d, !dbg !17306
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs8QTyv2gZm5j_5bytes3buf4take4TakeQQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufENtNtB7_8buf_impl3Buf13has_remainingCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !17307 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17316), !dbg !17317
  %.val.i = load ptr, ptr %0, align 8, !dbg !17318, !alias.scope !17316, !nonnull !465, !align !617, !noundef !465
  %.val.i.i = load ptr, ptr %.val.i, align 8, !dbg !17319, !noalias !17316, !nonnull !465, !align !617, !noundef !465
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !dbg !17320, !noalias !17316, !nonnull !465, !align !617, !noundef !465
  %i.a = getelementptr i8, ptr %.val.i.i.i, i64 8, !dbg !17321
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !17321, !noalias !17316, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17322
  %i.c = load i64, ptr %i.b, align 8, !dbg !17322, !alias.scope !17316, !noundef !465
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i.i.i), !dbg !17323
  %i.d = icmp ne i64 %..i.i, 0, !dbg !17324
  ret i1 %i.d, !dbg !17325
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs8QTyv2gZm5j_5bytes3buf4take4TakeQRShENtNtB7_8buf_impl3Buf13has_remainingCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !17326 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17333), !dbg !17334
  %.val.i = load ptr, ptr %0, align 8, !dbg !17335, !alias.scope !17333, !nonnull !465, !align !617, !noundef !465
  %i.a = getelementptr i8, ptr %.val.i, i64 8, !dbg !17336
  %.val.i.i = load i64, ptr %i.a, align 8, !dbg !17336, !noalias !17333, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17337
  %i.c = load i64, ptr %i.b, align 8, !dbg !17337, !alias.scope !17333, !noundef !465
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i), !dbg !17338
  %i.d = icmp ne i64 %..i.i, 0, !dbg !17339
  ret i1 %i.d, !dbg !17340
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2c_5boxed3BoxDNtNtB1B_5error5ErrorNtNtB1B_6marker4SendNtB3q_4SyncEL_EEEEB34_11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17341 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17342
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2c_5boxed3BoxDNtNtB1B_5error5ErrorNtNtB1B_6marker4SendNtB3q_4SyncEL_EEEEB34_5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17343 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17344
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2c_5boxed3BoxDNtNtB1B_5error5ErrorNtNtB1B_6marker4SendNtB3q_4SyncEL_EEEEB34_6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17345 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17346
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2c_5boxed3BoxDNtNtB1B_5error5ErrorNtNtB1B_6marker4SendNtB3q_4SyncEL_EEEEB34_7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17347 {
bb.a:
  ret void, !dbg !17348
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9SendErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2c_5boxed3BoxDNtNtB1B_5error5ErrorNtNtB1B_6marker4SendNtB3q_4SyncEL_EEEEB34_7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17349 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @303, i64 16, i1 false), !dbg !17352
  ret void, !dbg !17353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17354 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17356 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17357
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17358 {
bb.a:
  ret void, !dbg !17359
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17360 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @85, i64 16, i1 false), !dbg !17363
  ret void, !dbg !17364
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17365 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17366
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17367 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17368
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17369 {
bb.a:
  ret void, !dbg !17370
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17371 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @304, i64 16, i1 false), !dbg !17374
  ret void, !dbg !17375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17376 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17377
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17378 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17379
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17380 {
bb.a:
  ret void, !dbg !17381
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17382 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @81, i64 16, i1 false), !dbg !17385
  ret void, !dbg !17386
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs3oUPovFnLWP_4core3fmt5ErrorNtNtB6_5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17387 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17388
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs3oUPovFnLWP_4core3fmt5ErrorNtNtB6_5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17389 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3oUPovFnLWP_4core3fmt5ErrorNtNtB6_5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17391 {
bb.a:
  ret void, !dbg !17392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3oUPovFnLWP_4core3fmt5ErrorNtNtB6_5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #11 !dbg !17393 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @305, i64 16, i1 false), !dbg !17396
  ret void, !dbg !17397
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs74LoFwSioHw_4http3uri10InvalidUriNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 !dbg !17398 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs74LoFwSioHw_4http3uri10InvalidUriNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 !dbg !17400 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs74LoFwSioHw_4http3uri10InvalidUriNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17402 {
bb.a:
  ret void, !dbg !17403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs74LoFwSioHw_4http3uri10InvalidUriNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #11 !dbg !17404 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false), !dbg !17407
  ret void, !dbg !17408
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17409 {
bb.a:
  ret void, !dbg !17410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #11 !dbg !17411 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @83, i64 16, i1 false), !dbg !17414
  ret void, !dbg !17415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaCYLheajBls_5hyper5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17416 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17417
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaCYLheajBls_5hyper5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #13 !dbg !17418 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17425), !dbg !17426
  %i.a = load ptr, ptr %0, align 8, !dbg !17427, !alias.scope !17425, !nonnull !465, !noundef !465 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !17428, !noalias !17425, !noundef !465 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !17428
  br i1 %.not.i, label %_RNvXs1_NtCsaCYLheajBls_5hyper5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, label %bb.b, !dbg !17429

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17428
  %i.d = load ptr, ptr %i.c, align 8, !dbg !17430, !noalias !17425, !nonnull !465, !align !617, !noundef !465
  br label %_RNvXs1_NtCsaCYLheajBls_5hyper5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, !dbg !17431

_RNvXs1_NtCsaCYLheajBls_5hyper5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ], !dbg !17432
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0, !dbg !17433
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1, !dbg !17433
  ret { ptr, ptr } %i.f, !dbg !17434
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaCYLheajBls_5hyper5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17435 {
bb.a:
  ret void, !dbg !17436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaCYLheajBls_5hyper5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17437 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @306, i64 16, i1 false), !dbg !17440
  ret void, !dbg !17441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsb6T6P0NKlCh_2h25error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17442 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17443
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsb6T6P0NKlCh_2h25error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17444 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17445
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsb6T6P0NKlCh_2h25error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !17446 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17447
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsb6T6P0NKlCh_2h25error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17448 {
bb.a:
  ret void, !dbg !17449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsb6T6P0NKlCh_2h25error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 !dbg !17450 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @307, i64 16, i1 false), !dbg !17453
  ret void, !dbg !17454
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsfUalJnHtWpm_5tonic6status12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17455 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfUalJnHtWpm_5tonic6status12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !17457 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17463, !alias.scope !17462, !nonnull !465, !noundef !465
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17463
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17463, !alias.scope !17462, !nonnull !465, !align !617, !noundef !465
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !17464
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1, !dbg !17464
  ret { ptr, ptr } %i.e, !dbg !17465
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfUalJnHtWpm_5tonic6status12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17466 {
bb.a:
  ret void, !dbg !17467
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfUalJnHtWpm_5tonic6status12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17468 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @308, i64 16, i1 false), !dbg !17471
  ret void, !dbg !17472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17473 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsfUalJnHtWpm_5tonic6status6StatusNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17475 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfUalJnHtWpm_5tonic6status6StatusNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #13 !dbg !17477 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17487), !dbg !17488
  %i.a = load ptr, ptr %0, align 8, !dbg !17489, !alias.scope !17487, !nonnull !465, !noundef !465 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !17490
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17490, !noalias !17487, !noundef !465 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !17490
  br i1 %.not.i, label %_RNvXs6_NtCsfUalJnHtWpm_5tonic6statusNtB5_6StatusNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, label %bb.b, !dbg !17491

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !17490
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17492, !noalias !17487, !nonnull !465, !align !617, !noundef !465 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !17493
  %i.g = load i64, ptr %i.f, align 8, !dbg !17493, !range !496, !invariant.load !465, !noalias !17487
  %i.h = add nsw i64 %i.g, -1, !dbg !17493
  %i.i = and i64 %i.h, -16, !dbg !17493
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i, !dbg !17493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !17493
  br label %_RNvXs6_NtCsfUalJnHtWpm_5tonic6statusNtB5_6StatusNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, !dbg !17494

_RNvXs6_NtCsfUalJnHtWpm_5tonic6statusNtB5_6StatusNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ], !dbg !17495
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], !dbg !17495
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0, !dbg !17496
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1, !dbg !17496
  ret { ptr, ptr } %i.m, !dbg !17497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfUalJnHtWpm_5tonic6status6StatusNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17498 {
bb.a:
  ret void, !dbg !17499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfUalJnHtWpm_5tonic6status6StatusNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17500 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @309, i64 16, i1 false), !dbg !17503
  ret void, !dbg !17504
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17505 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17506
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17507 {
bb.a:
  ret void, !dbg !17508
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17509 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @84, i64 16, i1 false), !dbg !17512
  ret void, !dbg !17513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17514 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17515
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17516 {
bb.a:
  ret void, !dbg !17517
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17518 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @86, i64 16, i1 false), !dbg !17521
  ret void, !dbg !17522
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvYNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer14serialize_i128CsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, i128 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17523 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvXs2_NtNtCskfQLOxWbF12_10prometools5serde5errorNtB6_5ErrorNtNtCs5FjQZcNRzHx_10serde_core3ser5Error6customReECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 21), !dbg !17525
  ret ptr %i.a, !dbg !17526
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvYNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer14serialize_u128CsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, i128 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17527 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvXs2_NtNtCskfQLOxWbF12_10prometools5serde5errorNtB6_5ErrorNtNtCs5FjQZcNRzHx_10serde_core3ser5Error6customReECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @311, i64 noundef 21), !dbg !17529
  ret ptr %i.a, !dbg !17530
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5error9RecvErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17531 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17532
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5error9RecvErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17533 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5error9RecvErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17535 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5error9RecvErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17537 {
bb.a:
  ret void, !dbg !17538
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5error9RecvErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #11 !dbg !17539 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @312, i64 16, i1 false), !dbg !17542
  ret void, !dbg !17543
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17544 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17545
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17546 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17547
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17548 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17550 {
bb.a:
  ret void, !dbg !17551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #11 !dbg !17552 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @313, i64 16, i1 false), !dbg !17555
  ret void, !dbg !17556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16encode6NotEofNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17557 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16encode6NotEofNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17559 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16encode6NotEofNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17561 {
bb.a:
  ret void, !dbg !17562
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h16encode6NotEofNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17563 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @314, i64 16, i1 false), !dbg !17566
  ret void, !dbg !17567
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17568 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17570 {
bb.a:
  ret void, !dbg !17571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http12ConnectErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17572 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @315, i64 16, i1 false), !dbg !17575
  ret void, !dbg !17576
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17577 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 !dbg !17579 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17580
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17581 {
bb.a:
  ret void, !dbg !17582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 !dbg !17583 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @316, i64 16, i1 false), !dbg !17586
  ret void, !dbg !17587
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYzNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17588 {
bb.a:
  ret { ptr, i64 } { ptr @284, i64 40 }, !dbg !17589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYzNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17590 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYzNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 !dbg !17592 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17593
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYzNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 !dbg !17594 {
bb.a:
  ret void, !dbg !17595
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYzNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #11 !dbg !17596 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @317, i64 16, i1 false), !dbg !17599
  ret void, !dbg !17600
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropNtNtCs74LoFwSioHw_4http3uri10InvalidUriECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedNtNtCs74LoFwSioHw_4http3uri10InvalidUriECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontNtNtCs74LoFwSioHw_4http3uri10InvalidUriECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorReEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorReEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17object_drop_frontReECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtB2_12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17context_drop_restReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error17context_drop_restReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvNtCs7XllS0bOcsN_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs7XllS0bOcsN_6anyhow5error22context_chain_downcastNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error23context_chain_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error11object_dropINtB2_12ContextErrorReNtB4_5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs7XllS0bOcsN_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtB4_5ErrorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs7XllS0bOcsN_6anyhow5error22context_chain_downcastReECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7XllS0bOcsN_6anyhow5error23context_chain_drop_restReECsbaWXNhtWAp9_11foundations(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaCYLheajBls_5hyper5errorNtB2_5Error8new_user(i8 noundef range(i8 0, 9)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaCYLheajBls_5hyper5errorNtB2_5Error3new(i8 noundef range(i8 0, 12), i8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtNtCsfUalJnHtWpm_5tonic5codec11compressionNtB4_19CompressionEncoding20from_encoding_header(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs1_NtCsfUalJnHtWpm_5tonic6statusNtB5_6Status15from_header_map(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8QTyv2gZm5j_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8QTyv2gZm5j_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCsaCYLheajBls_5hyper5proto2h12ioINtB5_8BufferedINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamEINtNtB7_6encode10EncodedBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEENtB5_7MemRead8read_memB1Q_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(192), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode14IncompleteBodyECsbaWXNhtWAp9_11foundations(i8 noundef range(i8 0, 44)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaCYLheajBls_5hyper5proto2h16decode15decode_trailers(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

end_hunk_0
