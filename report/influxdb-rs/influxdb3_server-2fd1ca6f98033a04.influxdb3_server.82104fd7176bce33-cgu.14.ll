Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.14?download=true
inline.NumInlined: 3843
inline.NumDeleted: 1643
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6tokens15TokenRepositoryECsbakdBCgU4AF_16influxdb3_server:bb.a
.body.i:                                          ; preds = %bb.f, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.c, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2q_EECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(128) %i.g) #39
          to label %.body unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEINtNtB4_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEIBQ_INtNtCscdodAO9FK5_5alloc4sync3ArceEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2q_EECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2q_EECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.j

bb.i:                                             ; preds = %.body.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2q_EECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(128) %i.o) #39
          to label %common.resume unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2q_EECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEIBQ_INtNtCscdodAO9FK5_5alloc3vec3VechEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECsbakdBCgU4AF_16influxdb3_server.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc3vec3VechEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECsbakdBCgU4AF_16influxdb3_server.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc3vec3VechEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t)
  ret void

bb.m:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs8eNff9Ojv9L_24datafusion_physical_plan7displayNtBG_24DisplayableExecutionPlan6indent7WrapperECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan7metrics10MetricTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  %i.a = load i8, ptr %0, align 8, !range !3319, !alias.scope !6387, !noundef !3
  %switch.i.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.b, align 8, !alias.scope !6387, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !6387, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #31, !noalias !6387
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTaINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6388)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !6388, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.b, !noalias !6388, !inline_history !4723

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #31, !noalias !6388
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #31, !noalias !6388
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs7akArC4fqbf_15futures_channel4mpsc7channelINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = icmp ult i64 %1, 4611686018427387903
  br i1 %i.d, label %bb.c, label %bb.b, !prof !627

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6391
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6391 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCs7akArC4fqbf_15futures_channel4mpsc5queue4NodeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit, !prof !54

.noexc:                                           ; preds = %bb.c
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #38
  unreachable

common.resume:                                    ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit, %.body49, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %.body49 ], [ %i.s, %bb.o ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCs7akArC4fqbf_15futures_channel4mpsc5queue4NodeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6394
  %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 16, i64 8) ; 3 uses
  %i.g = icmp eq ptr %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCs7akArC4fqbf_15futures_channel4mpsc5queue4NodeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #38
          to label %.noexc55 unwind label %.body49

.noexc55:                                         ; preds = %bb.d
  unreachable

.body49:                                          ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs7akArC4fqbf_15futures_channel4mpsc5queue5QueueINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %i.e) #39
  br label %common.resume

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCs7akArC4fqbf_15futures_channel4mpsc5queue4NodeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.j, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.a, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -9223372036854775808, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6397
  %i.k = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6397 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit, !prof !54

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #38
          to label %.noexc58 unwind label %bb.g

.noexc58:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #39
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit
  store ptr %i.k, ptr %i.b, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6400
  %i.q = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6400 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.m, !prof !54

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #38
          to label %.noexc60 unwind label %.body

.noexc60:                                         ; preds = %bb.j
  unreachable

.body:                                            ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !6403
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.k:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorIBu_ShEEEEE3newCsbakdBCgU4AF_16influxdb3_server.exit
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtB7_5boxed3BoxShEEEE9drop_slowCs4oFq2PzodUt_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  store i64 1, ptr %i.q, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx72, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i8 0, ptr %.sroa.673.0..sroa_idx, align 4
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %.sroa.775.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.524.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.body, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !6408)
  call void @llvm.experimental.noalias.scope.decl(metadata !6411)
  %i.x = load ptr, ptr %i.c, align 8, !alias.scope !6414, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !6414
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %common.resume

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsbakdBCgU4AF_16influxdb3_server.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs7akArC4fqbf_15futures_channel4mpsc12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtB7_5boxed3BoxShEEEE9drop_slowCs4oFq2PzodUt_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBM_7runtime4task4join10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultINtB2_3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEEECsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBM_7runtime4task4join10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEEECsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3z_13V1HttpHandler13execute_query0s2_00EEEECsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEECsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs4NRVxsYgnAr_4core6option6OptionINtCsc4Fm4PkIHmZ_4slab4SlabIB1o_NtNtNtB1s_4task4wake5WakerEEEENCNvMs9_B10_BX_3new0ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCsi8UQarL1hXO_2h25proto7streams6buffer6BufferINtNtB1w_5frame5FrameINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEEENCNvMs9_B10_BX_3new0ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskENCNvMs9_B10_BX_3new0ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtNtCsi8UQarL1hXO_2h25proto7streams7streams5InnerENCNvMs9_B10_BX_3new0ECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvNtNtCseCDlJsl44RV_5tokio4sync5watch13maybe_changeduECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB1D_13V1HttpHandler10plan_query00EENtB4_6Future4pollCsbakdBCgU4AF_16influxdb3_server:bb.a
bb.gk:                                            ; preds = %bb.do
  %i.vi = getelementptr inbounds nuw i8, ptr %.val, i64 2976 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown11rustc_entry16RustcVacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1D_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i205.i.i.i unwind label %bb.gl, !noalias !8747

bb.gl:                                            ; preds = %bb.gk
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vi)
          to label %.body163.i.i.i unwind label %bb.gm, !noalias !8747

bb.gm:                                            ; preds = %bb.gl
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !8747
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown11rustc_entry16RustcVacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1D_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i205.i.i.i: ; preds = %bb.gk
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.vi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map11VacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1F_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server.exit209.i.i.i unwind label %bb.dw, !noalias !8747

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map11VacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1F_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server.exit209.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown11rustc_entry16RustcVacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1D_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i205.i.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %.val, i64 3017
  store i8 0, ptr %i.vl, align 1, !noalias !8743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8743
  br label %bb.fx

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7planner21ContextSchemaProviderECsbakdBCgU4AF_16influxdb3_server.exit199.i.i.i: ; preds = %bb.fx
  %i.vm = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state12SessionStateECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1640) %i.vm)
          to label %bb.gn unwind label %bb.fh, !noalias !8747

bb.gn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7planner21ContextSchemaProviderECsbakdBCgU4AF_16influxdb3_server.exit199.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %.val, i64 768
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.vn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit211.i.i.i unwind label %bb.fj, !noalias !8747

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.cc
  %i.vo = getelementptr inbounds nuw i8, ptr %.val, i64 752 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8931)
  call void @llvm.experimental.noalias.scope.decl(metadata !8934)
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !8937, !noalias !8743, !nonnull !3, !noundef !3
  %i.vq = atomicrmw sub ptr %i.vp, i64 1 release, align 8, !noalias !8938
  %i.vr = icmp eq i64 %i.vq, 1
  br i1 %i.vr, label %bb.go, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProviderEL_EECsbakdBCgU4AF_16influxdb3_server.exit213.i.i.i

bb.go:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProviderEL_EECsbakdBCgU4AF_16influxdb3_server.exit213.i.i.i unwind label %bb.fp, !noalias !8747

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5uU3ebUyQFg_20datafusion_execution6config13SessionConfigECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common6config13ConfigOptionsEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.val, i64 464
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(288) %i.vs)
          to label %bb.gp unwind label %bb.aw, !noalias !8747

bb.gp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5uU3ebUyQFg_20datafusion_execution6config13SessionConfigECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.val, i64 3018 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 2, !range !8, !noalias !8743, !noundef !3
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.gq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.gq, %bb.gp
  store i8 0, ptr %i.vt, align 2, !noalias !8743
  %i.vw = getelementptr inbounds nuw i8, ptr %.val, i64 3019 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 1, !range !8, !noalias !8743, !noundef !3
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %bb.gs, label %.thread128.i.i

bb.gq:                                            ; preds = %bb.gp
  %i.vz = getelementptr inbounds nuw i8, ptr %.val, i64 416
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.vz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.gr, !noalias !8747

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i: ; preds = %bb.gw, %bb.gr, %bb.av
  %i.wa = phi ptr [ %i.kw, %bb.gr ], [ %i.fx, %bb.av ], [ %i.fx, %bb.gw ] ; 2 uses
  %i.wb = phi ptr [ %i.kx, %bb.gr ], [ %i.fy, %bb.av ], [ %i.fy, %bb.gw ] ; 2 uses
  %i.wc = phi ptr [ %i.ky, %bb.gr ], [ %i.fz, %bb.av ], [ %i.fz, %bb.gw ] ; 2 uses
  %.pn83.i.i.i = phi { ptr, i32 } [ %i.wh, %bb.gr ], [ %.pn81.i.i.i, %bb.av ], [ %.pn81.i.i.i, %bb.gw ] ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.val, i64 3018
  store i8 0, ptr %i.wd, align 2, !noalias !8743
  %i.we = getelementptr inbounds nuw i8, ptr %.val, i64 3019
  %i.wf = load i8, ptr %i.we, align 1, !range !8, !noalias !8743, !noundef !3
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %bb.gx, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i

.thread128.i.i:                                   ; preds = %bb.gs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  store i8 0, ptr %i.vw, align 1, !noalias !8743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.13101.i.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.25.i.i.i, i64 272, i1 false), !noalias !8939
  store i8 1, ptr %i.ky, align 8, !noalias !8743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i.i)
  br label %bb.gz

bb.gs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.val, i64 400
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.wi)
          to label %.thread128.i.i unwind label %bb.gu, !noalias !8747

bb.gt:                                            ; preds = %bb.gx, %bb.gu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i
  %i.wj = phi ptr [ %i.kw, %bb.gu ], [ %i.wa, %bb.gx ], [ %i.wa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i ]
  %i.wk = phi ptr [ %i.kx, %bb.gu ], [ %i.wb, %bb.gx ], [ %i.wb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i ]
  %i.wl = phi ptr [ %i.ky, %bb.gu ], [ %i.wc, %bb.gx ], [ %i.wc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i ]
  %.pn85.i.i.i = phi { ptr, i32 } [ %i.wn, %bb.gu ], [ %.pn83.i.i.i, %bb.gx ], [ %.pn83.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i ]
  %i.wm = getelementptr inbounds nuw i8, ptr %.val, i64 3019
  store i8 0, ptr %i.wm, align 1, !noalias !8743
  store i8 2, ptr %i.wl, align 8, !noalias !8743
  br label %.body.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gv:                                            ; preds = %bb.dq
  %i.wo = getelementptr inbounds nuw i8, ptr %.val, i64 2976
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map11VacantEntryNtNtCscdodAO9FK5_5alloc6string6StringTINtNtB1F_4sync3ArcDNtNtCs7fnekraeopg_15datafusion_expr12table_source11TableSourceEL_ENtCsjGL2vCcvtUM_6schema6SchemaEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(40) %i.wo) #39
          to label %.body163.i.i.i unwind label %bb.cj, !noalias !8747

bb.gw:                                            ; preds = %bb.av
  %i.wp = getelementptr inbounds nuw i8, ptr %.val, i64 416
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.wp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i unwind label %bb.cj, !noalias !8747

bb.gx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit216.i.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %.val, i64 400
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.wq) #39
          to label %bb.gt unwind label %bb.cj, !noalias !8747

bb.gy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5uU3ebUyQFg_20datafusion_execution6config13SessionConfigECsbakdBCgU4AF_16influxdb3_server.exit193.i.i.i
  store i8 0, ptr %i.pq, align 2, !noalias !8743
  store i8 0, ptr %i.pl, align 1, !noalias !8743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.13101.i.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.25.i.i.i, i64 272, i1 false), !noalias !8939
  store i8 1, ptr %.ph19, align 8, !noalias !8743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i.i)
  %i.wr = icmp eq i64 %.sroa.0336.0.copyload.i.i.i, -2
  br i1 %i.wr, label %bb.hg, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.thread128.i.i
  %i.ws = phi ptr [ %i.kw, %.thread128.i.i ], [ %.ph, %bb.gy ] ; 3 uses
  %i.wt = phi ptr [ %i.kx, %.thread128.i.i ], [ %.ph18, %bb.gy ] ; 3 uses
  %.sroa.0297.4.i140.i.i = phi i64 [ -1, %.thread128.i.i ], [ %.sroa.0336.0.copyload.i.i.i, %bb.gy ]
  %.sroa.8299.4.i139.i.i = phi i64 [ %.sroa.8299.2.i.i.i, %.thread128.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.gy ]
  %.sroa.14303.4.i138.i.i = phi ptr [ %.sroa.14303.2.i.i.i, %.thread128.i.i ], [ %.sroa.5338.0.copyload.i.i.i, %bb.gy ]
  %.sroa.18308.4.i137.i.i = phi ptr [ %.sroa.18308.2.i.i.i, %.thread128.i.i ], [ %.sroa.6339.0.copyload.i.i.i, %bb.gy ]
  %i.wu = phi <2 x i64> [ %i.kz, %.thread128.i.i ], [ %i.rd, %bb.gy ]
  %i.wv = ptrtoint ptr %.sroa.14303.4.i138.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.12107.i.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.13101.i.i, i64 272, i1 false), !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13101.i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBK_20InfluxQLQueryPlanner17statement_to_planNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 16 %i.wt)
          to label %bb.hb unwind label %bb.ha, !noalias !8719

bb.ha:                                            ; preds = %bb.gz
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.hb:                                            ; preds = %bb.gz
  %i.wx = getelementptr inbounds nuw i8, ptr %.val, i64 3400
  store i8 0, ptr %i.wx, align 8, !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8714
  %i.wy = getelementptr inbounds nuw i8, ptr %.val, i64 3024
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(288) %i.wy)
          to label %bb.hc unwind label %bb.i, !noalias !8719

bb.hc:                                            ; preds = %bb.hb
  %i.wz = getelementptr inbounds nuw i8, ptr %.val, i64 3401
  store i8 0, ptr %i.wz, align 1, !noalias !8714
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBK_20InfluxQLQueryPlanner12logical_planNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsE0ECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.hd:                                            ; preds = %bb.hf, %bb.he, %.body.i.i, %bb.ao
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !8719
  unreachable

bb.he:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.ap) #39
          to label %bb.an unwind label %bb.hd, !noalias !8719

bb.hf:                                            ; preds = %bb.h
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit56.i.i unwind label %bb.hd, !noalias !8719

bb.hg:                                            ; preds = %bb.gy, %.thread120.i.i
  %i.xb = phi ptr [ %i.lr, %.thread120.i.i ], [ %.ph, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13101.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8714
  store i8 3, ptr %i.xb, align 2, !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12107.i.i)
  store i64 -2, ptr %0, align 16, !alias.scope !8709, !noalias !8940
  br label %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query00CsbakdBCgU4AF_16influxdb3_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBK_20InfluxQLQueryPlanner12logical_planNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsE0ECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.hc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.xc = phi ptr [ %i.ws, %bb.hc ], [ %i.bo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sroa.5103.sroa.0.0.i.i = phi i64 [ %i.wv, %bb.hc ], [ %i.em, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sroa.7104.0.i.i = phi ptr [ %.sroa.18308.4.i137.i.i, %bb.hc ], [ %i.eo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sroa.3.0.i.i = phi i64 [ %.sroa.8299.4.i139.i.i, %bb.hc ], [ %i.ek, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sroa.0102.0.i.i = phi i64 [ %.sroa.0297.4.i140.i.i, %bb.hc ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %i.xd = phi <2 x i64> [ %i.wu, %bb.hc ], [ %i.ev, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8714
  store i64 %.sroa.0102.0.i.i, ptr %0, align 16, !alias.scope !8719, !noalias !8941
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8719, !noalias !8941
  %.sroa.5103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5103.sroa.0.0.i.i, ptr %.sroa.5103.0..sroa_idx.i.i, align 16, !alias.scope !8719, !noalias !8941
  %.sroa.7104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7104.0.i.i, ptr %.sroa.7104.0..sroa_idx.i.i, align 8, !alias.scope !8719, !noalias !8941
  %.sroa.9105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.xd, ptr %.sroa.9105.0..sroa_idx.i.i, align 16, !alias.scope !8719, !noalias !8941
  %.sroa.12107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.12107.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.12107.i.i, i64 272, i1 false), !noalias !8941
  store i8 1, ptr %i.xc, align 2, !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12107.i.i)
  %i.xe = getelementptr inbounds nuw i8, ptr %.val, i64 3408 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xe)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.hh, !noalias !8709

bb.hh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBK_20InfluxQLQueryPlanner12logical_planNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsE0ECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.xf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xe)
          to label %.body11.i unwind label %bb.hi, !noalias !8709

bb.hi:                                            ; preds = %bb.hh
  %i.xg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !8709
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBK_20InfluxQLQueryPlanner12logical_planNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsE0ECsbakdBCgU4AF_16influxdb3_server.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xe)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.hj, !noalias !8709

bb.hj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.body11.i:                                        ; preds = %bb.hj, %bb.hh
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.xh, %bb.hj ], [ %i.xf, %bb.hh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 16 dereferenceable(288) %.val) #39
          to label %bb.hk unwind label %bb.hm, !noalias !8709

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 16 dereferenceable(288) %.val)
          to label %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query00CsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.hl, !noalias !8709

bb.hk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.hl, %.body11.i
  %.pn4.i = phi { ptr, i32 } [ %i.xi, %bb.hl ], [ %eh.lpad-body12.i, %.body11.i ], [ %eh.lpad-body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store i8 2, ptr %i.ba, align 8, !noalias !8712
  resume { ptr, i32 } %.pn4.i

bb.hl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hm:                                            ; preds = %bb.ho, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i, %.body11.i, %.body.i, %bb.b
  %i.xj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !8709
  unreachable

bb.hn:                                            ; preds = %bb.b
  %i.xk = getelementptr inbounds nuw i8, ptr %.val, i64 3433
  %i.xl = load i8, ptr %i.xk, align 1, !range !8, !noalias !8712, !noundef !3
  %i.xm = trunc nuw i8 %i.xl to i1
  br i1 %i.xm, label %bb.ho, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.ho, %bb.hn
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 16 dereferenceable(288) %.val) #39
          to label %bb.hk unwind label %bb.hm, !noalias !8709

bb.ho:                                            ; preds = %bb.hn
  %i.xn = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.xn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.hm, !noalias !8709

_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query00CsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.hg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  %storemerge.i = phi i8 [ 3, %bb.hg ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store i8 %storemerge.i, ptr %i.ba, align 8, !noalias !8712
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB1D_13V1HttpHandler10plan_query0s_0EENtB4_6Future4pollCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.7167.i.i.i = alloca [16 x i8], align 8   ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [320 x i8], align 16              ; 11 uses
  %.sroa.8.i.sroa.9.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7160.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [56 x i8], align 8                ; 9 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.8140.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.8135.sroa.7.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.8105.i.i = alloca [16 x i8], align 8     ; 7 uses
  %i.ah = alloca [288 x i8], align 8              ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  %i.aj = alloca [48 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 11 uses
  %.sroa.1085.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 10 uses
  %i.am = alloca [320 x i8], align 16             ; 5 uses
  %i.an = alloca [320 x i8], align 16             ; 11 uses
  %.sroa.8.sroa.10.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.ao = alloca [320 x i8], align 16             ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 59 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8942)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 3872 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 16, !range !792, !noalias !8945, !noundef !3
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %.thread24.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.ba, %bb.s, %bb.f, %bb.a
  unreachable

.thread24.i:                                      ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 608 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ar, ptr noundef nonnull align 16 dereferenceable(320) %.val, i64 320, i1 false), !noalias !8945
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 320 ; 2 uses
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 3856
  store ptr %i.as, ptr %.sroa.78.0..sroa_idx.i, align 16, !noalias !8945
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 3864 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8105.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1085.i.i)
  br label %bb.g

bb.b:                                             ; preds = %bb.fe, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.ob, %bb.fe ], [ %eh.lpad-body.i, %.body.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 320
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(288) %i.at) #39
          to label %bb.fg unwind label %bb.fi, !noalias !8942

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #38, !noalias !8942
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #38, !noalias !8942
  unreachable

bb.e:                                             ; preds = %bb.q, %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ez, %bb.e
  %i.av = phi ptr [ %i.aw, %bb.e ], [ %i.bd, %bb.ez ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.e ], [ %.pn21.i.i, %bb.ez ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs3_NtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtBJ_20InfluxQLQueryPlanner13physical_plan0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 16 %i.av) #39
          to label %bb.b unwind label %bb.fi, !noalias !8942

bb.f:                                             ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 3864 ; 7 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !792, !noalias !8947
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 608 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8951)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8105.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1085.i.i)
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.s
  ]

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 3856
  %.pre = load ptr, ptr %.phi.trans.insert, align 16, !noalias !8947
  br label %bb.g
end_hunk_1
