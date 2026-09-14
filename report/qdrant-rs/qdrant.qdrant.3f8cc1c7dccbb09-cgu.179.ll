Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.179?download=true
inline.NumInlined: 431
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtBb_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1I_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtB1I_5value5ErrorEECsl8OoimOLbh_6qdrant:bb.a

bb.j:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.q, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.g, %bb.i, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtBa_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1H_7Visitor8visit_u8NtNtB1H_5value5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !459
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !459
  store i8 1, ptr %i.a, align 8, !noalias !459
  %i.d = call { ptr, i64 } @_RNvYNtNtNtCs4NSHK7GLW4I_10serde_core2de5value5ErrorNtB6_5Error13invalid_valueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48), !noalias !459 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !459
  store ptr %i.e, ptr %0, align 8, !alias.scope !459
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !alias.scope !459
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8, !alias.scope !459
  store ptr null, ptr %0, align 8, !alias.scope !459
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8, !alias.scope !459
  store ptr null, ptr %0, align 8, !alias.scope !459
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.j, align 8, !alias.scope !459
  store ptr null, ptr %0, align 8, !alias.scope !459
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCINvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_params18deserialize_factorINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtNtCs4NSHK7GLW4I_10serde_core2de5value5ErrorEE0Csl8OoimOLbh_6qdrant(i8 noundef range(i8 0, 6) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @52, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call { ptr, i64 } @_RINvXNtNtCs4NSHK7GLW4I_10serde_core2de5valueNtB3_5ErrorNtB5_5Error6customNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXNtNtCsl8OoimOLbh_6qdrant5tonic15tonic_telemetryINtB4_21TonicTelemetryServiceINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtB6_4auth14AuthMiddlewareNtNtNtCsgOCJwUSa4vG_5tonic7service6router6RoutesEB2v_EEINtCs372LqxyVCI8_13tower_service7ServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtB2B_4body4BodyEE4call0B8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 2 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !13, !noundef !5
  switch i8 %i.i, label %default.unreachable86 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.c
  ]

default.unreachable86:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 690 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 689
  store i8 1, ptr %i.k, align 1
  store i8 1, ptr %i.j, align 2
  %i.l = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.i

bb.d:                                             ; preds = %bb.be, %bb.e
  %.pn7.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn.pn, %bb.be ], [ %i.p, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 690
  %i.n = load i8, ptr %i.m, align 2, !range !480, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.bh, label %bb.bf

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.r = extractvalue { i64, i32 } %i.l, 0
  %i.s = extractvalue { i64, i32 } %i.l, 1
  store i64 %i.r, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.j, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.u, ptr noundef nonnull align 8 dereferenceable(320) %1, i64 320, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  invoke void @_RNvXs_NtNtCs5TwP8AC98I6_5tower4util6eitherINtB4_20EitherResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1b_6future6future6Futurep6OutputINtNtB1b_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB1b_6marker4SendEL_EENtNtNtB3W_7service6router12RoutesFutureEB2c_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %i.v) #17
          to label %bb.be unwind label %bb.bb

bb.k:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.f, align 8, !range !8, !noundef !5
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.l, label %bb.m

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit, %bb.l
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.h, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %i.v)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.aa = invoke noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11)
          to label %bb.q unwind label %bb.p       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 17 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val3.i = load i64, ptr %i.ad, align 8, !noundef !5 ; 21 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val3.i
  %i.af = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.af, label %.thread.thread94, label %iter.check

iter.check:                                       ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.val3.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp ult i64 %.val3.i, 32
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.val3.i, 24
  %n.vec = and i64 %.val3.i, -32                  ; 4 uses
  %i.ah = getelementptr i8, ptr %.val.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi132 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi134, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load133 = load <16 x i8>, ptr %i.ai, align 1 ; 2 uses
  %i.aj = add <16 x i8> %wide.load, splat (i8 -127)
  %i.ak = icmp ult <16 x i8> %i.aj, splat (i8 -95)
  %i.al = add <16 x i8> %wide.load133, splat (i8 -127)
  %i.am = icmp ult <16 x i8> %i.al, splat (i8 -95)
  %i.an = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.ao = icmp ne <16 x i8> %wide.load133, splat (i8 9)
  %i.ap = and <16 x i1> %i.ak, %i.an
  %predphi = or <16 x i1> %vec.phi, %i.ap         ; 2 uses
  %i.aq = and <16 x i1> %i.am, %i.ao
  %predphi134 = or <16 x i1> %vec.phi132, %i.aq   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi134, %predphi
  %i.as = bitcast <16 x i1> %bin.rdx to i16
  %i.at = icmp ne i16 %i.as, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val3.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.at, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %.val3.i, -8                ; 3 uses
  %i.au = getelementptr i8, ptr %.val.i, i64 %n.vec135
  %i.av = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi137 = phi <8 x i1> [ %i.av, %vec.epilog.ph ], [ %predphi140, %vec.epilog.vector.body ]
  %next.gep138 = getelementptr i8, ptr %.val.i, i64 %index136
  %wide.load139 = load <8 x i8>, ptr %next.gep138, align 1 ; 2 uses
  %i.aw = add <8 x i8> %wide.load139, splat (i8 -127)
  %i.ax = icmp ult <8 x i8> %i.aw, splat (i8 -95)
  %i.ay = icmp ne <8 x i8> %wide.load139, splat (i8 9)
  %i.az = and <8 x i1> %i.ax, %i.ay
  %predphi140 = or <8 x i1> %vec.phi137, %i.az    ; 2 uses
  %index.next141 = add nuw i64 %index136, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !461

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bb = bitcast <8 x i1> %predphi140 to i8
  %i.bc = icmp ne i8 %i.bb, 0                     ; 2 uses
  %cmp.n142 = icmp eq i64 %.val3.i, %n.vec135
  br i1 %cmp.n142, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.sroa.03.01.i.i.i.ph = phi ptr [ %.val.i, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.t
  %.sroa.01.02.i.i.i = phi i1 [ %.sroa.06.0.i.i.i, %bb.t ], [ %.sroa.01.02.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.01.i.i.i = phi ptr [ %i.bd, %bb.t ], [ %.sroa.03.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.be = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !5 ; 2 uses
  %i.bf = add i8 %i.be, -32
  %or.cond.i.i.i = icmp ult i8 %i.bf, 95
  br i1 %or.cond.i.i.i, label %bb.t, label %bb.s

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.t, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.i.i.lcssa = phi i1 [ %i.bc, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %.sroa.06.0.i.i.i, %bb.t ]
  br i1 %.sroa.06.0.i.i.i.lcssa, label %.thread.thread, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = icmp ne i8 %i.be, 9
  %i.bh = or i1 %.sroa.01.02.i.i.i, %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.bh, %bb.s ], [ %.sroa.01.02.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bi = icmp eq ptr %i.bd, %i.ae
  br i1 %i.bi, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !462

bb.u:                                             ; preds = %._crit_edge.loopexit.i.i.i
  %cond = icmp eq i64 %.val3.i, 1
  %i.bj = load i8, ptr %.val.i, align 1, !alias.scope !484 ; 2 uses
  br i1 %cond, label %bb.v, label %thread-pre-split.i.i.i

bb.v:                                             ; preds = %bb.u
  switch i8 %i.bj, label %bb.ac [
    i8 43, label %.thread.thread94
    i8 45, label %.thread.thread94
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.u
  switch i8 %i.bj, label %bb.ac [
    i8 43, label %bb.w
    i8 45, label %bb.x
  ]

bb.w:                                             ; preds = %thread-pre-split.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.bl = add nsw i64 %.val3.i, -1
  br label %bb.ac

bb.x:                                             ; preds = %thread-pre-split.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.bn = add nsw i64 %.val3.i, -1                ; 2 uses
  %i.bo = icmp samesign ult i64 %.val3.i, 9
  br i1 %i.bo, label %.preheader118.i.i.i, label %.lr.ph.i.i.i20

.preheader118.i.i.i:                              ; preds = %bb.x
  %.not105139.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not105139.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.aa, %6, %14, %22, %30, %38, %42, %50, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %.preheader.i.i.i, %.preheader118.i.i.i
  %.sroa.086.1.i.i.i = phi i32 [ %52, %50 ], [ %i.er, %bb.am ], [ %i.cx, %bb.af ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader118.i.i.i ], [ %i.da, %bb.ag ], [ %i.di, %bb.ah ], [ %i.dp, %bb.ai ], [ %i.dw, %bb.aj ], [ %i.ed, %bb.ak ], [ %i.ek, %bb.al ], [ %8, %6 ], [ %16, %14 ], [ %24, %22 ], [ %32, %30 ], [ %40, %38 ], [ %44, %42 ], [ %i.cc, %bb.aa ]
  %.sroa.086.1.i.i.i.fr = freeze i32 %.sroa.086.1.i.i.i
  %i.bp = zext i32 %.sroa.086.1.i.i.i.fr to i64
  %i.bq = shl nuw i64 %i.bp, 32
  br label %.thread

.lr.ph.i.i.i20:                                   ; preds = %bb.x, %bb.aa
  %.sroa.0.1138.i.i.i = phi ptr [ %i.br, %bb.aa ], [ %i.bm, %bb.x ] ; 3 uses
  %.sroa.26.1137.i.i.i = phi i64 [ %i.bs, %bb.aa ], [ %i.bn, %bb.x ]
  %.sroa.086.0136.i.i.i = phi i32 [ %i.cc, %bb.aa ], [ 0, %bb.x ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i, i64 1
  %i.bs = add nsw i64 %.sroa.26.1137.i.i.i, -1    ; 2 uses
  %i.bt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i, i32 10) ; 2 uses
  %i.bu = extractvalue { i32, i1 } %i.bt, 0
  %i.bv = extractvalue { i32, i1 } %i.bt, 1
  br i1 %i.bv, label %.loopexit114.sink.split.i.i.i, label %bb.y, !prof !17

bb.y:                                             ; preds = %.lr.ph.i.i.i20
  %i.bw = load i8, ptr %.sroa.0.1138.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %bb.z, label %.thread.thread94

bb.z:                                             ; preds = %bb.y
  %i.ca = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bu, i32 %i.by) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.thread.thread94, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.cc = extractvalue { i32, i1 } %i.ca, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i20

.loopexit114.sink.split.i.i.i:                    ; preds = %.lr.ph.i.i.i20, %.preheader115.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i, %.preheader115.i.i.i ], [ %.sroa.0.1138.i.i.i, %.lr.ph.i.i.i20 ]
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i20 ]
  %i.cd = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.ce = add i8 %i.cd, -48
  %i.cf = icmp ult i8 %i.ce, 10
  %i.cg = select i1 %i.cf, i64 %.sink190.i.i.i, i64 257
  br label %.thread

.lr.ph143.i.i.i:                                  ; preds = %.preheader118.i.i.i
  %3 = load i8, ptr %i.bm, align 1, !alias.scope !484, !noundef !5 ; 2 uses
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %6, label %.thread.thread94

6:                                                ; preds = %.lr.ph143.i.i.i
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 48, %7                         ; 2 uses
  %.not105.i.i.i = icmp eq i64 %.val3.i, 2
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.1

.lr.ph143.i.i.i.1:                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %10 = load i8, ptr %9, align 1, !alias.scope !484, !noundef !5
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -48                      ; 2 uses
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %14, label %.thread.thread94

14:                                               ; preds = %.lr.ph143.i.i.i.1
  %15 = mul nsw i32 %8, 10
  %16 = sub nsw i32 %15, %12                      ; 2 uses
  %.not105.i.i.i.1 = icmp eq i64 %.val3.i, 3
  br i1 %.not105.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.2

.lr.ph143.i.i.i.2:                                ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %18 = load i8, ptr %17, align 1, !alias.scope !484, !noundef !5
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -48                      ; 2 uses
  %21 = icmp ult i32 %20, 10
  br i1 %21, label %22, label %.thread.thread94

22:                                               ; preds = %.lr.ph143.i.i.i.2
  %23 = mul nsw i32 %16, 10
  %24 = sub nsw i32 %23, %20                      ; 2 uses
  %.not105.i.i.i.2 = icmp eq i64 %.val3.i, 4
  br i1 %.not105.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.3

.lr.ph143.i.i.i.3:                                ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %26 = load i8, ptr %25, align 1, !alias.scope !484, !noundef !5
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -48                      ; 2 uses
  %29 = icmp ult i32 %28, 10
  br i1 %29, label %30, label %.thread.thread94

30:                                               ; preds = %.lr.ph143.i.i.i.3
  %31 = mul nsw i32 %24, 10
  %32 = sub i32 %31, %28                          ; 2 uses
  %.not105.i.i.i.3 = icmp eq i64 %.val3.i, 5
  br i1 %.not105.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.4

.lr.ph143.i.i.i.4:                                ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %34 = load i8, ptr %33, align 1, !alias.scope !484, !noundef !5
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -48                      ; 2 uses
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %.thread.thread94

38:                                               ; preds = %.lr.ph143.i.i.i.4
  %39 = mul i32 %32, 10
  %40 = sub i32 %39, %36                          ; 2 uses
  %.not105.i.i.i.4 = icmp eq i64 %.val3.i, 6
  br i1 %.not105.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.a

.lr.ph143.i.i.i.a:                                ; preds = %38
  %41 = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.ch = load i8, ptr %41, align 1, !alias.scope !484, !noundef !5
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %42, label %.thread.thread94

42:                                               ; preds = %.lr.ph143.i.i.i.a
  %43 = mul i32 %40, 10
  %44 = sub i32 %43, %i.cj                        ; 2 uses
  %.not105.i.i.i.5 = icmp eq i64 %.val3.i, 7
  br i1 %.not105.i.i.i.5, label %.loopexit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %42
  %45 = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %46 = load i8, ptr %45, align 1, !alias.scope !484, !noundef !5
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -48                      ; 2 uses
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %.thread.thread94

50:                                               ; preds = %bb.ab
  %51 = mul i32 %44, 10
  %52 = sub i32 %51, %48
  br label %.loopexit.i.i.i

bb.ac:                                            ; preds = %bb.v, %bb.w, %thread-pre-split.i.i.i
  %.sroa.26.0.i.i.i = phi i64 [ %i.bl, %bb.w ], [ %.val3.i, %thread-pre-split.i.i.i ], [ %.val3.i, %bb.v ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bk, %bb.w ], [ %.val.i, %thread-pre-split.i.i.i ], [ %.val.i, %bb.v ] ; 8 uses
  %i.cl = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.cl, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.ac, %bb.af
  %.sroa.0.3147.i.i.i = phi ptr [ %i.cm, %bb.af ], [ %.sroa.0.0.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.cn, %bb.af ], [ %.sroa.26.0.i.i.i, %bb.ac ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.cx, %bb.af ], [ 0, %bb.ac ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.cn = add nsw i64 %.sroa.26.3146.i.i.i, -1    ; 2 uses
  %i.co = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.cp = extractvalue { i32, i1 } %i.co, 0
  %i.cq = extractvalue { i32, i1 } %i.co, 1
  br i1 %i.cq, label %.loopexit114.sink.split.i.i.i, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %.preheader115.i.i.i
  %i.cr = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -48                  ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 10
  br i1 %i.cu, label %bb.ae, label %.thread.thread94

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cp, i32 %i.ct) ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  br i1 %i.cw, label %.thread.thread94, label %bb.af, !prof !17

bb.af:                                            ; preds = %bb.ae
  %i.cx = extractvalue { i32, i1 } %i.cv, 0       ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.cy = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nsw i32 %i.cz, -48                  ; 3 uses
  %i.db = icmp ult i32 %i.da, 10
  br i1 %i.db, label %bb.ag, label %.thread.thread94

bb.ag:                                            ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !484, !noundef !5
  %i.de = zext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %i.dg = icmp ult i32 %i.df, 10
  br i1 %i.dg, label %bb.ah, label %.thread.thread94

bb.ah:                                            ; preds = %.lr.ph152.i.i.i.1
  %i.dh = mul nuw nsw i32 %i.da, 10
  %i.di = add nuw nsw i32 %i.df, %i.dh            ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !484, !noundef !5
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.ai, label %.thread.thread94

bb.ai:                                            ; preds = %.lr.ph152.i.i.i.2
  %i.do = mul nuw nsw i32 %i.di, 10
  %i.dp = add nuw nsw i32 %i.dm, %i.do            ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !484, !noundef !5
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, -48                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 10
  br i1 %i.du, label %bb.aj, label %.thread.thread94

bb.aj:                                            ; preds = %.lr.ph152.i.i.i.3
  %i.dv = mul nuw nsw i32 %i.dp, 10
  %i.dw = add nuw nsw i32 %i.dt, %i.dv            ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !484, !noundef !5
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ak, label %.thread.thread94

bb.ak:                                            ; preds = %.lr.ph152.i.i.i.4
  %i.ec = mul i32 %i.dw, 10
  %i.ed = add i32 %i.ea, %i.ec                    ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %bb.ak
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !484, !noundef !5
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -48                  ; 2 uses
  %i.ei = icmp ult i32 %i.eh, 10
  br i1 %i.ei, label %bb.al, label %.thread.thread94

bb.al:                                            ; preds = %.lr.ph152.i.i.i.5
  %i.ej = mul i32 %i.ed, 10
  %i.ek = add i32 %i.eh, %i.ej                    ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !484, !noundef !5
  %i.en = zext i8 %i.em to i32
  %i.eo = add nsw i32 %i.en, -48                  ; 2 uses
  %i.ep = icmp ult i32 %i.eo, 10
  br i1 %i.ep, label %bb.am, label %.thread.thread94

bb.am:                                            ; preds = %.lr.ph152.i.i.i.6
  %i.eq = mul i32 %i.ek, 10
  %i.er = add i32 %i.eo, %i.eq
  br label %.loopexit.i.i.i

.thread.thread:                                   ; preds = %bb.q, %._crit_edge.loopexit.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val89 = load i16, ptr %i.es, align 8
  %i.et = add i16 %.val89, -200
  %spec.select.i.i.i90 = icmp ult i16 %i.et, 100
  %..i.i2191 = select i1 %spec.select.i.i.i90, i32 0, i32 2
  br label %bb.an

.thread.thread94:                                 ; preds = %bb.y, %bb.z, %.lr.ph143.i.i.i, %.lr.ph143.i.i.i.1, %.lr.ph143.i.i.i.2, %.lr.ph143.i.i.i.3, %.lr.ph143.i.i.i.4, %.lr.ph143.i.i.i.a, %bb.ab, %bb.ae, %bb.ad, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %bb.v, %bb.v, %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val99 = load i16, ptr %i.eu, align 8
  %i.ev = add i16 %.val99, -200
  %spec.select.i.i.i100 = icmp ult i16 %i.ev, 100
  %..i.i21101 = select i1 %spec.select.i.i.i100, i32 0, i32 2
  br label %bb.an

.thread:                                          ; preds = %.loopexit.i.i.i, %.loopexit114.sink.split.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.cg, %.loopexit114.sink.split.i.i.i ], [ %i.bq, %.loopexit.i.i.i ] ; 2 uses
  %i.ew = trunc i64 %.sroa.12.0.insert.insert.i.i.i to i1
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val = load i16, ptr %i.ex, align 8
  %i.ey = add i16 %.val, -200
  %spec.select.i.i.i = icmp ult i16 %i.ey, 100
  %..i.i21 = select i1 %spec.select.i.i.i, i32 0, i32 2
  %spec.select = select i1 %i.ew, i32 %..i.i21, i32 %.sroa.5.0.extract.trunc.i.i
  br label %bb.an

bb.an:                                            ; preds = %.thread, %.thread.thread94, %.thread.thread
  %i.ez = phi i32 [ %..i.i21101, %.thread.thread94 ], [ %spec.select, %.thread ], [ %..i.i2191, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.fb = invoke noundef align 8 ptr @_RINvMs_NtCs577yCKf7gy3_4http10extensionsNtB5_10Extensions3getNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry14CollectionNameEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fa)
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %bb.an
  %.not.i23 = icmp eq ptr %i.fb, null
  br i1 %.not.i23, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.fb)
          to label %bb.as unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  store i64 -1, ptr %i.d, align 8, !alias.scope !485, !noalias !486
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %.val15 = load ptr, ptr %i.fd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val15, i64 16 ; 6 uses
  %i.ff = cmpxchg weak ptr %i.fe, i8 0, i8 1 acquire monotonic, align 1
  %i.fg = extractvalue { i8, i1 } %i.ff, 1
  br i1 %i.fg, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.fh = invoke noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.fe, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i unwind label %.thread38 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i: ; preds = %bb.at, %bb.as
  %i.fi = ptrtoint ptr %i.fe to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fi)
          to label %bb.au unwind label %.thread38

.thread38:                                        ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, %bb.at
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.bc unwind label %bb.bb

bb.au:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 689
  store i8 0, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.fq = load i32, ptr %i.fp, align 8, !range !20, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMs0_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetryNtB5_29TonicWorkerTelemetryCollector12add_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.fk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.fo, i32 noundef %i.fq, i32 noundef %i.ez, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_(ptr nonnull %i.fe) #17
          to label %bb.bc unwind label %bb.bb

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fi)
          to label %.noexc26 unwind label %.thread42

.noexc26:                                         ; preds = %bb.aw
  %i.fs = cmpxchg ptr %i.fe, i8 1, i8 0 release monotonic, align 1
  %i.ft = extractvalue { i8, i1 } %i.fs, 1
  br i1 %i.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, label %bb.ax, !prof !11

bb.ax:                                            ; preds = %.noexc26
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.fe, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit unwind label %.thread42

.thread42:                                        ; preds = %bb.aw, %bb.ax
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit: ; preds = %.noexc26, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.fv = load ptr, ptr %i.fd, align 8, !alias.scope !489, !nonnull !5, !noundef !5
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !489
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit unwind label %bb.ba

bb.az:                                            ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30, %bb.ba
  %.pn13 = phi { ptr, i32 } [ %i.fy, %bb.ba ], [ %.pn7.pn.pn.pn.pn, %bb.bi ], [ %.pn7.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.ba:                                            ; preds = %bb.ay
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  br label %common.ret

bb.bb:                                            ; preds = %bb.bg, %bb.av, %bb.bi, %bb.bh, %bb.bd, %.thread38, %bb.j
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bc:                                            ; preds = %bb.av, %.thread42, %bb.ao, %.thread38
  %.pn7.pn = phi { ptr, i32 } [ %i.fj, %.thread38 ], [ %i.fu, %.thread42 ], [ %i.fc, %bb.ao ], [ %i.fr, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.p, %bb.bc
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %bb.bc ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g) #17
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.j, %bb.n, %bb.bd
  %.pn7.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn, %bb.bd ], [ %i.z, %bb.n ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.bf:                                            ; preds = %bb.bh, %bb.d
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !492, !nonnull !5, !noundef !5
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !492
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 unwind label %bb.bb

bb.bh:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %1) #17
          to label %bb.bf unwind label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30: ; preds = %bb.bf, %bb.bg
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 689
  %i.gf = load i8, ptr %i.ge, align 1, !range !480, !noundef !5
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bi, label %bb.az

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gh) #17
          to label %bb.az unwind label %bb.bb
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtCsl8OoimOLbh_6qdrant5tonic7loggingINtB6_17LoggingMiddlewareINtNtB8_15tonic_telemetry21TonicTelemetryServiceINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtB8_4auth14AuthMiddlewareNtNtNtCsgOCJwUSa4vG_5tonic7service6router6RoutesEB36_EEEINtCs372LqxyVCI8_13tower_service7ServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtB3c_4body4BodyEE4call0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
end_hunk_0
