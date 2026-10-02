Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs_NtNtCs2awuzAz5vY4_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEEE4pushCskeugdADtBsi_12pingora_core:bb.a
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load i8, ptr %i.u, align 8, !range !18, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.w = trunc nuw i8 %.val5 to i1
  br i1 %i.w, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.aa, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.v monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ab = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECskeugdADtBsi_12pingora_core.exit, !prof !6

bb.j:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.j
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit: ; preds = %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge, %bb.b
  %.val2 = phi ptr [ %i.m, %bb.b ], [ %.val2.pre, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge ]
  %i.ad = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.af, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i8, ptr %i.ae, align 8, !range !18, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECskeugdADtBsi_12pingora_core(ptr nonnull %.val2, i8 %.val3) #30
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge unwind label %bb.l

._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge: ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit

bb.l:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECskeugdADtBsi_12pingora_core.exit
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs2awuzAz5vY4_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB18_9scheduler12multi_thread6handle6HandleEEE4pushCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !7, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !range !29, !noundef !4 ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = load i64, ptr %0, align 8, !noundef !4
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #32
          to label %bb.e unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvMs2_NtNtCs2awuzAz5vY4_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB18_9scheduler12multi_thread6handle6HandleEEE10push_frontCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull %1)
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !7, !noundef !4
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !7, !noundef !4
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load i8, ptr %i.u, align 8, !range !18, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.w = trunc nuw i8 %.val5 to i1
  br i1 %i.w, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.aa, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.v monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ab = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1C_9scheduler12multi_thread6handle6HandleEEEECskeugdADtBsi_12pingora_core.exit, !prof !6

bb.j:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1C_9scheduler12multi_thread6handle6HandleEEEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1C_9scheduler12multi_thread6handle6HandleEEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.j
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit: ; preds = %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge, %bb.b
  %.val2 = phi ptr [ %i.m, %bb.b ], [ %.val2.pre, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge ]
  %i.ad = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.af, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i8, ptr %i.ae, align 8, !range !18, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1C_9scheduler12multi_thread6handle6HandleEEEECskeugdADtBsi_12pingora_core(ptr nonnull %.val2, i8 %.val3) #30
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge unwind label %bb.l

._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit_crit_edge: ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit

bb.l:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECskeugdADtBsi_12pingora_core.exit
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest10local_addr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest10local_addr0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.c, 2
  %. = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest11get_snd_buf(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest10local_addr0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0)
  %i.d = load i32, ptr %i.c, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !noundef !4
  %i.g = tail call { i64, ptr } @_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext11get_snd_buf(i32 noundef %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit ], [ %i.j, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit ], [ 1, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.n = and i64 %i.j, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit
    i64 1, label %bb.f
  ], !prof !17

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %i.p = and i64 %i.j, 1095216660480
  %i.q = icmp ne i64 %i.p, 1095216660480
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1025
  store i8 3, ptr %i.a, align 8, !alias.scope !1025
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest12get_recv_buf(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest10local_addr0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0)
  %i.d = load i32, ptr %i.c, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !noundef !4
  %i.g = tail call { i64, ptr } @_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext12get_recv_buf(i32 noundef %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit ], [ %i.j, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit ], [ 1, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.n = and i64 %i.j, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit
    i64 1, label %bb.f
  ], !prof !17

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %i.p = and i64 %i.j, 1095216660480
  %i.q = icmp ne i64 %i.p, 1095216660480
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1028
  store i8 3, ptr %i.a, align 8, !alias.scope !1028
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest12original_dst(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest12original_dst0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.c, 2
  %. = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest8tcp_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest10local_addr0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %1)
  %i.e = load i32, ptr %i.d, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.g = load i32, ptr %i.f, align 8, !noundef !4
  call void @_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext12get_tcp_info(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.b, i32 noundef %i.g)
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.k, ptr noundef nonnull align 8 dereferenceable(240) %i.j, i64 240, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = ptrtoint ptr %.val1 to i64               ; 2 uses
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit
    i64 1, label %bb.h
  ], !prof !17

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.o = and i64 %i.l, 1095216660480
  %i.p = icmp ne i64 %i.o, 1095216660480
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !1031
  store i8 3, ptr %i.a, align 8, !alias.scope !1031
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit: ; preds = %bb.f, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8TCP_INFONtNtNtB4_2io5error5ErrorEEB15_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvMs_NtNtCskeugdADtBsi_12pingora_core9protocols6digestNtB4_12SocketDigest9peer_addr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1y_6digestNtB3j_12SocketDigest9peer_addr0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1A_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !11, !noundef !4
  %.not = icmp eq i32 %i.b, 2
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardbE3newCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 4
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardbENCNvMsd_BP_BM_3new0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsh_NtCs6jFIAG93R3W_8petgraph10graph_implINtB5_5GraphNtNtCskeugdADtBsi_12pingora_core8services17ServiceDependencyuE13with_capacityBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.d = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !16, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %1, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6jFIAG93R3W_8petgraph10graph_impl4NodeNtNtCskeugdADtBsi_12pingora_core8services17ServiceDependencyEEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !range !15, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8
end_hunk_0
