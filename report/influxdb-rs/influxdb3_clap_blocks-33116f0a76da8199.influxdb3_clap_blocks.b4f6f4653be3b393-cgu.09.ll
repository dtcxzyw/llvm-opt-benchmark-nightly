Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.09?download=true
inline.NumInlined: 698
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore7AcquireECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.c = icmp eq ptr %.val2, null
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  invoke void %i.f(ptr noundef %.val3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.f, !inline_history !1

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !align !17, !noundef !7 ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  tail call void %i.k(ptr noundef %.val1), !inline_history !1809
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit4: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore6WaiterECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #20
          to label %.body2 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.i) #20
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEB17_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtB5_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2q_4read7StrReadEEB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(80) %i.c) #20
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1825, !noalias !1826, !noundef !7 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1827, !noalias !1828 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !1825, !noalias !1826, !nonnull !7, !noundef !7
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !1831, !noundef !7
  switch i8 %i.p, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1832, !noalias !1828
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1823
  store i64 22, ptr %i.a, align 8, !noalias !1823
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.b) #20
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1823
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdLkRf3gRIi6_10serde_json2de8from_strNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEBK_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %i.c, align 8
  call void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEB17_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !align !17, !noundef !7 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1858, !noalias !1859, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !1857, !noalias !1860 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1858, !noalias !1859, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1863, !noundef !7 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !1864, !noalias !1860
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !12, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !9

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !1865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.z = phi i64 [ %i.ac, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !1867, !noundef !7
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 93, label %bb.k
  ], !prof !1868

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !1869, !noalias !1870
  %exitcond.not.i8 = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 7, ptr %i.a, align 8
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.g, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2X_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1913, !noalias !1914, !noundef !7 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1915, !noalias !1916 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1913, !noalias !1914, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1919, !noundef !7
  switch i8 %i.l, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !1920, !noalias !1916
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1922
  call void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !1923
  %i.n = load i64, ptr %i.c, align 8, !range !16, !noalias !1922, !noundef !7
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1922, !nonnull !7, !align !17, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !1923, !noalias !1924
  store i64 -2, ptr %0, align 8, !alias.scope !1923, !noalias !1924
  br label %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1924
  br label %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i

_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1922
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !1925, !noalias !1926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !1930, !noundef !7
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !1931, !noalias !1932
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1935, !noundef !7
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !1936, !noalias !1932
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !22

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1939, !noundef !7
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !1940, !noalias !1932
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, label %bb.l, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1941
  store i64 5, ptr %i.b, align 8, !noalias !1941
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1941
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1941
  store i64 9, ptr %i.a, align 8, !noalias !1941
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1941
  br label %bb.m

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !1943, !noalias !1944
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !1926, !noalias !1944
  store i64 -2, ptr %0, align 8, !alias.scope !1926, !noalias !1944
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !2010, !noalias !2011, !noundef !7 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !2012, !noalias !2013 ; 3 uses
  %i.n = icmp ult i64 %.promoted.i.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2010, !noalias !2011, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.t, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !2016, !noundef !7
  switch i8 %i.s, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !2017, !noalias !2013
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.q, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  %i.u = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2024, !noalias !2025, !nonnull !7, !noundef !7
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.x = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !2028, !noundef !7 ; 2 uses
  switch i8 %i.z, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.k, align 8, !alias.scope !2029, !noalias !2030
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2031
  store i64 5, ptr %i.j, align 8, !noalias !2031
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !2032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2031
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !2033, !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2031
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !2032
  %i.ad = load i64, ptr %i.i, align 8, !range !23, !noalias !2031, !noundef !7 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !2034

bb.g:                                             ; preds = %bb.d
  %i.ag = add i8 %i.z, -48
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond.i.i.i.i.i.i, label %bb.o, label %bb.n, !prof !24

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !2031, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2031
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !2031 ; 4 uses
  switch i64 %i.ad, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.r, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2035
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.ai, align 8, !noalias !2035
  store i8 3, ptr %i.g, align 8, !noalias !2035
  %i.aj = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2035
  br label %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp sgt i64 %.sroa.2.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.ak, label %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2035
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !2035
  store i8 2, ptr %i.f, align 8, !noalias !2035
  %i.am = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2035
  br label %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i.i.i.i.i

_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i.i.i.i.i: ; preds = %bb.l, %bb.j
  %.pn2.i.ph.i.i.i.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2031
  br label %bb.p

_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2031
  br label %bb.w

.thread.i.i.i.i.i.i:                              ; preds = %bb.u, %bb.s
  %.pn2.i9.ph.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.u ], [ %i.au, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2031
  br label %bb.p

bb.m:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2031
  br label %bb.w

bb.n:                                             ; preds = %bb.g
  %i.an = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !2032
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2031
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true), !noalias !2032
  %i.ao = load i64, ptr %i.h, align 8, !range !23, !noalias !2031, !noundef !7 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !2034

bb.p:                                             ; preds = %bb.n, %.thread.i.i.i.i.i.i, %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i.i.i.i.i
  %.sroa.74.1.i.i.i.i.i.i = phi ptr [ %.pn2.i9.ph.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.an, %bb.n ], [ %.pn2.i.ph.i.i.i.i.i.i, %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread.i.i.i.i.i.i ]
  %i.ar = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %.sroa.74.1.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !2032
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !2031, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2031
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %.sroa.217.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !2031 ; 4 uses
  switch i64 %i.ao, label %default.unreachable [
    i64 0, label %bb.s
    i64 1, label %bb.m
    i64 2, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2037
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.217.0.copyload.i.i.i.i.i.i, ptr %i.at, align 8, !noalias !2037
  store i8 3, ptr %i.e, align 8, !noalias !2037
  %i.au = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2037
  br label %.thread.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.av = icmp sgt i64 %.sroa.217.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.av, label %bb.m, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2037
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.217.0.copyload.i.i.i.i.i.i, ptr %i.aw, align 8, !noalias !2037
  store i8 2, ptr %i.d, align 8, !noalias !2037
  %i.ax = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2037
  br label %.thread.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.h, %.loopexit.i.i.i.i.i.i
  %.sroa.7.3.in.i.i.i.ph.i.i.i = phi ptr [ %i.ar, %bb.p ], [ %i.ah, %bb.h ], [ %i.as, %bb.q ], [ %i.ab, %.loopexit.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.3.in.i.i.i.ph.i.i.i, ptr %i.ay, align 8, !alias.scope !2032, !noalias !2039
  store i64 2, ptr %0, align 8, !alias.scope !2032, !noalias !2039
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.w:                                             ; preds = %bb.m, %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i
  %.sroa.7.3.in.i.i.i.in.i.i.i = phi i64 [ %.sroa.217.0.copyload.i.i.i.i.i.i, %bb.m ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %_RINvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB6_12ParserNumber5visitNtNvXs19_NtNtCs5CfTnloWo2c_10serde_core2de5implsyNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i ]
  store i64 1, ptr %0, align 8, !alias.scope !2032, !noalias !2039
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.3.in.i.i.i.in.i.i.i, ptr %i.az, align 8, !alias.scope !2032, !noalias !2039
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.x:                                             ; preds = %bb.b
  %i.ba = add i64 %i.q, 1                         ; 4 uses
  store i64 %i.ba, ptr %i.k, align 8, !alias.scope !2040, !noalias !2041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.m) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ba, %i.m
  br i1 %exitcond.not.i9.not.i.i, label %bb.y, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2045, !noundef !7
  %i.bd = add i64 %i.q, 2                         ; 3 uses
  store i64 %i.bd, ptr %i.k, align 8, !alias.scope !2046, !noalias !2047
  %.not.i.i.i = icmp eq i8 %i.bc, 117
  br i1 %.not.i.i.i, label %bb.z, label %bb.ad, !prof !22

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.bd, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2050, !noundef !7
  %i.bg = add i64 %i.q, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.k, align 8, !alias.scope !2051, !noalias !2047
  %.not.i.1.i.i = icmp eq i8 %i.bf, 108
  br i1 %.not.i.1.i.i, label %bb.ab, label %bb.ad, !prof !22

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.bg, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2054, !noundef !7
  %i.bj = add i64 %i.q, 4
  store i64 %i.bj, ptr %i.k, align 8, !alias.scope !2055, !noalias !2047
  %.not.i.2.i.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, label %bb.ad, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.ab, %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2056
  store i64 5, ptr %i.c, align 8, !noalias !2056
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2056
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2056
  store i64 9, ptr %i.b, align 8, !noalias !2056
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2056
  br label %bb.ae

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %bb.ac
  store i64 0, ptr %0, align 8, !alias.scope !2058, !noalias !2059
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.ae:                                            ; preds = %bb.ad, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.bk, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.bl, %bb.ad ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.bm, align 8, !alias.scope !2041, !noalias !2059
  store i64 2, ptr %0, align 8, !alias.scope !2041, !noalias !2059
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.v, %bb.w, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2088, !noalias !2089, !noundef !7 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !2090, !noalias !2091 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i.i, %i.h
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2088, !noalias !2089, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !2094, !noundef !7
  switch i8 %i.n, label %bb.m [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.d
  ], !prof !25

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2095, !noalias !2091
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2096
  store i64 5, ptr %i.e, align 8, !noalias !2096
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !2085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2096
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !2085, !noalias !2086
  store i64 -1, ptr %0, align 8, !alias.scope !2085, !noalias !2086
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !2097, !noalias !2085
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !2086, !noalias !2085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2096
  call void @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !2085
  %i.t = load i64, ptr %i.d, align 8, !range !6, !noalias !2096, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2096 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !2085, !noalias !2086
  store i64 -1, ptr %0, align 8, !alias.scope !2085, !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2096
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2096 ; 8 uses
  %i.y = trunc nuw i64 %i.t to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2098
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2099
  %i.z = load i64, ptr %i.c, align 8, !range !20, !noalias !2098, !noundef !7
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !2100, !noalias !2098, !noundef !7 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !2098
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #22, !noalias !2099
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !2098, !nonnull !7, !noundef !7 ; 2 uses
  %i.ag = icmp ule i64 %.sroa.4.0.copyload.i, %i.ac
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2098
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.n, label %.sink.split.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2101
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2102
  %i.ah = load i64, ptr %i.b, align 8, !range !20, !noalias !2101, !noundef !7
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !2100, !noalias !2101, !noundef !7 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.al, align 8, !noalias !2101
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #22, !noalias !2102
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.al, align 8, !noalias !2101, !nonnull !7, !noundef !7 ; 2 uses
  %i.ao = icmp ule i64 %.sroa.4.0.copyload.i, %i.ak
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2101
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i.i, label %bb.n, label %.sink.split.i

bb.m:                                             ; preds = %bb.b
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12), !noalias !2085
  %i.aq = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !2085
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !2085, !noalias !2086
  store i64 -1, ptr %0, align 8, !alias.scope !2085, !noalias !2086
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

.sink.split.i:                                    ; preds = %bb.l, %bb.i
  %.sink.i = phi ptr [ %i.af, %bb.i ], [ %i.an, %bb.l ] ; 2 uses
  %.sroa.010.0.ph.i = phi i64 [ %i.ac, %bb.i ], [ %i.ak, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i, ptr nonnull readonly align 1 %i.w, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !2085
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %bb.l, %bb.i
  %.sroa.8.0.i = phi ptr [ %i.an, %bb.l ], [ %i.af, %bb.i ], [ %.sink.i, %.sink.split.i ]
  %.sroa.010.0.i = phi i64 [ %i.ak, %bb.l ], [ %i.ac, %bb.i ], [ %.sroa.010.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2096
  store i64 %.sroa.010.0.i, ptr %0, align 8, !alias.scope !2085, !noalias !2086
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i, ptr %.sroa.4.0..sroa_idx13.i, align 8, !alias.scope !2085, !noalias !2086
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2085, !noalias !2086
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.loopexit.i, %bb.e, %bb.m, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtB2t_17AwsFileCredentialNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.3142.i = alloca [16 x i8], align 8       ; 2 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 20 uses
  %i.ar = alloca [24 x i8], align 8               ; 20 uses
  %i.as = alloca [24 x i8], align 8               ; 20 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 12 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [16 x i8], align 8               ; 12 uses
  %i.bj = alloca [88 x i8], align 8               ; 14 uses
  %i.bk = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.30 = alloca [24 x i8], align 8           ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [88 x i8], align 8               ; 11 uses
  %i.bn = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.1468 = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.15 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.16 = alloca [24 x i8], align 8           ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [72 x i8], align 8           ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 59 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !2461, !noalias !2462, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.bq, align 8, !alias.scope !2460, !noalias !2463 ; 2 uses
  %i.bt = icmp ult i64 %.promoted.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !2461, !noalias !2462, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bw = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bz, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !2466, !noundef !7 ; 2 uses
  switch i8 %i.by, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bz = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.bz, ptr %i.bq, align 8, !alias.scope !2467, !noalias !2463
  %exitcond.not.i = icmp eq i64 %i.bz, %i.bs
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.by, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !2468

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 5, ptr %i.bp, align 8
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ia

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  br label %bb.hx

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 8, !noundef !7
  %i.cf = add i8 %i.ce, -1                        ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 8
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.h, !prof !10

bb.f:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ci = load i8, ptr %i.ch, align 8, !noundef !7
  %i.cj = add i8 %i.ci, -1                        ; 2 uses
  store i8 %i.cj, ptr %i.ch, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.bm, label %bb.bn, !prof !10

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i64 24, ptr %i.bo, align 8
  %i.cl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  %i.cm = add i64 %i.bw, 1
  store i64 %i.cm, ptr %i.bq, align 8, !alias.scope !2469
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1468)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr %1, ptr %i.bi, align 8, !noalias !2470
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 1, ptr %i.cn, align 8, !noalias !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2473
  call fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi), !noalias !2474
  %i.co = load i8, ptr %i.be, align 8, !range !12, !noalias !2473, !noundef !7
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !2473, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2473
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !range !12, !noalias !2473, !noundef !7
  %i.cu = trunc nuw i8 %i.ct to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2473
  br i1 %i.cu, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2473
  %i.cv = load ptr, ptr %i.bi, align 8, !alias.scope !2475, !noalias !2476, !nonnull !7, !align !17, !noundef !7
  call void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.cv), !noalias !2477
  %i.cw = load i64, ptr %i.bd, align 8, !range !16, !noalias !2473, !noundef !7 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !2478 ; 2 uses
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2473
  br label %bb.s

common.resume.sink.split:                         ; preds = %bb.bk, %bb.hw
  %.sroa.0.0.i55.sink = phi ptr [ %.sroa.0.0.i55, %bb.hw ], [ %.sroa.0.0.i, %bb.bk ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.um, %bb.hw ], [ %i.go, %bb.bk ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i55.sink, i64 noundef 40, i64 noundef 8) #19
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.hq, %.body, %.body249.i, %bb.hh, %bb.hl, %.body72.i, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %.pn160.i, %.body249.i ], [ %i.tw, %bb.hq ], [ %i.fa, %bb.ar ], [ %eh.lpad-body, %.body ], [ %.pn61.i, %.body72.i ], [ %i.ti, %bb.hh ], [ %.pn160.i, %bb.hl ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2473
  store i64 %i.cw, ptr %i.bh, align 8, !noalias !2470
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.cz, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2470
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.12.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2470
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2481
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.noexc.i unwind label %bb.t, !noalias !2482

.noexc.i:                                         ; preds = %bb.m
  %i.da = load i8, ptr %i.bc, align 8, !range !12, !noalias !2481, !noundef !7
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !2481, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2481
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.o:                                             ; preds = %.noexc.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.df = load i8, ptr %i.de, align 1, !range !12, !noalias !2481, !noundef !7
  %i.dg = trunc nuw i8 %i.df to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2481
  br i1 %i.dg, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2481
  %i.dh = load ptr, ptr %i.bi, align 8, !alias.scope !2483, !noalias !2484, !nonnull !7, !align !17, !noundef !7
  invoke void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.dh)
          to label %.noexc65.i unwind label %bb.t, !noalias !2482

.noexc65.i:                                       ; preds = %bb.p
  %i.di = load i64, ptr %i.bb, align 8, !range !16, !noalias !2481, !noundef !7 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !2485 ; 2 uses
  br i1 %i.dj, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.noexc65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2481
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.r:                                             ; preds = %bb.j
  %i.dm = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 noundef 0, ptr noundef nonnull @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11), !noalias !2482
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %bb.i
  %.sink.i = phi ptr [ %i.dm, %bb.r ], [ %i.cz, %bb.l ], [ %i.cr, %bb.i ]
  %i.dn = ptrtoint ptr %.sink.i to i64
  br label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit

.body72.i:                                        ; preds = %bb.ao, %.body.i, %bb.t
  %.pn61.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.do, %bb.t ], [ %i.ex, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #20
          to label %common.resume unwind label %bb.aq, !noalias !2482

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.z, %bb.p, %bb.m
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

bb.u:                                             ; preds = %.noexc65.i
  %.sroa.1280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.1280.0.copyload.i = load i64, ptr %.sroa.1280.0..sroa_idx.i, align 8, !noalias !2485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2481
  store i64 %i.di, ptr %i.bg, align 8, !noalias !2470
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.dl, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !2470
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sroa.1280.0.copyload.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2470
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2488
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.noexc67.i unwind label %bb.aa, !noalias !2482

.noexc67.i:                                       ; preds = %bb.u
  %i.dp = load i8, ptr %i.ba, align 8, !range !12, !noalias !2488, !noundef !7
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc67.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !2488, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2488
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtB2t_17AwsFileCredentialNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %.noexc68.i
  %.sroa.1283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.1283.0.copyload.i = load i64, ptr %.sroa.1283.0..sroa_idx.i, align 8, !noalias !2492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2488
  store i64 %i.dx, ptr %i.bf, align 8, !noalias !2470
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.ea, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !2470
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.1283.0.copyload.i, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !2470
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2495
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.noexc69.i unwind label %bb.ah, !noalias !2482

.noexc69.i:                                       ; preds = %bb.ab
  %i.ed = load i8, ptr %i.ay, align 8, !range !12, !noalias !2495, !noundef !7
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc69.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !2495, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2495
  br label %bb.ak

bb.ad:                                            ; preds = %.noexc69.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !range !12, !noalias !2495, !noundef !7
  %i.ej = trunc nuw i8 %i.ei to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2495
  br i1 %i.ej, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2495
  %i.ek = load ptr, ptr %i.bi, align 8, !alias.scope !2496, !noalias !2497, !nonnull !7, !align !17, !noundef !7
  invoke fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias noundef align 8 dereferenceable(80) %i.ek)
          to label %.noexc70.i unwind label %bb.ah, !noalias !2482

.noexc70.i:                                       ; preds = %bb.ae
  %i.el = load i64, ptr %i.ax, align 8, !range !6, !noalias !2495, !noundef !7 ; 2 uses
  %i.em = icmp eq i64 %i.el, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  br i1 %i.em, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.noexc70.i
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !2495, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2495
  br label %bb.ak

bb.ag:                                            ; preds = %bb.w
  %i.ep = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 noundef 2, ptr noundef nonnull @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %bb.aa, !noalias !2482

bb.ah:                                            ; preds = %bb.aj, %bb.ae, %bb.ab
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #20
          to label %.body.i unwind label %bb.aq, !noalias !2482

bb.ai:                                            ; preds = %.noexc70.i
  %i.er = load i64, ptr %i.en, align 8, !noalias !2495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1468, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !2498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !2498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !2498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2470
  br label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit

bb.aj:                                            ; preds = %bb.ad
  %i.es = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 noundef 3, ptr noundef nonnull @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %bb.ak unwind label %bb.ah, !noalias !2482

bb.ak:                                            ; preds = %bb.aj, %bb.af, %bb.ac
  %.sink127.i = phi ptr [ %i.eg, %bb.ac ], [ %i.eo, %bb.af ], [ %i.es, %bb.aj ] ; 2 uses
  %i.et = load i64, ptr %i.bf, align 8, !range !16, !alias.scope !2499, !noalias !2470, !noundef !7
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.am, !noalias !2482

bb.am:                                            ; preds = %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body.i unwind label %bb.an, !noalias !2482

bb.an:                                            ; preds = %bb.am
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2482
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %bb.aa, !noalias !2482

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.v, %bb.y, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.ak
  %.sroa.967.1.in = phi ptr [ %.sink127.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ %.sink127.i, %bb.ak ], [ %i.ds, %bb.v ], [ %i.ea, %bb.y ], [ %i.ep, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2470
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.ao, !noalias !2482

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body72.i unwind label %bb.ap, !noalias !2482

bb.ap:                                            ; preds = %bb.ao
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2482
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %bb.t, !noalias !2482

bb.aq:                                            ; preds = %bb.ah, %.body.i, %.body72.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2482
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.n, %bb.q, %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
  %.sroa.967.0.in = phi ptr [ %.sroa.967.1.in, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ %i.dd, %bb.n ], [ %i.dl, %bb.q ], [ %i.eb, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2470
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit77.i unwind label %bb.ar, !noalias !2482

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.as, !noalias !2482

bb.as:                                            ; preds = %bb.ar
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2482
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit77.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %.sroa.967.0 = ptrtoint ptr %.sroa.967.0.in to i64
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh), !noalias !2482
  br label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit: ; preds = %bb.s, %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit77.i
  %.sroa.967.2 = phi i64 [ %i.dn, %bb.s ], [ %.sroa.967.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit77.i ], [ %i.er, %bb.ai ]
  %.sroa.066.2 = phi i64 [ 2, %bb.s ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit77.i ], [ %i.el, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.fc = load i8, ptr %i.cd, align 8, !noundef !7
  %i.fd = add i8 %i.fc, 1
  store i8 %i.fd, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i64 %.sroa.066.2, ptr %i.bm, align 8
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.sroa.967.2, ptr %.sroa.967.0..sroa_idx, align 8
  %.sroa.1468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1468.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1468, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.fe = load i64, ptr %i.br, align 8, !alias.scope !2502, !noalias !2503, !noundef !7 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.bq, align 8, !alias.scope !2504, !noalias !2505 ; 2 uses
  %i.ff = icmp ult i64 %.promoted.i.i, %i.fe
  br i1 %i.ff, label %.lr.ph.i.i, label %.loopexit.i41

.lr.ph.i.i:                                       ; preds = %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit
  %i.fg = load ptr, ptr %i.bu, align 8, !alias.scope !2502, !noalias !2503, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i.i
  %i.fh = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.fk, %bb.au ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !2508, !noundef !7
  switch i8 %i.fj, label %bb.av [
    i8 32, label %bb.au
    i8 10, label %bb.au
    i8 9, label %bb.au
    i8 13, label %bb.au
    i8 93, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
    i8 44, label %bb.aw
  ], !prof !2509

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  %i.fk = add i64 %i.fh, 1                        ; 3 uses
  store i64 %i.fk, ptr %i.bq, align 8, !alias.scope !2510, !noalias !2505
  %exitcond.not.i.i = icmp eq i64 %i.fk, %i.fe
  br i1 %exitcond.not.i.i, label %.loopexit.i41, label %bb.at

.loopexit.i41:                                    ; preds = %bb.au, %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB39_4read7StrReadEEBd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2500
  store i64 2, ptr %i.at, align 8, !noalias !2500
  %i.fl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at)
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %.loopexit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2500
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2500
  store i64 22, ptr %i.au, align 8, !noalias !2500
  %i.fm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au)
          to label %.noexc42 unwind label %bb.bd

.noexc42:                                         ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2500
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.aw:                                            ; preds = %bb.at
  %i.fn = add i64 %i.fh, 1                        ; 3 uses
  store i64 %i.fn, ptr %i.bq, align 8, !alias.scope !2511
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.fo = icmp ult i64 %i.fn, %i.fe
  br i1 %i.fo, label %.lr.ph.i12.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.aw, %bb.ax
  %i.fp = phi i64 [ %i.fs, %bb.ax ], [ %i.fn, %bb.aw ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !2513, !noundef !7
  switch i8 %i.fr, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 93, label %bb.ay
  ]

bb.ax:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.fs = add i64 %i.fp, 1                        ; 3 uses
  store i64 %i.fs, ptr %i.bq, align 8, !alias.scope !2514, !noalias !2515
  %exitcond.not.i13.i = icmp eq i64 %i.fs, %i.fe
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i: ; preds = %bb.ax, %.lr.ph.i12.i, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2500
  store i64 22, ptr %i.av, align 8, !noalias !2500
  %i.ft = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.ba unwind label %bb.bb

bb.ay:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2500
  store i64 21, ptr %i.aw, align 8, !noalias !2500
  %i.fu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2500
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.ba:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2500
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.bb:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.thread.i, %bb.ay
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.bm, %bb.g
  %.sink = phi ptr [ %i.gq, %bb.bm ], [ %i.cl, %bb.g ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fw, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ia

bb.bd:                                            ; preds = %bb.av, %.loopexit.i41
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bb, %bb.bd
  %eh.lpad-body = phi { ptr, i32 } [ %i.fx, %bb.bd ], [ %i.fv, %bb.bb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(88) %i.bm) #20
          to label %common.resume unwind label %bb.bf

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.noexc42, %.noexc, %bb.az, %bb.ba
  %.sroa.0.0.i = phi ptr [ %i.fm, %.noexc42 ], [ %i.fu, %bb.az ], [ %i.fl, %.noexc ], [ %i.ft, %bb.ba ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 88, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  store ptr %.sroa.0.0.i, ptr %i.fy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.fz = load i64, ptr %i.bn, align 8, !range !6, !noundef !7
  %i.ga = icmp eq i64 %i.fz, 2
  br i1 %i.ga, label %bb.bg, label %bb.be

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread: ; preds = %bb.at
  %i.gb = add i64 %i.fh, 1
  store i64 %i.gb, ptr %i.bq, align 8, !alias.scope !2516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.gc = load i64, ptr %i.bn, align 8, !range !6, !noundef !7 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  br i1 %i.gd, label %.thread762, label %.thread

.thread762:                                       ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %.thread87

.thread:                                          ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %.thread87

bb.be:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.bn)
  br label %.thread87

bb.bf:                                            ; preds = %bb.hq, %.body
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread87:                                        ; preds = %.thread762, %.thread, %bb.be, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.09.093 = phi i64 [ 2, %.thread762 ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 2, %bb.be ], [ %i.gc, %.thread ]
  %.sroa.10.092 = phi ptr [ %i.gf, %.thread762 ], [ %i.gi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %.sroa.0.0.i, %bb.be ], [ %i.gf, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.bl

bb.bg:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.gj = load i64, ptr %.sroa.0.0.i, align 8, !range !21, !alias.scope !2519, !noundef !7
  switch i64 %i.gj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit [
    i64 0, label %bb.bh
    i64 1, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !2519, !noundef !7 ; 2 uses
  %i.gl = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.gl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !2519, !nonnull !7, !noundef !7
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #19, !noalias !2519
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.bj:                                            ; preds = %bb.bg
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !2519, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %.val2.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #19
  br label %.thread87

bb.bl:                                            ; preds = %.thread94, %.thread87
  %.sroa.10.1 = phi ptr [ %.sroa.10.092, %.thread87 ], [ %.sroa.10.299, %.thread94 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.093, %.thread87 ], [ %.sroa.09.2100, %.thread94 ] ; 2 uses
  %i.gp = icmp eq i64 %.sroa.09.1, 2
  br i1 %i.gp, label %bb.hx, label %bb.hy, !prof !10

bb.bm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 24, ptr %i.bl, align 8
  %i.gq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.bc

bb.bn:                                            ; preds = %bb.f
  %i.gr = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.gr, ptr %i.bq, align 8, !alias.scope !2520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2522
  store i64 -1, ptr %i.as, align 8, !noalias !2522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2522
  store i64 -1, ptr %i.ar, align 8, !noalias !2522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2522
  store i64 -2, ptr %i.aq, align 8, !noalias !2522
  %i.gs = icmp ult i64 %i.gr, %i.bs
  br i1 %i.gs, label %.lr.ph.i.i.i.i.lr.ph.i, label %.loopexit22.i.i.i.i

.lr.ph.i.i.i.i.lr.ph.i:                           ; preds = %bb.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.4125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %.sroa.747.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.663.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %.sroa.766.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.626.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %.lr.ph.i.i.i.i.lr.ph.i
  %.promoted.i.i.i.i590.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.lr.ph.i ], [ %.promoted.i.i.i.i.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ]
  %i.gx = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.lr.ph.i ], [ %i.qi, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ] ; 3 uses
  %.sroa.069.0589.i = phi i64 [ 2, %.lr.ph.i.i.i.i.lr.ph.i ], [ %.sroa.069.1.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ] ; 8 uses
  %.sroa.5.0588.i = phi i64 [ undef, %.lr.ph.i.i.i.i.lr.ph.i ], [ %.sroa.5.1.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ] ; 6 uses
  %.sroa.7.0587.i = phi i1 [ true, %.lr.ph.i.i.i.i.lr.ph.i ], [ false, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.gy = load ptr, ptr %i.bu, align 8, !alias.scope !2524, !noalias !2525, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i.i
  %i.gz = phi i64 [ %.promoted.i.i.i.i590.i, %.lr.ph.i.i.i.i.i ], [ %i.hc, %bb.bp ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !2528, !noundef !7 ; 3 uses
  switch i8 %i.hb, label %bb.bq [
    i8 32, label %bb.bp
    i8 10, label %bb.bp
    i8 9, label %bb.bp
    i8 13, label %bb.bp
    i8 125, label %bb.cl
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo
  %i.hc = add i64 %i.gz, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.bq, align 8, !alias.scope !2529, !noalias !2530
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hc, %i.gx
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit22.i.i.i.i, label %bb.bo

.loopexit22.i.i.i.i:                              ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2531
  store i64 3, ptr %i.ai, align 8, !noalias !2531
  %i.hd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc.i46 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc.i46:                                       ; preds = %.loopexit22.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2531
  br label %.loopexit294.i

bb.bq:                                            ; preds = %bb.bo
  br i1 %.sroa.7.0587.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.he = icmp eq i8 %i.hb, 44
  br i1 %i.he, label %bb.bt, label %bb.bv, !prof !9

bb.bs:                                            ; preds = %bb.bq
  %i.hf = icmp eq i8 %i.hb, 34
  br i1 %i.hf, label %.loopexit.i.i.i, label %bb.by, !prof !9

bb.bt:                                            ; preds = %bb.br
  %i.hg = add i64 %i.gz, 1                        ; 3 uses
  store i64 %i.hg, ptr %i.bq, align 8, !alias.scope !2533, !noalias !2534
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.hh = icmp ult i64 %i.hg, %i.gx
  br i1 %i.hh, label %.lr.ph.i7.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i7.i.i.i.i:                                ; preds = %bb.bt, %bb.bu
  %i.hi = phi i64 [ %i.hl, %bb.bu ], [ %i.hg, %bb.bt ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !2536, !noundef !7
  switch i8 %i.hk, label %bb.bw [
    i8 32, label %bb.bu
    i8 10, label %bb.bu
    i8 9, label %bb.bu
    i8 13, label %bb.bu
    i8 34, label %.loopexit.i.i.i
    i8 125, label %bb.bx
  ], !prof !2509

bb.bu:                                            ; preds = %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i
  %i.hl = add i64 %i.hi, 1                        ; 3 uses
  store i64 %i.hl, ptr %i.bq, align 8, !alias.scope !2537, !noalias !2538
  %exitcond.not.i8.i.i.i.i = icmp eq i64 %i.hl, %i.gx
  br i1 %exitcond.not.i8.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i7.i.i.i.i

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2531
  store i64 8, ptr %i.ad, align 8, !noalias !2531
  %i.hm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %.noexc168.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc168.i:                                      ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2531
  br label %.loopexit294.i

.loopexit.i.i.i.i:                                ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2531
  store i64 5, ptr %i.ae, align 8, !noalias !2531
  %i.hn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc169.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc169.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2531
  br label %.loopexit294.i

bb.bw:                                            ; preds = %.lr.ph.i7.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2531
  store i64 17, ptr %i.af, align 8, !noalias !2531
  %i.ho = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
          to label %.noexc170.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc170.i:                                      ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2531
  br label %.loopexit294.i

bb.bx:                                            ; preds = %.lr.ph.i7.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2531
  store i64 21, ptr %i.ag, align 8, !noalias !2531
  %i.hp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %.noexc171.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc171.i:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2531
  br label %.loopexit294.i

bb.by:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2531
  store i64 17, ptr %i.ah, align 8, !noalias !2531
  %i.hq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc172.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc172.i:                                      ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2531
  br label %.loopexit294.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i7.i.i.i.i, %bb.bs
  %i.hr = phi i64 [ %i.gz, %bb.bs ], [ %i.hi, %.lr.ph.i7.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.bq, align 8, !alias.scope !2543, !noalias !2544
  store i64 0, ptr %i.gt, align 8, !alias.scope !2545, !noalias !2544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2546
  invoke void @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2532

.noexc173.i:                                      ; preds = %.loopexit.i.i.i
  %i.ht = load i64, ptr %i.ac, align 8, !range !6, !noalias !2546, !noundef !7 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 2
  %i.hv = load ptr, ptr %i.gu, align 8, !noalias !2546 ; 19 uses
  br i1 %i.hu, label %bb.ck, label %bb.bz

bb.bz:                                            ; preds = %.noexc173.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2546 ; 2 uses
  %i.hw = trunc nuw i64 %i.ht to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hv) ]
  br i1 %i.hw, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.cq [
    i64 17, label %bb.cb
    i64 21, label %bb.cc
    i64 6, label %bb.ce
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.hx = load i128, ptr %i.hv, align 1
  %i.hy = xor i128 %i.hx, 140064669965813720277003735947392808801
  %i.hz = getelementptr i8, ptr %i.hv, i64 16
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i128
  %i.ic = xor i128 %i.ib, 100
  %i.id = or i128 %i.hy, %i.ic
  %i.ie = icmp ne i128 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.cm, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ih = load i128, ptr %i.hv, align 1
  %i.ii = xor i128 %i.ih, 153387657330251636973370353650844792673
  %i.ij = getelementptr i8, ptr %i.hv, i64 5
  %i.ik = load i128, ptr %i.ij, align 1
  %i.il = xor i128 %i.ik, 161363187252920149186803576391607673701
  %i.im = or i128 %i.ii, %i.il
  %i.in = icmp ne i128 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.cn, label %bb.cq

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i128, ptr %i.hv, align 1
  %i.ir = xor i128 %i.iq, 134809863905607170610709716682606344033
  %i.is = getelementptr i8, ptr %i.hv, i64 16
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i128
  %i.iv = xor i128 %i.iu, 110
  %i.iw = or i128 %i.ir, %i.iv
  %i.ix = icmp ne i128 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.co, label %bb.cq

bb.ce:                                            ; preds = %bb.ca
  %i.ja = load i32, ptr %i.hv, align 1
  %i.jb = xor i32 %i.ja, 1768978533
  %i.jc = getelementptr i8, ptr %i.hv, i64 4
  %i.jd = load i16, ptr %i.jc, align 1
  %i.je = zext i16 %i.jd to i32
  %i.jf = xor i32 %i.je, 31090
  %i.jg = or i32 %i.jb, %i.jf
  %i.jh = icmp ne i32 %i.jg, 0
  %i.ji = zext i1 %i.jh to i32
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.cp, label %bb.cq

bb.cf:                                            ; preds = %bb.bz
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.cq [
    i64 17, label %bb.cg
    i64 21, label %bb.ch
    i64 6, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.jk = load i128, ptr %i.hv, align 1
  %i.jl = xor i128 %i.jk, 140064669965813720277003735947392808801
  %i.jm = getelementptr i8, ptr %i.hv, i64 16
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i128
  %i.jp = xor i128 %i.jo, 100
  %i.jq = or i128 %i.jl, %i.jp
  %i.jr = icmp ne i128 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.cm, label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.ju = load i128, ptr %i.hv, align 1
  %i.jv = xor i128 %i.ju, 153387657330251636973370353650844792673
  %i.jw = getelementptr i8, ptr %i.hv, i64 5
  %i.jx = load i128, ptr %i.jw, align 1
  %i.jy = xor i128 %i.jx, 161363187252920149186803576391607673701
  %i.jz = or i128 %i.jv, %i.jy
  %i.ka = icmp ne i128 %i.jz, 0
  %i.kb = zext i1 %i.ka to i32
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.cn, label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  %i.kd = load i128, ptr %i.hv, align 1
  %i.ke = xor i128 %i.kd, 134809863905607170610709716682606344033
  %i.kf = getelementptr i8, ptr %i.hv, i64 16
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = zext i8 %i.kg to i128
  %i.ki = xor i128 %i.kh, 110
  %i.kj = or i128 %i.ke, %i.ki
  %i.kk = icmp ne i128 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.co, label %bb.cq

bb.cj:                                            ; preds = %bb.cf
  %i.kn = load i32, ptr %i.hv, align 1
  %i.ko = xor i32 %i.kn, 1768978533
  %i.kp = getelementptr i8, ptr %i.hv, i64 4
  %i.kq = load i16, ptr %i.kp, align 1
  %i.kr = zext i16 %i.kq to i32
  %i.ks = xor i32 %i.kr, 31090
  %i.kt = or i32 %i.ko, %i.ks
  %i.ku = icmp ne i32 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.cp, label %bb.cq

bb.ck:                                            ; preds = %.noexc173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hv) ]
  br label %.loopexit294.i

.loopexit.split-lp.i:                             ; preds = %bb.gq, %.body220.i, %.body.i50, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i49
  %.sroa.0119.1.ph.i = phi i8 [ %.sroa.0119.4.i, %bb.gq ], [ 1, %.body220.i ], [ 1, %.body.i50 ], [ 1, %.loopexit.i49 ], [ 1, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0119.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.sm, %bb.gq ], [ %eh.lpad-body221.i, %.body220.i ], [ %eh.lpad-body.i, %.body.i50 ], [ %lpad.loopexit.i, %.loopexit.i49 ], [ %lpad.loopexit302.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp303.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.aq, align 8, !noalias !2522
  %.not154.i = icmp eq i64 %.pr.i, -2
  br i1 %.not154.i, label %.body245.i, label %bb.hj

.loopexit.i49:                                    ; preds = %bb.en, %bb.dy, %bb.du, %bb.dt, %bb.ds
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.gf, %bb.fv, %bb.fl, %bb.fb, %.loopexit.i.i.i
  %lpad.loopexit302.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.gs, %bb.gi, %bb.ge, %.loopexit.i.i.i236.i, %bb.fu, %.loopexit.i.i.i225.i, %bb.fk, %.loopexit.i.i.i210.i, %bb.fa, %.loopexit.i.i.i202.i, %bb.ew, %.invoke.i, %bb.et, %.loopexit124.i.i.i.i.i.i.i, %bb.eo, %.loopexit125.i.i.i.i.i.i.i, %bb.ed, %bb.dx, %.loopexit219.i.i.i.i.i.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit226.i.i.i.i.i.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit233.i.i.i.i.i.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.ct, %.loopexit.i.i.i175.i, %bb.by, %bb.bx, %bb.bw, %.loopexit.i.i.i.i, %bb.bv, %.loopexit22.i.i.i.i
  %.sroa.0119.2.ph.ph.i = phi i8 [ 1, %.loopexit.i.i.i202.i ], [ 1, %.invoke ], [ 1, %.invoke.i ], [ 1, %bb.ew ], [ %.sroa.0119.4.i, %bb.gs ], [ 1, %bb.gi ], [ 1, %bb.fa ], [ 1, %.loopexit22.i.i.i.i ], [ 1, %bb.bv ], [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %.loopexit.i.i.i175.i ], [ 1, %bb.ct ], [ 1, %.loopexit130.i.i.i.i.i.i.i ], [ 1, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ 1, %.loopexit233.i.i.i.i.i.i.i ], [ 1, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ 1, %.loopexit226.i.i.i.i.i.i.i ], [ 1, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ 1, %.loopexit219.i.i.i.i.i.i.i ], [ 1, %bb.fk ], [ 1, %.loopexit.i.i.i225.i ], [ 1, %bb.fu ], [ 1, %bb.dx ], [ 1, %.loopexit.i.i.i236.i ], [ 1, %.loopexit.i.i.i210.i ], [ 1, %bb.ed ], [ 1, %.loopexit125.i.i.i.i.i.i.i ], [ 1, %bb.ge ], [ 1, %bb.eo ], [ 1, %.loopexit124.i.i.i.i.i.i.i ], [ 1, %bb.et ]
  %lpad.loopexit.split-lp303.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cl:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2522
  %i.kx = load i64, ptr %i.as, align 8, !range !16, !noalias !2522, !noundef !7
  %.not144.i = icmp eq i64 %i.kx, -1
  br i1 %.not144.i, label %bb.gi, label %bb.gh

bb.cm:                                            ; preds = %bb.cg, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  %i.ky = load i64, ptr %i.as, align 8, !range !16, !noalias !2522, !noundef !7
  %.not152.i = icmp eq i64 %i.ky, -1
  br i1 %.not152.i, label %bb.ex, label %.invoke, !prof !9

bb.cn:                                            ; preds = %bb.ch, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  %i.kz = load i64, ptr %i.ar, align 8, !range !16, !noalias !2522, !noundef !7
  %.not151.i = icmp eq i64 %i.kz, -1
  br i1 %.not151.i, label %bb.fh, label %.invoke, !prof !9

bb.co:                                            ; preds = %bb.ci, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  %i.la = load i64, ptr %i.aq, align 8, !range !2491, !noalias !2522, !noundef !7
  %.not150.i = icmp eq i64 %i.la, -2
  br i1 %.not150.i, label %bb.fr, label %.invoke, !prof !9

bb.cp:                                            ; preds = %bb.cj, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  %.not149.i = icmp eq i64 %.sroa.069.0589.i, 2
  br i1 %.not149.i, label %bb.gb, label %.invoke, !prof !9

bb.cq:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2546
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.lb = load i64, ptr %i.br, align 8, !alias.scope !2549, !noalias !2550, !noundef !7 ; 4 uses
  %.promoted.i.i.i.i174.i = load i64, ptr %i.bq, align 8, !alias.scope !2551, !noalias !2552 ; 2 uses
  %i.lc = icmp ult i64 %.promoted.i.i.i.i174.i, %i.lb
  br i1 %i.lc, label %.lr.ph.i.i.i.i176.i, label %.loopexit.i.i.i175.i

.lr.ph.i.i.i.i176.i:                              ; preds = %bb.cq
  %i.ld = load ptr, ptr %i.bu, align 8, !alias.scope !2549, !noalias !2550, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %.lr.ph.i.i.i.i176.i
  %i.le = phi i64 [ %.promoted.i.i.i.i174.i, %.lr.ph.i.i.i.i176.i ], [ %i.lh, %bb.cs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !2555, !noundef !7
  switch i8 %i.lg, label %bb.ct [
    i8 32, label %bb.cs
    i8 10, label %bb.cs
    i8 9, label %bb.cs
    i8 13, label %bb.cs
    i8 58, label %bb.cu
  ], !prof !25

bb.cs:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.lh = add i64 %i.le, 1                        ; 3 uses
  store i64 %i.lh, ptr %i.bq, align 8, !alias.scope !2556, !noalias !2552
  %exitcond.not.i.i.i.i177.i = icmp eq i64 %i.lh, %i.lb
  br i1 %exitcond.not.i.i.i.i177.i, label %.loopexit.i.i.i175.i, label %bb.cr

.loopexit.i.i.i175.i:                             ; preds = %bb.cq, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2557
  store i64 3, ptr %i.aa, align 8, !noalias !2557
  %i.li = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc178.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc178.i:                                      ; preds = %.loopexit.i.i.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2557
  br label %.loopexit294.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2557
  store i64 6, ptr %i.ab, align 8, !noalias !2557
  %i.lj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc179.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc179.i:                                      ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2557
  br label %.loopexit294.i

bb.cu:                                            ; preds = %bb.cr
  %i.lk = add i64 %i.le, 1                        ; 3 uses
  store i64 %i.lk, ptr %i.bq, align 8, !alias.scope !2558, !noalias !2532
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  store i64 0, ptr %i.gt, align 8, !alias.scope !2563, !noalias !2532
  %i.ll = icmp ult i64 %i.lk, %i.lb
  br i1 %i.ll, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cu, %bb.eu
  %i.lm = phi ptr [ %i.pn, %bb.eu ], [ %i.ld, %bb.cu ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.eu ], [ %i.lk, %bb.cu ]
  %i.ln = phi i64 [ %i.pm, %bb.eu ], [ %i.lb, %bb.cu ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.eu ], [ undef, %bb.cu ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i = phi i1 [ true, %bb.eu ], [ false, %bb.cu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %.lr.ph.i.i.i.i.i.i.i.i
  %i.lo = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lr, %bb.cw ] ; 17 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !2565, !noundef !7 ; 3 uses
  switch i8 %i.lq, label %bb.cx [
    i8 32, label %bb.cw
    i8 10, label %bb.cw
    i8 9, label %bb.cw
    i8 13, label %bb.cw
    i8 110, label %bb.cy
    i8 116, label %bb.de
    i8 102, label %bb.dk
    i8 45, label %bb.ds
    i8 34, label %bb.dt
    i8 91, label %bb.du
    i8 123, label %bb.du
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv, %bb.cv, %bb.cv
  %i.lr = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lr, ptr %i.bq, align 8, !alias.scope !2566, !noalias !2567
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.lr, %i.ln
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.cv

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.cu, %bb.eu, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2568
  store i64 5, ptr %i.z, align 8, !noalias !2568
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc180.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc180.i:                                      ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2568
  br label %.loopexit294.i

bb.cx:                                            ; preds = %bb.cv
  %i.lt = add i8 %i.lq, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.lt, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.dy, label %bb.dx, !prof !24

bb.cy:                                            ; preds = %bb.cv
  %i.lu = add i64 %i.lo, 1                        ; 4 uses
  store i64 %i.lu, ptr %i.bq, align 8, !alias.scope !2569, !noalias !2532
  call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lu, i64 %i.ln) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.lu, %i.ln
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.cz, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !2573, !noundef !7
  %i.lx = add i64 %i.lo, 2                        ; 3 uses
  store i64 %i.lx, ptr %i.bq, align 8, !alias.scope !2574, !noalias !2575
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lw, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.da, label %.loopexit233.i.i.i.i.i.i.i, !prof !22

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.lx, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !2578, !noundef !7
  %i.ma = add i64 %i.lo, 3                        ; 3 uses
  store i64 %i.ma, ptr %i.bq, align 8, !alias.scope !2579, !noalias !2575
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.lz, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.dc, label %.loopexit233.i.i.i.i.i.i.i, !prof !22

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.ma, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !noalias !2582, !noundef !7
  %i.md = add i64 %i.lo, 4
  store i64 %i.md, ptr %i.bq, align 8, !alias.scope !2583, !noalias !2575
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.mc, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dc, %bb.da, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2584
  store i64 5, ptr %i.r, align 8, !noalias !2584
  %i.me = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc181.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc181.i:                                      ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2584
  br label %.loopexit294.i

.loopexit233.i.i.i.i.i.i.i:                       ; preds = %bb.dd, %bb.db, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2584
  store i64 9, ptr %i.q, align 8, !noalias !2584
  %i.mf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc182.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc182.i:                                      ; preds = %.loopexit233.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2584
  br label %.loopexit294.i

bb.de:                                            ; preds = %bb.cv
  %i.mg = add i64 %i.lo, 1                        ; 4 uses
  store i64 %i.mg, ptr %i.bq, align 8, !alias.scope !2585, !noalias !2532
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mg, i64 %i.ln) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.mg, %i.ln
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.df, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !2589, !noundef !7
  %i.mj = add i64 %i.lo, 2                        ; 3 uses
  store i64 %i.mj, ptr %i.bq, align 8, !alias.scope !2590, !noalias !2591
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.mi, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.dg, label %.loopexit226.i.i.i.i.i.i.i, !prof !22

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.mj, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !noalias !2594, !noundef !7
  %i.mm = add i64 %i.lo, 3                        ; 3 uses
  store i64 %i.mm, ptr %i.bq, align 8, !alias.scope !2595, !noalias !2591
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.ml, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.di, label %.loopexit226.i.i.i.i.i.i.i, !prof !22

bb.di:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.mm, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !2598, !noundef !7
  %i.mp = add i64 %i.lo, 4
  store i64 %i.mp, ptr %i.bq, align 8, !alias.scope !2599, !noalias !2591
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.mo, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.dg, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2600
  store i64 5, ptr %i.p, align 8, !noalias !2600
  %i.mq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc183.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc183.i:                                      ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2600
  br label %.loopexit294.i

.loopexit226.i.i.i.i.i.i.i:                       ; preds = %bb.dj, %bb.dh, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2600
  store i64 9, ptr %i.o, align 8, !noalias !2600
  %i.mr = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc184.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc184.i:                                      ; preds = %.loopexit226.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2600
  br label %.loopexit294.i

bb.dk:                                            ; preds = %bb.cv
  %i.ms = add i64 %i.lo, 1                        ; 4 uses
  store i64 %i.ms, ptr %i.bq, align 8, !alias.scope !2601, !noalias !2532
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 %i.ln) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.ms, %i.ln
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.dl, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !noalias !2605, !noundef !7
  %i.mv = add i64 %i.lo, 2                        ; 3 uses
  store i64 %i.mv, ptr %i.bq, align 8, !alias.scope !2606, !noalias !2607
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.mu, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.dm, label %.loopexit219.i.i.i.i.i.i.i, !prof !22

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.mv, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !noalias !2610, !noundef !7
  %i.my = add i64 %i.lo, 3                        ; 3 uses
  store i64 %i.my, ptr %i.bq, align 8, !alias.scope !2611, !noalias !2607
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.mx, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.do, label %.loopexit219.i.i.i.i.i.i.i, !prof !22

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.my, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !noalias !2614, !noundef !7
  %i.nb = add i64 %i.lo, 4                        ; 3 uses
  store i64 %i.nb, ptr %i.bq, align 8, !alias.scope !2615, !noalias !2607
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.na, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.dq, label %.loopexit219.i.i.i.i.i.i.i, !prof !22

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.nb, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !noalias !2618, !noundef !7
  %i.ne = add i64 %i.lo, 5
  store i64 %i.ne, ptr %i.bq, align 8, !alias.scope !2619, !noalias !2607
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.nd, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.do, %bb.dm, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2620
  store i64 5, ptr %i.n, align 8, !noalias !2620
  %i.nf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc185.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc185.i:                                      ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2620
  br label %.loopexit294.i

.loopexit219.i.i.i.i.i.i.i:                       ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2620
  store i64 9, ptr %i.m, align 8, !noalias !2620
  %i.ng = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc186.i:                                      ; preds = %.loopexit219.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2620
  br label %.loopexit294.i

bb.ds:                                            ; preds = %bb.cv
  %i.nh = add i64 %i.lo, 1
  store i64 %i.nh, ptr %i.bq, align 8, !alias.scope !2621, !noalias !2532
  %i.ni = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc187.i unwind label %.loopexit.i49, !noalias !2532 ; 2 uses

.noexc187.i:                                      ; preds = %bb.ds
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit294.i

bb.dt:                                            ; preds = %bb.cv
  %i.nj = add i64 %i.lo, 1
  store i64 %i.nj, ptr %i.bq, align 8, !alias.scope !2622, !noalias !2532
  %i.nk = invoke noundef align 8 ptr @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
          to label %.noexc188.i unwind label %.loopexit.i49, !noalias !2532 ; 2 uses

.noexc188.i:                                      ; preds = %bb.dt
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit294.i

bb.du:                                            ; preds = %bb.cv, %bb.cv
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterhEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %.sroa.039.0169.i.i.i.i.i.i.i, i8 %.sroa.7.0170.i.i.i.i.i.i.i)
          to label %.noexc189.i unwind label %.loopexit.i49, !noalias !2532

.noexc189.i:                                      ; preds = %bb.du
  %i.nl = load i64, ptr %i.bq, align 8, !alias.scope !2623, !noalias !2532, !noundef !7
  %i.nm = add i64 %i.nl, 1
  store i64 %i.nm, ptr %i.bq, align 8, !alias.scope !2623, !noalias !2532
  br label %bb.dw

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i: ; preds = %.noexc191.i, %.noexc188.i, %.noexc187.i, %bb.dr, %bb.dj, %bb.dd
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i
  %i.nn = load i64, ptr %i.gt, align 8, !alias.scope !2563, !noalias !2532, !noundef !7 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.dz

bb.dw:                                            ; preds = %bb.dz, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, %.noexc189.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.lq, %.noexc189.i ], [ %i.nz, %bb.dz ], [ %.sroa.7.0170.i.i.i.i.i.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc189.i ], [ true, %bb.dz ], [ true, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i ]
  %i.np = load i64, ptr %i.br, align 8, !alias.scope !2624, !noalias !2625, !noundef !7 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !2626, !noalias !2627 ; 2 uses
  %i.nq = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.np
  br i1 %i.nq, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.dw
  %i.nr = load ptr, ptr %i.bu, align 8, !alias.scope !2624, !noalias !2625, !nonnull !7, !noundef !7 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2568
  store i64 10, ptr %i.y, align 8, !noalias !2568
  %i.ns = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc190.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc190.i:                                      ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2568
  br label %.loopexit294.i

bb.dy:                                            ; preds = %bb.cx
  %i.nt = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc191.i unwind label %.loopexit.i49, !noalias !2532 ; 2 uses

.noexc191.i:                                      ; preds = %bb.dy
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i.i.i, label %.loopexit294.i

bb.dz:                                            ; preds = %bb.dv
  %i.nu = add i64 %i.nn, -1                       ; 3 uses
  store i64 %i.nu, ptr %i.gt, align 8, !alias.scope !2563, !noalias !2532
  %i.nv = load i64, ptr %1, align 8, !range !18, !alias.scope !2563, !noalias !2532, !noundef !7
  %i.nw = icmp ult i64 %i.nu, %i.nv
  call void @llvm.assume(i1 %i.nw)
  %i.nx = load ptr, ptr %i.gw, align 8, !alias.scope !2563, !noalias !2532, !nonnull !7, !noundef !7
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nu
  %i.nz = load i8, ptr %i.ny, align 1, !noalias !2532, !noundef !7
  br label %bb.dw

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.ej, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.oj, %bb.ej ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.ej ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.or, %bb.ej ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.eb, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.oa = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.od, %bb.eb ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !noalias !2631, !noundef !7
  switch i8 %i.oc, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.eb
    i8 10, label %bb.eb
    i8 9, label %bb.eb
    i8 13, label %bb.eb
    i8 44, label %bb.ee
    i8 93, label %bb.ef
    i8 125, label %bb.eg
  ]

bb.eb:                                            ; preds = %bb.ea, %bb.ea, %bb.ea, %bb.ea
  %i.od = add i64 %i.oa, 1                        ; 3 uses
  store i64 %i.od, ptr %i.bq, align 8, !alias.scope !2632, !noalias !2627
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.od, %i.np
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.ea

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.dw, %bb.ej, %bb.eb
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.or, %bb.ej ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.eb ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2568
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.ed
    i8 123, label %bb.ec
  ]

bb.ec:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.ec ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !2568
  %i.oe = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc193.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc193.i:                                      ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2568
  br label %.loopexit294.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.eg, %bb.ef, %bb.ea
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.ek, label %.critedge.i.i.i.i.i.i.i, !prof !10

bb.ee:                                            ; preds = %bb.ea
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.eh, label %.critedge.i.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ea
  %i.of = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.of, label %bb.ei, label %.loopexit.i.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ea
  %i.og = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.og, label %bb.ei, label %.loopexit.i.i.i.i.i.i.i

bb.eh:                                            ; preds = %bb.ee
  %i.oh = add i64 %i.oa, 1                        ; 2 uses
  store i64 %i.oh, ptr %i.bq, align 8, !alias.scope !2633, !noalias !2532
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.eh, %bb.ee, %.loopexit.i.i.i.i.i.i.i
  %.promoted.i80.i.i.i.i.i.i.i = phi i64 [ %i.oa, %bb.ee ], [ %i.oa, %.loopexit.i.i.i.i.i.i.i ], [ %i.oh, %bb.eh ] ; 3 uses
  %i.oi = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.oi, label %bb.el, label %bb.eu

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.oj = add i64 %i.oa, 1                        ; 3 uses
  store i64 %i.oj, ptr %i.bq, align 8, !alias.scope !2634, !noalias !2532
  %i.ok = load i64, ptr %i.gt, align 8, !alias.scope !2563, !noalias !2532, !noundef !7 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.om = add i64 %i.ok, -1                       ; 3 uses
  store i64 %i.om, ptr %i.gt, align 8, !alias.scope !2563, !noalias !2532
  %i.on = load i64, ptr %1, align 8, !range !18, !alias.scope !2563, !noalias !2532, !noundef !7
  %i.oo = icmp ult i64 %i.om, %i.on
  call void @llvm.assume(i1 %i.oo)
  %i.op = load ptr, ptr %i.gw, align 8, !alias.scope !2563, !noalias !2532, !nonnull !7, !noundef !7
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.om
  %i.or = load i8, ptr %i.oq, align 1, !noalias !2532, !noundef !7 ; 2 uses
  %i.os = icmp ult i64 %i.oj, %i.np
  br i1 %i.os, label %.lr.ph.i75.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

bb.ek:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2568
  switch i8 %.sroa.027.2163.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.ew
    i8 123, label %bb.ev
  ]

bb.el:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  %i.ot = icmp ult i64 %.promoted.i80.i.i.i.i.i.i.i, %i.np
  br i1 %i.ot, label %.lr.ph.i82.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i

.lr.ph.i82.i.i.i.i.i.i.i:                         ; preds = %bb.el, %bb.em
  %i.ou = phi i64 [ %i.ox, %bb.em ], [ %.promoted.i80.i.i.i.i.i.i.i, %bb.el ] ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !noalias !2636, !noundef !7
  switch i8 %i.ow, label %bb.eo [
    i8 32, label %bb.em
    i8 10, label %bb.em
    i8 9, label %bb.em
    i8 13, label %bb.em
    i8 34, label %bb.en
  ], !prof !25

bb.em:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i
  %i.ox = add i64 %i.ou, 1                        ; 3 uses
  store i64 %i.ox, ptr %i.bq, align 8, !alias.scope !2637, !noalias !2638
  %exitcond.not.i83.i.i.i.i.i.i.i = icmp eq i64 %i.ox, %i.np
  br i1 %exitcond.not.i83.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i.i.i

.loopexit125.i.i.i.i.i.i.i:                       ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2568
  store i64 3, ptr %i.u, align 8, !noalias !2568
  %i.oy = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc194.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc194.i:                                      ; preds = %.loopexit125.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2568
  br label %.loopexit294.i

bb.en:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  %i.oz = add i64 %i.ou, 1
  store i64 %i.oz, ptr %i.bq, align 8, !alias.scope !2639, !noalias !2532
  %i.pa = invoke noundef align 8 ptr @_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
          to label %.noexc195.i unwind label %.loopexit.i49, !noalias !2532 ; 2 uses

.noexc195.i:                                      ; preds = %bb.en
  %.not50.i.i.i.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not50.i.i.i.i.i.i.i, label %bb.ep, label %.loopexit294.i

bb.eo:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2568
  store i64 17, ptr %i.v, align 8, !noalias !2568
  %i.pb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc196.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc196.i:                                      ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2568
  br label %.loopexit294.i

bb.ep:                                            ; preds = %.noexc195.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  %i.pc = load i64, ptr %i.br, align 8, !alias.scope !2641, !noalias !2642, !noundef !7 ; 3 uses
  %.promoted.i87.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !2643, !noalias !2644 ; 2 uses
  %i.pd = icmp ult i64 %.promoted.i87.i.i.i.i.i.i.i, %i.pc
  br i1 %i.pd, label %.lr.ph.i89.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i.i.i:                         ; preds = %bb.ep
  %i.pe = load ptr, ptr %i.bu, align 8, !alias.scope !2641, !noalias !2642, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.er, %.lr.ph.i89.i.i.i.i.i.i.i
  %i.pf = phi i64 [ %.promoted.i87.i.i.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i.i.i ], [ %i.pi, %bb.er ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !2647, !noundef !7
  switch i8 %i.ph, label %bb.et [
    i8 32, label %bb.er
    i8 10, label %bb.er
    i8 9, label %bb.er
    i8 13, label %bb.er
    i8 58, label %bb.es
  ], !prof !25

bb.er:                                            ; preds = %bb.eq, %bb.eq, %bb.eq, %bb.eq
  %i.pi = add i64 %i.pf, 1                        ; 3 uses
  store i64 %i.pi, ptr %i.bq, align 8, !alias.scope !2648, !noalias !2644
  %exitcond.not.i90.i.i.i.i.i.i.i = icmp eq i64 %i.pi, %i.pc
  br i1 %exitcond.not.i90.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i, label %bb.eq

.loopexit124.i.i.i.i.i.i.i:                       ; preds = %bb.ep, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2568
  store i64 3, ptr %i.s, align 8, !noalias !2568
  %i.pj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc197.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc197.i:                                      ; preds = %.loopexit124.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2568
  br label %.loopexit294.i

bb.es:                                            ; preds = %bb.eq
  %i.pk = add i64 %i.pf, 1                        ; 2 uses
  store i64 %i.pk, ptr %i.bq, align 8, !alias.scope !2649, !noalias !2532
  br label %bb.eu

bb.et:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2568
  store i64 6, ptr %i.t, align 8, !noalias !2568
  %i.pl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc198.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc198.i:                                      ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2568
  br label %.loopexit294.i

bb.eu:                                            ; preds = %bb.es, %.critedge.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.pk, %bb.es ] ; 2 uses
  %i.pm = phi i64 [ %i.np, %.critedge.i.i.i.i.i.i.i ], [ %i.pc, %bb.es ] ; 2 uses
  %i.pn = phi ptr [ %i.nr, %.critedge.i.i.i.i.i.i.i ], [ %i.pe, %bb.es ]
  %i.po = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.pm
  br i1 %i.po, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.invoke.i:                                        ; preds = %bb.ek, %.loopexit123.i.i.i.i.i.i.i
  %i.pp = phi ptr [ @43, %.loopexit123.i.i.i.i.i.i.i ], [ @44, %bb.ek ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pp) #22
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ev:                                            ; preds = %bb.ek
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.ek
  %storemerge51.i.i.i.i.i.i.i = phi i64 [ 8, %bb.ev ], [ 7, %bb.ek ]
  store i64 %storemerge51.i.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !2568
  %i.pq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc200.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc200.i:                                      ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2568
  br label %.loopexit294.i

bb.ex:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2522
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  %i.pr = load i64, ptr %i.br, align 8, !alias.scope !2652, !noalias !2653, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i201.i = load i64, ptr %i.bq, align 8, !alias.scope !2654, !noalias !2655 ; 2 uses
  %i.ps = icmp ult i64 %.promoted.i.i.i.i201.i, %i.pr
  br i1 %i.ps, label %.lr.ph.i.i.i.i203.i, label %.loopexit.i.i.i202.i

.lr.ph.i.i.i.i203.i:                              ; preds = %bb.ex
  %i.pt = load ptr, ptr %i.bu, align 8, !alias.scope !2652, !noalias !2653, !nonnull !7, !noundef !7
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ez, %.lr.ph.i.i.i.i203.i
  %i.pu = phi i64 [ %.promoted.i.i.i.i201.i, %.lr.ph.i.i.i.i203.i ], [ %i.px, %bb.ez ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !noalias !2658, !noundef !7
  switch i8 %i.pw, label %bb.fa [
    i8 32, label %bb.ez
    i8 10, label %bb.ez
    i8 9, label %bb.ez
    i8 13, label %bb.ez
    i8 58, label %bb.fb
  ], !prof !25

bb.ez:                                            ; preds = %bb.ey, %bb.ey, %bb.ey, %bb.ey
  %i.px = add i64 %i.pu, 1                        ; 3 uses
  store i64 %i.px, ptr %i.bq, align 8, !alias.scope !2659, !noalias !2655
  %exitcond.not.i.i.i.i204.i = icmp eq i64 %i.px, %i.pr
  br i1 %exitcond.not.i.i.i.i204.i, label %.loopexit.i.i.i202.i, label %bb.ey

.loopexit.i.i.i202.i:                             ; preds = %bb.ex, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2660
  store i64 3, ptr %i.k, align 8, !noalias !2660
  %i.py = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc205.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc205.i:                                      ; preds = %.loopexit.i.i.i202.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2660
  br label %.loopexit312.i

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2660
  store i64 6, ptr %i.l, align 8, !noalias !2660
  %i.pz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc206.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc206.i:                                      ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2660
  br label %.loopexit312.i

bb.fb:                                            ; preds = %bb.ey
  %i.qa = add i64 %i.pu, 1
  store i64 %i.qa, ptr %i.bq, align 8, !alias.scope !2661, !noalias !2662
  invoke void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2532

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.fb
  %.pr285.i = load i64, ptr %i.ap, align 8, !noalias !2522 ; 3 uses
  %i.qb = icmp eq i64 %.pr285.i, -1
  %.pre880.i = load ptr, ptr %.sroa.4122.0..sroa_idx.i, align 8, !noalias !2522 ; 3 uses
  br i1 %i.qb, label %.loopexit312.i, label %bb.fc

.loopexit312.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %.noexc206.i, %.noexc205.i
  %i.qc = phi ptr [ %i.pz, %.noexc206.i ], [ %i.py, %.noexc205.i ], [ %.pre880.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2522
  br label %.loopexit294.i

bb.fc:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %.sroa.5123.0.copyload.i = load i64, ptr %.sroa.5123.0..sroa_idx.i, align 8, !noalias !2522 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2522
  %i.qd = load i64, ptr %i.as, align 8, !range !16, !alias.scope !2663, !noalias !2522, !noundef !7
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i51 unwind label %bb.fe, !noalias !2532

bb.fe:                                            ; preds = %bb.fd
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body.i50 unwind label %bb.ff, !noalias !2532

bb.ff:                                            ; preds = %bb.fe
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i51: ; preds = %bb.fd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52 unwind label %bb.fg, !noalias !2532

bb.fg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i51
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i50

.body.i50:                                        ; preds = %bb.fg, %bb.fe
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.qh, %bb.fg ], [ %i.qf, %bb.fe ]
  store i64 %.pr285.i, ptr %i.as, align 8, !noalias !2522
  store ptr %.pre880.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !2522
  store i64 %.sroa.5123.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !2522
  br label %.loopexit.split-lp.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i51, %bb.fc
  store i64 %.pr285.i, ptr %i.as, align 8, !noalias !2522
  store ptr %.pre880.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !2522
  store i64 %.sroa.5123.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !2522
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.dv, %bb.ei, %bb.gg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0588.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52 ], [ %.sroa.5.0588.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i ], [ %.sroa.5.0588.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ], [ %i.sg, %bb.gg ], [ %.sroa.5.0588.i, %bb.ei ], [ %.sroa.5.0588.i, %bb.dv ]
  %.sroa.069.1.i = phi i64 [ %.sroa.069.0589.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i52 ], [ %.sroa.069.0589.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i ], [ %.sroa.069.0589.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ], [ %.pr288.i, %bb.gg ], [ %.sroa.069.0589.i, %bb.ei ], [ %.sroa.069.0589.i, %bb.dv ]
  %i.qi = load i64, ptr %i.br, align 8, !alias.scope !2664, !noalias !2525, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !2665, !noalias !2530 ; 2 uses
  %i.qj = icmp ult i64 %.promoted.i.i.i.i.i, %i.qi
  br i1 %i.qj, label %.lr.ph.i.i.i.i.i, label %.loopexit22.i.i.i.i

bb.fh:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2522
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.qk = load i64, ptr %i.br, align 8, !alias.scope !2668, !noalias !2669, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i209.i = load i64, ptr %i.bq, align 8, !alias.scope !2670, !noalias !2671 ; 2 uses
  %i.ql = icmp ult i64 %.promoted.i.i.i.i209.i, %i.qk
  br i1 %i.ql, label %.lr.ph.i.i.i.i212.i, label %.loopexit.i.i.i210.i

.lr.ph.i.i.i.i212.i:                              ; preds = %bb.fh
  %i.qm = load ptr, ptr %i.bu, align 8, !alias.scope !2668, !noalias !2669, !nonnull !7, !noundef !7
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fj, %.lr.ph.i.i.i.i212.i
  %i.qn = phi i64 [ %.promoted.i.i.i.i209.i, %.lr.ph.i.i.i.i212.i ], [ %i.qq, %bb.fj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !noalias !2674, !noundef !7
  switch i8 %i.qp, label %bb.fk [
    i8 32, label %bb.fj
    i8 10, label %bb.fj
    i8 9, label %bb.fj
    i8 13, label %bb.fj
    i8 58, label %bb.fl
  ], !prof !25

bb.fj:                                            ; preds = %bb.fi, %bb.fi, %bb.fi, %bb.fi
  %i.qq = add i64 %i.qn, 1                        ; 3 uses
  store i64 %i.qq, ptr %i.bq, align 8, !alias.scope !2675, !noalias !2671
  %exitcond.not.i.i.i.i213.i = icmp eq i64 %i.qq, %i.qk
  br i1 %exitcond.not.i.i.i.i213.i, label %.loopexit.i.i.i210.i, label %bb.fi

.loopexit.i.i.i210.i:                             ; preds = %bb.fh, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2676
  store i64 3, ptr %i.i, align 8, !noalias !2676
  %i.qr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc214.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc214.i:                                      ; preds = %.loopexit.i.i.i210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2676
  br label %.loopexit308.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2676
  store i64 6, ptr %i.j, align 8, !noalias !2676
  %i.qs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc215.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc215.i:                                      ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2676
  br label %.loopexit308.i

bb.fl:                                            ; preds = %bb.fi
  %i.qt = add i64 %i.qn, 1
  store i64 %i.qt, ptr %i.bq, align 8, !alias.scope !2677, !noalias !2678
  invoke void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit217.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2532

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit217.i: ; preds = %bb.fl
  %.pr286.i = load i64, ptr %i.ao, align 8, !noalias !2522 ; 3 uses
  %i.qu = icmp eq i64 %.pr286.i, -1
  %.pre878.i = load ptr, ptr %.sroa.4125.0..sroa_idx.i, align 8, !noalias !2522 ; 3 uses
  br i1 %i.qu, label %.loopexit308.i, label %bb.fm

.loopexit308.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit217.i, %.noexc215.i, %.noexc214.i
  %i.qv = phi ptr [ %i.qs, %.noexc215.i ], [ %i.qr, %.noexc214.i ], [ %.pre878.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit217.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2522
  br label %.loopexit294.i

bb.fm:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit217.i
  %.sroa.5126.0.copyload.i = load i64, ptr %.sroa.5126.0..sroa_idx.i, align 8, !noalias !2522 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2522
  %i.qw = load i64, ptr %i.ar, align 8, !range !16, !alias.scope !2679, !noalias !2522, !noundef !7
  %i.qx = icmp eq i64 %i.qw, -1
  br i1 %i.qx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i219.i unwind label %bb.fo, !noalias !2532

bb.fo:                                            ; preds = %bb.fn
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body220.i unwind label %bb.fp, !noalias !2532

bb.fp:                                            ; preds = %bb.fo
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i219.i: ; preds = %bb.fn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i unwind label %bb.fq, !noalias !2532

bb.fq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i219.i
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body220.i

.body220.i:                                       ; preds = %bb.fq, %bb.fo
  %eh.lpad-body221.i = phi { ptr, i32 } [ %i.ra, %bb.fq ], [ %i.qy, %bb.fo ]
  store i64 %.pr286.i, ptr %i.ar, align 8, !noalias !2522
  store ptr %.pre878.i, ptr %.sroa.644.0..sroa_idx45.i, align 8, !noalias !2522
  store i64 %.sroa.5126.0.copyload.i, ptr %.sroa.747.0..sroa_idx48.i, align 8, !noalias !2522
  br label %.loopexit.split-lp.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit223.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i219.i, %bb.fm
  store i64 %.pr286.i, ptr %i.ar, align 8, !noalias !2522
  store ptr %.pre878.i, ptr %.sroa.644.0..sroa_idx45.i, align 8, !noalias !2522
  store i64 %.sroa.5126.0.copyload.i, ptr %.sroa.747.0..sroa_idx48.i, align 8, !noalias !2522
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.fr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2522
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.rb = load i64, ptr %i.br, align 8, !alias.scope !2682, !noalias !2683, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i224.i = load i64, ptr %i.bq, align 8, !alias.scope !2684, !noalias !2685 ; 2 uses
  %i.rc = icmp ult i64 %.promoted.i.i.i.i224.i, %i.rb
  br i1 %i.rc, label %.lr.ph.i.i.i.i227.i, label %.loopexit.i.i.i225.i

.lr.ph.i.i.i.i227.i:                              ; preds = %bb.fr
  %i.rd = load ptr, ptr %i.bu, align 8, !alias.scope !2682, !noalias !2683, !nonnull !7, !noundef !7
  br label %bb.fs

bb.fs:                                            ; preds = %bb.ft, %.lr.ph.i.i.i.i227.i
  %i.re = phi i64 [ %.promoted.i.i.i.i224.i, %.lr.ph.i.i.i.i227.i ], [ %i.rh, %bb.ft ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !2688, !noundef !7
  switch i8 %i.rg, label %bb.fu [
    i8 32, label %bb.ft
    i8 10, label %bb.ft
    i8 9, label %bb.ft
    i8 13, label %bb.ft
    i8 58, label %bb.fv
  ], !prof !25

bb.ft:                                            ; preds = %bb.fs, %bb.fs, %bb.fs, %bb.fs
  %i.rh = add i64 %i.re, 1                        ; 3 uses
  store i64 %i.rh, ptr %i.bq, align 8, !alias.scope !2689, !noalias !2685
  %exitcond.not.i.i.i.i228.i = icmp eq i64 %i.rh, %i.rb
  br i1 %exitcond.not.i.i.i.i228.i, label %.loopexit.i.i.i225.i, label %bb.fs

.loopexit.i.i.i225.i:                             ; preds = %bb.fr, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2690
  store i64 3, ptr %i.g, align 8, !noalias !2690
  %i.ri = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc229.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc229.i:                                      ; preds = %.loopexit.i.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2690
  br label %.loopexit310.i

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2690
  store i64 6, ptr %i.h, align 8, !noalias !2690
  %i.rj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc230.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc230.i:                                      ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2690
  br label %.loopexit310.i

bb.fv:                                            ; preds = %bb.fs
  %i.rk = add i64 %i.re, 1
  store i64 %i.rk, ptr %i.bq, align 8, !alias.scope !2691, !noalias !2692
  invoke fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2X_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2532

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.fv
  %.pr287.i = load i64, ptr %i.an, align 8, !noalias !2522 ; 3 uses
  %i.rl = icmp eq i64 %.pr287.i, -2
  %.pre879.i = load ptr, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !2522 ; 3 uses
  br i1 %i.rl, label %.loopexit310.i, label %bb.fw

.loopexit310.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %.noexc230.i, %.noexc229.i
  %i.rm = phi ptr [ %i.rj, %.noexc230.i ], [ %i.ri, %.noexc229.i ], [ %.pre879.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2522
  br label %.loopexit294.i

bb.fw:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %.sroa.5129.0.copyload.i = load i64, ptr %.sroa.5129.0..sroa_idx.i, align 8, !noalias !2522 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2522
  %i.rn = load i64, ptr %i.aq, align 8, !range !2491, !alias.scope !2693, !noalias !2522, !noundef !7
  %switch.i.i = icmp ugt i64 %i.rn, -3
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i unwind label %bb.fy, !noalias !2532

bb.fy:                                            ; preds = %bb.fx
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.thread.i unwind label %bb.fz, !noalias !2532

bb.fz:                                            ; preds = %bb.fy
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i: ; preds = %bb.fx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %bb.ga, !noalias !2532

bb.ga:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ga, %bb.fy
  %eh.lpad-body233.i = phi { ptr, i32 } [ %i.rq, %bb.ga ], [ %i.ro, %bb.fy ]
  store i64 %.pr287.i, ptr %i.aq, align 8, !noalias !2522
  store ptr %.pre879.i, ptr %.sroa.663.0..sroa_idx64.i, align 8, !noalias !2522
  store i64 %.sroa.5129.0.copyload.i, ptr %.sroa.766.0..sroa_idx67.i, align 8, !noalias !2522
  br label %bb.hj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i, %bb.fw
  store i64 %.pr287.i, ptr %i.aq, align 8, !noalias !2522
  store ptr %.pre879.i, ptr %.sroa.663.0..sroa_idx64.i, align 8, !noalias !2522
  store i64 %.sroa.5129.0.copyload.i, ptr %.sroa.766.0..sroa_idx67.i, align 8, !noalias !2522
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

.invoke:                                          ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %i.rr = phi ptr [ @7, %bb.co ], [ @6, %bb.cn ], [ @5, %bb.cm ], [ @8, %bb.cp ]
  %i.rs = phi i64 [ 17, %bb.co ], [ 21, %bb.cn ], [ 17, %bb.cm ], [ 6, %bb.cp ]
  %i.rt = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error15duplicate_fieldCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rr, i64 noundef %i.rs)
          to label %.loopexit294.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

bb.gb:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2522
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  %i.ru = load i64, ptr %i.br, align 8, !alias.scope !2696, !noalias !2697, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i235.i = load i64, ptr %i.bq, align 8, !alias.scope !2698, !noalias !2699 ; 2 uses
  %i.rv = icmp ult i64 %.promoted.i.i.i.i235.i, %i.ru
  br i1 %i.rv, label %.lr.ph.i.i.i.i238.i, label %.loopexit.i.i.i236.i

.lr.ph.i.i.i.i238.i:                              ; preds = %bb.gb
  %i.rw = load ptr, ptr %i.bu, align 8, !alias.scope !2696, !noalias !2697, !nonnull !7, !noundef !7
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gd, %.lr.ph.i.i.i.i238.i
  %i.rx = phi i64 [ %.promoted.i.i.i.i235.i, %.lr.ph.i.i.i.i238.i ], [ %i.sa, %bb.gd ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !noalias !2702, !noundef !7
  switch i8 %i.rz, label %bb.ge [
    i8 32, label %bb.gd
    i8 10, label %bb.gd
    i8 9, label %bb.gd
    i8 13, label %bb.gd
    i8 58, label %bb.gf
  ], !prof !25

bb.gd:                                            ; preds = %bb.gc, %bb.gc, %bb.gc, %bb.gc
  %i.sa = add i64 %i.rx, 1                        ; 3 uses
  store i64 %i.sa, ptr %i.bq, align 8, !alias.scope !2703, !noalias !2699
  %exitcond.not.i.i.i.i239.i = icmp eq i64 %i.sa, %i.ru
  br i1 %exitcond.not.i.i.i.i239.i, label %.loopexit.i.i.i236.i, label %bb.gc

.loopexit.i.i.i236.i:                             ; preds = %bb.gb, %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2704
  store i64 3, ptr %i.e, align 8, !noalias !2704
  %i.sb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc240.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc240.i:                                      ; preds = %.loopexit.i.i.i236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2704
  br label %.loopexit306.i

bb.ge:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2704
  store i64 6, ptr %i.f, align 8, !noalias !2704
  %i.sc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc241.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

.noexc241.i:                                      ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2704
  br label %.loopexit306.i

bb.gf:                                            ; preds = %bb.gc
  %i.sd = add i64 %i.rx, 1
  store i64 %i.sd, ptr %i.bq, align 8, !alias.scope !2705, !noalias !2706
  invoke fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionyEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2532

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionyEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.gf
  %.pr288.i = load i64, ptr %i.am, align 8, !noalias !2522 ; 2 uses
  %i.se = icmp eq i64 %.pr288.i, 2
  br i1 %i.se, label %.loopexit306.loopexit.i, label %bb.gg

.loopexit306.loopexit.i:                          ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionyEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %.pre.i = load ptr, ptr %i.gv, align 8, !noalias !2522
  br label %.loopexit306.i

.loopexit306.i:                                   ; preds = %.loopexit306.loopexit.i, %.noexc241.i, %.noexc240.i
  %i.sf = phi ptr [ %.pre.i, %.loopexit306.loopexit.i ], [ %i.sb, %.noexc240.i ], [ %i.sc, %.noexc241.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2522
  br label %.loopexit294.i

bb.gg:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionyEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.sg = load i64, ptr %i.gv, align 8, !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2522
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.gh:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !2522
  br label %bb.gm

bb.gi:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2522
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

bb.gj:                                            ; preds = %bb.gi
  %i.sh = load i64, ptr %i.ak, align 8, !range !16, !noalias !2522, !noundef !7 ; 2 uses
  %i.si = icmp eq i64 %i.sh, -1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !2522 ; 2 uses
  br i1 %i.si, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2522
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gj
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5132.0.copyload.i = load i64, ptr %.sroa.5132.0..sroa_idx.i, align 8, !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2522
  store i64 %i.sh, ptr %i.al, align 8, !noalias !2522
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.sk, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2522
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.5132.0.copyload.i, ptr %.sroa.588.0..sroa_idx.i, align 8, !noalias !2522
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gh
  %.sroa.0119.4.i = phi i8 [ 0, %bb.gh ], [ 1, %bb.gl ] ; 3 uses
  %i.sl = load i64, ptr %i.ar, align 8, !range !16, !noalias !2522, !noundef !7 ; 2 uses
  %.not145.i = icmp eq i64 %i.sl, -1
  br i1 %.not145.i, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %bb.gs, %bb.gk
  %.sroa.17.1.in = phi ptr [ %i.sk, %bb.gk ], [ %i.sq, %bb.gs ]
  %.sroa.0119.5.i = phi i8 [ 1, %bb.gk ], [ %.sroa.0119.4.i, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2522
  br label %.loopexit294.i

bb.go:                                            ; preds = %bb.gm
  %.sroa.399.0.copyload.i = load ptr, ptr %.sroa.644.0..sroa_idx45.i, align 8, !noalias !2522
  %.sroa.4102.0.copyload.i = load i64, ptr %.sroa.747.0..sroa_idx48.i, align 8, !noalias !2522
  br label %bb.gu

bb.gp:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2522
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21)
          to label %bb.gr unwind label %bb.gq, !noalias !2532

bb.gq:                                            ; preds = %bb.gp
  %i.sm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.al) #20
          to label %.loopexit.split-lp.i unwind label %bb.gv, !noalias !2532

bb.gr:                                            ; preds = %bb.gp
  %i.sn = load i64, ptr %i.aj, align 8, !range !16, !noalias !2522, !noundef !7 ; 2 uses
  %i.so = icmp eq i64 %i.sn, -1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !noalias !2522 ; 2 uses
  br i1 %i.so, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2522
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.al)
          to label %bb.gn unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2532

bb.gt:                                            ; preds = %bb.gr
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5135.0.copyload.i = load i64, ptr %.sroa.5135.0..sroa_idx.i, align 8, !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2522
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.go
  %.sroa.097.0.i = phi i64 [ %i.sl, %bb.go ], [ %i.sn, %bb.gt ]
  %.sroa.399.0.i = phi ptr [ %.sroa.399.0.copyload.i, %bb.go ], [ %i.sq, %bb.gt ]
  %.sroa.4102.0.i = phi i64 [ %.sroa.4102.0.copyload.i, %bb.go ], [ %.sroa.5135.0.copyload.i, %bb.gt ]
  %i.sr = load i64, ptr %i.aq, align 8, !range !2491, !noalias !2522, !noundef !7 ; 2 uses
  %.not146.i = icmp eq i64 %i.sr, -2
  br i1 %.not146.i, label %bb.gx, label %bb.gw

.loopexit294.i:                                   ; preds = %.noexc187.i, %.noexc188.i, %.noexc191.i, %.noexc195.i, %.invoke, %.noexc178.i, %.noexc179.i, %.noexc180.i, %.noexc181.i, %.noexc182.i, %.noexc183.i, %.noexc184.i, %.noexc185.i, %.noexc186.i, %.noexc190.i, %.noexc193.i, %.noexc194.i, %.noexc196.i, %.noexc197.i, %.noexc198.i, %.noexc200.i, %.noexc.i46, %.noexc168.i, %.noexc169.i, %.noexc170.i, %.noexc171.i, %.noexc172.i, %bb.ck, %bb.gn, %.loopexit306.i, %.loopexit310.i, %.loopexit308.i, %.loopexit312.i
  %.sroa.17.0.in = phi ptr [ %.sroa.17.1.in, %bb.gn ], [ %i.rt, %.invoke ], [ %i.qc, %.loopexit312.i ], [ %i.hv, %bb.ck ], [ %i.rm, %.loopexit310.i ], [ %i.pj, %.noexc197.i ], [ %i.qv, %.loopexit308.i ], [ %i.lj, %.noexc179.i ], [ %i.sf, %.loopexit306.i ], [ %i.oy, %.noexc194.i ], [ %i.ho, %.noexc170.i ], [ %i.hn, %.noexc169.i ], [ %i.hp, %.noexc171.i ], [ %i.hm, %.noexc168.i ], [ %i.hd, %.noexc.i46 ], [ %i.hq, %.noexc172.i ], [ %i.me, %.noexc181.i ], [ %i.pq, %.noexc200.i ], [ %i.ls, %.noexc180.i ], [ %i.ng, %.noexc186.i ], [ %i.li, %.noexc178.i ], [ %i.pb, %.noexc196.i ], [ %i.mq, %.noexc183.i ], [ %i.nf, %.noexc185.i ], [ %i.ns, %.noexc190.i ], [ %i.pl, %.noexc198.i ], [ %i.mf, %.noexc182.i ], [ %i.mr, %.noexc184.i ], [ %i.oe, %.noexc193.i ], [ %i.nk, %.noexc188.i ], [ %i.pa, %.noexc195.i ], [ %i.nt, %.noexc191.i ], [ %i.ni, %.noexc187.i ]
  %.sroa.0119.6.i = phi i8 [ %.sroa.0119.5.i, %bb.gn ], [ 1, %.invoke ], [ 1, %.loopexit312.i ], [ 1, %bb.ck ], [ 1, %.loopexit310.i ], [ 1, %.noexc197.i ], [ 1, %.loopexit308.i ], [ 1, %.noexc179.i ], [ 1, %.loopexit306.i ], [ 1, %.noexc194.i ], [ 1, %.noexc170.i ], [ 1, %.noexc169.i ], [ 1, %.noexc171.i ], [ 1, %.noexc168.i ], [ 1, %.noexc.i46 ], [ 1, %.noexc172.i ], [ 1, %.noexc181.i ], [ 1, %.noexc200.i ], [ 1, %.noexc180.i ], [ 1, %.noexc186.i ], [ 1, %.noexc178.i ], [ 1, %.noexc196.i ], [ 1, %.noexc183.i ], [ 1, %.noexc185.i ], [ 1, %.noexc190.i ], [ 1, %.noexc198.i ], [ 1, %.noexc182.i ], [ 1, %.noexc184.i ], [ 1, %.noexc193.i ], [ 1, %.noexc195.i ], [ 1, %.noexc191.i ], [ 1, %.noexc188.i ], [ 1, %.noexc187.i ] ; 5 uses
  %.sroa.17.0 = ptrtoint ptr %.sroa.17.0.in to i64 ; 2 uses
  %i.ss = load i64, ptr %i.aq, align 8, !range !2491, !noalias !2522, !noundef !7
  %switch.i = icmp ugt i64 %i.ss, -3
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit248.i, label %bb.gy

bb.gv:                                            ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.gq
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3142.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.0..sroa_idx64.i, i64 16, i1 false)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.0140.0.i = phi i64 [ %i.sr, %bb.gw ], [ -1, %bb.gu ]
  %.not147.i = icmp eq i64 %.sroa.069.0589.i, 2   ; 2 uses
  %..sroa.069.0.i = select i1 %.not147.i, i64 0, i64 %.sroa.069.0589.i
  %..sroa.5.0.i = select i1 %.not147.i, i64 undef, i64 %.sroa.5.0588.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !2521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2522
  br label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit248.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i244.i, %.loopexit294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2522
  %i.su = load i64, ptr %i.ar, align 8, !range !16, !noalias !2522, !noundef !7
  %.not159.i = icmp eq i64 %i.su, -1
  br i1 %.not159.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48, label %bb.hc

bb.gy:                                            ; preds = %.loopexit294.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i244.i unwind label %bb.gz, !noalias !2532

bb.gz:                                            ; preds = %bb.gy
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body245.i unwind label %bb.ha, !noalias !2532

bb.ha:                                            ; preds = %bb.gz
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i244.i: ; preds = %bb.gy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit248.i unwind label %bb.hb, !noalias !2532

.body245.i:                                       ; preds = %bb.hj, %bb.hb, %bb.gz, %.loopexit.split-lp.i
  %.sroa.0119.7.i = phi i8 [ %.sroa.0119.1.ph.i, %.loopexit.split-lp.i ], [ %.sroa.0119.1261.i, %bb.hj ], [ %.sroa.0119.6.i, %bb.gz ], [ %.sroa.0119.6.i, %bb.hb ] ; 2 uses
  %.pn156.i = phi { ptr, i32 } [ %.pn.ph.i, %.loopexit.split-lp.i ], [ %.pn262.i, %bb.hj ], [ %i.sv, %bb.gz ], [ %i.sy, %bb.hb ] ; 2 uses
  %i.sx = load i64, ptr %i.ar, align 8, !range !16, !noalias !2522, !noundef !7
  %.not158.i = icmp eq i64 %i.sx, -1
  br i1 %.not158.i, label %.body249.i, label %bb.hk

bb.hb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i244.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body245.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i47, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2522
  %i.sz = load i64, ptr %i.as, align 8, !range !16, !noalias !2522, !noundef !7
  %i.ta = icmp ne i64 %i.sz, -1
  %i.tb = trunc nuw i8 %.sroa.0119.6.i to i1
  %or.cond5.i = select i1 %i.ta, i1 %i.tb, i1 false
  br i1 %or.cond5.i, label %bb.hg, label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit

bb.hc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit248.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i47 unwind label %bb.hd, !noalias !2532

bb.hd:                                            ; preds = %bb.hc
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body249.i unwind label %bb.he, !noalias !2532

bb.he:                                            ; preds = %bb.hd
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i47: ; preds = %bb.hc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 unwind label %bb.hf, !noalias !2532

.body249.i:                                       ; preds = %bb.hk, %bb.hf, %bb.hd, %.body245.i
  %.sroa.0119.8.i = phi i8 [ %.sroa.0119.7.i, %.body245.i ], [ %.sroa.0119.7.i, %bb.hk ], [ %.sroa.0119.6.i, %bb.hd ], [ %.sroa.0119.6.i, %bb.hf ]
  %.pn160.i = phi { ptr, i32 } [ %.pn156.i, %.body245.i ], [ %.pn156.i, %bb.hk ], [ %i.tc, %bb.hd ], [ %i.th, %bb.hf ] ; 2 uses
  %i.te = load i64, ptr %i.as, align 8, !range !16, !noalias !2522, !noundef !7
  %i.tf = icmp ne i64 %i.te, -1
  %i.tg = trunc nuw i8 %.sroa.0119.8.i to i1
  %or.cond11.i = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %or.cond11.i, label %bb.hl, label %common.resume

bb.hf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i47
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body249.i

bb.hg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i unwind label %bb.hh, !noalias !2532

bb.hh:                                            ; preds = %bb.hg
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.hi, !noalias !2532

bb.hi:                                            ; preds = %bb.hh
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !2532
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i: ; preds = %bb.hg
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as), !noalias !2532
  br label %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit

bb.hj:                                            ; preds = %.thread.i, %.loopexit.split-lp.i
  %.pn262.i = phi { ptr, i32 } [ %eh.lpad-body233.i, %.thread.i ], [ %.pn.ph.i, %.loopexit.split-lp.i ]
  %.sroa.0119.1261.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0119.1.ph.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #20
          to label %.body245.i unwind label %bb.gv, !noalias !2532

bb.hk:                                            ; preds = %.body245.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #20
          to label %.body249.i unwind label %bb.gv, !noalias !2532

bb.hl:                                            ; preds = %.body249.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.as) #20
          to label %common.resume unwind label %bb.gv, !noalias !2532

_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit: ; preds = %bb.gx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i
  %.sroa.33.0 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %.sroa.4102.0.i, %bb.gx ]
  %.sroa.32.0 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %.sroa.399.0.i, %bb.gx ]
  %.sroa.31.0 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %.sroa.097.0.i, %bb.gx ]
  %.sroa.17.2 = phi i64 [ %.sroa.17.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ %.sroa.17.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %..sroa.5.0.i, %bb.gx ]
  %.sroa.069.2 = phi i64 [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %..sroa.069.0.i, %bb.gx ]
  %.sroa.34.0 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit254.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i48 ], [ %.sroa.0140.0.i, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2522
  %i.tk = load i8, ptr %i.ch, align 8, !noundef !7
  %i.tl = add i8 %i.tk, 1
  store i8 %i.tl, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i64 %.sroa.069.2, ptr %i.bj, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.sroa.17.2, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30, i64 24, i1 false)
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i64 %.sroa.31.0, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  store i64 %.sroa.33.0, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  store i64 %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.35.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3142.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %i.tm = load i64, ptr %i.br, align 8, !alias.scope !2709, !noalias !2710, !noundef !7 ; 2 uses
  %.promoted.i.i53 = load i64, ptr %i.bq, align 8, !alias.scope !2711, !noalias !2712 ; 2 uses
  %i.tn = icmp ult i64 %.promoted.i.i53, %i.tm
  br i1 %i.tn, label %.lr.ph.i.i56, label %.loopexit.i54

.lr.ph.i.i56:                                     ; preds = %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit
  %i.to = load ptr, ptr %i.bu, align 8, !alias.scope !2709, !noalias !2710, !nonnull !7, !noundef !7
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hn, %.lr.ph.i.i56
  %i.tp = phi i64 [ %.promoted.i.i53, %.lr.ph.i.i56 ], [ %i.ts, %bb.hn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1, !noalias !2715, !noundef !7
  switch i8 %i.tr, label %bb.ho [
    i8 32, label %bb.hn
    i8 10, label %bb.hn
    i8 9, label %bb.hn
    i8 13, label %bb.hn
    i8 125, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
    i8 44, label %bb.hp
  ], !prof !2509

bb.hn:                                            ; preds = %bb.hm, %bb.hm, %bb.hm, %bb.hm
  %i.ts = add i64 %i.tp, 1                        ; 3 uses
  store i64 %i.ts, ptr %i.bq, align 8, !alias.scope !2716, !noalias !2712
  %exitcond.not.i.i57 = icmp eq i64 %i.ts, %i.tm
  br i1 %exitcond.not.i.i57, label %.loopexit.i54, label %bb.hm

.loopexit.i54:                                    ; preds = %bb.hn, %_RINvXs0_NvXNvNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store1__NtBb_17AwsFileCredentialNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB39_4read7StrReadEEBd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2707
  store i64 3, ptr %i.b, align 8, !noalias !2707
  %i.tt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc58 unwind label %bb.hq

.noexc58:                                         ; preds = %.loopexit.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2707
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2707
  store i64 22, ptr %i.c, align 8, !noalias !2707
  %i.tu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc59 unwind label %bb.hq

.noexc59:                                         ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2707
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2707
  store i64 21, ptr %i.d, align 8, !noalias !2707
  %i.tv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc60 unwind label %bb.hq

.noexc60:                                         ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2707
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %.loopexit.i54
  %i.tw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(88) %i.bj) #20
          to label %common.resume unwind label %bb.bf

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.noexc60, %.noexc59, %.noexc58
  %.sroa.0.0.i55 = phi ptr [ %i.tu, %.noexc59 ], [ %i.tt, %.noexc58 ], [ %i.tv, %.noexc60 ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  store ptr %.sroa.0.0.i55, ptr %i.tx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.ty = load i64, ptr %i.bk, align 8, !range !6, !noundef !7
  %i.tz = icmp eq i64 %i.ty, 2
  br i1 %i.tz, label %bb.hs, label %bb.hr

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread: ; preds = %bb.hm
  %i.ua = add i64 %i.tp, 1
  store i64 %i.ua, ptr %i.bq, align 8, !alias.scope !2717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.ub = load i64, ptr %i.bk, align 8, !range !6, !noundef !7 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  br i1 %i.uc, label %.thread768, label %.thread764

.thread768:                                       ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  br label %.thread94

.thread764:                                       ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.522.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  br label %.thread94

bb.hr:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store17AwsFileCredentialEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.bk)
  br label %.thread94

.thread94:                                        ; preds = %.thread768, %.thread764, %bb.hr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64
  %.sroa.09.2100 = phi i64 [ 2, %.thread768 ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64 ], [ 2, %bb.hr ], [ %i.ub, %.thread764 ]
  %.sroa.10.299 = phi ptr [ %i.ue, %.thread768 ], [ %i.ug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64 ], [ %.sroa.0.0.i55, %bb.hr ], [ %i.ue, %.thread764 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.bl

bb.hs:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.uf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  %i.uh = load i64, ptr %.sroa.0.0.i55, align 8, !range !21, !alias.scope !2720, !noundef !7
  switch i64 %i.uh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64 [
    i64 0, label %bb.ht
    i64 1, label %bb.hv
  ]

bb.ht:                                            ; preds = %bb.hs
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i55, i64 16
  %.val1.i.i.i.i62 = load i64, ptr %i.ui, align 8, !alias.scope !2720, !noundef !7 ; 2 uses
  %i.uj = icmp eq i64 %.val1.i.i.i.i62, 0
  br i1 %i.uj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i55, i64 8
  %.val.i.i.i.i63 = load ptr, ptr %i.uk, align 8, !alias.scope !2720, !nonnull !7, !noundef !7
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i63, i64 noundef range(i64 1, 0) %.val1.i.i.i.i62, i64 noundef 1) #19, !noalias !2720
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64

bb.hv:                                            ; preds = %bb.hs
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i55, i64 8
  %.val2.i.i.i.i61 = load ptr, ptr %i.ul, align 8, !alias.scope !2720, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %.val2.i.i.i.i61)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit64: ; preds = %bb.hs, %bb.ht, %bb.hu, %bb.hv
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i55, i64 noundef 40, i64 noundef 8) #19
  br label %.thread94

bb.hx:                                            ; preds = %bb.d, %bb.bl
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.bl ], [ %i.cc, %bb.d ]
  %i.un = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.un, ptr %i.uo, align 8
  store i64 2, ptr %0, align 8
  br label %bb.hz

bb.hy:                                            ; preds = %bb.bl
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, i64 72, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hx, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.loopexit, %bb.bc
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBa_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset00Bc_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !7
  switch i8 %i.c, label %default.unreachable4 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !align !17, !noundef !7
  %.val = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !align !17, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !align !17, !noundef !7
  %i.j = invoke { ptr, ptr } @_RNvXsb_NtCs1LivM9IBWqb_12object_store5localNtB5_15LocalFileSystemNtB7_11ObjectStore16list_with_offset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  invoke void @_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7collectINtB2_7CollectINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1f_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3u_5ErrorENtNtB1f_6marker4SendEL_EEINtNtB1L_3vec3VecB35_EE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.h:                                             ; preds = %bb.o, %bb.k, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.t, %bb.o ], [ %i.p, %bb.k ], [ %.pn, %bb.f ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn2

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7collect7CollectINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3J_5ErrorENtNtB4_6marker4SendEL_EEINtNtB21_3vec3VecB3l_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(40) %i.q) #20
          to label %bb.h unwind label %bb.p

bb.l:                                             ; preds = %bb.a, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7collectINtB5_7CollectINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1i_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3x_5ErrorENtNtB1i_6marker4SendEL_EEINtNtB1O_3vec3VecB38_EENtNtNtB1i_6future6future6Future4pollCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.r = load i64, ptr %0, align 8, !range !16, !noundef !7
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %common.ret, label %bb.n

common.ret:                                       ; preds = %bb.n, %bb.m
  %storemerge = phi i8 [ 3, %bb.m ], [ 1, %bb.n ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream7collect7CollectINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3J_5ErrorENtNtB4_6marker4SendEL_EEINtNtB21_3vec3VecB3l_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(40) %i.q)
          to label %common.ret unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.p:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBa_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list00Bc_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %1) #20
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2763, !noalias !2764, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2763, !noalias !2764, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2763, !noalias !2764, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !2765, !noundef !7
  switch i8 %i.o, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !2768, !noalias !2766
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !2769, !noundef !7 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2770
  store i64 13, ptr %i.d, align 8, !noalias !2770
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2770
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2766, !noalias !2767
  store i64 1, ptr %i.f, align 8, !alias.scope !2766, !noalias !2767
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2770
  store i64 5, ptr %i.c, align 8, !noalias !2770
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2770
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !2766, !noalias !2767
  store i64 1, ptr %i.f, align 8, !alias.scope !2766, !noalias !2767
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsdLkRf3gRIi6_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !2772, !noundef !7 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2772
  store i64 14, ptr %i.a, align 8, !noalias !2772
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2772
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !2773, !noalias !2774
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !2773, !noalias !2774
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !10

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2772
  store i64 14, ptr %i.b, align 8, !noalias !2772
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2772
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !2773, !noalias !2774
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !2773, !noalias !2774
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !2775, !noalias !2766
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !20, !noundef !7
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !20, !noundef !7
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !7, !align !17, !noundef !7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !7, !align !17, !noundef !7
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2798, !noalias !2799, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2798, !noalias !2799, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2798, !noalias !2799, !nonnull !7, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !2800, !noundef !7 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2798, !noalias !2799
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !24

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !2801, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !22

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2802, !noundef !7
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !26

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !2803
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053)
  %i.ap = load i64, ptr %i.b, align 8, !range !20, !noundef !7
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2895, !noalias !2896, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2895, !noalias !2896, !noundef !7 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2895, !noalias !2896, !nonnull !7, !noundef !7 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2897, !noundef !7 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2895, !noalias !2896
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, !prof !22

.preheader:                                       ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2898, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !22

bb.d:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, %.preheader, %bb.c, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.y = phi i64 [ %i.o, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2899, !noundef !7
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2900
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2901, !noundef !7
  switch i8 %i.ai, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2902
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2903, !noundef !7
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.loopexit73, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.loopexit73, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !llvm.loop !2838

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2904, !noundef !7 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2838

.loopexit.i:                                      ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2902
  switch i8 %i.aq, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2902
  store i64 13, ptr %i.c, align 8, !noalias !2902
  %i.at = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2902
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !2906
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2907, !noundef !7
  switch i8 %i.ax, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2910
  br label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2911, !noundef !7
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !2912, !noalias !2913
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, !prof !22

.preheader.i.i:                                   ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2914
  store i64 13, ptr %i.b, align 8, !noalias !2914
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2914
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !2915, !noundef !7
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.i:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i
  %i.bn = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !2916
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !2918
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2919, !noundef !7
  switch i8 %i.br, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !2922
  br label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !2923, !noundef !7
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !2924, !noalias !2925
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, !prof !22

.preheader.i:                                     ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2917
  store i64 13, ptr %i.a, align 8, !noalias !2917
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2917
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2926, !noundef !7
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i
  %i.ch = add i64 %i.cc, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !2927
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2902
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.e, %bb.l, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.loopexit73, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40 ], [ %i.aa, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.loopexit73 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2953, !noundef !7 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !2953
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2956, !noalias !2957, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !2956, !noalias !2957, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !2958, !noundef !7
  switch i8 %i.n, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !2961, !noalias !2962, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !2963, !noundef !7
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !2961, !noalias !2962
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !24

bb.d:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !2964, !noundef !7
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2965
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCsdLkRf3gRIi6_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsdLkRf3gRIi6_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !2967, !noundef !7 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2967
  store i64 14, ptr %i.a, align 8, !noalias !2967
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2967
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !2966, !noalias !2968
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !2966, !noalias !2968
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2967
  store i64 14, ptr %i.b, align 8, !noalias !2967
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2967
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !2966, !noalias !2968
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2966, !noalias !2968
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  ret void

end_hunk_3
