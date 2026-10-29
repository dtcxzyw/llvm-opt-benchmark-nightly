Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.05?download=true
inline.NumInlined: 1150
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18emit_mapping_startCskeugdADtBsi_12pingora_core:bb.a
          to label %bb.l unwind label %bb.k, !noalias !1887

bb.g:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1887
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !noalias !1887
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !1888
  %i.v = load ptr, ptr %.sroa.7.0..sroa_idx4.i, align 8, !noalias !1887, !nonnull !8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !1887, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1887
  store i32 33, ptr %i.a, align 4, !noalias !1887
  %i.y = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.f, !noalias !1887

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1887
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.z)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i unwind label %bb.f, !noalias !1887

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i: ; preds = %bb.i
  %i.aa = load ptr, ptr %.sroa.7.0..sroa_idx4.i, align 8, !alias.scope !1889, !noalias !1887, !nonnull !8, !noundef !8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.aa, i64 %i.x, i1 false), !noalias !1887
  %i.ac = load ptr, ptr %.sroa.7.0..sroa_idx4.i, align 8, !alias.scope !1889, !noalias !1887, !nonnull !8, !noundef !8
  store i8 33, ptr %i.ac, align 1, !noalias !1887
  %i.ad = add nuw i64 %i.x, 1
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !1889, !noalias !1887
  %.sroa.0.0.copyload9.pre = load i64, ptr %i.b, align 8, !noalias !1886
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i, %bb.h
  %.sroa.0.0.copyload9 = phi i64 [ %.sroa.0.0.copyload9.pre, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i ], [ %.sroa.0.0.copyload.i, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1887
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !1887
  unreachable

bb.l:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.u

bb.m:                                             ; preds = %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !1886
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit

_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.j, %bb.m
  %.sroa.0.012 = phi i64 [ %.sroa.0.0.copyload9, %bb.j ], [ -1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.012, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 -9223372036854775801, ptr %i.g, align 8
  call void @_RNvMNtNtCskItKYAOUBlG_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !range !11, !noundef !8
  %.not8 = icmp eq i32 %i.ai, -2
  br i1 %.not8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aj = call noundef nonnull align 8 ptr @_RNvXs2_NtCskItKYAOUBlG_10serde_yaml5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core.exit, %bb.a, %bb.o, %bb.n
  %.sroa.0.0 = phi ptr [ null, %bb.o ], [ %i.i, %bb.a ], [ %i.aj, %bb.n ], [ %i.p, %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE19flush_mapping_startCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !8 ; 5 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.b
    i64 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %i.a, -1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !1910 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.h, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !1910 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1911, !nonnull !8, !noundef !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1912
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.f, %bb.e, %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  %i.k = tail call fastcc noundef align 8 ptr @_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18emit_mapping_startCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit20
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit ]
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %i.a, -1
  br i1 %i.l, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit20

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i13 = load i64, ptr %0, align 8, !alias.scope !1913 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i.i13, 0
  br i1 %i.n, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.j
  %.val.i.i.i16 = load i64, ptr %0, align 8, !alias.scope !1913 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i16, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit20, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i17 = load ptr, ptr %i.p, align 8, !alias.scope !1914, !nonnull !8, !noundef !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i17, i64 noundef %.val.i.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1915
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit20

.body.sink.split:                                 ; preds = %bb.k, %bb.d
  %.val2.i.i.i13.sink = phi i64 [ %.val2.i.i.i, %bb.d ], [ %.val2.i.i.i13, %bb.k ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.m, %bb.k ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i14 = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i14, i64 noundef %.val2.i.i.i13.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !8
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.m, %bb.k ], [ %eh.lpad-body.ph, %.body.sink.split ]
  store i64 -9223372036854775808, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml3ser5StateECskeugdADtBsi_12pingora_core.exit20: ; preds = %bb.m, %bb.l, %bb.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <4 x i32>, ptr %.ptr, align 8
  %.fr = freeze <4 x i32> %i.c
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.4 = load i32, ptr %.ptr.4, align 8
  %.val.i.4.fr = freeze i32 %.val.i.4
  %.not.i.4 = icmp eq i32 %.val.i.4.fr, 0
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.5 = load i32, ptr %.ptr.5, align 4
  %.not.i.5 = icmp eq i32 %.val.i.5, 0
  %i.d = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.e = bitcast <4 x i1> %i.d to i4
  %i.f = icmp eq i4 %i.e, 0
  %op.rdx27 = and i1 %i.f, %.not.i.4
  %op.rdx28 = select i1 %op.rdx27, i1 %.not.i.5, i1 false
  br i1 %op.rdx28, label %.preheader.6, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB1G_22ResponseCompressionCtx10is_enableds_0EB1M_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noundef !8
  %i.i = icmp ne ptr %i.h, null
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB1G_22ResponseCompressionCtx10is_enableds_0EB1M_.exit

.preheader.6:                                     ; preds = %.preheader.preheader
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6 = load i32, ptr %.ptr.6, align 8, !noalias !1918, !noundef !8
  %.not.i.6 = icmp ne i32 %.val.i.6, 0
  %.ptr8 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load <4 x i8>, ptr %.ptr8, align 4
  %.fr29 = freeze <4 x i8> %i.j
  %i.k = trunc <4 x i8> %.fr29 to <4 x i1>
  %.ptr8.4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i2.4 = load i8, ptr %.ptr8.4, align 8, !range !20
  %.val.i2.4.fr = freeze i8 %.val.i2.4
  %.ptr8.5 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i2.5 = load i8, ptr %.ptr8.5, align 1, !range !20
  %.val.i2.5.fr = freeze i8 %.val.i2.5
  %.ptr8.6 = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i2.6 = load i8, ptr %.ptr8.6, align 2, !range !20
  %i.l = trunc nuw i8 %.val.i2.6 to i1
  %i.m = bitcast <4 x i1> %i.k to i4
  %i.n = icmp ne i4 %i.m, 0
  %1 = or i8 %.val.i2.5.fr, %.val.i2.4.fr
  %2 = trunc i8 %1 to i1
  %3 = or i1 %i.n, %2
  %4 = or i1 %.not.i.6, %3
  %op.rdx26 = select i1 %4, i1 true, i1 %i.l
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB1G_22ResponseCompressionCtx10is_enableds_0EB1M_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB1G_22ResponseCompressionCtx10is_enableds_0EB1M_.exit: ; preds = %.preheader.6, %.preheader.preheader, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.i, %bb.b ], [ true, %.preheader.preheader ], [ %op.rdx26, %.preheader.6 ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx12adjust_level(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx14request_filter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 8 uses
  %i.e = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.7.i = alloca [96 x i8], align 8          ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = load i64, ptr %0, align 8, !range !15, !alias.scope !1933, !noundef !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <4 x i32>, ptr %.ptr.i, align 8, !alias.scope !1933
  %.fr = freeze <4 x i32> %i.l
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.4.i = load i32, ptr %.ptr.4.i, align 8, !alias.scope !1933
  %.val.i.4.i.fr = freeze i32 %.val.i.4.i
  %.not.i.4.i = icmp eq i32 %.val.i.4.i.fr, 0
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.5.i = load i32, ptr %.ptr.5.i, align 4, !alias.scope !1933
  %.not.i.5.i = icmp eq i32 %.val.i.5.i, 0
  %i.m = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.n = bitcast <4 x i1> %i.m to i4
  %i.o = icmp eq i4 %i.n, 0
  %op.rdx8 = and i1 %i.o, %.not.i.4.i
  %op.rdx9 = select i1 %op.rdx8, i1 %.not.i.5.i, i1 false
  br i1 %op.rdx9, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

.split:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1933, !noundef !8
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.b, label %bb.c

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit: ; preds = %.preheader.preheader.i
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6.i = load i32, ptr %.ptr.6.i, align 8, !alias.scope !1933, !noalias !1934, !noundef !8
  %.not.i.6.i = icmp ne i32 %.val.i.6.i, 0
  %.ptr8.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load <4 x i8>, ptr %.ptr8.i, align 4, !alias.scope !1933
  %.fr10 = freeze <4 x i8> %i.r
  %i.s = trunc <4 x i8> %.fr10 to <4 x i1>
  %.ptr8.4.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i2.4.i = load i8, ptr %.ptr8.4.i, align 8, !range !20, !alias.scope !1933
  %.val.i2.4.i.fr = freeze i8 %.val.i2.4.i
  %.ptr8.5.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i2.5.i = load i8, ptr %.ptr8.5.i, align 1, !range !20, !alias.scope !1933
  %.val.i2.5.i.fr = freeze i8 %.val.i2.5.i
  %.ptr8.6.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i2.6.i = load i8, ptr %.ptr8.6.i, align 2, !range !20, !alias.scope !1933
  %i.t = trunc nuw i8 %.val.i2.6.i to i1
  %i.u = bitcast <4 x i1> %i.s to i4
  %i.v = icmp ne i4 %i.u, 0
  %2 = or i8 %.val.i2.5.i.fr, %.val.i2.4.i.fr
  %3 = trunc i8 %2 to i1
  %4 = or i1 %i.v, %3
  %5 = or i1 %.not.i.6.i, %4
  %op.rdx7 = select i1 %5, i1 true, i1 %i.t
  br i1 %op.rdx7, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression21parse_accept_encoding.exit
  ret void

bb.c:                                             ; preds = %.split
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #38
  unreachable

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread: ; preds = %.preheader.preheader.i, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false)
  %i.w = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression21parse_accept_encoding.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  store ptr %i.w, ptr %i.h, align 8, !noalias !1935
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !1935, !noundef !8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1935 ; 2 uses
  br i1 %i.z, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.ab, align 1, !noalias !1935, !noundef !8
  %i.ad = icmp eq i32 %i.ac, 1885960807
  br i1 %i.ad, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1935
  call void @_RNvMs3_NtCsfwbibGNhVTT_3sfv6parserNtB5_6Parser10parse_list(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.y), !noalias !1935
  %i.ae = load i64, ptr %i.g, align 8, !range !15, !noalias !1935, !noundef !8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1937, !noundef !8 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, %i.j
  br i1 %i.ai, label %bb.g, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #34
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit.i: ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1937, !nonnull !8, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 1, ptr %i.al, align 1, !noalias !1937
  %i.am = add i64 %i.ah, 1
  store i64 %i.am, ptr %i.ag, align 8, !alias.scope !1937
  br label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression21parse_accept_encoding.exit

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1935
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1935, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1935, !noundef !8
  store ptr %i.ao, ptr %i.c, align 8, !noalias !1935, !captures !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !noalias !1935
  %i.as = load atomic i64, ptr @_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1935 ; 2 uses
  %i.at = icmp ult i64 %i.as, 6
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ugt i64 %i.as, 1
  br i1 %i.au, label %bb.ab, label %bb.ac

bb.i:                                             ; preds = %._crit_edge.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1935, !nonnull !8, !noundef !8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !1935, !noundef !8 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 88686269585142076
  call void @llvm.assume(i1 %i.az)
  %.idx.i = mul nuw nsw i64 %i.ay, 104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1935
  store ptr %i.aw, ptr %i.f, align 8, !noalias !1935
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1935
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1935
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1935
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i: ; preds = %bb.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i

bb.j:                                             ; preds = %bb.z, %bb.x, %bb.k
  %.pn18.i = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %.pn.i, %bb.x ], [ %.pn.i, %bb.z ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.w, !noalias !1935

bb.k:                                             ; preds = %.thread.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.aa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i
  %i.bi = phi ptr [ %i.aw, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i ], [ %i.cd, %bb.aa ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1938, !noalias !1935
  %.sroa.0.0.copyload21.i = load i64, ptr %i.bi, align 8, !noalias !1939 ; 3 uses
  %.sroa.7.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx22.i, i64 96, i1 false), !noalias !1939
  %.not14.i = icmp eq i64 %.sroa.0.0.copyload21.i, -2
  br i1 %.not14.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1935
  store i64 %.sroa.0.0.copyload21.i, ptr %i.e, align 8, !noalias !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.i, i64 96, i1 false), !noalias !1935
  %i.bk = icmp eq i64 %.sroa.0.0.copyload21.i, -1
  br i1 %i.bk, label %.thread.i, label %bb.o

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.thread.i: ; preds = %bb.aa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1935
  br label %bb.m

bb.m:                                             ; preds = %bb.ac, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1935
  br label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression21parse_accept_encoding.exit

bb.n:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1935
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !1935
  %i.bl = icmp eq i64 %.pr.i, -1
  br i1 %i.bl, label %.thread.i, label %bb.aa

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !1935
  %i.bm = load i8, ptr %i.bc, align 8, !range !22, !noalias !1935, !noundef !8
  %i.bn = icmp eq i8 %i.bm, 5
  br i1 %i.bn, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bd, align 8, !noalias !1935, !nonnull !8, !noundef !8 ; 2 uses
  %i.bp = load i64, ptr %i.be, align 8, !noalias !1935, !noundef !8 ; 2 uses
  %i.bq = invoke noundef i8 @_RNvXs0_NtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB5_9AlgorithmINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp)
          to label %bb.r unwind label %bb.q, !noalias !1935

bb.q:                                             ; preds = %bb.u, %bb.s, %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfwbibGNhVTT_3sfv4ItemECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.d) #32
          to label %bb.x unwind label %bb.w, !noalias !1935

bb.r:                                             ; preds = %bb.p
  %.not15.i = icmp eq i8 %i.bq, 6
  br i1 %.not15.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef i8 @_RNvXs0_NtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB5_9AlgorithmINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp)
          to label %bb.t unwind label %bb.q, !noalias !1935

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.bt = load i64, ptr %i.bf, align 8, !alias.scope !1941, !noundef !8 ; 3 uses
  %i.bu = load i64, ptr %0, align 8, !range !9, !alias.scope !1941, !noundef !8
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.u, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit20.i

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #34
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit20.i unwind label %bb.q

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit20.i: ; preds = %bb.u, %bb.t
  %i.bw = load ptr, ptr %i.bg, align 8, !alias.scope !1941, !nonnull !8, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  store i8 %i.bs, ptr %i.bx, align 1, !noalias !1941
  %i.by = add i64 %i.bt, 1
  store i64 %i.by, ptr %i.bf, align 8, !alias.scope !1941
  br label %bb.v

bb.v:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit20.i, %bb.r, %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfwbibGNhVTT_3sfv4ItemECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.d)
          to label %bb.n unwind label %bb.y, !noalias !1935

bb.w:                                             ; preds = %bb.z, %bb.q, %bb.j
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !1935
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.cb, %bb.y ], [ %i.br, %bb.q ] ; 2 uses
  %i.ca = load i64, ptr %i.e, align 8, !range !15, !noalias !1935, !noundef !8
  %.not17.i = icmp eq i64 %i.ca, -1
  br i1 %.not17.i, label %bb.z, label %bb.j

bb.y:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfwbibGNhVTT_3sfv9ListEntryECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.e) #32
          to label %bb.j unwind label %bb.w, !noalias !1935

.thread.i:                                        ; preds = %bb.n, %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfwbibGNhVTT_3sfv9ListEntryECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.e)
          to label %bb.aa unwind label %bb.k, !noalias !1935

bb.aa:                                            ; preds = %.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.cc = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1942, !noalias !1935, !nonnull !8, !noundef !8
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1942, !noalias !1935, !nonnull !8, !noundef !8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.cc
  br i1 %i.ce, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsfwbibGNhVTT_3sfv9ListEntryEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %.pn18.i

bb.ab:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1935
  store ptr %i.h, ptr %i.b, align 8, !noalias !1935
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !1935
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.cf, align 8, !noalias !1935
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1935
  store ptr @21, ptr %i.a, align 8, !noalias !1935
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 42, ptr %i.cg, align 8, !noalias !1935
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @21, ptr %i.ch, align 8, !noalias !1935
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 42, ptr %i.ci, align 8, !noalias !1935
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @100, ptr %i.cj, align 8, !noalias !1935
  call void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECskeugdADtBsi_12pingora_core(ptr noundef nonnull @99, ptr noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1935
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1935
  br label %bb.m

_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression21parse_accept_encoding.exit: ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmE8push_mutBN_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx15response_filter(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.611 = alloca [38 x i8], align 2          ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.6 = alloca [38 x i8], align 2            ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !15, !alias.scope !1947, !noundef !8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <4 x i32>, ptr %.ptr.i, align 8, !alias.scope !1947
  %.fr = freeze <4 x i32> %i.e
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.4.i = load i32, ptr %.ptr.4.i, align 8, !alias.scope !1947
  %.val.i.4.i.fr = freeze i32 %.val.i.4.i
  %.not.i.4.i = icmp eq i32 %.val.i.4.i.fr, 0
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.5.i = load i32, ptr %.ptr.5.i, align 4, !alias.scope !1947
  %.not.i.5.i = icmp eq i32 %.val.i.5.i, 0
  %i.f = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  %op.rdx24 = and i1 %i.h, %.not.i.4.i
  %op.rdx25 = select i1 %op.rdx24, i1 %.not.i.5.i, i1 false
  br i1 %op.rdx25, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

.split:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1947, !noundef !8
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit: ; preds = %.preheader.preheader.i
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6.i = load i32, ptr %.ptr.6.i, align 8, !alias.scope !1947, !noalias !1948, !noundef !8
  %.not.i.6.i = icmp ne i32 %.val.i.6.i, 0
  %.ptr8.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <4 x i8>, ptr %.ptr8.i, align 4, !alias.scope !1947
  %.fr26 = freeze <4 x i8> %i.k
  %i.l = trunc <4 x i8> %.fr26 to <4 x i1>
  %.ptr8.4.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i2.4.i = load i8, ptr %.ptr8.4.i, align 8, !range !20, !alias.scope !1947
  %.val.i2.4.i.fr = freeze i8 %.val.i2.4.i
  %.ptr8.5.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i2.5.i = load i8, ptr %.ptr8.5.i, align 1, !range !20, !alias.scope !1947
  %.val.i2.5.i.fr = freeze i8 %.val.i2.5.i
  %.ptr8.6.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i2.6.i = load i8, ptr %.ptr8.6.i, align 2, !range !20, !alias.scope !1947
  %i.m = trunc nuw i8 %.val.i2.6.i to i1
  %i.n = bitcast <4 x i1> %i.l to i4
  %i.o = icmp ne i4 %i.n, 0
  %2 = or i8 %.val.i2.5.i.fr, %.val.i2.4.i.fr
  %3 = trunc i8 %2 to i1
  %4 = or i1 %i.o, %3
  %5 = or i1 %.not.i.6.i, %4
  %op.rdx23 = select i1 %5, i1 true, i1 %i.m
  br i1 %op.rdx23, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread: ; preds = %.preheader.preheader.i, %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  %i.p = load i8, ptr %1, align 8, !range !22, !noundef !8
  switch i8 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18: ; preds = %bb.k, %bb.d, %bb.c, %bb.g, %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, %bb.b, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  ret void

bb.b:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !20, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  tail call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx22response_header_filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.r, i1 noundef zeroext %i.u)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18

bb.c:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noundef !8
  %.not15 = icmp eq ptr %i.w, null
  %. = select i1 %.not15, ptr null, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !20, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20response_body_filter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %., i1 noundef zeroext %i.z)
  %i.aa = load ptr, ptr %i.b, align 8, !noundef !8
  %.not16 = icmp eq ptr %i.aa, null
  br i1 %.not16, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18, label %bb.e

bb.d:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20response_body_filter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 null, i1 noundef zeroext true)
  %i.ab = load ptr, ptr %i.a, align 8, !noundef !8
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %1, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr %1, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.6.0..sroa_idx5, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.6, i64 38, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18

bb.h:                                             ; preds = %bb.j, %bb.f
  %.sroa.611.sink = phi ptr [ %.sroa.611, %bb.j ], [ %.sroa.6, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ac, %bb.f ]
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.611.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.611.sink, i64 38, i1 false)
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  %.sroa.611.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.611, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.611.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %1)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %1, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %.sroa.58.0..sroa_idx, align 1
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %1, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %.sroa.58.0..sroa_idx9, align 1
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.611.0..sroa_idx12, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.611, i64 38, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit18
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20adjust_decompression(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = zext i1 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.c, i8 %i.d, i64 7, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20adjust_preserve_etag(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.d = zext i1 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.c, i8 %i.d, i64 7, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20response_body_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(address_is_null) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8.sroa.3 = alloca [16 x i8], align 8     ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !15, !noundef !8
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.r
  %.sroa.3.0 = phi ptr [ %.sroa.4.8.copyload, %bb.r ], [ null, %bb.b ]
  %.sroa.8.sroa.0.0 = phi ptr [ %.sroa.7.8.copyload, %bb.r ], [ undef, %bb.b ]
  store ptr %.sroa.3.0, ptr %0, align 8
  %.sroa.8.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.sroa.0.0, ptr %.sroa.8.8..sroa_idx5, align 8
  %.sroa.8.sroa.3.0..sroa.8.8..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3.0..sroa.8.8..sroa_idx5.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3, i64 16, i1 false)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.5.0 = phi i64 [ %i.n, %bb.f ], [ 0, %bb.d ]
  %.sroa.014.0 = phi ptr [ %i.l, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !8, !align !21, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !8, !nonnull !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0) ]
  call void %i.q(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.5.0, i1 noundef zeroext %3) #37
  %.sroa.4.8.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8 ; 3 uses
  %i.r = icmp eq ptr %.sroa.4.8.copyload, null
  br i1 %i.r, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.8.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.8.copyload, ptr %i.c, align 8, !noalias !1957
  %i.s = load atomic i64, ptr @_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1957 ; 2 uses
  %i.t = icmp ult i64 %i.s, 6
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ugt i64 %i.s, 1
  br i1 %i.u, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.n, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.v, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %common.resume.i unwind label %bb.q, !noalias !1955

bb.j:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1957
  store ptr %i.c, ptr %i.b, align 8, !noalias !1957
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsm_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtCsfsXztIhCltD_13pingora_error5ErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1957
  store ptr @21, ptr %i.a, align 8, !noalias !1957
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 42, ptr %i.w, align 8, !noalias !1957
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @21, ptr %i.x, align 8, !noalias !1957
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 42, ptr %i.y, align 8, !noalias !1957
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @20, ptr %i.z, align 8, !noalias !1957
  invoke void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECskeugdADtBsi_12pingora_core(ptr noundef nonnull @18, ptr noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.m unwind label %bb.j, !noalias !1958

bb.l:                                             ; preds = %bb.m, %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression8CtxInnerEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.o unwind label %bb.n, !noalias !1955

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1957
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8, !alias.scope !1956
  store ptr null, ptr %i.h, align 8, !alias.scope !1956
  br label %bb.i

bb.o:                                             ; preds = %bb.l
  store i64 -1, ptr %1, align 8, !alias.scope !1956
  store ptr null, ptr %i.h, align 8, !alias.scope !1956
  store ptr null, ptr %0, align 8, !alias.scope !1955
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !1959, !noalias !1957, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ab)
          to label %_RNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB4_22ResponseCompressionCtx20response_body_filters_0Ba_.exit unwind label %bb.p, !noalias !1960

common.resume.i:                                  ; preds = %bb.p, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %.pn.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 72, i64 noundef 8) #35, !noalias !1960
  br label %common.resume.i

bb.q:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !1955
  unreachable

_RNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB4_22ResponseCompressionCtx20response_body_filters_0Ba_.exit: ; preds = %bb.o
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 72, i64 noundef 8) #35, !noalias !1960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.e

bb.s:                                             ; preds = %_RNCNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB4_22ResponseCompressionCtx20response_body_filters_0Ba_.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx22adjust_algorithm_level(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i8 noundef range(i8 0, 7) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  store i32 %2, ptr %i.e, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx22response_header_filter(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(232) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 17 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 13 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [2 x i8], align 1                 ; 7 uses
  %i.t = load i64, ptr %0, align 8, !range !15, !alias.scope !2043, !noundef !8
  %i.u = icmp eq i64 %i.t, -1
  %.sink46.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sink46.i.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.u, label %.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load <4 x i32>, ptr %.ptr.i, align 8, !alias.scope !2043
  %.fr = freeze <4 x i32> %i.v
  %i.w = icmp eq <4 x i32> %.fr, zeroinitializer  ; 5 uses
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.4.i = load i32, ptr %.ptr.4.i, align 8, !alias.scope !2043
  %.val.i.4.i.fr = freeze i32 %.val.i.4.i
  %.not.i.4.i = icmp eq i32 %.val.i.4.i.fr, 0     ; 2 uses
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.5.i = load i32, ptr %.ptr.5.i, align 4, !alias.scope !2043
  %.not.i.5.i = icmp eq i32 %.val.i.5.i, 0        ; 2 uses
  %i.x = bitcast <4 x i1> %i.w to i4
  %i.y = icmp eq i4 %i.x, -1
  %op.rdx191 = and i1 %i.y, %.not.i.4.i
  %op.rdx192 = select i1 %op.rdx191, i1 %.not.i.5.i, i1 false
  br i1 %op.rdx192, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

.split:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2043, !noundef !8
  %.not107 = icmp eq ptr %i.aa, null
  br i1 %.not107, label %bb.b, label %bb.c

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit: ; preds = %.preheader.preheader.i
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6.i = load i32, ptr %.ptr.6.i, align 8, !alias.scope !2043, !noalias !2044, !noundef !8
  %.not.i.6.i = icmp ne i32 %.val.i.6.i, 0
  %.ptr8.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ab = load <4 x i8>, ptr %.ptr8.i, align 4, !alias.scope !2043
  %.fr193 = freeze <4 x i8> %i.ab
  %i.ac = trunc <4 x i8> %.fr193 to <4 x i1>
  %.ptr8.4.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i2.4.i = load i8, ptr %.ptr8.4.i, align 8, !range !20, !alias.scope !2043
  %.val.i2.4.i.fr = freeze i8 %.val.i2.4.i
  %.ptr8.5.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i2.5.i = load i8, ptr %.ptr8.5.i, align 1, !range !20, !alias.scope !2043
  %.val.i2.5.i.fr = freeze i8 %.val.i2.5.i
  %.ptr8.6.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i2.6.i = load i8, ptr %.ptr8.6.i, align 2, !range !20, !alias.scope !2043
  %i.ad = trunc nuw i8 %.val.i2.6.i to i1
  %i.ae = bitcast <4 x i1> %i.ac to i4
  %i.af = icmp ne i4 %i.ae, 0
  %3 = or i8 %.val.i2.5.i.fr, %.val.i2.4.i.fr
  %4 = trunc i8 %3 to i1
  %5 = or i1 %i.af, %4
  %6 = or i1 %.not.i.6.i, %5
  %op.rdx190 = select i1 %6, i1 true, i1 %i.ad
  br i1 %op.rdx190, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split, %bb.e, %bb.bl, %bb.bi, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, %bb.bg
  ret void

bb.c:                                             ; preds = %.split
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #38
  unreachable

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread: ; preds = %.preheader.preheader.i, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ai = load i16, ptr %i.ah, align 8, !range !2045, !noundef !8 ; 2 uses
  %i.aj = add i16 %i.ai, -100
  %spec.select.i = icmp ult i16 %i.aj, 100
  br i1 %spec.select.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  br i1 %2, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.ak = extractelement <4 x i1> %i.w, i64 0
  %i.al = extractelement <4 x i1> %i.w, i64 1
  %i.am = and i1 %i.ak, %i.al
  %i.an = extractelement <4 x i1> %i.w, i64 2
  %i.ao = and i1 %i.am, %i.an
  %i.ap = extractelement <4 x i1> %i.w, i64 3
  %i.aq = and i1 %i.ao, %i.ap
  %7 = and i1 %i.aq, %.not.i.4.i
  %i.ar = select i1 %7, i1 %.not.i.5.i, i1 false
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6 = load i32, ptr %.ptr.6, align 8
  %.not.i.6 = icmp eq i32 %.val.i.6, 0
  %or.cond162 = select i1 %i.ar, i1 %.not.i.6, i1 false ; 2 uses
  %i.as = load <4 x i8>, ptr %i.ag, align 4
  %.fr195 = freeze <4 x i8> %i.as
  %i.at = trunc <4 x i8> %.fr195 to <4 x i1>
  %.ptr.4.i53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.4.i54 = load i8, ptr %.ptr.4.i53, align 8, !range !20
  %.val.i.4.i54.fr = freeze i8 %.val.i.4.i54
  %.ptr.5.i55 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i.5.i56 = load i8, ptr %.ptr.5.i55, align 1, !range !20
  %.val.i.5.i56.fr = freeze i8 %.val.i.5.i56
  %.ptr.6.i57 = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i.6.i58 = load i8, ptr %.ptr.6.i57, align 2, !range !20
  %i.au = trunc nuw i8 %.val.i.6.i58 to i1
  %i.av = bitcast <4 x i1> %i.at to i4
  %i.aw = icmp ne i4 %i.av, 0
  %8 = or i8 %.val.i.5.i56.fr, %.val.i.4.i54.fr
  %9 = trunc i8 %8 to i1
  %10 = or i1 %i.aw, %9
  %op.rdx186 = select i1 %10, i1 true, i1 %i.au
  br i1 %op.rdx186, label %bb.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding0EB1L_.exit.i

bb.e:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  %i.ax = icmp eq i16 %i.ai, 101
  br i1 %i.ax, label %bb.bj, label %bb.b

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding0EB1L_.exit.i: ; preds = %.preheader.preheader
  br i1 %or.cond162, label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header.exit, label %.split77

bb.f:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @93, i64 32, i1 false), !noalias !2046
  %i.ay = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n), !noalias !2047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2046
  %.not.i59 = icmp ne ptr %i.ay, null             ; 2 uses
  %brmerge.i = or i1 %or.cond162, %.not.i59
  br i1 %brmerge.i, label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding.exit, label %.split77

.split77:                                         ; preds = %bb.f, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding0EB1L_.exit.i
  %i.az = call fastcc noundef zeroext i1 @_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression12compressible(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1), !noalias !2047
  br i1 %i.az, label %bb.h, label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header.exit

_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding.exit: ; preds = %bb.f
  br i1 %.not.i59, label %bb.h, label %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header.exit

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression8CtxInnerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.bi unwind label %bb.bh

bb.h:                                             ; preds = %.split77, %_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression26depends_on_accept_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @94, i64 32, i1 false), !noalias !2048
  call void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap7get_allNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2048
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2048, !nonnull !8, !align !21, !noundef !8 ; 4 uses
  %i.bc = load i64, ptr %i.l, align 8, !range !13, !noalias !2048, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !2048 ; 4 uses
  %i.bf = trunc nuw i64 %i.bc to i1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !8 ; 2 uses
  %i.bi = icmp ult i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.bb, ptr %i.bj, align 8, !noalias !2048
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 -1, ptr %i.bk, align 8, !noalias !2048
  store i64 2, ptr %i.m, align 8, !noalias !2048
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !8, !noundef !8
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %i.be ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.bn, align 8
  %i.bo = trunc nuw i64 %.sroa.02.0.copyload.i to i1
  br i1 %i.bo, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #38
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.55.0.i = phi i64 [ %.sroa.53.0.copyload.i, %bb.m ], [ undef, %bb.k ]
  %.sroa.04.0.i = phi i64 [ 1, %bb.m ], [ 0, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.bb, ptr %i.bp, align 8, !noalias !2048
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.be, ptr %i.bq, align 8, !noalias !2048
  store i64 0, ptr %i.m, align 8, !noalias !2048
  store i64 %.sroa.04.0.i, ptr %.sink46.i.sroa.gep74, align 8, !noalias !2048
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.sink46.i.sroa.phi = phi ptr [ %.sink46.i.sroa.gep, %bb.n ], [ %.sink46.i.sroa.gep74, %bb.j ]
  %.sroa.55.0.sink.i = phi i64 [ %.sroa.55.0.i, %bb.n ], [ 2, %bb.j ]
  store i64 %.sroa.55.0.sink.i, ptr %.sink46.i.sroa.phi, align 8, !noalias !2048
  %i.br = call noundef align 8 ptr @_RNvXsD_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9ValueIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) ; 2 uses
  %.not17.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not17.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.critedge.backedge.i.i
  %i.bs = phi ptr [ %i.fg, %.critedge.backedge.i.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val5.i.i = load ptr, ptr %i.bt, align 8, !noundef !8
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val6.i.i = load i64, ptr %i.bu, align 8, !noundef !8
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %.lr.ph.i.i
  %i.bv = phi i64 [ %.val6.i.i, %.lr.ph.i.i ], [ %.be, %.backedge.i.i.i.i.backedge ] ; 5 uses
  %i.bw = phi ptr [ %.val5.i.i, %.lr.ph.i.i ], [ %.be200, %.backedge.i.i.i.i.backedge ] ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  %i.by = icmp samesign eq i64 %i.bv, 0
  br i1 %i.by, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.backedge.i.i.i.i, %bb.p
  %.sroa.02.07.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.p ], [ 0, %.backedge.i.i.i.i ] ; 3 uses
  %i.bz = phi ptr [ %i.ca, %bb.p ], [ %i.bw, %.backedge.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.bz, align 1, !noalias !2049, !noundef !8
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not = icmp ne i8 %.val.i.i.i.i.i.i.i, 44 ; 10 uses
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.cb = add nuw i64 %.sroa.02.07.i.i.i.i.i.i.i, 1
  %i.cc = icmp eq ptr %i.ca, %i.bx
  br i1 %i.cc, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cd = add nuw i64 %.sroa.02.07.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = sub nuw i64 %i.bv, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cd
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.p, %bb.q
  %i.cg = phi i64 [ %i.ce, %bb.q ], [ %i.bv, %bb.p ] ; 9 uses
  %i.ch = phi ptr [ %i.cf, %bb.q ], [ %i.bw, %bb.p ] ; 9 uses
  %.sroa.5.1.i.ph.i.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i.i.i, %bb.q ], [ %i.bv, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.loopexit.i.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bw, i64 %.sroa.5.1.i.ph.i.i.i.i.i
  br label %.lr.ph.i.i6.i.i.i.i.i

.lr.ph.i.i6.i.i.i.i.i:                            ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.r ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.10.02.i.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.r ], [ %.sroa.5.1.i.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.ci = load i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, align 1, !alias.scope !2051, !noalias !2052, !noundef !8 ; 2 uses
  switch i8 %i.ci, label %.lr.ph10.i.i.i.i.i.i.i [
    i8 9, label %bb.r
    i8 10, label %bb.r
    i8 12, label %bb.r
    i8 13, label %bb.r
    i8 32, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i.i6.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i
  %i.cj = add nsw i64 %.sroa.10.02.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i6.i.i.i.i.i

.lr.ph10.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i6.i.i.i.i.i, %bb.s
  %.sroa.10.19.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.s ], [ %.sroa.10.02.i.i.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i ] ; 9 uses
  %i.cl = add nsw i64 %.sroa.10.19.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !2051, !noalias !2052, !noundef !8
  switch i8 %i.cn, label %_RNCNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0s_0Bb_.exit.i.i.i.i.i.i [
    i8 9, label %bb.s
    i8 10, label %bb.s
    i8 12, label %bb.s
    i8 13, label %bb.s
    i8 32, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph10.i.i.i.i.i.i.i, %.lr.ph10.i.i.i.i.i.i.i, %.lr.ph10.i.i.i.i.i.i.i, %.lr.ph10.i.i.i.i.i.i.i, %.lr.ph10.i.i.i.i.i.i.i
  %.not13.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph10.i.i.i.i.i.i.i

_RNCNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0s_0Bb_.exit.i.i.i.i.i.i: ; preds = %.lr.ph10.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.co = icmp eq i64 %.sroa.10.19.i.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNCNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0s_0Bb_.exit.i.i.i.i.i.i
  %i.cp = icmp eq i8 %i.ci, 42
  br i1 %i.cp, label %_RINvYINtNtNtCs84JG9zk80ZV_4http6header3map9ValueIterNtNtB8_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1f_3any5checkRBO_NCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0E0INtNtNtB1n_3ops12control_flow11ControlFlowuEEB2T_.exit.thread.i, label %.thread.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNCNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0s_0Bb_.exit.i.i.i.i.i.i
  %i.cq = call { ptr, i64 } @_RNvXs2_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noundef nonnull align 8 @46), !noalias !2055 ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0      ; 3 uses
  %i.cs = extractvalue { ptr, i64 } %i.cq, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.19.i.i.i.i.i.i.i, %i.cs
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.v, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRShBZ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNCNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression15add_vary_header0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkBZ_NCB1P_s0_0E0E0B1Z_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.r, %bb.s, %.loopexit.i.i.i.i.i.i, %.backedge.i.i.i.i
  %i.ct = phi i1 [ %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, %.loopexit.i.i.i.i.i.i ], [ true, %.backedge.i.i.i.i ], [ %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, %bb.s ], [ %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, %bb.r ] ; 2 uses
  %i.cu = phi ptr [ %i.ch, %.loopexit.i.i.i.i.i.i ], [ %i.bw, %.backedge.i.i.i.i ], [ %i.ch, %bb.s ], [ %i.ch, %bb.r ] ; 2 uses
  %i.cv = phi i64 [ %i.cg, %.loopexit.i.i.i.i.i.i ], [ 0, %.backedge.i.i.i.i ], [ %i.cg, %bb.s ], [ %i.cg, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa19.i.ph.i.i.i.i.i.i = phi ptr [ %i.bw, %.loopexit.i.i.i.i.i.i ], [ %i.bw, %.backedge.i.i.i.i ], [ %.sroa.0.03.i.i.i.i.i.i.i, %bb.s ], [ %scevgep.i.i.i.i.i.i.i, %bb.r ]
  %i.cw = call { ptr, i64 } @_RNvXs2_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noundef nonnull align 8 @46), !noalias !2055 ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error5ErrorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core:bb.a
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2734
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !noalias !2734
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2734
  br label %_RNvXs5_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2734
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.l, ptr %i.b, align 8, !noalias !2734
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2734
  br label %_RNvXs5_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2734
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.a, align 8, !noalias !2734
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 2, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2734
  br label %_RNvXs5_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs5_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.p, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error9InitiatorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %.val = load i8, ptr %i.a, align 1, !range !29, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error9InitiatorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error9InitiatorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core.229, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %.val = load i8, ptr %i.a, align 1, !range !23, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmNtB6_5Debug3fmtBE_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression9AlgorithmNtB6_5Debug3fmtBE_.230, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_control6WindowNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !34, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2738
  store ptr %i.b, ptr %i.a, align 8, !noalias !2738
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2738
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtCs54qMqBN3zRt_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !21, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCs54qMqBN3zRt_10serde_core2deDNtB5_8ExpectedEL_NtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer5ProxyNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !21, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2744
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2742, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2742, !noundef !8
  store ptr %i.e, ptr %i.b, align 8, !noalias !2744
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !2744
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2744
  store ptr %i.b, ptr %i.a, align 8, !noalias !2744
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2744
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.j, align 8, !noalias !2744
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2744
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.i, ptr %i.k, align 8, !noalias !2744
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !2744
  %i.l = load ptr, ptr %1, align 8, !alias.scope !2743, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2743, !nonnull !8, !align !21, !noundef !8
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @181, ptr noundef nonnull %i.a), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2744
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_control6WindowNtB6_7Display3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !34, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_controlNtB5_6WindowNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCskeugdADtBsi_12pingora_core9upstreams4peerNtB5_6SchemeNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !20, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !21, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !8, !nonnull !8 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 4) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 5) #37
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCskxN0Kp1MEon_2h25frame9stream_idNtB5_8StreamIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule10as_any_mut(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @138, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule20response_body_filter(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !15, !alias.scope !2756, !noundef !8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <4 x i32>, ptr %.ptr.i, align 8, !alias.scope !2756
  %.fr = freeze <4 x i32> %i.d
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.4.i = load i32, ptr %.ptr.4.i, align 8, !alias.scope !2756
  %.val.i.4.i.fr = freeze i32 %.val.i.4.i
  %.not.i.4.i = icmp eq i32 %.val.i.4.i.fr, 0
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.5.i = load i32, ptr %.ptr.5.i, align 4, !alias.scope !2756
  %.not.i.5.i = icmp eq i32 %.val.i.5.i, 0
  %i.e = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, 0
  %op.rdx10 = and i1 %i.g, %.not.i.4.i
  %op.rdx11 = select i1 %op.rdx10, i1 %.not.i.5.i, i1 false
  br i1 %op.rdx11, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2756, !noundef !8
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit: ; preds = %.preheader.preheader.i
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.6.i = load i32, ptr %.ptr.6.i, align 8, !alias.scope !2756, !noalias !2757, !noundef !8
  %.not.i.6.i = icmp ne i32 %.val.i.6.i, 0
  %.ptr8.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load <4 x i8>, ptr %.ptr8.i, align 4, !alias.scope !2756
  %.fr12 = freeze <4 x i8> %i.j
  %i.k = trunc <4 x i8> %.fr12 to <4 x i1>
  %.ptr8.4.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i2.4.i = load i8, ptr %.ptr8.4.i, align 8, !range !20, !alias.scope !2756
  %.val.i2.4.i.fr = freeze i8 %.val.i2.4.i
  %.ptr8.5.i = getelementptr inbounds nuw i8, ptr %0, i64 57
  %.val.i2.5.i = load i8, ptr %.ptr8.5.i, align 1, !range !20, !alias.scope !2756
  %.val.i2.5.i.fr = freeze i8 %.val.i2.5.i
  %.ptr8.6.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.val.i2.6.i = load i8, ptr %.ptr8.6.i, align 2, !range !20, !alias.scope !2756
  %i.l = trunc nuw i8 %.val.i2.6.i to i1
  %i.m = bitcast <4 x i1> %i.k to i4
  %i.n = icmp ne i4 %i.m, 0
  %3 = or i8 %.val.i2.5.i.fr, %.val.i2.4.i.fr
  %4 = trunc i8 %3 to i1
  %5 = or i1 %i.n, %4
  %6 = or i1 %.not.i.6.i, %5
  %op.rdx9 = select i1 %6, i1 true, i1 %i.l
  br i1 %op.rdx9, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread: ; preds = %.preheader.preheader.i, %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  %i.o = load ptr, ptr %1, align 8, !noundef !8   ; 2 uses
  %.not = icmp eq ptr %i.o, null                  ; 2 uses
  %. = select i1 %.not, ptr null, ptr %1
  call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20response_body_filter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %., i1 noundef zeroext %2)
  %i.p = load ptr, ptr %i.a, align 8, !noundef !8
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit4, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  ret ptr null

bb.b:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2761, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2761, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2761, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2761, !noundef !8
  invoke void %i.t(ptr noundef %i.r, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit4 unwind label %bb.d, !inline_history !2755

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  resume { ptr, i32 } %i.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit4: ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule20response_done_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !alias.scope !2766, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <4 x i32>, ptr %.ptr.i, align 8, !alias.scope !2766
  %.fr = freeze <4 x i32> %i.c
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.4.i = load i32, ptr %.ptr.4.i, align 8, !alias.scope !2766
  %.val.i.4.i.fr = freeze i32 %.val.i.4.i
  %.not.i.4.i = icmp eq i32 %.val.i.4.i.fr, 0
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val.i.5.i = load i32, ptr %.ptr.5.i, align 4, !alias.scope !2766
  %.not.i.5.i = icmp eq i32 %.val.i.5.i, 0
  %i.d = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.e = bitcast <4 x i1> %i.d to i4
  %i.f = icmp eq i4 %i.e, 0
  %op.rdx5 = and i1 %i.f, %.not.i.4.i
  %op.rdx6 = select i1 %op.rdx5, i1 %.not.i.5.i, i1 false
  br i1 %op.rdx6, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

.split:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2766, !noundef !8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit: ; preds = %.preheader.preheader.i
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.6.i = load i32, ptr %.ptr.6.i, align 8, !alias.scope !2766, !noalias !2767, !noundef !8
  %.not.i.6.i = icmp ne i32 %.val.i.6.i, 0
  %.ptr8.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load <4 x i8>, ptr %.ptr8.i, align 4, !alias.scope !2766
  %.fr7 = freeze <4 x i8> %i.i
  %i.j = trunc <4 x i8> %.fr7 to <4 x i1>
  %.ptr8.4.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i2.4.i = load i8, ptr %.ptr8.4.i, align 8, !range !20, !alias.scope !2766
  %.val.i2.4.i.fr = freeze i8 %.val.i2.4.i
  %.ptr8.5.i = getelementptr inbounds nuw i8, ptr %1, i64 57
  %.val.i2.5.i = load i8, ptr %.ptr8.5.i, align 1, !range !20, !alias.scope !2766
  %.val.i2.5.i.fr = freeze i8 %.val.i2.5.i
  %.ptr8.6.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.val.i2.6.i = load i8, ptr %.ptr8.6.i, align 2, !range !20, !alias.scope !2766
  %i.k = trunc nuw i8 %.val.i2.6.i to i1
  %i.l = bitcast <4 x i1> %i.j to i4
  %i.m = icmp ne i4 %i.l, 0
  %2 = or i8 %.val.i2.5.i.fr, %.val.i2.4.i.fr
  %3 = trunc i8 %2 to i1
  %4 = or i1 %i.m, %3
  %5 = or i1 %.not.i.6.i, %4
  %op.rdx4 = select i1 %5, i1 true, i1 %i.k
  br i1 %op.rdx4, label %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread: ; preds = %.preheader.preheader.i, %.split, %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx20response_body_filter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef align 8 null, i1 noundef zeroext true)
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compressionNtB2_22ResponseCompressionCtx10is_enabled.exit.thread, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule21request_header_filter(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !2770
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2770 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtBM_19ResponseCompressionNtBO_10HttpModule21request_header_filter0E3newBS_.exit, !prof !10

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtBM_19ResponseCompressionNtBO_10HttpModule21request_header_filter0E3newBS_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @139, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule22response_header_filter(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(232) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !2773
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2773 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtBM_19ResponseCompressionNtBO_10HttpModule22response_header_filter0E3newBS_.exit, !prof !10

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtBM_19ResponseCompressionNtBO_10HttpModule22response_header_filter0E3newBS_.exit: ; preds = %bb.a
  %i.c = zext i1 %2 to i8
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @140, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core7modules4http11compressionNtB5_19ResponseCompressionNtB7_10HttpModule6as_any(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @138, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs5_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser15SerializeStruct3endCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2778
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2778
  store i64 -9223372036854775800, ptr %i.e, align 8, !noalias !2778
  call void @_RNvMNtNtCskItKYAOUBlG_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2778
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.i = load i32, ptr %i.h, align 8, !range !11, !noalias !2778, !noundef !8
  %.not.i = icmp eq i32 %i.i, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2778
  %i.j = call noundef nonnull align 8 ptr @_RNvXs2_NtCskItKYAOUBlG_10serde_yaml5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2778
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE16emit_mapping_endCskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2778
  call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2780, !noundef !8
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !2780
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE16emit_mapping_endCskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2780
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !2780
  call void @_RNvMNtNtCskItKYAOUBlG_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2780
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = load i32, ptr %i.o, align 8, !range !11, !noalias !2780, !noundef !8
  %.not.i.i = icmp eq i32 %i.p, -2
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !2780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2780
  %i.q = call noundef nonnull align 8 ptr @_RNvXs2_NtCskItKYAOUBlG_10serde_yaml5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2780
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE16emit_mapping_endCskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2780
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE16emit_mapping_endCskeugdADtBsi_12pingora_core.exit

_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE16emit_mapping_endCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ %i.q, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCskeugdADtBsi_12pingora_core9upstreams4peerNtB5_11PeerOptionsNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load i16, ptr %i.q, align 8, !range !31, !noundef !8
  %.not = icmp eq i16 %i.r, 2
  %.pre.pre.pre.pre.pre.pre = load ptr, ptr %1, align 8 ; 10 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.s, ptr %i.p, align 8, !captures !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core10connectors2l46BindToNtB6_5Debug3fmtBC_, ptr %.sroa.416.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !align !21, !noundef !8
  %i.v = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.pre.pre.pre.pre.pre.pre, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @141, ptr noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.v, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !range !2797, !noundef !8 ; 2 uses
  %.not172 = icmp eq i32 %i.x, -1
  br i1 %.not172, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  store i64 %i.z, ptr %i.n, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.x, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !21, !noundef !8
  %i.ad = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.pre.pre.pre.pre.pre.pre, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noundef nonnull @142, ptr noundef nonnull %i.m)
end_hunk_1
