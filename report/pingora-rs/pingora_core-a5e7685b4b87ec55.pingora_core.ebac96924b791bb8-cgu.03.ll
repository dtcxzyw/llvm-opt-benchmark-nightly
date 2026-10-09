Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.03?download=true
inline.NumInlined: 1136
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtNtCskeugdADtBsi_12pingora_core7modules4httpNtB4_13HttpModuleCtx23response_trailer_filter:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.n(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, %bb.a
  %.sroa.18.0.lcssa = phi ptr [ undef, %bb.a ], [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.15.0.lcssa = phi i64 [ undef, %bb.a ], [ %.sroa.15.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.10.0.lcssa = phi ptr [ undef, %bb.a ], [ %.sroa.10.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.0.035.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.035.lcssa, ptr %i.o, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.lcssa, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.18.0.lcssa, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pn45 = phi { ptr, i32 } [ %i.ae, %.thread ], [ %i.p, %bb.c ]
  %.sroa.0.144 = phi ptr [ %i.v, %.thread ], [ %.sroa.0.03562, %bb.c ]
  %.sroa.10.143 = phi ptr [ %.sroa.4.sroa.0.0.copyload, %.thread ], [ %.sroa.10.061, %bb.c ]
  %.sroa.15.142 = phi i64 [ %.sroa.4.sroa.4.0.copyload, %.thread ], [ %.sroa.15.060, %bb.c ]
  %.sroa.18.141 = phi ptr [ %.sroa.4.sroa.5.0.copyload, %.thread ], [ %.sroa.18.059, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.144, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2414, !nonnull !7, !noundef !7
  invoke void %i.s(ptr noundef %.sroa.18.141, ptr noundef %.sroa.10.143, i64 noundef %.sroa.15.142)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit unwind label %bb.k, !inline_history !0

bb.e:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.a, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = load ptr, ptr %i.h, align 8              ; 5 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  %i.x = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03562, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2415, !nonnull !7, !noundef !7
  call void %i.z(ptr noundef %.sroa.18.059, ptr noundef %.sroa.10.061, i64 noundef %.sroa.15.060), !noalias !2415, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17

bb.h:                                             ; preds = %bb.e
  %.sroa.4.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03562, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2416, !nonnull !7, !noundef !7
  invoke void %i.ac(ptr noundef %.sroa.18.059, ptr noundef %.sroa.10.061, i64 noundef %.sroa.15.060)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 unwind label %.thread, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.18.2 = phi ptr [ %.sroa.18.059, %bb.h ], [ %.sroa.4.sroa.5.0.copyload, %bb.i ], [ %.sroa.4.sroa.5.0.copyload, %bb.j ] ; 2 uses
  %.sroa.15.2 = phi i64 [ %.sroa.15.060, %bb.h ], [ %.sroa.4.sroa.4.0.copyload, %bb.i ], [ %.sroa.4.sroa.4.0.copyload, %bb.j ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.061, %bb.h ], [ %.sroa.4.sroa.0.0.copyload, %bb.i ], [ %.sroa.4.sroa.0.0.copyload, %bb.j ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.03562, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %i.ad = icmp eq ptr %i.i, %i.f
  br i1 %i.ad, label %._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17: ; preds = %bb.g, %bb.f, %._crit_edge
  ret void

bb.k:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %bb.d
  %.pn46 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn45, %bb.d ]
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCskeugdADtBsi_12pingora_core7modules4httpNtB4_13HttpModuleCtx5empty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @43)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http10HttpModuleNtNtB4_6marker4SendNtB2q_4SyncEL_EEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !2419
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !2419 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdjEEECskeugdADtBsi_12pingora_core(ptr nonnull @21, i64 0) #29
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i64 } %i.d, 1
  %i.j = extractvalue { i64, i64 } %i.d, 0
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @21, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @22, i64 16), i64 16, i1 false)
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.j, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef align 8 ptr @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef10digest_mut(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.b = cmpxchg ptr %i.a, i64 1, i64 -1 acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.b, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit, label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit.thread

_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit: ; preds = %bb.a
  %i.c = load atomic i64, ptr %.val acquire, align 8
  %.fr = freeze i64 %i.c
  %i.d = icmp eq i64 %.fr, 1
  store atomic i64 1, ptr %i.a release, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %spec.select = select i1 %i.d, ptr %i.e, ptr null
  br label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit.thread

_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit.thread: ; preds = %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit, %bb.a
  %i.f = phi ptr [ null, %bb.a ], [ %spec.select, %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9is_uniqueBO_.exit ]
  ret ptr %i.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef13ping_timedout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load atomic i8, ptr %i.d monotonic, align 1
  %i.f = icmp ne i8 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef16is_shutting_down(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef20more_streams_allowed(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.e = load atomic i8, ptr %i.d monotonic, align 4, !noalias !2422
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.g = load i64, ptr %i.f, align 8, !noundef !7
  %i.h = icmp ugt i64 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = tail call noundef i64 @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE24current_max_send_streamsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.k = icmp ugt i64 %i.j, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3, i32 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 15 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.g = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #29
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx15, align 8
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.g, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %5, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 %4, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !2429
  %i.l = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !2429 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerEE3newB18_.exit, !prof !15

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #33
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #29
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerEE3newB18_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %i.l

bb.h:                                             ; preds = %bb.j, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECskeugdADtBsi_12pingora_core.exit, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.q = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !2430
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.i, %bb.j
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync5watch8ReceiverbEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #29
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECskeugdADtBsi_12pingora_core.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v24StubEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #29
          to label %common.resume unwind label %bb.h
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef7is_idle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v2NtB4_13ConnectionRef9is_closed(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @_RNvMs2_NtNtCs2awuzAz5vY4_5tokio4sync5watchINtB5_8ReceiverbE6borrowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.e = load i8, ptr %i.d, align 1, !range !11, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  call void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 641) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !7
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !7 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !2433
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !17

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !7
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !15

bb.g:                                             ; preds = %._crit_edge.i17
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !2433
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !18

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCs2awuzAz5vY4_5tokio4sync5mutexINtB5_5MutexNtNtNtCskeugdADtBsi_12pingora_core6server11transfer_fd3FdsE3newBW_
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_6SenderNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseE4sendBZ_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 11)) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef) unnamed_addr #24

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsisNNF9X7XVM_12pingora_pool3lruINtB4_3LrulNtNtB6_10connection14ConnectionMetaE3popCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsisNNF9X7XVM_12pingora_pool3lruINtB4_3LrulNtNtB6_10connection14ConnectionMetaE3addCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i32 noundef, i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtNtCs2awuzAz5vY4_5tokio4sync7oneshot7channelbECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB4_18TransportConnector3new(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtNtCs5zWH1ndsy9S_15crossbeam_queue11array_queue4SlotTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtBa_4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexIBG_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB4N_8adapters3map3MapINtNtNtB4P_3ops5range5RangejENCNvMs2_BT_INtBT_10ArrayQueueB1I_E3new0EEB3R_(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtNtCs5zWH1ndsy9S_15crossbeam_queue11array_queue4SlotTlNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v213ConnectionRefEEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB33_8adapters3map3MapINtNtNtB35_3ops5range5RangejENCNvMs2_BT_INtBT_10ArrayQueueB1I_E3new0EEB1S_(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtCskKLDkoKarTP_4core6marker4SendNtB2b_4SyncEL_EE8grow_oneB1b_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE24current_max_send_streamsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCs2awuzAz5vY4_5tokio4sync5watchINtB5_8ReceiverbE6borrowCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskeugdADtBsi_12pingora_core(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCs9VZ2FwlvA7t_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj8_NtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtBL_5clone5Clone5cloneCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCskxN0Kp1MEon_2h25frame7go_awayNtB5_6GoAwayNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCscLQedeCUgb3_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCseJvwusBHZQA_8lock_api5mutex5MutexNtNtCs9VZ2FwlvA7t_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsisNNF9X7XVM_12pingora_pool10connection14ConnectionPoolIBx_INtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB7_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEE9drop_slowB2O_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsisNNF9X7XVM_12pingora_pool10connection14ConnectionPoolNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v213ConnectionRefEE9drop_slowB1N_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsisNNF9X7XVM_12pingora_pool10connection8PoolNodeINtBJ_14PoolConnectionIBx_INtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB7_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE9drop_slowB33_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsisNNF9X7XVM_12pingora_pool10connection8PoolNodeINtBJ_14PoolConnectionNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v213ConnectionRefEEE9drop_slowB22_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB7_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEE9drop_slowB1L_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexNtNtNtCskeugdADtBsi_12pingora_core6server11transfer_fd3FdsEE9drop_slowB1u_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v218ConnectionRefInnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3gSIjo26Km0_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #25

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { cold }
attributes #30 = { noinline }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noinline noreturn }
attributes #33 = { noreturn }
attributes #34 = { inlinehint }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!6 = !{i64 0, i64 2}
!7 = !{}
!8 = !{i64 0, i64 3}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!10 = !{i64 8}
!11 = !{i8 0, i8 2}
!12 = !{i8 0, i8 3}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2002, i32 2000}
!17 = !{!"branch_weights", i32 1, i32 1999}
!18 = !{!"branch_weights", i32 0, i32 1}
!19 = !{i64 -1, i64 -9223372036854775808}
!20 = !{i64 0, i64 -9223372036854775808}
!21 = !{i64 1, i64 536870913}
!22 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!23 = !{i8 0, i8 13}
!24 = distinct !{!24, i1 false, !"_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerINtNtNtB7_4sync7oneshot8ReceiveruEECskeugdADtBsi_12pingora_core"}
!25 = distinct !{!25, !24, !"_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerINtNtNtB7_4sync7oneshot8ReceiveruEECskeugdADtBsi_12pingora_core: argument 0"}
!26 = distinct !{!26, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleEECskeugdADtBsi_12pingora_core"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleEECskeugdADtBsi_12pingora_core: argument 0"}
!28 = distinct !{!28, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime6handle10EnterGuardECskeugdADtBsi_12pingora_core"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime6handle10EnterGuardECskeugdADtBsi_12pingora_core: argument 0"}
!30 = distinct !{!30, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7current15SetCurrentGuardECskeugdADtBsi_12pingora_core"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7current15SetCurrentGuardECskeugdADtBsi_12pingora_core: argument 0"}
!32 = distinct !{!32, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECskeugdADtBsi_12pingora_core"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECskeugdADtBsi_12pingora_core: argument 0"}
!34 = distinct !{!34, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECskeugdADtBsi_12pingora_core"}
!35 = distinct !{!35, !34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECskeugdADtBsi_12pingora_core: argument 0"}
!36 = distinct !{!36, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!37 = distinct !{!37, !36, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!38 = distinct !{!38, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECskeugdADtBsi_12pingora_core"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECskeugdADtBsi_12pingora_core: argument 0"}
!40 = distinct !{!40, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!41 = distinct !{!41, !40, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!42 = !{!25}
!43 = !{!27}
!44 = !{!27, !31, !29}
!45 = !{!33}
!46 = !{!35}
!47 = !{!37}
!48 = !{!37, !35, !33, !27, !31, !29}
!49 = !{!37, !35, !33, !27}
!50 = !{!39}
!51 = !{!41}
!52 = !{!41, !39, !33, !27, !31, !29}
!53 = !{!41, !39, !33, !27}
!54 = distinct !{!54, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core"}
!55 = distinct !{!55, !54, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core: argument 0"}
!56 = distinct !{!56, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!57 = distinct !{!57, !56, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!58 = distinct !{!58, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!59 = distinct !{!59, !58, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!60 = distinct !{!60, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core"}
!61 = distinct !{!61, !60, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core: argument 0"}
!62 = !{!55}
!63 = !{i8 0, i8 11}
!64 = !{!57}
!65 = !{!59}
!66 = !{!61}
!67 = distinct !{!67, i1 false, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core"}
!68 = distinct !{!68, !67, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core: argument 1"}
!69 = distinct !{!69, !67, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core: argument 0"}
!70 = distinct !{!70, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core"}
!71 = distinct !{!71, !70, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core: argument 0"}
!72 = distinct !{!72, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!73 = distinct !{!73, !72, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!74 = distinct !{!74, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!75 = distinct !{!75, !74, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!76 = distinct !{!76, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core"}
!77 = distinct !{!77, !76, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core: argument 0"}
!78 = !{!71, !69, !68}
!79 = !{!69}
!80 = !{!73, !69, !68}
!81 = !{!75, !69, !68}
!82 = !{!77, !69, !68}
!83 = distinct !{!83, i1 false, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core"}
!84 = distinct !{!84, !83, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core: argument 1"}
!85 = distinct !{!85, !83, !"_RINvMNtNtCskxN0Kp1MEon_2h25frame4headNtB3_4Head6encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECskeugdADtBsi_12pingora_core: argument 0"}
!86 = distinct !{!86, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core"}
!87 = distinct !{!87, !86, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCskeugdADtBsi_12pingora_core: argument 0"}
!88 = distinct !{!88, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!89 = distinct !{!89, !88, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!90 = distinct !{!90, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core"}
!91 = distinct !{!91, !90, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CskeugdADtBsi_12pingora_core: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core"}
!93 = distinct !{!93, !92, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core: argument 0"}
!94 = distinct !{!94, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core"}
!95 = distinct !{!95, !94, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core: argument 0"}
!96 = distinct !{!96, i1 false, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core"}
!97 = distinct !{!97, !96, !"_RNvYNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CskeugdADtBsi_12pingora_core: argument 0"}
!98 = !{!87, !85, !84}
!99 = !{!85}
!100 = !{!89, !85, !84}
!101 = !{!91, !85, !84}
!102 = !{!93, !85, !84}
!103 = !{!95}
!104 = !{!97}
!105 = distinct !{!105, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core"}
!106 = distinct !{!106, !105, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 1"}
!107 = distinct !{!107, !105, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 0"}
!108 = distinct !{!108, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core"}
!109 = distinct !{!109, !108, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 1"}
!110 = distinct !{!110, !108, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 0"}
!111 = !{!107, !106}
!112 = !{!110, !109}
!113 = distinct !{!113, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core"}
!114 = distinct !{!114, !113, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 1"}
!115 = distinct !{!115, !113, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core: argument 0"}
!116 = !{!115, !114}
!117 = distinct !{!117, i1 false, !"_RINvMs1_NtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core"}
!118 = distinct !{!118, !117, !"_RINvMs1_NtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core: argument 1"}
!119 = distinct !{!119, !117, !"_RINvMs1_NtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMs1_NtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core: argument 0"}
!121 = distinct !{!121, i1 false, !"_RINvMNtNtCscLQedeCUgb3_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECskeugdADtBsi_12pingora_core"}
!122 = distinct !{!122, !121, !"_RINvMNtNtCscLQedeCUgb3_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECskeugdADtBsi_12pingora_core: argument 1"}
!123 = distinct !{!123, !121, !"_RINvMNtNtCscLQedeCUgb3_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECskeugdADtBsi_12pingora_core: argument 2"}
!124 = distinct !{!124, !121, !"_RINvMNtNtCscLQedeCUgb3_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECskeugdADtBsi_12pingora_core: argument 0"}
!125 = distinct !{!125, i1 false, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECskeugdADtBsi_12pingora_core"}
!126 = distinct !{!126, !125, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECskeugdADtBsi_12pingora_core: argument 2"}
!127 = distinct !{!127, !125, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECskeugdADtBsi_12pingora_core: argument 1"}
!128 = distinct !{!128, !125, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECskeugdADtBsi_12pingora_core: argument 0"}
!129 = distinct !{!129, i1 false, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!130 = distinct !{!130, !129, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!131 = distinct !{!131, !129, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!132 = distinct !{!132, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgEECskeugdADtBsi_12pingora_core"}
!133 = distinct !{!133, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgEECskeugdADtBsi_12pingora_core: argument 0"}
!134 = distinct !{!134, i1 false, !"_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core"}
!135 = distinct !{!135, !134, !"_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1"}
!136 = distinct !{!136, i1 false, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core"}
!137 = distinct !{!137, !136, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core: argument 1"}
!138 = distinct !{!138, !134, !"_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 0"}
!139 = distinct !{!139, !136, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core: argument 0"}
!140 = distinct !{!140, !136, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core: argument 1:Peel0"}
!141 = distinct !{!141, i1 false, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core"}
!142 = distinct !{!142, !141, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core: argument 1:Peel0"}
!143 = distinct !{!143, i1 false, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core"}
!144 = distinct !{!144, !143, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1:Peel0"}
!145 = distinct !{!145, !141, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core: argument 0"}
!146 = distinct !{!146, !143, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 0"}
!147 = distinct !{!147, i1 false, !"_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCskeugdADtBsi_12pingora_core"}
!148 = distinct !{!148, !147, !"_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCskeugdADtBsi_12pingora_core: argument 1:Peel0"}
!149 = distinct !{!149, !147, !"_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCskeugdADtBsi_12pingora_core: argument 0"}
!150 = distinct !{!150, i1 false, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core"}
!151 = distinct !{!151, !150, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1:Peel0"}
!152 = distinct !{!152, !150, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 0"}
!153 = distinct !{!153, !141, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core: argument 1"}
!154 = distinct !{!154, !143, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1"}
!155 = distinct !{!155, !147, !"_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCskeugdADtBsi_12pingora_core: argument 1"}
!156 = distinct !{!156, !150, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1"}
!157 = distinct !{!157, !14}
!158 = distinct !{!158, i1 false, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core"}
!159 = distinct !{!159, !158, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core: argument 1"}
!160 = distinct !{!160, !158, !"_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskeugdADtBsi_12pingora_core: argument 0"}
!161 = distinct !{!161, i1 false, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core"}
!162 = distinct !{!162, !161, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core: argument 1"}
!163 = distinct !{!163, i1 false, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core"}
!164 = distinct !{!164, !163, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 1"}
!165 = distinct !{!165, !161, !"_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCskeugdADtBsi_12pingora_core: argument 0"}
!166 = distinct !{!166, !163, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core: argument 0"}
!167 = distinct !{!167, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueE6expectCskeugdADtBsi_12pingora_core"}
!168 = distinct !{!168, !167, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueE6expectCskeugdADtBsi_12pingora_core: argument 0"}
!169 = distinct !{!169, !167, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueE6expectCskeugdADtBsi_12pingora_core: argument 1"}
end_hunk_1
