Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.05?download=true
inline.NumInlined: 6673
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log:bb.a
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10727)
  call void @llvm.experimental.noalias.scope.decl(metadata !10728)
  call void @llvm.experimental.noalias.scope.decl(metadata !10729)
  call void @llvm.experimental.noalias.scope.decl(metadata !10730)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !10731, !nonnull !11, !noundef !11
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !10731
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = load i64, ptr %i.i, align 8, !noundef !11
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.r, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.w = atomicrmw xchg ptr %i.v, i32 1 release, align 4
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.v)
          to label %bb.g unwind label %bb.b       ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10732)
  call void @llvm.experimental.noalias.scope.decl(metadata !10733)
  call void @llvm.experimental.noalias.scope.decl(metadata !10734)
  call void @llvm.experimental.noalias.scope.decl(metadata !10735)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !10736, !nonnull !11, !noundef !11
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !10736
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  fence acquire
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !19, !noalias !10757, !noundef !11
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !18

_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !range !10, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.k = tail call noundef i64 @_RINvMs6_NtCsdNqyU9N9qTX_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i.i)
  br label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit

_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ -1, %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !11
  %i.n = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.o, align 8, !noundef !11
  %i.p = and i64 %1, 274877906943                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 32
  %i.r = lshr i64 %i.q, 6
  %i.s = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 false)
  %i.t = sub nuw nsw i64 64, %i.s                 ; 2 uses
  %.not.i = icmp ult i64 %i.t, %.val1
  br i1 %.not.i, label %bb.e, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.t ; 4 uses
  %i.w = lshr i64 %1, 51                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !11
  %i.aa = sub i64 %i.p, %i.z                      ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !noalias !10758, !align !15, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !10758, !noundef !11
  %i.ae = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.aa ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8, !noalias !10758 ; 2 uses
  %i.ai = lshr i64 %i.ah, 51
  %i.aj = icmp eq i64 %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph23.i.i.i.i, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i:                                 ; preds = %bb.g
  %.cmp.i.i.i.i = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i = select i1 %.cmp.i.i.i.i, i64 1, i64 -8190
  %i.ak = add nsw i64 %.v.i.i.i.i, %i.w
  %i.al = shl nuw i64 %i.ak, 51
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %.lr.ph23.i.i.i.i
  %.sroa.02.020.i.i.i.i = phi i8 [ 0, %.lr.ph23.i.i.i.i ], [ %.sroa.02.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ]
  %.sroa.06.019.i.i.i.i = phi i64 [ %i.ah, %.lr.ph23.i.i.i.i ], [ %.sroa.06.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.018.i.i.i.i = phi i64 [ 0, %.lr.ph23.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %i.am = and i64 %.sroa.06.019.i.i.i.i, 2251799813685247
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = cmpxchg ptr %i.ag, i64 %.sroa.06.019.i.i.i.i, i64 %i.an acq_rel acquire, align 8, !noalias !10758 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.i, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = and i64 %.sroa.01.0.i.i.i.i.i, 2251799813685244
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.af), !noalias !10758
  tail call void @_RINvXs_NtNtCsdNqyU9N9qTX_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.x, i64 noundef %i.aa, ptr noundef nonnull align 8 %i.af), !noalias !10758
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = trunc i64 %.sroa.0.018.i.i.i.i to i32
  %i.as = and i32 %i.ar, 31                       ; 2 uses
  %.not.i.i.i.i.a = icmp eq i32 %i.as, 31
  br i1 %.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.k
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = freeze i32 %i.at                        ; 3 uses
  %i.av = add i32 %i.au, -1
  %xtraiter = and i32 %i.au, 7                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, 7
  br i1 %i.aw, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i32 %i.au, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %lcmp.mod41 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !10747

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.k
  %i.ax = icmp ugt i64 %.sroa.0.018.i.i.i.i, 7
  br i1 %i.ax, label %bb.m, label %bb.l

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  tail call void @llvm.x86.sse2.pause(), !noalias !10759
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.018.i.i.i.i, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !10759
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.h
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.sroa.0.018.i.i.i.i, %bb.m ], [ %i.ay, %bb.l ]
  %.sroa.06.1.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %bb.h ], [ %.sroa.06.019.i.i.i.i, %bb.m ], [ %.sroa.06.019.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.02.1.i.i.i.i = phi i8 [ %.sroa.02.020.i.i.i.i, %bb.h ], [ 1, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.az = lshr i64 %.sroa.06.1.i.i.i.i, 51
  %.not.i.i.i.i = icmp ne i8 %.sroa.02.1.i.i.i.i, 0
  %i.ba = icmp eq i64 %i.w, %i.az
  %or.cond.not.i.i.i.i = or i1 %.not.i.i.i.i, %i.ba
  br i1 %or.cond.not.i.i.i.i, label %bb.h, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10760)
  %i.bb = and i64 %1, 274877906943                ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 32
  %i.bd = lshr i64 %i.bc, 6
  %i.be = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = sub nuw nsw i64 64, %i.be               ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !10760, !noundef !11
  %.not.i3 = icmp ult i64 %i.bf, %i.bh
  br i1 %.not.i3, label %bb.o, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !10760, !nonnull !11, !noundef !11
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %i.bl = lshr i64 %1, 51                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10761)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !10762, !noundef !11 ; 2 uses
  %i.bo = icmp ult i64 %i.bf, %i.bn
  br i1 %i.bo, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %i.bf, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !10762
  unreachable

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.o
  %i.bp = load ptr, ptr %0, align 8, !alias.scope !10762, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bf ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !noalias !10760, !noundef !11
  %i.bt = sub i64 %i.bb, %i.bs                    ; 3 uses
  %i.bu = load ptr, ptr %i.bk, align 8, !noalias !10763, !align !15, !noundef !11 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !10763, !noundef !11
  %i.bx = icmp ult i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.r, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %i.bu, i64 %i.bt ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !10763 ; 2 uses
  %i.cb = lshr i64 %i.ca, 51
  %i.cc = icmp eq i64 %i.bl, %i.cb
  br i1 %i.cc, label %.lr.ph23.i.i.i.i6, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i6:                                ; preds = %bb.r
  %.cmp.i.i.i.i7 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i8 = select i1 %.cmp.i.i.i.i7, i64 1, i64 -8190
  %i.cd = add nsw i64 %.v.i.i.i.i8, %i.bl
  %i.ce = shl nuw i64 %i.cd, 51
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %.lr.ph23.i.i.i.i6
  %.sroa.02.020.i.i.i.i9 = phi i8 [ 0, %.lr.ph23.i.i.i.i6 ], [ %.sroa.02.1.i.i.i.i17, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ]
  %.sroa.06.019.i.i.i.i10 = phi i64 [ %i.ca, %.lr.ph23.i.i.i.i6 ], [ %.sroa.06.1.i.i.i.i16, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %.sroa.0.018.i.i.i.i11 = phi i64 [ 0, %.lr.ph23.i.i.i.i6 ], [ %.sroa.0.1.i.i.i.i15, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %i.cf = and i64 %.sroa.06.019.i.i.i.i10, 2251799813685247
  %i.cg = or disjoint i64 %i.cf, %i.ce
  %i.ch = cmpxchg ptr %i.bz, i64 %.sroa.06.019.i.i.i.i10, i64 %i.cg acq_rel acquire, align 8, !noalias !10763 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i12 = extractvalue { i64, i1 } %i.ch, 1
  %.sroa.01.0.i.i.i.i.i13 = extractvalue { i64, i1 } %i.ch, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i12, label %bb.t, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

bb.t:                                             ; preds = %bb.s
  %i.ci = and i64 %.sroa.01.0.i.i.i.i.i13, 2251799813685244
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.by), !noalias !10763
  %i.ck = load i64, ptr %i.bq, align 8, !noalias !10763, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store i64 %i.ck, ptr %i.cl, align 8, !noalias !10763
  store i64 %i.bt, ptr %i.bq, align 8, !noalias !10763
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = trunc i64 %.sroa.0.018.i.i.i.i11 to i32
  %i.cn = and i32 %i.cm, 31                       ; 2 uses
  %.not.i.i.i.i19 = icmp eq i32 %i.cn, 31
  br i1 %.not.i.i.i.i19, label %._crit_edge.i.i.i.i24, label %.lr.ph.preheader.i.i.i.i20

.lr.ph.preheader.i.i.i.i20:                       ; preds = %bb.v
  %i.co = shl nuw nsw i32 1, %i.cn
  %i.cp = freeze i32 %i.co                        ; 3 uses
  %i.cq = add i32 %i.cp, -1
  %xtraiter42 = and i32 %i.cp, 7                  ; 3 uses
  %i.cr = icmp ult i32 %i.cq, 7
  br i1 %i.cr, label %.lr.ph.i.i.i.i21.epil.preheader, label %.lr.ph.preheader.i.i.i.i20.new

.lr.ph.preheader.i.i.i.i20.new:                   ; preds = %.lr.ph.preheader.i.i.i.i20
  %unroll_iter46 = and i32 %i.cp, -8
  br label %.lr.ph.i.i.i.i21

._crit_edge.i.i.i.i24.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i21
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil.preheader

.lr.ph.i.i.i.i21.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i20
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i21.epil

.lr.ph.i.i.i.i21.epil:                            ; preds = %.lr.ph.i.i.i.i21.epil, %.lr.ph.i.i.i.i21.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i21.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i21.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil, !llvm.loop !10756

._crit_edge.i.i.i.i24:                            ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.i.i.i.i21.epil, %bb.v
  %i.cs = icmp ugt i64 %.sroa.0.018.i.i.i.i11, 7
  br i1 %i.cs, label %bb.x, label %bb.w

.lr.ph.i.i.i.i21:                                 ; preds = %.lr.ph.i.i.i.i21, %.lr.ph.preheader.i.i.i.i20.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i20.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i21 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  tail call void @llvm.x86.sse2.pause(), !noalias !10764
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i21

bb.w:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.ct = add nuw nsw i64 %.sroa.0.018.i.i.i.i11, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

bb.x:                                             ; preds = %._crit_edge.i.i.i.i24
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !10764
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14: ; preds = %bb.x, %bb.w, %bb.s
  %.sroa.0.1.i.i.i.i15 = phi i64 [ 0, %bb.s ], [ %.sroa.0.018.i.i.i.i11, %bb.x ], [ %i.ct, %bb.w ]
  %.sroa.06.1.i.i.i.i16 = phi i64 [ %.sroa.01.0.i.i.i.i.i13, %bb.s ], [ %.sroa.06.019.i.i.i.i10, %bb.x ], [ %.sroa.06.019.i.i.i.i10, %bb.w ] ; 2 uses
  %.sroa.02.1.i.i.i.i17 = phi i8 [ %.sroa.02.020.i.i.i.i9, %bb.s ], [ 1, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.cu = lshr i64 %.sroa.06.1.i.i.i.i16, 51
  %.not.i.i.i.i18 = icmp ne i8 %.sroa.02.1.i.i.i.i17, 0
  %i.cv = icmp eq i64 %i.bl, %i.cu
  %or.cond.not.i.i.i.i18 = or i1 %.not.i.i.i.i18, %i.cv
  br i1 %or.cond.not.i.i.i.i18, label %bb.s, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %bb.u, %bb.r, %bb.q, %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, %bb.n, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !10770)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !10770, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10771
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10770, !nonnull !11, !align !15, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !25, !alias.scope !10770, !noundef !11
  store ptr %i.f, ptr %i.a, align 8, !noalias !10771
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !10771
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #42
          to label %bb.d unwind label %bb.c, !noalias !10770

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.e, !noalias !10770

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10770
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.loopexit.split-lp8, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !10770, !nonnull !11, !align !15, !noundef !11 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !25, !alias.scope !10770, !noundef !11 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10772)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10772, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !10772, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.x, %.noexc5 ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !10772, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.z = cmpxchg ptr %i.y, i64 0, i64 2 acq_rel acquire, align 8, !noalias !10772
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.z, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.f, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q) #40
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !10772, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !10772, !nonnull !11, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, i32 1 release, align 4, !noalias !10772
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %.noexc5

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ad)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc5:                                          ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ah = icmp eq ptr %i.x, %i.v
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %._crit_edge.i
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.m, i8 %i.o) #37
          to label %common.resume unwind label %bb.n

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.ai = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !11 ; 2 uses
  %i.an = icmp ult i64 %i.am, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = zext i1 %i.ao to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ap, %bb.h ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.aq seq_cst, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.av = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.ar monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.aw = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit, !prof !14

bb.m:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !10787)
  %i.d = load i64, ptr %i.c, align 8, !range !10, !alias.scope !10787, !noundef !11
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10788
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !10787, !nonnull !11, !align !15, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !25, !alias.scope !10787, !noundef !11
  store ptr %i.g, ptr %i.a, align 8, !noalias !10788
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.i, ptr %i.j, align 8, !noalias !10788
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #42
          to label %bb.d unwind label %bb.c, !noalias !10787

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.e, !noalias !10787

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10787
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
end_hunk_0
