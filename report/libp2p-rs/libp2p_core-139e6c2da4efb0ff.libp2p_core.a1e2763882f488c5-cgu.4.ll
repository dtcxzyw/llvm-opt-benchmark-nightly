Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_core-139e6c2da4efb0ff.libp2p_core.a1e2763882f488c5-cgu.4?download=true
inline.NumInlined: 323
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE13poll_unparkedB1Z_:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !183, !noalias !184, !nonnull !8, !align !10, !noundef !8 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !13, !alias.scope !183, !noalias !184, !noundef !8 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !13, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit, !prof !7

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !8, !align !10, !noundef !8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !align !10, !noundef !8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !8
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !10, !noundef !8 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit unwind label %bb.r, !inline_history !1

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core(ptr nonnull %i.s, i8 %i.u) #21
          to label %common.resume unwind label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  %i.as = extractvalue { ptr, ptr } %i.al, 0
  %i.at = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.m

bb.r:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.03.0, ptr %i.am, align 8
  store ptr %.sroa.6.0, ptr %i.ao, align 8
  br label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit, !prof !7

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10poll_readyB1M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !8
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10poll_readyB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !189, !noalias !190, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !191
  %.not.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10poll_readyB1Z_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE13poll_unparkedB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10poll_readyB1Z_.exit

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10poll_readyB1Z_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE10start_sendB1M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [72 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !11, !noundef !8
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.g = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE13poll_unparkedB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aa, !noalias !210

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload5 = load i64, ptr %1, align 8, !alias.scope !210, !noalias !208
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx7, i64 72, i1 false), !alias.scope !210, !noalias !208
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE8try_sendB1Z_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !217, !noalias !218, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8, !noalias !219
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i = phi i64 [ %i.j, %bb.e ], [ %i.o, %bb.i ] ; 3 uses
  %.not.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i, -1
  %i.k = and i64 %.sroa.05.0.i.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i = icmp eq i64 %i.k, 9223372036854775807
  br i1 %.not11.i.i.i, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
          to label %.noexc.i.i unwind label %.body.thread17.i.i, !noalias !220

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = add nuw nsw i64 %i.k, -9223372036854775807
  %i.m = cmpxchg ptr %i.i, i64 %.sroa.05.0.i.i.i, i64 %i.l seq_cst seq_cst, align 8, !noalias !219 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.f

.body.thread17.i.i:                               ; preds = %bb.w, %bb.v, %bb.t, %bb.l, %bb.h
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !221, !noalias !218, !nonnull !8, !noundef !8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noalias !220, !noundef !8
  %.not.i.i = icmp ult i64 %i.k, %i.r
  br i1 %.not.i.i, label %.noexc7.i.i, label %bb.l

bb.k:                                             ; preds = %bb.f
  %.sroa.0.0.copyload4 = load i64, ptr %i.c, align 8, !alias.scope !222, !noalias !223
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx6, i64 72, i1 false), !alias.scope !222, !noalias !223
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i

.noexc7.i.i:                                      ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE4parkB1Z_.exit.i.i, %bb.j
  %.val.i.i = phi ptr [ %.val.pre.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE4parkB1Z_.exit.i.i ], [ %i.p, %bb.j ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE4pushB1T_(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.c), !noalias !211
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.t), !noalias !211
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !225
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !226, !noalias !218, !nonnull !8, !noundef !8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.w)
          to label %.noexc9.i.i unwind label %.body.thread17.i.i, !noalias !220

.noexc9.i.i:                                      ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.x = load i64, ptr %i.b, align 8, !range !14, !alias.scope !227, !noalias !228, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit.i.i.i, !prof !7

bb.m:                                             ; preds = %.noexc9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !229
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !227, !noalias !228, !nonnull !8, !align !10, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !13, !alias.scope !227, !noalias !228, !noundef !8
  store ptr %i.aa, ptr %i.a, align 8, !noalias !229
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ac, ptr %i.ad, align 8, !noalias !229
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.o unwind label %bb.n, !noalias !230

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %.body.thread.i.i unwind label %bb.p, !noalias !230

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !230
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit.i.i.i: ; preds = %.noexc9.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !227, !noalias !228, !nonnull !8, !align !10, !noundef !8 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !13, !alias.scope !227, !noalias !228, !noundef !8 ; 2 uses
  %i.ak = trunc nuw i8 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !noalias !225, !align !10, !noundef !8 ; 2 uses
  %i.am = icmp eq ptr %.val.i.i.i, null
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  %i.an = getelementptr i8, ptr %i.ah, i64 16
  %.val1.i.i.i = load ptr, ptr %i.an, align 8, !noalias !225
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !225, !nonnull !8, !noundef !8
  invoke void %i.ap(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i unwind label %bb.r, !noalias !225, !inline_history !1

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.al, align 8, !noalias !225
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core(ptr nonnull %i.ah, i8 %i.aj) #21
          to label %.body.thread.i.i unwind label %bb.y, !noalias !225

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i: ; preds = %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  store ptr null, ptr %i.al, align 8, !noalias !225
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 1, ptr %i.ar, align 8, !noalias !225
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  %i.at = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !225
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.aw = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc10.i.i unwind label %.body.thread17.i.i, !noalias !220

.noexc10.i.i:                                     ; preds = %bb.t
  br i1 %i.aw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc10.i.i
  store atomic i8 1, ptr %i.as monotonic, align 4, !noalias !225
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.u, %.noexc10.i.i, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  %i.ax = atomicrmw xchg ptr %i.ah, i32 0 release, align 4, !noalias !225
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i, !prof !7

bb.v:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i unwind label %.body.thread17.i.i, !noalias !220

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %i.az = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !225
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsdTHTBGblh3Z_11libp2p_core(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull %i.v)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE4parkB1Z_.exit.i.i unwind label %.body.thread17.i.i, !noalias !220

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsdTHTBGblh3Z_11libp2p_core.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !225
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE4parkB1Z_.exit.i.i: ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.be = load atomic i64, ptr %i.bd seq_cst, align 8, !noalias !225
  %.lobit.i.i.i = lshr i64 %i.be, 63
  %i.bf = trunc nuw nsw i64 %.lobit.i.i.i to i8
  store i8 %i.bf, ptr %i.e, align 8, !alias.scope !226, !noalias !218
  %.val.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !221, !noalias !218
  br label %.noexc7.i.i

.body.thread.i.i:                                 ; preds = %bb.r, %bb.n, %.body.thread17.i.i
  %eh.lpad-body16.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread17.i.i ], [ %i.ae, %bb.n ], [ %i.aq, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtB4_3num7nonzero7NonZeroyEEEB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #21
          to label %.body.thread.i unwind label %bb.z, !noalias !231

bb.z:                                             ; preds = %.body.thread.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !231
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i: ; preds = %.noexc7.i.i, %bb.k
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload4, %bb.k ], [ -2, %.noexc7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE8try_sendB1Z_.exit

.body.thread.i:                                   ; preds = %bb.aa, %.body.thread.i.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.aa ]
  resume { ptr, i32 } %eh.lpad-body7.i

bb.aa:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtB4_3num7nonzero7NonZeroyEEEB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21
          to label %.body.thread.i unwind label %bb.ab, !noalias !212

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !212
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE8try_sendB1Z_.exit: ; preds = %bb.d, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i
  %.sroa.88.2 = phi i8 [ 0, %bb.d ], [ 1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0.copyload5, %bb.d ], [ %.sroa.0.1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkNtNtNtCsdTHTBGblh3Z_11libp2p_core9transport6memory4ChanEINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEEE9do_send_bB1Z_.exit.i ] ; 2 uses
  %.not2 = icmp eq i64 %.sroa.0.2, -2
  br i1 %.not2, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.a
end_hunk_0
