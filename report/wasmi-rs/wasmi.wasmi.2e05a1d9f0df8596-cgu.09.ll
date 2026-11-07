Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.09?download=true
inline.NumInlined: 316
inline.NumDeleted: 183
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi:bb.a
bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2C93r1qUspC_12clap_builder6parser7matches11matched_arg10MatchedArgECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %.body2 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs3WYoaQ2jqaU_5wasmi.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs3WYoaQ2jqaU_5wasmi.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEEECs3WYoaQ2jqaU_5wasmi.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEEECs3WYoaQ2jqaU_5wasmi.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4func19init_host_func_callNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i16, ptr %i.c, align 8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.f = load i16, ptr %i.e, align 2, !noundef !7
  %i.g = load i64, ptr %2, align 8, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack18prepare_host_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef 0, ptr undef, i32 noundef 0, i16 noundef %i.d, i16 noundef %i.f)
  %i.j = load i8, ptr %i.b, align 8, !range !10, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !829, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.m, ptr %i.n, align 1
  store i8 6, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.g, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink9 = phi i64 [ 56, %bb.c ], [ 8, %bb.b ]
  %.sroa.07.0.copyload.sink = phi ptr [ %.sroa.07.0.copyload, %bb.c ], [ %i.o, %bb.b ]
  %.sink = phi ptr [ %1, %bb.c ], [ null, %bb.b ]
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.sroa.07.0.copyload.sink, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4func19init_wasm_func_callNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = inttoptr i64 %2 to ptr                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i8, ptr %i.d acquire, align 1, !noalias !851
  %i.f = icmp eq i8 %i.e, 4
  br i1 %i.f, label %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread, label %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit, !prof !5

_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread: ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !noalias !852, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load <2 x i16>, ptr %i.h, align 8, !noalias !852
  store <2 x i16> %i.i, ptr %.sroa.531.0..sroa_idx, align 8, !noalias !853
  br label %bb.c

_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1580
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry7compile(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j) #21
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.l = icmp eq ptr %.pre, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !align !9, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.c:                                             ; preds = %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit
  %i.o = phi ptr [ %i.g, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread ], [ %.pre, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit ] ; 2 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.518.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.7.18.extract.shift = lshr i64 %.sroa.518.0.copyload, 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.val23 = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !854, !noalias !855, !noundef !7 ; 7 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  tail call void @llvm.assume(i1 %i.t), !noalias !855
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !854, !noalias !855, !noundef !7
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %1, align 8, !range !6, !alias.scope !854, !noalias !855, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.e, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.d
  %.pre50 = load double, ptr %i.y, align 8, !alias.scope !854, !noalias !855
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !alias.scope !854, !noalias !855, !noundef !7 ; 3 uses
  %i.ab = bitcast double %3 to i64                ; 2 uses
  %i.ac = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ac), !noalias !855
  %i.ad = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !855
  %.not = icmp eq i64 %i.aa, %i.ab
  %i.ae = bitcast i64 %i.aa to double
  br i1 %.not, label %bb.f, label %.critedge.i

.critedge.i:                                      ; preds = %..critedge.i_crit_edge, %bb.e
  %i.af = phi double [ %.pre50, %..critedge.i_crit_edge ], [ %i.ae, %bb.e ]
  store i64 1, ptr %1, align 8, !alias.scope !854, !noalias !855
  store double %3, ptr %i.y, align 8, !alias.scope !854, !noalias !855
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %bb.e
  %.sroa.37.0.i = phi double [ %i.af, %.critedge.i ], [ undef, %bb.e ]
  %.sroa.06.0.i = phi i64 [ %i.x, %.critedge.i ], [ 0, %bb.e ]
  %.not.i19 = icmp eq i64 %i.s, 0
  br i1 %.not.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !854, !noalias !855, !nonnull !7, !noundef !7
  %i.ai = getelementptr [32 x i8], ptr %i.ah, i64 %i.s
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !856, !noundef !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.015.0.i = phi i64 [ %i.ak, %bb.g ], [ 0, %bb.f ] ; 6 uses
  %i.al = load i64, ptr %i.q, align 8, !range !16, !alias.scope !857, !noalias !858, !noundef !7
  %i.am = icmp eq i64 %i.s, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #21, !noalias !859
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !857, !noalias !858, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.s ; 4 uses
  store i64 %.sroa.06.0.i, ptr %i.ap, align 8, !noalias !858
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store double %.sroa.37.0.i, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !858
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.o, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !858
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %.sroa.015.0.i, ptr %.sroa.640.0..sroa_idx, align 8, !noalias !858
  %i.aq = add nuw nsw i64 %i.s, 1
  store i64 %i.aq, ptr %i.r, align 8, !alias.scope !857, !noalias !858
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = and i64 %.sroa.518.0.copyload, 65535    ; 2 uses
  %i.at = and i64 %.sroa.518.0.copyload, 4294901760
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10push_frame.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = and i64 %.sroa.7.18.extract.shift, 65535
  %i.aw = add i64 %.sroa.015.0.i, %i.av           ; 6 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.015.0.i
  br i1 %i.ax, label %bb.q, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !860, !noundef !7
  %i.ba = icmp ugt i64 %i.aw, %i.az               ; 2 uses
  br i1 %i.ba, label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !860, !noundef !7 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp ugt i64 %i.aw, %i.bc
  br i1 %i.be, label %bb.n, label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread

bb.n:                                             ; preds = %bb.m
  store i64 %i.aw, ptr %i.bb, align 8, !alias.scope !860
  br label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread

_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i: ; preds = %bb.l
  %i.bf = tail call noundef i8 @_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack9grow_cold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ar, i64 noundef %i.aw) #21, !noalias !861 ; 2 uses
  %.not.i.i.not = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.not, label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i._RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread_crit_edge, label %bb.q

_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i._RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread_crit_edge: ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre51 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !862
  br label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread

_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread: ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i._RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread_crit_edge, %bb.m, %bb.n
  %4 = phi i64 [ %.pre51, %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i._RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread_crit_edge ], [ %i.aw, %bb.n ], [ %i.bc, %bb.m ]
  %i.bg = add i64 %.sroa.015.0.i, %i.as           ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.015.0.i
  %.not.i = icmp ugt i64 %i.bg, %4
  %or.cond.i = select i1 %i.bh, i1 true, i1 %.not.i, !prof !863
  br i1 %or.cond.i, label %bb.o, label %bb.p, !prof !863

bb.o:                                             ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #26, !noalias !861
  unreachable

bb.p:                                             ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.thread
  %5 = load ptr, ptr %i.p, align 8, !alias.scope !862, !nonnull !7
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.015.0.i ; 2 uses
  %.sroa.0.0.i = select i1 %i.ba, ptr %6, ptr %.val23
  tail call void @_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4Cell9fill_withNvYBv_NtNtB5_7default7Default7defaultECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 %6, i64 noundef %i.as), !noalias !861
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10push_frame.exit

bb.q:                                             ; preds = %bb.c, %bb.k, %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i
  %.sroa.9.0.ph = phi i8 [ %i.bf, %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i ], [ 8, %bb.k ], [ 8, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.9.0.ph, ptr %i.bi, align 1
  store i8 6, ptr %i.a, align 8
  %i.bj = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10push_frame.exit: ; preds = %bb.j, %bb.p
  %.sroa.1326.0 = phi ptr [ %.val23, %bb.j ], [ %.sroa.0.0.i, %bb.p ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !864, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bn = load float, ptr %i.bm, align 8, !alias.scope !864, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load double, ptr %i.bo, align 8, !alias.scope !864, !noundef !7
  store ptr %1, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1326.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %3, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bl, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bp, ptr %.sroa.815.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bn, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10push_frame.exit
  ret void

bb.s:                                             ; preds = %bb.q, %bb.b
  %.sink = phi ptr [ %i.bj, %bb.q ], [ %i.n, %bb.b ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCscK5W4trzgIe_6anyhow7context3extNtNtCsefoF4u9kbII_5wasmi5error5ErrorNtB3_8StdError11ext_contextReECs3WYoaQ2jqaU_5wasmi(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCscK5W4trzgIe_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @18)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !align !9, !noundef !7
  %i.f = call noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCs3WYoaQ2jqaU_5wasmi7display12DisplayValueEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1I_8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5value3ValENvYBQ_INtNtB1K_7convert4FromRB3I_E4fromEEBU_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3WYoaQ2jqaU_5wasmi7display12DisplayValueEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2b_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5value3ValENvYBU_INtNtB2b_7convert4FromRB3h_E4fromEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs3WYoaQ2jqaU_5wasmi7display12DisplayValueE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCs3WYoaQ2jqaU_5wasmi7display16DisplayValueTypeEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1M_8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENvYBQ_INtNtB1O_7convert4FromRB3M_E4fromEEBU_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3WYoaQ2jqaU_5wasmi7display16DisplayValueTypeEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENvYBU_INtNtB2f_7convert4FromRB3l_E4fromEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs3WYoaQ2jqaU_5wasmi7display16DisplayValueTypeE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtB1w_8adapters12GenericShuntINtNtB2G_3map3MapINtNtB2G_9enumerate9EnumerateINtNtB2G_3zip3ZipINtNtNtB1y_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEIB4b_NtNtBa_6string6StringEEENCNvNtCs3WYoaQ2jqaU_5wasmi5utils16decode_func_args0EINtNtB1y_6result6ResultzNtCscK5W4trzgIe_6anyhow5ErrorEEEB5T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %0, i64 64, i1 false), !alias.scope !875, !noalias !876
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEINtB2_12SpecFromIterBU_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1T_3map3MapINtNtB1T_9enumerate9EnumerateINtNtB1T_3zip3ZipINtNtNtB1X_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEIB3K_NtNtB6_6string6StringEEENCNvNtCs3WYoaQ2jqaU_5wasmi5utils16decode_func_args0EINtNtB1X_6result6ResultzNtCscK5W4trzgIe_6anyhow5ErrorEEE9from_iterB5s_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !874
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE16into_boxed_sliceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1w_8adapters3map3MapINtNtB2I_6copied6CopiedINtNtNtB1y_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBS_BQ_14default_for_tyEECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBW_BU_14default_for_tyEE9from_iterCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE16into_boxed_sliceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1L_8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprENCINvMs1_NtB3P_11instantiateNtB3P_6Module25initialize_table_elementsQQINtNtB3R_5store5StoreNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEE0EECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !888, !noalias !889
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprENCINvMs1_NtB3o_11instantiateNtB3o_6Module25initialize_table_elementsQQINtNtB3q_5store5StoreNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEE0EE9from_iterCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !887
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE16into_boxed_sliceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtBa_3vec9into_iter8IntoIterBQ_EECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !901, !noalias !902
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB6_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !900
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE16into_boxed_sliceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSTReNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1J_8adapters10filter_map9FilterMapNtNtNtBZ_6module6export17ModuleExportsIterNCNvMNtCs3WYoaQ2jqaU_5wasmi7contextNtB4h_7Context14exported_funcs0EEB4j_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %0, i64 80, i1 false), !alias.scope !914, !noalias !915
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTReNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtNtB13_6module6export17ModuleExportsIterNCNvMNtCs3WYoaQ2jqaU_5wasmi7contextNtB3R_7Context14exported_funcs0EE9from_iterB3T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !913
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTReNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEE16into_boxed_sliceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSINvNtNtNtCs2C93r1qUspC_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCsG258MDvU3F_3std4path7PathBufE5reifyCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !929
  call void @_RINvMNtNtCs2C93r1qUspC_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !932, !noalias !929, !noundef !7
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_RINvNtNtNtCs2C93r1qUspC_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !934
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 99, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22
          to label %bb.e unwind label %bb.c, !noalias !933

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !938, !noalias !933, !nonnull !7, !noundef !7
end_hunk_0
