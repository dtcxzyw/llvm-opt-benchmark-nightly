Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.179?download=true
inline.NumInlined: 431
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtBb_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1I_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtB1I_5value5ErrorEECsl8OoimOLbh_6qdrant:bb.a
bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.p, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !447
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !447
  store i8 1, ptr %i.a, align 8, !noalias !447
  %i.d = call { ptr, i64 } @_RNvYNtNtNtCs4NSHK7GLW4I_10serde_core2de5value5ErrorNtB6_5Error13invalid_valueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48), !noalias !447 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !447
  store ptr %i.e, ptr %0, align 8, !alias.scope !447
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !alias.scope !447
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8, !alias.scope !447
  store ptr null, ptr %0, align 8, !alias.scope !447
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8, !alias.scope !447
  store ptr null, ptr %0, align 8, !alias.scope !447
  br label %_RINvXNvXNvNtNtCsPYQCUnoTxQ_10collection10operations18consistency_paramss1_1__NtB8_19ReadConsistencyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1F_7Visitor9visit_u64NtNtB1F_5value5ErrorECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.j, align 8, !alias.scope !447
  store ptr null, ptr %0, align 8, !alias.scope !447
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
  switch i8 %i.i, label %default.unreachable85 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.c
  ]

default.unreachable85:                            ; preds = %bb.a
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

bb.d:                                             ; preds = %bb.bd, %bb.e
  %.pn7.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn.pn, %bb.bd ], [ %i.p, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 690
  %i.n = load i8, ptr %i.m, align 2, !range !467, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.bg, label %bb.be

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
          to label %bb.bd unwind label %bb.ba

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
  br label %bb.bd

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.aa = invoke noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11)
          to label %bb.p unwind label %bb.am      ; 3 uses

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 17 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val3.i = load i64, ptr %i.ac, align 8, !noundef !5 ; 21 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val3.i
  %i.ae = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.ae, label %.thread.thread93, label %iter.check

iter.check:                                       ; preds = %bb.q
  %min.iters.check = icmp ult i64 %.val3.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check130 = icmp ult i64 %.val3.i, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %.val3.i, 24
  %n.vec = and i64 %.val3.i, -32                  ; 4 uses
  %i.ag = getelementptr i8, ptr %.val.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi131 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi133, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load132 = load <16 x i8>, ptr %i.ah, align 1 ; 2 uses
  %i.ai = add <16 x i8> %wide.load, splat (i8 -127)
  %i.aj = icmp ult <16 x i8> %i.ai, splat (i8 -95)
  %i.ak = add <16 x i8> %wide.load132, splat (i8 -127)
  %i.al = icmp ult <16 x i8> %i.ak, splat (i8 -95)
  %i.am = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.an = icmp ne <16 x i8> %wide.load132, splat (i8 9)
  %i.ao = and <16 x i1> %i.aj, %i.am
  %predphi = or <16 x i1> %vec.phi, %i.ao         ; 2 uses
  %i.ap = and <16 x i1> %i.al, %i.an
  %predphi133 = or <16 x i1> %vec.phi131, %i.ap   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi133, %predphi
  %i.ar = bitcast <16 x i1> %bin.rdx to i16
  %i.as = icmp ne i16 %i.ar, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val3.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !470

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.as, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %.val3.i, -8                ; 3 uses
  %i.at = getelementptr i8, ptr %.val.i, i64 %n.vec134
  %i.au = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi136 = phi <8 x i1> [ %i.au, %vec.epilog.ph ], [ %predphi139, %vec.epilog.vector.body ]
  %next.gep137 = getelementptr i8, ptr %.val.i, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep137, align 1 ; 2 uses
  %i.av = add <8 x i8> %wide.load138, splat (i8 -127)
  %i.aw = icmp ult <8 x i8> %i.av, splat (i8 -95)
  %i.ax = icmp ne <8 x i8> %wide.load138, splat (i8 9)
  %i.ay = and <8 x i1> %i.aw, %i.ax
  %predphi139 = or <8 x i1> %vec.phi136, %i.ay    ; 2 uses
  %index.next140 = add nuw i64 %index135, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !449

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ba = bitcast <8 x i1> %predphi139 to i8
  %i.bb = icmp ne i8 %i.ba, 0                     ; 2 uses
  %cmp.n141 = icmp eq i64 %.val3.i, %n.vec134
  br i1 %cmp.n141, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %.sroa.03.01.i.i.i.ph = phi ptr [ %.val.i, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.s
  %.sroa.01.02.i.i.i = phi i1 [ %.sroa.06.0.i.i.i, %bb.s ], [ %.sroa.01.02.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.01.i.i.i = phi ptr [ %i.bc, %bb.s ], [ %.sroa.03.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.bd = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !5 ; 2 uses
  %i.be = add i8 %i.bd, -32
  %or.cond.i.i.i = icmp ult i8 %i.be, 95
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.r

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.s, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.i.i.lcssa = phi i1 [ %i.bb, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %.sroa.06.0.i.i.i, %bb.s ]
  br i1 %.sroa.06.0.i.i.i.lcssa, label %.thread.thread, label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = icmp ne i8 %i.bd, 9
  %i.bg = or i1 %.sroa.01.02.i.i.i, %i.bf
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.bg, %bb.r ], [ %.sroa.01.02.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bh = icmp eq ptr %i.bc, %i.ad
  br i1 %i.bh, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !450

bb.t:                                             ; preds = %._crit_edge.loopexit.i.i.i
  %cond = icmp eq i64 %.val3.i, 1
  %i.bi = load i8, ptr %.val.i, align 1, !alias.scope !471 ; 2 uses
  br i1 %cond, label %bb.u, label %thread-pre-split.i.i.i

bb.u:                                             ; preds = %bb.t
  switch i8 %i.bi, label %bb.ab [
    i8 43, label %.thread.thread93
    i8 45, label %.thread.thread93
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.t
  switch i8 %i.bi, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %thread-pre-split.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.bk = add nsw i64 %.val3.i, -1
  br label %bb.ab

bb.w:                                             ; preds = %thread-pre-split.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.bm = add nsw i64 %.val3.i, -1                ; 2 uses
  %i.bn = icmp samesign ult i64 %.val3.i, 9
  br i1 %i.bn, label %.preheader118.i.i.i, label %.lr.ph.i.i.i20

.preheader118.i.i.i:                              ; preds = %bb.w
  %.not105139.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not105139.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.z, %6, %14, %22, %30, %38, %42, %50, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %.preheader.i.i.i, %.preheader118.i.i.i
  %.sroa.086.1.i.i.i = phi i32 [ %52, %50 ], [ %i.eq, %bb.al ], [ %i.cw, %bb.ae ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader118.i.i.i ], [ %i.cz, %bb.af ], [ %i.dh, %bb.ag ], [ %i.do, %bb.ah ], [ %i.dv, %bb.ai ], [ %i.ec, %bb.aj ], [ %i.ej, %bb.ak ], [ %8, %6 ], [ %16, %14 ], [ %24, %22 ], [ %32, %30 ], [ %40, %38 ], [ %44, %42 ], [ %i.cb, %bb.z ]
  %.sroa.086.1.i.i.i.fr = freeze i32 %.sroa.086.1.i.i.i
  %i.bo = zext i32 %.sroa.086.1.i.i.i.fr to i64
  %i.bp = shl nuw i64 %i.bo, 32
  br label %.thread

.lr.ph.i.i.i20:                                   ; preds = %bb.w, %bb.z
  %.sroa.0.1138.i.i.i = phi ptr [ %i.bq, %bb.z ], [ %i.bl, %bb.w ] ; 3 uses
  %.sroa.26.1137.i.i.i = phi i64 [ %i.br, %bb.z ], [ %i.bm, %bb.w ]
  %.sroa.086.0136.i.i.i = phi i32 [ %i.cb, %bb.z ], [ 0, %bb.w ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i, i64 1
  %i.br = add nsw i64 %.sroa.26.1137.i.i.i, -1    ; 2 uses
  %i.bs = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i, i32 10) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 0
  %i.bu = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bu, label %.loopexit114.sink.split.i.i.i, label %bb.x, !prof !17

bb.x:                                             ; preds = %.lr.ph.i.i.i20
  %i.bv = load i8, ptr %.sroa.0.1138.i.i.i, align 1, !alias.scope !471, !noundef !5
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 10
  br i1 %i.by, label %bb.y, label %.thread.thread93

bb.y:                                             ; preds = %bb.x
  %i.bz = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bt, i32 %i.bx) ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  br i1 %i.ca, label %.thread.thread93, label %bb.z, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.cb = extractvalue { i32, i1 } %i.bz, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i20

.loopexit114.sink.split.i.i.i:                    ; preds = %.lr.ph.i.i.i20, %.preheader115.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i, %.preheader115.i.i.i ], [ %.sroa.0.1138.i.i.i, %.lr.ph.i.i.i20 ]
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i20 ]
  %i.cc = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !471, !noundef !5
  %i.cd = add i8 %i.cc, -48
  %i.ce = icmp ult i8 %i.cd, 10
  %i.cf = select i1 %i.ce, i64 %.sink190.i.i.i, i64 257
  br label %.thread

.lr.ph143.i.i.i:                                  ; preds = %.preheader118.i.i.i
  %3 = load i8, ptr %i.bl, align 1, !alias.scope !471, !noundef !5 ; 2 uses
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %6, label %.thread.thread93

6:                                                ; preds = %.lr.ph143.i.i.i
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 48, %7                         ; 2 uses
  %.not105.i.i.i = icmp eq i64 %.val3.i, 2
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.1

.lr.ph143.i.i.i.1:                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %10 = load i8, ptr %9, align 1, !alias.scope !471, !noundef !5
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -48                      ; 2 uses
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %14, label %.thread.thread93

14:                                               ; preds = %.lr.ph143.i.i.i.1
  %15 = mul nsw i32 %8, 10
  %16 = sub nsw i32 %15, %12                      ; 2 uses
  %.not105.i.i.i.1 = icmp eq i64 %.val3.i, 3
  br i1 %.not105.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.2

.lr.ph143.i.i.i.2:                                ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %18 = load i8, ptr %17, align 1, !alias.scope !471, !noundef !5
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -48                      ; 2 uses
  %21 = icmp ult i32 %20, 10
  br i1 %21, label %22, label %.thread.thread93

22:                                               ; preds = %.lr.ph143.i.i.i.2
  %23 = mul nsw i32 %16, 10
  %24 = sub nsw i32 %23, %20                      ; 2 uses
  %.not105.i.i.i.2 = icmp eq i64 %.val3.i, 4
  br i1 %.not105.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.3

.lr.ph143.i.i.i.3:                                ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %26 = load i8, ptr %25, align 1, !alias.scope !471, !noundef !5
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -48                      ; 2 uses
  %29 = icmp ult i32 %28, 10
  br i1 %29, label %30, label %.thread.thread93

30:                                               ; preds = %.lr.ph143.i.i.i.3
  %31 = mul nsw i32 %24, 10
  %32 = sub i32 %31, %28                          ; 2 uses
  %.not105.i.i.i.3 = icmp eq i64 %.val3.i, 5
  br i1 %.not105.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.4

.lr.ph143.i.i.i.4:                                ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %34 = load i8, ptr %33, align 1, !alias.scope !471, !noundef !5
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -48                      ; 2 uses
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %.thread.thread93

38:                                               ; preds = %.lr.ph143.i.i.i.4
  %39 = mul i32 %32, 10
  %40 = sub i32 %39, %36                          ; 2 uses
  %.not105.i.i.i.4 = icmp eq i64 %.val3.i, 6
  br i1 %.not105.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i.a

.lr.ph143.i.i.i.a:                                ; preds = %38
  %41 = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.cg = load i8, ptr %41, align 1, !alias.scope !471, !noundef !5
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48                  ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 10
  br i1 %i.cj, label %42, label %.thread.thread93

42:                                               ; preds = %.lr.ph143.i.i.i.a
  %43 = mul i32 %40, 10
  %44 = sub i32 %43, %i.ci                        ; 2 uses
  %.not105.i.i.i.5 = icmp eq i64 %.val3.i, 7
  br i1 %.not105.i.i.i.5, label %.loopexit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %42
  %45 = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %46 = load i8, ptr %45, align 1, !alias.scope !471, !noundef !5
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -48                      ; 2 uses
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %.thread.thread93

50:                                               ; preds = %bb.aa
  %51 = mul i32 %44, 10
  %52 = sub i32 %51, %48
  br label %.loopexit.i.i.i

bb.ab:                                            ; preds = %bb.u, %bb.v, %thread-pre-split.i.i.i
  %.sroa.26.0.i.i.i = phi i64 [ %i.bk, %bb.v ], [ %.val3.i, %thread-pre-split.i.i.i ], [ %.val3.i, %bb.u ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bj, %bb.v ], [ %.val.i, %thread-pre-split.i.i.i ], [ %.val.i, %bb.u ] ; 8 uses
  %i.ck = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.ck, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.ab, %bb.ae
  %.sroa.0.3147.i.i.i = phi ptr [ %i.cl, %bb.ae ], [ %.sroa.0.0.i.i.i, %bb.ab ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.cm, %bb.ae ], [ %.sroa.26.0.i.i.i, %bb.ab ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.cw, %bb.ae ], [ 0, %bb.ab ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.cm = add nsw i64 %.sroa.26.3146.i.i.i, -1    ; 2 uses
  %i.cn = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.co = extractvalue { i32, i1 } %i.cn, 0
  %i.cp = extractvalue { i32, i1 } %i.cn, 1
  br i1 %i.cp, label %.loopexit114.sink.split.i.i.i, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %.preheader115.i.i.i
  %i.cq = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !471, !noundef !5
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -48                  ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 10
  br i1 %i.ct, label %bb.ad, label %.thread.thread93

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.co, i32 %i.cs) ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 1
  br i1 %i.cv, label %.thread.thread93, label %bb.ae, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.cw = extractvalue { i32, i1 } %i.cu, 0       ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.cx = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !471, !noundef !5
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 3 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.af, label %.thread.thread93

bb.af:                                            ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !471, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.ag, label %.thread.thread93

bb.ag:                                            ; preds = %.lr.ph152.i.i.i.1
  %i.dg = mul nuw nsw i32 %i.cz, 10
  %i.dh = add nuw nsw i32 %i.de, %i.dg            ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !471, !noundef !5
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -48                  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 10
  br i1 %i.dm, label %bb.ah, label %.thread.thread93

bb.ah:                                            ; preds = %.lr.ph152.i.i.i.2
  %i.dn = mul nuw nsw i32 %i.dh, 10
  %i.do = add nuw nsw i32 %i.dl, %i.dn            ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !471, !noundef !5
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ai, label %.thread.thread93

bb.ai:                                            ; preds = %.lr.ph152.i.i.i.3
  %i.du = mul nuw nsw i32 %i.do, 10
  %i.dv = add nuw nsw i32 %i.ds, %i.du            ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !471, !noundef !5
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -48                  ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 10
  br i1 %i.ea, label %bb.aj, label %.thread.thread93

bb.aj:                                            ; preds = %.lr.ph152.i.i.i.4
  %i.eb = mul i32 %i.dv, 10
  %i.ec = add i32 %i.dz, %i.eb                    ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !471, !noundef !5
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, -48                  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 10
  br i1 %i.eh, label %bb.ak, label %.thread.thread93

bb.ak:                                            ; preds = %.lr.ph152.i.i.i.5
  %i.ei = mul i32 %i.ec, 10
  %i.ej = add i32 %i.eg, %i.ei                    ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !471, !noundef !5
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %bb.al, label %.thread.thread93

bb.al:                                            ; preds = %.lr.ph152.i.i.i.6
  %i.ep = mul i32 %i.ej, 10
  %i.eq = add i32 %i.en, %i.ep
  br label %.loopexit.i.i.i

bb.am:                                            ; preds = %bb.o
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.thread.thread:                                   ; preds = %bb.p, %._crit_edge.loopexit.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val88 = load i16, ptr %i.es, align 8
  %i.et = add i16 %.val88, -200
  %spec.select.i.i.i89 = icmp ult i16 %i.et, 100
  %..i.i2190 = select i1 %spec.select.i.i.i89, i32 0, i32 2
  br label %bb.an

.thread.thread93:                                 ; preds = %bb.x, %bb.y, %.lr.ph143.i.i.i, %.lr.ph143.i.i.i.1, %.lr.ph143.i.i.i.2, %.lr.ph143.i.i.i.3, %.lr.ph143.i.i.i.4, %.lr.ph143.i.i.i.a, %bb.aa, %bb.ad, %bb.ac, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %bb.u, %bb.u, %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val98 = load i16, ptr %i.eu, align 8
  %i.ev = add i16 %.val98, -200
  %spec.select.i.i.i99 = icmp ult i16 %i.ev, 100
  %..i.i21100 = select i1 %spec.select.i.i.i99, i32 0, i32 2
  br label %bb.an

.thread:                                          ; preds = %.loopexit.i.i.i, %.loopexit114.sink.split.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.cf, %.loopexit114.sink.split.i.i.i ], [ %i.bp, %.loopexit.i.i.i ] ; 2 uses
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

bb.an:                                            ; preds = %.thread, %.thread.thread93, %.thread.thread
  %i.ez = phi i32 [ %..i.i21100, %.thread.thread93 ], [ %spec.select, %.thread ], [ %..i.i2190, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.fb = invoke noundef align 8 ptr @_RINvMs_NtCs577yCKf7gy3_4http10extensionsNtB5_10Extensions3getNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry14CollectionNameEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fa)
          to label %bb.ao unwind label %.thread41 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %.not.i23 = icmp eq ptr %i.fb, null
  br i1 %.not.i23, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.fb)
          to label %bb.ar unwind label %.thread41

bb.aq:                                            ; preds = %bb.ao
  store i64 -1, ptr %i.d, align 8, !alias.scope !472
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %.val15 = load ptr, ptr %i.fc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val15, i64 16 ; 6 uses
  %i.fe = cmpxchg weak ptr %i.fd, i8 0, i8 1 acquire monotonic, align 1
  %i.ff = extractvalue { i8, i1 } %i.fe, 1
  br i1 %i.ff, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, label %bb.as, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.fg = invoke noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.fd, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i unwind label %.thread37 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i: ; preds = %bb.as, %bb.ar
  %i.fh = ptrtoint ptr %i.fd to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fh)
          to label %bb.at unwind label %.thread37

.thread37:                                        ; preds = %bb.as, %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.bb unwind label %bb.ba

bb.at:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 689
  store i8 0, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.fp = load i32, ptr %i.fo, align 8, !range !20, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMs0_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetryNtB5_29TonicWorkerTelemetryCollector12add_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.ez, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_(ptr nonnull %i.fd) #17
          to label %bb.bb unwind label %bb.ba

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fh)
          to label %.noexc26 unwind label %.thread41

.noexc26:                                         ; preds = %bb.av
  %i.fr = cmpxchg ptr %i.fd, i8 1, i8 0 release monotonic, align 1
  %i.fs = extractvalue { i8, i1 } %i.fr, 1
  br i1 %i.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, label %bb.aw, !prof !11

bb.aw:                                            ; preds = %.noexc26
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.fd, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit unwind label %.thread41

.thread41:                                        ; preds = %bb.an, %bb.ap, %bb.av, %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit: ; preds = %.noexc26, %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.fu = load ptr, ptr %i.fc, align 8, !alias.scope !475, !nonnull !5, !noundef !5
  %i.fv = atomicrmw add ptr %i.fu, i64 -1 release, align 8, !noalias !475
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fc) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit unwind label %bb.az

bb.ay:                                            ; preds = %bb.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30, %bb.az
  %.pn13 = phi { ptr, i32 } [ %i.fx, %bb.az ], [ %.pn7.pn.pn.pn.pn, %bb.bh ], [ %.pn7.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.az:                                            ; preds = %bb.ax
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  br label %common.ret

bb.ba:                                            ; preds = %bb.bf, %bb.au, %bb.bh, %bb.bg, %bb.bc, %.thread37, %bb.j
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bb:                                            ; preds = %bb.au, %.thread41, %.thread37
  %.pn7.pn = phi { ptr, i32 } [ %i.fi, %.thread37 ], [ %i.ft, %.thread41 ], [ %i.fq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.am, %bb.bb
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %bb.bb ], [ %i.er, %bb.am ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g) #17
          to label %bb.bd unwind label %bb.ba

bb.bd:                                            ; preds = %bb.j, %bb.n, %bb.bc
  %.pn7.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn, %bb.bc ], [ %i.z, %bb.n ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.be:                                            ; preds = %bb.bg, %bb.d
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !478, !nonnull !5, !noundef !5
  %i.gb = atomicrmw add ptr %i.ga, i64 -1 release, align 8, !noalias !478
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fz) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 unwind label %bb.ba

bb.bg:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %1) #17
          to label %bb.be unwind label %bb.ba

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30: ; preds = %bb.be, %bb.bf
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 689
  %i.ge = load i8, ptr %i.gd, align 1, !range !467, !noundef !5
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.bh, label %bb.ay

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gg) #17
          to label %bb.ay unwind label %bb.ba
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtCsl8OoimOLbh_6qdrant5tonic7loggingINtB6_17LoggingMiddlewareINtNtB8_15tonic_telemetry21TonicTelemetryServiceINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtB8_4auth14AuthMiddlewareNtNtNtCsgOCJwUSa4vG_5tonic7service6router6RoutesEB36_EEEINtCs372LqxyVCI8_13tower_service7ServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtB3c_4body4BodyEE4call0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
end_hunk_0
