Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.10?download=true
inline.NumInlined: 239
inline.NumDeleted: 132
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams9StreamRefNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !187, !nonnull !4, !noundef !4
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !187
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !190, !nonnull !4, !noundef !4
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !190
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit2

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.i
  ret void

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0E0EB1A_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = load i8, ptr %i.b, align 8, !range !195, !noundef !4
  switch i8 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBJ_17SubrequestSpawner27spawn_background_subrequest0EBJ_.exit [
    i8 0, label %bb.b
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !198, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !198
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtCskKLDkoKarTP_4core6marker4SendNtB1q_4SyncEL_E9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit.i unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.val.i = load ptr, ptr %i.h, align 8           ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 584
  %.val2.i = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.j = load ptr, ptr %.val2.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBJ_17SubrequestSpawner27spawn_background_subrequest0EBJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBJ_17SubrequestSpawner27spawn_background_subrequest0EBJ_.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #12
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.k, %bb.i, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %.pn.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(536) %i.a) #15
          to label %bb.k unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(536) %i.a)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.v, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.val4.i = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest3CtxEEB1e_(ptr nonnull %.val4.i) #15
          to label %common.resume.i unwind label %bb.n

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.val3.i = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest3CtxEEB1e_(ptr nonnull %.val3.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBJ_17SubrequestSpawner27spawn_background_subrequest0EBJ_.exit

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBJ_17SubrequestSpawner27spawn_background_subrequest0EBJ_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http13RequestHeaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.b = load i8, ptr %i.a, align 8, !range !252, !alias.scope !253, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.b, 11
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !253, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #12, !noalias !253
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %.val.i2 = load i8, ptr %i.f, align 8, !range !11, !alias.scope !254, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !254 ; 7 uses
  %switch.i.i.i3 = icmp samesign ult i8 %.val.i2, 2
  br i1 %switch.i.i.i3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !258, !noalias !254, !noundef !4
  %i.j = load ptr, ptr %.val2.i, align 8, !alias.scope !258, !noalias !254, !nonnull !4, !align !10, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !259, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !258, !noalias !254, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !258, !noalias !254, !noundef !4
  invoke void %i.l(ptr noundef %i.i, ptr noundef %i.n, i64 noundef %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i unwind label %.body.i, !noalias !254, !inline_history !213

.body.i:                                          ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 32, i64 noundef 8) #12, !noalias !254
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !264, !noundef !4
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !264, !nonnull !4, !align !10, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !264, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !264, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !264, !noundef !4
  invoke void %i.w(ptr noundef %i.t, ptr noundef %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.f, !noalias !254, !inline_history !222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 32, i64 noundef 8) #12, !noalias !254
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs3Kwrwkha1e5_13pingora_proxy.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !269, !noundef !4
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !269, !nonnull !4, !align !10, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !269, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !269, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !269, !noundef !4
  invoke void %i.ag(ptr noundef %i.ad, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit3.i unwind label %bb.e, !noalias !254, !inline_history !222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.e ], [ %i.q, %.body.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !274, !noundef !4
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !274, !nonnull !4, !align !10, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !274, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !274, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !274, !noundef !4
  invoke void %i.aq(ptr noundef %i.an, ptr noundef %i.as, i64 noundef %i.au)
          to label %.body4 unwind label %bb.f, !noalias !254, !inline_history !239

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs3Kwrwkha1e5_13pingora_proxy.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit3.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs3Kwrwkha1e5_13pingora_proxy.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !279, !noundef !4
  %i.az = load ptr, ptr %i.aw, align 8, !alias.scope !279, !nonnull !4, !align !10, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !279, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !279, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !279, !noundef !4
  invoke void %i.bb(ptr noundef %i.ay, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.g, !inline_history !248

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !254
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit3.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body4

.body4:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i, %bb.g
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0) #15
          to label %bb.h unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy.exit3.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %.body4
  %.pn2.i = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %eh.lpad-body5, %.body4 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val4.i = load ptr, ptr %i.bi, align 8, !alias.scope !249, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs3Kwrwkha1e5_13pingora_proxy(ptr %.val4.i) #15
          to label %.body unwind label %bb.m

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i = load ptr, ptr %i.bk, align 8, !alias.scope !249, !align !10, !noundef !4 ; 4 uses
  %i.bl = icmp eq ptr %.val.i, null
  br i1 %i.bl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #12
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy.exit

bb.m:                                             ; preds = %bb.h, %.body4
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %bb.h, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %.pn2.i, %bb.h ], [ %i.bm, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bo) #15
          to label %bb.n unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bp)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %i.br, %bb.o ], [ %eh.lpad-body, %.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #15
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
  ret void

bb.s:                                             ; preds = %bb.n, %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http14ResponseHeaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !284, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs3Kwrwkha1e5_13pingora_proxy(ptr %.val1.i) #15
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !284, !align !10, !noundef !4 ; 4 uses
  %i.d = icmp eq ptr %.val.i, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #12
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy.exit

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.e, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #15
          to label %bb.g unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %eh.lpad-body, %.body ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #15
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !9, !alias.scope !285, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.k ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionECs3Kwrwkha1e5_13pingora_proxy:bb.a

.body31.i:                                        ; preds = %bb.bp, %bb.bj, %bb.bi, %bb.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit.i7
  %.pn10.i = phi { ptr, i32 } [ %.pn8.i8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit.i7 ], [ %i.ec, %bb.bp ], [ %i.dq, %bb.bj ], [ %i.dq, %bb.bi ], [ %i.dq, %bb.bh ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val14.i = load ptr, ptr %i.ea, align 8, !alias.scope !446, !align !10, !noundef !4 ; 2 uses
  %i.eb = icmp eq ptr %.val14.i, null
  br i1 %i.eb, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %.body31.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %.val14.i)
          to label %common.resume unwind label %bb.br

bb.bp:                                            ; preds = %bb.bm
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit29.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val13.i = load ptr, ptr %i.ed, align 8, !alias.scope !446, !align !10, !noundef !4 ; 2 uses
  %i.ee = icmp eq ptr %.val13.i, null
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6custom6server7SessionEL_EECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %.val13.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6custom6server7SessionEL_EECs3Kwrwkha1e5_13pingora_proxy.exit

bb.br:                                            ; preds = %bb.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit.i7, %bb.bc, %bb.az, %.body19.i, %.body17.i, %.body.i2
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6custom6server7SessionEL_EECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit16.i, %bb.e, %bb.d, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !481, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !483, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !484
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !486, !noundef !4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !487
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !494, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !495, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit2, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit2 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !496, !noundef !4
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit3, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit
  tail call void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16server11HttpSessionECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val12 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val12, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs3Kwrwkha1e5_13pingora_proxy.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #12
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !520, !noundef !4
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !520, !nonnull !4, !align !10, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !520, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !520, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !520, !noundef !4
  invoke void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.v, !inline_history !501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !523, !noundef !4
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !523, !nonnull !4, !align !10, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !523, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !523, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !523, !noundef !4
  invoke void %i.ad(ptr noundef %i.aa, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit19 unwind label %bb.g, !inline_history !501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.i, %.body ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ai) #15
          to label %.body20 unwind label %bb.v

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit19: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !524, !noundef !4
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit19
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !525, !noundef !4
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.body20, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.body20 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !526, !noundef !4
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit.i
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body20:                                          ; preds = %bb.m, %bb.j, %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit ], [ %i.aw, %bb.m ], [ %i.an, %bb.j ], [ %i.an, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy.exit.i, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit24 unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %.body20, %bb.n
  %.pn4 = phi { ptr, i32 } [ %i.az, %bb.n ], [ %.pn2, %.body20 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val14 = load ptr, ptr %i.ay, align 8, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy(ptr %.val14) #15
          to label %.body25 unwind label %bb.v

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit24: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val13 = load ptr, ptr %i.ba, align 8, !align !10, !noundef !4 ; 4 uses
  %i.bb = icmp eq ptr %.val13, null
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http14ResponseHeaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val13)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef 232, i64 noundef 8) #12
  br label %.body25

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.o
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef 232, i64 noundef 8) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit

.body25:                                          ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit
  %.pn6 = phi { ptr, i32 } [ %.pn4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit ], [ %i.bc, %bb.p ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val16 = load ptr, ptr %i.bd, align 8, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy(ptr %.val16) #15
          to label %.body27 unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val15 = load ptr, ptr %i.be, align 8, !align !10, !noundef !4 ; 4 uses
  %i.bf = icmp eq ptr %.val15, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http13RequestHeaderECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %.val15)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef 352, i64 noundef 8) #12
  br label %.body27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.q
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef 352, i64 noundef 8) #12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit

.body27:                                          ; preds = %bb.r, %.body25
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body25 ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i8, ptr %i.bh, align 8, !range !11, !alias.scope !527, !noundef !4
  %i.bj = icmp eq i8 %i.bi, 2
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.s

bb.s:                                             ; preds = %.body27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEECs3Kwrwkha1e5_13pingora_proxy.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bm = load i8, ptr %i.bl, align 8, !range !11, !alias.scope !528, !noundef !4
  %i.bn = icmp eq i8 %i.bm, 2
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit31, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit31 unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %.body27, %bb.s, %bb.u
  %.pn10 = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %.pn8, %bb.s ], [ %.pn8, %.body27 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val18 = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %.val18) #15
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit31: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val17 = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %.val17)
  ret void

bb.v:                                             ; preds = %bb.s, %.body20, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit, %.body25, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy.exit
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn5spawnNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBP_17SubrequestSpawner27spawn_background_subrequest0EBP_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(584) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [584 x i8], align 8               ; 4 uses
  %i.c = alloca [600 x i8], align 8               ; 6 uses
  %i.d = alloca [600 x i8], align 8               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [600 x i8], align 8               ; 9 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !539
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.i = atomicrmw add ptr @_RNvNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !539 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.i, ptr %i.h, align 8, !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !539
  store ptr %i.h, ptr %i.f, align 8, !noalias !539
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.a, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !539
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(584) %0, i64 584, i1 false), !noalias !540
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load i8, ptr %i.k, align 8, !range !11, !noalias !541, !noundef !4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.thread.i.i, label %bb.d, !prof !542

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCs3Kwrwkha1e5_13pingora_proxy(ptr noundef nonnull align 8 %i.j)
          to label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.i.i unwind label %bb.l, !noalias !541 ; 2 uses

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.i.i: ; preds = %bb.d
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.thread.i.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.i.i, %bb.c
  %.sroa.0.0.i.i6.i.i = phi ptr [ %i.n, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.i.i ], [ %i.j, %bb.c ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(600) %i.f, i64 600, i1 false), !noalias !539
  %i.p = load i64, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543, !noundef !4 ; 2 uses
  %i.q = icmp ult i64 %i.p, 9223372036854775807
  br i1 %i.q, label %bb.g, label %bb.e, !prof !542

bb.e:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.thread.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !543

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i64, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543
  br label %.body.i.i

bb.g:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.thread.i.i
  %i.u = add nuw nsw i64 %i.p, 1
  store i64 %i.u, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6.i.i, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !544, !noalias !543, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.w, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(600) %i.d, i64 600, i1 false), !noalias !541
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.07.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !noalias !543, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.b, ptr noundef nonnull align 8 dereferenceable(584) %i.x, i64 584, i1 false), !noalias !541
  %i.y = load i64, ptr %.sroa.07.0.copyload.i.i.i, align 8, !range !546, !noalias !545, !noundef !4
  %i.z = invoke noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1c_17SubrequestSpawner27spawn_background_subrequest0EB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(584) %i.b, i64 noundef %i.y)
          to label %_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBW_17SubrequestSpawner27spawn_background_subrequest0EBW_.exit unwind label %bb.f, !noalias !543

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0E0EB1A_(ptr noundef nonnull align 8 %i.c)
          to label %.thread.i unwind label %bb.f, !noalias !543

.thread.i:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !543
  %i.aa = load i64, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543, !noundef !4
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !541
  br label %bb.n

bb.j:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !541
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0E0EB1A_(ptr noundef nonnull align 8 dereferenceable(600) %i.d) #15
          to label %.body.i.i unwind label %bb.j, !noalias !541

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs3Kwrwkha1e5_13pingora_proxy.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0E0EB1A_(ptr noundef nonnull align 8 dereferenceable(600) %i.f), !noalias !539
  br label %bb.n

.body.i.i:                                        ; preds = %bb.l, %bb.k, %bb.f
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body3.i.i

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0E0EB1A_(ptr noundef nonnull align 8 dereferenceable(600) %i.f)
          to label %.body.i.i unwind label %bb.m, !noalias !539

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !539
  unreachable

bb.n:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_.exit.thread.i, %.thread.i
  %.sroa.5.0.i = phi i8 [ 1, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_.exit.thread.i ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !539
  store i8 %.sroa.5.0.i, ptr %i.g, align 1, !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !539
  store ptr %i.g, ptr %i.e, align 8, !noalias !539
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB5_15TryCurrentErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !539
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #16, !noalias !547
  unreachable

_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBW_17SubrequestSpawner27spawn_background_subrequest0EBW_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !543
  %i.ag = load i64, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543, !noundef !4
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !539
  ret ptr %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEENtNtNtBK_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEENtNtNtBR_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCskxN0Kp1MEon_2h25shareNtB5_10RecvStreamNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB5_15TryCurrentErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1c_17SubrequestSpawner27spawn_background_subrequest0EB1c_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(584), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCs3Kwrwkha1e5_13pingora_proxy(ptr noundef nonnull align 8) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtCskKLDkoKarTP_4core6marker4SendNtB1q_4SyncEL_E9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestE9drop_slowCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noinline }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 1, i64 536870913}
!7 = !{i64 0, i64 2}
!8 = !{i64 -1, i64 3}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{i64 8}
!11 = !{i8 0, i8 3}
!12 = distinct !{!12, i1 true, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy"}
!13 = distinct !{!13, !12, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!14 = distinct !{!14, !12, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy"}
!16 = distinct !{!16, !15, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!17 = distinct !{!17, !15, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!18 = distinct !{!18, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3Kwrwkha1e5_13pingora_proxy"}
!19 = distinct !{!19, !18, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!22 = distinct !{!22, !21, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!23 = distinct !{!23, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy"}
!24 = distinct !{!24, !23, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!25 = distinct !{!25, i1 true, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy"}
!26 = distinct !{!26, !25, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!27 = distinct !{!27, !25, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy"}
!29 = distinct !{!29, !28, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!30 = distinct !{!30, !28, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3Kwrwkha1e5_13pingora_proxy"}
!32 = distinct !{!32, !31, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!33 = distinct !{!33, !31, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!35 = distinct !{!35, !34, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!36 = distinct !{!36, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy"}
!37 = distinct !{!37, !36, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!38 = !{!24, !22, !20, !19, !17, !16, !14, !13}
!39 = !{!20, !19, !17, !16, !14, !13}
!40 = !{!37, !35, !33, !32, !30, !29, !27, !26}
!41 = !{!33, !32, !30, !29, !27, !26}
!42 = distinct !{!42, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy"}
!43 = distinct !{!43, !42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!44 = distinct !{!44, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs3Kwrwkha1e5_13pingora_proxy"}
!45 = distinct !{!45, !44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!46 = distinct !{!46, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy"}
!47 = distinct !{!47, !46, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!48 = distinct !{!48, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!49 = distinct !{!49, !48, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!52 = distinct !{!52, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy"}
!53 = distinct !{!53, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!54 = distinct !{!54, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!55 = distinct !{!55, !54, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!56 = !{!43}
!57 = !{!43, !45}
!58 = !{!49, !47, !43}
!59 = !{!51}
!60 = !{!51, !45}
!61 = !{!55, !53, !51}
!62 = distinct !{!62, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!68 = distinct !{!68, !67, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!69 = distinct !{!69, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2RxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy"}
!72 = distinct !{!72, !71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2RxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!74 = distinct !{!74, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!75 = distinct !{!75, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!76 = distinct !{!76, !75, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!77 = !{!66}
!78 = !{!68}
!79 = !{!68, !66, !72, !70}
!80 = !{!68, !66}
!81 = !{!74}
!82 = !{!76}
!83 = !{!76, !74, !72, !70}
!84 = !{!76, !74}
!85 = distinct !{!85, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest3CtxEBF_"}
!86 = distinct !{!86, !85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest3CtxEBF_: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest7LockCtxEEB11_"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest7LockCtxEEB11_: argument 0"}
!89 = distinct !{!89, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEECs3Kwrwkha1e5_13pingora_proxy"}
!90 = distinct !{!90, !89, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!92 = distinct !{!92, !91, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!93 = distinct !{!93, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest7LockCtxEBF_"}
!94 = distinct !{!94, !93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest7LockCtxEBF_: argument 0"}
!95 = distinct !{!95, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitECs3Kwrwkha1e5_13pingora_proxy"}
!96 = distinct !{!96, !95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!97 = distinct !{!97, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEECs3Kwrwkha1e5_13pingora_proxy"}
!98 = distinct !{!98, !97, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!99 = distinct !{!99, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!100 = distinct !{!100, !99, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!101 = !{!88, !86}
!102 = !{!90}
!103 = !{!92}
!104 = !{!92, !90, !96, !94, !88, !86}
!105 = !{!92, !90}
!106 = !{!98}
!107 = !{!100}
!108 = !{!100, !98, !96, !94, !88, !86}
!109 = !{!100, !98}
!110 = !{!86}
!111 = distinct !{!111, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs3Kwrwkha1e5_13pingora_proxy"}
!112 = distinct !{!112, !111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!113 = distinct !{!113, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs3Kwrwkha1e5_13pingora_proxy"}
!114 = distinct !{!114, !113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!115 = distinct !{!115, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEECs3Kwrwkha1e5_13pingora_proxy"}
!116 = distinct !{!116, !115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!118 = distinct !{!118, !117, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!119 = distinct !{!119, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs3Kwrwkha1e5_13pingora_proxy"}
!120 = distinct !{!120, !119, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!121 = distinct !{!121, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEECs3Kwrwkha1e5_13pingora_proxy"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!123 = distinct !{!123, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!124 = distinct !{!124, !123, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!125 = distinct !{!125, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs3Kwrwkha1e5_13pingora_proxy"}
!126 = distinct !{!126, !125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEECs3Kwrwkha1e5_13pingora_proxy"}
!128 = distinct !{!128, !127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!129 = distinct !{!129, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!130 = distinct !{!130, !129, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!131 = distinct !{!131, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEEECs3Kwrwkha1e5_13pingora_proxy"}
!132 = distinct !{!132, !131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!133 = distinct !{!133, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEECs3Kwrwkha1e5_13pingora_proxy"}
!134 = distinct !{!134, !133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!135 = distinct !{!135, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!136 = distinct !{!136, !135, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!137 = distinct !{!137, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEEECs3Kwrwkha1e5_13pingora_proxy"}
!138 = distinct !{!138, !137, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEECs3Kwrwkha1e5_13pingora_proxy"}
!140 = distinct !{!140, !139, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!142 = distinct !{!142, !141, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!143 = !{!112}
!144 = !{!114}
!145 = !{!114, !112}
!146 = !{!118, !116, !114, !112}
!147 = !{!120}
!148 = !{!120, !112}
!149 = !{!124, !122, !120}
!150 = !{!126}
!151 = !{!126, !112}
!152 = !{!130, !128, !126}
!153 = !{!132}
!154 = !{!132, !112}
!155 = !{!136, !134, !132}
!156 = !{!138}
!157 = !{!138, !112}
!158 = !{!142, !140, !138}
!159 = distinct !{!159, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!160 = distinct !{!160, !159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!162 = distinct !{!162, !161, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy"}
!164 = distinct !{!164, !163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!166 = distinct !{!166, !165, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!167 = distinct !{!167, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!168 = distinct !{!168, !167, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!169 = distinct !{!169, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy"}
!170 = distinct !{!170, !169, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!171 = distinct !{!171, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!172 = distinct !{!172, !171, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!173 = distinct !{!173, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy"}
!174 = distinct !{!174, !173, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!175 = distinct !{!175, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!176 = distinct !{!176, !175, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams10SendBufferNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!177 = !{!160}
!178 = !{!162}
!179 = !{!162, !160, !164}
!180 = !{!162, !160}
!181 = !{!166}
!182 = !{!168}
!183 = !{!168, !166, !164}
!184 = !{!168, !166}
!185 = !{!170}
!186 = !{!172}
!187 = !{!172, !170}
!188 = !{!174}
!189 = !{!176}
!190 = !{!176, !174}
!191 = distinct !{!191, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_"}
!192 = distinct !{!192, !191, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtCskKLDkoKarTP_4core6marker4SendNtB1q_4SyncEL_ENtNtNtB1s_3ops4drop4Drop4dropBJ_"}
!194 = distinct !{!194, !193, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtCskKLDkoKarTP_4core6marker4SendNtB1q_4SyncEL_ENtNtNtB1s_3ops4drop4Drop4dropBJ_: argument 0"}
!195 = !{i8 0, i8 4}
!196 = !{!192}
!197 = !{!194}
!198 = !{!194, !192}
!199 = distinct !{!199, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy"}
!200 = distinct !{!200, !199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!201 = distinct !{!201, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy"}
!202 = distinct !{!202, !201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!203 = distinct !{!203, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method5InnerECs3Kwrwkha1e5_13pingora_proxy"}
!204 = distinct !{!204, !203, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method5InnerECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!205 = distinct !{!205, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy"}
!206 = distinct !{!206, !205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy"}
!208 = distinct !{!208, !207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!209 = distinct !{!209, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!210 = distinct !{!210, !209, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!211 = distinct !{!211, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!212 = distinct !{!212, !211, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!213 = distinct !{null}
!214 = distinct !{!214, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy"}
!215 = distinct !{!215, !214, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!216 = distinct !{!216, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy"}
!217 = distinct !{!217, !216, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!218 = distinct !{!218, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!219 = distinct !{!219, !218, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!220 = distinct !{!220, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!221 = distinct !{!221, !220, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!222 = distinct !{null}
!223 = distinct !{!223, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy"}
!224 = distinct !{!224, !223, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy"}
!226 = distinct !{!226, !225, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!228 = distinct !{!228, !227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!229 = distinct !{!229, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!230 = distinct !{!230, !229, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!231 = distinct !{!231, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs3Kwrwkha1e5_13pingora_proxy"}
!232 = distinct !{!232, !231, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!233 = distinct !{!233, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy"}
!234 = distinct !{!234, !233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!235 = distinct !{!235, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!236 = distinct !{!236, !235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!237 = distinct !{!237, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!238 = distinct !{!238, !237, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!239 = distinct !{null}
!240 = distinct !{!240, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs3Kwrwkha1e5_13pingora_proxy"}
!241 = distinct !{!241, !240, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!242 = distinct !{!242, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy"}
!243 = distinct !{!243, !242, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!244 = distinct !{!244, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!245 = distinct !{!245, !244, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!247 = distinct !{!247, !246, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!248 = distinct !{null}
!249 = !{!200}
!250 = !{!202}
!251 = !{!204}
!252 = !{i8 0, i8 12}
!253 = !{!204, !202, !200}
!254 = !{!206}
!255 = !{!208}
!256 = !{!210}
!257 = !{!212}
!258 = !{!212, !210, !208}
!259 = !{!212, !210, !208, !206}
!260 = !{!215}
!261 = !{!217}
!262 = !{!219}
!263 = !{!221}
!264 = !{!221, !219, !217, !215, !206}
!265 = !{!224}
!266 = !{!226}
!267 = !{!228}
!268 = !{!230}
!269 = !{!230, !228, !226, !224, !206}
!270 = !{!232}
!271 = !{!234}
!272 = !{!236}
!273 = !{!238}
!274 = !{!238, !236, !234, !232, !206}
!275 = !{!241}
!276 = !{!243}
!277 = !{!245}
!278 = !{!247}
!279 = !{!247, !245, !243, !241, !206}
!280 = distinct !{!280, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy"}
!281 = distinct !{!281, !280, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!282 = distinct !{!282, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy"}
!283 = distinct !{!283, !282, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!284 = !{!281}
!285 = !{!283}
!286 = distinct !{!286, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!287 = distinct !{!287, !286, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!288 = distinct !{!288, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!289 = distinct !{!289, !288, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!290 = distinct !{!290, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskxN0Kp1MEon_2h25share11FlowControlECs3Kwrwkha1e5_13pingora_proxy"}
!291 = distinct !{!291, !290, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskxN0Kp1MEon_2h25share11FlowControlECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!292 = distinct !{!292, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy"}
!293 = distinct !{!293, !292, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!294 = distinct !{!294, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!295 = distinct !{!295, !294, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!296 = distinct !{!296, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!297 = distinct !{!297, !296, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!298 = !{!287}
!299 = !{!289}
!300 = !{!289, !287, !293, !291}
!301 = !{!289, !287}
!302 = !{!295}
!303 = !{!297}
!304 = !{!297, !295, !293, !291}
!305 = !{!297, !295}
!306 = distinct !{!306, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!307 = distinct !{!307, !306, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!308 = distinct !{!308, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!309 = distinct !{!309, !308, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!310 = distinct !{!310, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy"}
!311 = distinct !{!311, !310, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!312 = distinct !{!312, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy"}
!313 = distinct !{!313, !312, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!314 = distinct !{!314, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!315 = distinct !{!315, !314, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!316 = !{!307}
!317 = !{!309}
!318 = !{!309, !307, !311}
!319 = !{!309, !307}
!320 = !{!313}
!321 = !{!315}
!322 = !{!315, !313, !311}
!323 = !{!315, !313}
!324 = distinct !{!324, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v26server11HttpSessionECs3Kwrwkha1e5_13pingora_proxy"}
!325 = distinct !{!325, !324, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v26server11HttpSessionECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!326 = distinct !{!326, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy"}
!327 = distinct !{!327, !326, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!328 = distinct !{!328, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy"}
!329 = distinct !{!329, !328, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!330 = distinct !{!330, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!331 = distinct !{!331, !330, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!332 = distinct !{!332, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!333 = distinct !{!333, !332, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!334 = distinct !{!334, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy"}
!335 = distinct !{!335, !334, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!336 = distinct !{!336, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!337 = distinct !{!337, !336, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!338 = distinct !{!338, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy"}
!339 = distinct !{!339, !338, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!340 = distinct !{!340, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!341 = distinct !{!341, !340, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!342 = distinct !{!342, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6server11HttpSessionECs3Kwrwkha1e5_13pingora_proxy"}
!343 = distinct !{!343, !342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6server11HttpSessionECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!344 = distinct !{!344, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded6SenderNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEEECs3Kwrwkha1e5_13pingora_proxy"}
!345 = distinct !{!345, !344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded6SenderNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!346 = distinct !{!346, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!347 = distinct !{!347, !346, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!348 = distinct !{!348, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!349 = distinct !{!349, !348, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!350 = distinct !{!350, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded6SenderNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy"}
!351 = distinct !{!351, !350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded6SenderNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!352 = distinct !{!352, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy"}
!353 = distinct !{!353, !352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!354 = distinct !{!354, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!355 = distinct !{!355, !354, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!356 = distinct !{!356, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!357 = distinct !{!357, !356, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!358 = distinct !{!358, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEEECs3Kwrwkha1e5_13pingora_proxy"}
!359 = distinct !{!359, !358, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!360 = distinct !{!360, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!361 = distinct !{!361, !360, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!362 = distinct !{!362, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!363 = distinct !{!363, !362, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!364 = distinct !{!364, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy"}
!365 = distinct !{!365, !364, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!366 = distinct !{!366, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2RxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy"}
!367 = distinct !{!367, !366, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2RxNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBG_7bounded9SemaphoreEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!368 = distinct !{!368, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy"}
!369 = distinct !{!369, !368, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtB1e_7bounded9SemaphoreEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!370 = distinct !{!370, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!371 = distinct !{!371, !370, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskNtNtBL_7bounded9SemaphoreEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!372 = distinct !{!372, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy"}
!373 = distinct !{!373, !372, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!374 = distinct !{!374, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy"}
!375 = distinct !{!375, !374, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!376 = distinct !{!376, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs3Kwrwkha1e5_13pingora_proxy"}
!377 = distinct !{!377, !376, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!378 = distinct !{!378, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy"}
!379 = distinct !{!379, !378, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!380 = distinct !{!380, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!381 = distinct !{!381, !380, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!382 = distinct !{!382, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy"}
!383 = distinct !{!383, !382, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!384 = distinct !{!384, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy"}
!385 = distinct !{!385, !384, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!386 = distinct !{!386, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!387 = distinct !{!387, !386, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!388 = distinct !{!388, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy"}
!389 = distinct !{!389, !388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!390 = distinct !{!390, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy"}
!391 = distinct !{!391, !390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!392 = distinct !{!392, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!393 = distinct !{!393, !392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!394 = distinct !{!394, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!395 = distinct !{!395, !394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!396 = distinct !{!396, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy"}
!397 = distinct !{!397, !396, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest4body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!398 = distinct !{!398, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy"}
!399 = distinct !{!399, !398, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!400 = distinct !{!400, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy"}
!401 = distinct !{!401, !400, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!402 = distinct !{!402, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEECs3Kwrwkha1e5_13pingora_proxy"}
!403 = distinct !{!403, !402, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!404 = distinct !{!404, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy"}
!405 = distinct !{!405, !404, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!406 = distinct !{!406, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!407 = distinct !{!407, !406, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!408 = distinct !{!408, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy"}
!409 = distinct !{!409, !408, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!410 = distinct !{!410, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy"}
!411 = distinct !{!411, !410, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!412 = distinct !{!412, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!413 = distinct !{!413, !412, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!414 = !{i64 0, i64 7}
!415 = !{!327, !325}
!416 = !{!329, !325}
!417 = !{!325}
!418 = !{!331, !325}
!419 = !{!333, !325}
!420 = !{!335}
!421 = !{!337}
!422 = !{!337, !335, !325}
!423 = !{!337, !335}
!424 = !{!339}
!425 = !{!341}
!426 = !{!341, !339, !325}
!427 = !{!341, !339}
!428 = !{!345, !343}
!429 = !{!347}
!430 = !{!349}
!431 = !{!349, !347, !353, !351, !345, !343}
!432 = !{!349, !347}
!433 = !{!355}
!434 = !{!357}
!435 = !{!357, !355, !353, !351, !345, !343}
!436 = !{!357, !355}
!437 = !{!359, !343}
!438 = !{!361}
!439 = !{!363}
!440 = !{!363, !361, !367, !365, !359, !343}
!441 = !{!363, !361}
!442 = !{!369}
!443 = !{!371}
!444 = !{!371, !369, !367, !365, !359, !343}
!445 = !{!371, !369}
!446 = !{!343}
!447 = !{!373, !343}
!448 = !{!375}
!449 = !{!375, !377, !373, !343}
!450 = !{!381, !379, !375}
!451 = !{!383}
!452 = !{!383, !377, !373, !343}
!453 = !{!387, !385, !383}
!454 = !{!389, !343}
!455 = !{!391, !343}
!456 = !{!393, !343}
!457 = !{!395, !343}
!458 = !{!399, !397, !343}
!459 = !{!401}
!460 = !{!401, !403, !399, !397, !343}
!461 = !{!407, !405, !401}
!462 = !{!409}
!463 = !{!409, !403, !399, !397, !343}
!464 = !{!413, !411, !409}
!465 = distinct !{!465, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy"}
!466 = distinct !{!466, !465, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!467 = distinct !{!467, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy"}
!468 = distinct !{!468, !467, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!469 = distinct !{!469, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEECs3Kwrwkha1e5_13pingora_proxy"}
!470 = distinct !{!470, !469, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot6SenderuEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!471 = distinct !{!471, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy"}
!472 = distinct !{!472, !471, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!473 = distinct !{!473, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!474 = distinct !{!474, !473, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!475 = distinct !{!475, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy"}
!476 = distinct !{!476, !475, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!477 = distinct !{!477, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy"}
!478 = distinct !{!478, !477, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy"}
!480 = distinct !{!480, !479, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!481 = !{!466}
!482 = !{!468}
!483 = !{!468, !470, !466}
!484 = !{!474, !472, !468}
!485 = !{!476}
!486 = !{!476, !470, !466}
!487 = !{!480, !478, !476}
!488 = distinct !{!488, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!489 = distinct !{!489, !488, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!490 = distinct !{!490, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!491 = distinct !{!491, !490, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!492 = distinct !{!492, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!493 = distinct !{!493, !492, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!494 = !{!489}
!495 = !{!491}
!496 = !{!493}
!497 = distinct !{!497, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!498 = distinct !{!498, !497, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!499 = distinct !{!499, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!500 = distinct !{!500, !499, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!501 = distinct !{null}
!502 = distinct !{!502, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!503 = distinct !{!503, !502, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!504 = distinct !{!504, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!505 = distinct !{!505, !504, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!506 = distinct !{!506, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy"}
!507 = distinct !{!507, !506, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!508 = distinct !{!508, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!509 = distinct !{!509, !508, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!510 = distinct !{!510, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!511 = distinct !{!511, !510, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!512 = distinct !{!512, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy"}
!513 = distinct !{!513, !512, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!514 = distinct !{!514, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!515 = distinct !{!515, !514, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!516 = distinct !{!516, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy"}
!517 = distinct !{!517, !516, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_buffer11FixedBufferEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!518 = !{!498}
!519 = !{!500}
!520 = !{!500, !498}
!521 = !{!503}
!522 = !{!505}
!523 = !{!505, !503}
!524 = !{!509, !507}
!525 = !{!511, !507}
!526 = !{!513, !507}
!527 = !{!515}
!528 = !{!517}
!529 = distinct !{!529, i1 true, !"_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBW_17SubrequestSpawner27spawn_background_subrequest0EBW_"}
!530 = distinct !{!530, !529, !"_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBW_17SubrequestSpawner27spawn_background_subrequest0EBW_: argument 1"}
!531 = distinct !{!531, !529, !"_RINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBW_17SubrequestSpawner27spawn_background_subrequest0EBW_: argument 0"}
!532 = distinct !{!532, i1 true, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_"}
!533 = distinct !{!533, !532, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7current12with_currentNCINvNtNtBZ_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB35_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtBX_4task4join10JoinHandleuEE0INtNtCskKLDkoKarTP_4core6option6OptionB4t_EEB35_: argument 0"}
!534 = distinct !{!534, i1 true, !"_RNCINvNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7current12with_currentNCINvNtNtBa_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1O_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtB8_4task4join10JoinHandleuEE0B1O_"}
!535 = distinct !{!535, !534, !"_RNCINvNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7current12with_currentNCINvNtNtBa_4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1O_17SubrequestSpawner27spawn_background_subrequest0E0INtNtNtB8_4task4join10JoinHandleuEE0B1O_: argument 0"}
!536 = distinct !{!536, i1 true, !"_RNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBY_17SubrequestSpawner27spawn_background_subrequest0E0BY_"}
!537 = distinct !{!537, !536, !"_RNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBY_17SubrequestSpawner27spawn_background_subrequest0E0BY_: argument 1"}
!538 = distinct !{!538, !536, !"_RNCINvNtNtCs2awuzAz5vY4_5tokio4task5spawn11spawn_innerNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtBY_17SubrequestSpawner27spawn_background_subrequest0E0BY_: argument 0"}
!539 = !{!531, !530}
!540 = !{!530}
!541 = !{!533, !531, !530}
!542 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!543 = !{!535, !533, !531, !530}
!544 = !{i64 0, i64 3}
!545 = !{!538, !537, !535, !533, !531, !530}
!546 = !{i64 1, i64 0}
!547 = !{!531}
end_hunk_1
