Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/process_wrap-ba5fc234472ff062.process_wrap.4ca4a3726afda47c-cgu.1?download=true
inline.NumInlined: 179
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB2_14ProcessSessionNtNtB4_4core14CommandWrapper10wrap_child:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.an, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @35, ptr %i.ar, align 8
  %i.as = trunc nuw i8 %.sroa.014.1 to i1
  %i.at = load i64, ptr %i.h, align 8, !range !7
  %.not.i.i = icmp ne i64 %i.at, 2
  %or.cond59.not = select i1 %i.as, i1 %.not.i.i, i1 false
  br i1 %or.cond59.not, label %bb.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.thread unwind label %.thread46

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45: ; preds = %bb.ae, %.body
  %i.av = trunc nuw i8 %.sroa.016.0.lpad-body to i1
  br i1 %i.av, label %bb.ag, label %bb.ad

.thread46:                                        ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.thread, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.thread:                                          ; preds = %bb.w
  %.pr = load i64, ptr %i.h, align 8, !alias.scope !148 ; 2 uses
  %.not.i.i39 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i39, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.ax = load i64, ptr %i.au, align 8, !range !9, !alias.scope !149, !noundef !4
  %i.ay = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i64 noundef %i.ax)
          to label %bb.z unwind label %bb.y       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #26
          to label %.thread53 unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ba = icmp eq i64 %.pr, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !156, !nonnull !4, !noundef !4
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !157
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #25
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap.exit

bb.ac:                                            ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ad:                                            ; preds = %bb.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45
  %.pn34 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45 ], [ %.pn50, %bb.ag ] ; 2 uses
  %.sroa.018.2 = phi i1 [ %.sroa.018.0.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45 ], [ %.sroa.018.151, %bb.ag ]
  br i1 %.sroa.018.2, label %bb.ah, label %.thread53

bb.ae:                                            ; preds = %.body
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ah, %bb.ag
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ag:                                            ; preds = %.thread46, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45
  %.sroa.018.151 = phi i1 [ false, %.thread46 ], [ %.sroa.018.0.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45 ]
  %.pn50 = phi { ptr, i32 } [ %i.aw, %.thread46 ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs6zY6QIEYYyK_12process_wrap.exit45 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #26
          to label %bb.ad unwind label %bb.af

.thread53:                                        ; preds = %bb.y, %bb.ah, %bb.ad
  %.pn3456 = phi { ptr, i32 } [ %.pn34, %bb.ad ], [ %.pn34, %bb.ah ], [ %i.az, %bb.y ]
  resume { ptr, i32 } %.pn3456

bb.ah:                                            ; preds = %bb.ad
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCs6zY6QIEYYyK_12process_wraps_3std4core12ChildWrapperEL_EEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #26
          to label %.thread53 unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB2_14ProcessSessionNtNtB4_4core14CommandWrapper9pre_spawn(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 17 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.h, align 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command8pre_exec(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10)
  br label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.g, %bb.f
  store i64 2, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.m, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB4_14ProcessSessionNtNtB6_4core14CommandWrapper9pre_spawn10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.n, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !13

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB4_14ProcessSessionNtNtB6_4core14CommandWrapper9pre_spawn10___CALLSITE) ; 2 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.sroa.011.0 = phi i8 [ %i.o, %bb.f ], [ %i.n, %bb.e ], [ %i.n, %bb.e ]
  %i.p = load ptr, ptr @_RNvNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB4_14ProcessSessionNtNtB6_4core14CommandWrapper9pre_spawn10___CALLSITE, align 8, !nonnull !4, !align !8, !noundef !4
  %i.q = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.p, i8 noundef %.sroa.011.0)
  br i1 %i.q, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @_RNvNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB4_14ProcessSessionNtNtB6_4core14CommandWrapper9pre_spawn10___CALLSITE, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @36, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @30, ptr %i.v, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.s, ptr %i.w, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.x = load i64, ptr %i.f, align 8, !range !7, !noundef !4
  %.not25 = icmp eq i64 %i.x, 2
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command8pre_exec(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.z, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10)
          to label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit28 unwind label %bb.t

_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit28: ; preds = %bb.k
  %i.aa = load i64, ptr %i.f, align 8, !range !7, !noundef !4
  %.not.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i.i, label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread37

_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit: ; preds = %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit28, %bb.b, %bb.r, %bb.q, %bb.p, %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr null

_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit.thread: ; preds = %bb.l
  %.pr = load i64, ptr %i.f, align 8, !alias.scope !176 ; 2 uses
  %.not.i.i29 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i29, label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit, label %bb.n

bb.n:                                             ; preds = %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit.thread
  %i.ad = load i64, ptr %i.ab, align 8, !range !9, !alias.scope !177, !noundef !4
  %i.ae = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, i64 noundef %i.ad)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #26
          to label %common.resume unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ag = icmp eq i64 %.pr, 0
  br i1 %i.ag, label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !184, !nonnull !4, !noundef !4
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !185
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah) #25
  br label %_RINvXNtNtNtCscAsMj0W7j8b_3std2os4unix7processNtNtB9_7process7CommandNtB3_10CommandExt8pre_execNCNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std15process_sessionNtB1z_14ProcessSessionNtNtB1B_4core14CommandWrapper9pre_spawn0EB1D_.exit

bb.s:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread37, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn41, %.thread37 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !range !7, !noalias !186, !noundef !4
  %.not.i.i30 = icmp eq i64 %i.am, 2
  br i1 %.not.i.i30, label %.thread37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an)
          to label %.thread37 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread37
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread37:                                        ; preds = %bb.t, %bb.u, %bb.m
  %.pn41 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.ac, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.u ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #26
          to label %common.resume unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper10start_kill(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(28) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !alias.scope !189, !noundef !4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @kill(i32 noundef range(i32 0, -2147483648) %i.b, i32 noundef range(i32 1, 32) 9) #24, !noalias !189
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper6signal.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RINvMNtNtCsbSS6DM8SDEO_5alloc2io5errorNtNtNtCshzWfHUSfYae_4core2io5error5Error3newNtNtNtBG_3num5error15TryFromIntErrorECscAsMj0W7j8b_3std(i8 noundef 42, i8 noundef 2) #25, !noalias !189
  br label %_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper6signal.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last(), !noalias !189
  %i.h = tail call noundef nonnull ptr @_RNvXs6_NtCsjleIA2Nr5aN_3nix5errnoNtNtNtCshzWfHUSfYae_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef %i.g), !noalias !189
  br label %_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper6signal.exit

_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper6signal.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.0.1.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper4wait(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(28) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsT_NtCscAsMj0W7j8b_3std7processNtB5_5Child4wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper6signal(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(28) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !noundef !4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %1, -32
  %i.e = icmp ult i32 %i.d, -31
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RINvMNtNtCsbSS6DM8SDEO_5alloc2io5errorNtNtNtCshzWfHUSfYae_4core2io5error5Error3newNtNtNtBG_3num5error15TryFromIntErrorECscAsMj0W7j8b_3std(i8 noundef 42, i8 noundef 2) #25
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys6signal4killNtB2_6SignalECs6zY6QIEYYyK_12process_wrap.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull ptr @_RNvXs6_NtCsjleIA2Nr5aN_3nix5errnoNtNtNtCshzWfHUSfYae_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef 22)
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys6signal4killNtB2_6SignalECs6zY6QIEYYyK_12process_wrap.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @kill(i32 noundef range(i32 0, -2147483648) %i.b, i32 noundef range(i32 1, 32) %1) #24
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys6signal4killNtB2_6SignalECs6zY6QIEYYyK_12process_wrap.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noundef i32 @_RNvMNtCsjleIA2Nr5aN_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.k = tail call noundef nonnull ptr @_RNvXs6_NtCsjleIA2Nr5aN_3nix5errnoNtNtNtCshzWfHUSfYae_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef %i.j)
  br label %_RINvNtNtCsjleIA2Nr5aN_3nix3sys6signal4killNtB2_6SignalECs6zY6QIEYYyK_12process_wrap.exit.thread

_RINvNtNtCsjleIA2Nr5aN_3nix3sys6signal4killNtB2_6SignalECs6zY6QIEYYyK_12process_wrap.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.sroa.0.1 = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ %i.f, %bb.c ], [ null, %bb.e ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs6zY6QIEYYyK_12process_wraps_3std4coreNtNtCscAsMj0W7j8b_3std7process5ChildNtB2_12ChildWrapper8try_wait(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(28) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsT_NtCscAsMj0W7j8b_3std7processNtB5_5Child8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB14_EENtNtNtB1R_3ops4drop4Drop4dropCs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  call fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE10dying_nextCs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !198, !noundef !4 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs6zY6QIEYYyK_12process_wrap.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.o, %_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i ] ; 2 uses
  %.sroa.43.0.copyload.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !198 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.43.0.copyload.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.43.0.copyload.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %i.h, align 8, !noalias !198 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6zY6QIEYYyK_12process_wrap.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !noalias !198, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !199
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6zY6QIEYYyK_12process_wrap.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6zY6QIEYYyK_12process_wrap.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.val.i.i4.i.i.i = load i64, ptr %i.j, align 8, !range !200, !noalias !198, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val.i.i4.i.i.i, 0
  br i1 %i.m, label %bb.f, label %_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6zY6QIEYYyK_12process_wrap.exit.i.i.i
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val1.i.i5.i.i.i = load ptr, ptr %i.n, align 8, !noalias !198, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i, i64 noundef %.val.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !201
  br label %_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i

_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i: ; preds = %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6zY6QIEYYyK_12process_wrap.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  call fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE10dying_nextCs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.o = load ptr, ptr %i.a, align 8, !noalias !198, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs6zY6QIEYYyK_12process_wrap.exit, label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs6zY6QIEYYyK_12process_wrap.exit: ; preds = %_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6zY6QIEYYyK_12process_wrap.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtB7_5boxed3BoxDNtNtNtCs6zY6QIEYYyK_12process_wraps_3std4core14CommandWrapperEL_EEENtNtNtB1n_3ops4drop4Drop4dropB2g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6zY6QIEYYyK_12process_wrap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6zY6QIEYYyK_12process_wrap.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6zY6QIEYYyK_12process_wrap.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SyncNtB2O_4SendEL_EENtNtB1a_4drop4Drop4dropCs6zY6QIEYYyK_12process_wrap(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6zY6QIEYYyK_12process_wrap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
end_hunk_0
