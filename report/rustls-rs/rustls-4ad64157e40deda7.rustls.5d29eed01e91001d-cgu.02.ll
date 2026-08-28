Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.02?download=true
inline.NumInlined: 614
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtCs7ZUl82OSlxp_6rustls6client2hsNtB2_16ClientHelloInput3new:bb.a

bb.cn:                                            ; preds = %bb.cl
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit61

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63: ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.sroa.0)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client6common18ClientHelloDetailsEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u)
          to label %bb.co unwind label %bb.ar

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit: ; preds = %bb.bi, %bb.bh, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.gh = load ptr, ptr %i.ab, align 8, !alias.scope !681, !nonnull !16, !noundef !16
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !681
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #35
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65 unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cw, %bb.ci, %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit61, %bb.ca
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit: ; preds = %.body, %bb.ao, %bb.cr
  %.pn44 = phi { ptr, i32 } [ %i.gl, %bb.cr ], [ %.pn42, %bb.ao ], [ %.pn42, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #33
          to label %common.resume unwind label %bb.cq

bb.cr:                                            ; preds = %bb.cp
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit, %bb.cp
  %i.gm = load i8, ptr %1, align 8, !range !173, !alias.scope !682, !noundef !16
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

bb.cs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.gp = load i64, ptr %i.go, align 8, !range !151, !alias.scope !685, !noundef !16
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %common.resume unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit, %bb.cu
  %common.resume.op = phi { ptr, i32 } [ %i.gr, %bb.cu ], [ %.pn44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i: ; preds = %bb.ct
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

.thread:                                          ; preds = %bb.cd, %bb.ca, %.thread77
  %.pn4070 = phi { ptr, i32 } [ %i.fe, %bb.ca ], [ %lpad.thr_comm, %.thread77 ], [ %i.fi, %bb.cd ] ; 2 uses
  %i.gt = load i64, ptr %i.aa, align 8, !range !154, !alias.scope !690, !noundef !16
  %i.gu = icmp eq i64 %i.gt, -2
  br i1 %i.gu, label %.body, label %bb.cw

bb.cw:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client2hs18ClientSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.aa)
          to label %.body unwind label %bb.cq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage24into_plain_message_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %3, %2
  %.not = icmp ugt i64 %3, %i.b
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !693

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !694, !noundef !16
  %i.j = sub nuw i64 %3, %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.g, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.o = load <2 x i16>, ptr %i.e, align 2
  store <2 x i16> %i.o, ptr %i.n, align 2
  store ptr %i.k, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.p, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 16385
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !695, !nonnull !16 ; 2 uses
  %.not.i32 = icmp eq i64 %i.b, 0
  br i1 %.not.i32, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.f = add nsw i64 %i.e, -1                     ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !noalias !698, !noundef !16 ; 2 uses
  switch i8 %i.h, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit [
    i8 0, label %bb.c
    i8 20, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11
    i8 21, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit
    i8 22, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27
    i8 23, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37
    i8 24, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread
  ]

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit: ; preds = %bb.c, %.lr.ph, %bb.b
  %i.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.f, %.lr.ph ]
  %.sroa.8.0.i = phi i8 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.8.0.i, 0
  br i1 %i.j, label %bb.e, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

bb.d:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit
  store i8 9, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 22, ptr %.sroa.45.0..sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread, %bb.e, %bb.d
  ret void

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread: ; preds = %.lr.ph, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit
  %.sroa.0.0.i22 = phi i8 [ 5, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ 2, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ 1, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ 3, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ 4, %.lr.ph ]
  %.sroa.8.0.i21 = phi i8 [ %.sroa.8.0.i, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ 0, %.lr.ph ]
  %i.k = phi i64 [ %i.i, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ %i.f, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0.0.i22, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.8.0.i21, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 5, ptr %.sroa.7.0..sroa_idx, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit, label %bb.b

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs7ZUl82OSlxp_6rustls5tls13NtB5_13VerifyMessage3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(34) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [162 x i8], align 1               ; 6 uses
  %i.b = tail call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(162) %i.a, i8 32, i64 162, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.c, i64 noundef 34, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
  %i.d = call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  %i.e = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %.not = icmp ugt i64 %i.e, 64
  br i1 %.not, label %bb.c, label %bb.b, !prof !693

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  %i.g = extractvalue { ptr, i64 } %i.b, 1
  %i.h = add i64 %i.g, 98
  %i.i = call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(162) %i.l, ptr noundef nonnull align 1 dereferenceable(162) %i.a, i64 162, i1 false)
  store i64 %i.h, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9wrap_copyCs7ZUl82OSlxp_6rustls(i64 %.0.val, ptr nofree captures(none) %.8.val, i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %0                           ; 2 uses
  %i.d = add i64 %i.c, %.0.val                    ; 2 uses
  %.not = icmp ult i64 %i.d, %.0.val
  %. = select i1 %.not, i64 %i.d, i64 %i.c
  %i.e = icmp ult i64 %., %2                      ; 2 uses
  %i.f = sub i64 %.0.val, %0                      ; 11 uses
  %i.g = sub i64 %.0.val, %1                      ; 11 uses
  %i.h = icmp ult i64 %i.f, %2
  %i.i = icmp ult i64 %i.g, %2                    ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.l = mul nuw nsw i64 %2, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.j, i64 %i.l, i1 false)
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = getelementptr [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = sub nuw i64 %2, %i.g
  %i.q = getelementptr [24 x i8], ptr %i.m, i64 %i.g
  %i.r = mul nuw nsw i64 %i.p, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.q, i64 %i.r, i1 false)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.t = getelementptr [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.u = getelementptr [24 x i8], ptr %i.t, i64 %i.g
  %i.v = mul nuw nsw i64 %i.s, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.u, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.x = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr %.8.val, i64 %1 ; 4 uses
  %i.aa = mul nuw nsw i64 %i.f, 24                ; 2 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.ab = sub nuw i64 %2, %i.f
  %i.ac = getelementptr [24 x i8], ptr %i.z, i64 %i.f
  %i.ad = mul nuw nsw i64 %i.ab, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr nonnull align 8 %.8.val, i64 %i.ad, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ae = sub i64 %i.g, %i.f                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.af = getelementptr [24 x i8], ptr %i.z, i64 %i.f
  %i.ag = mul nuw nsw i64 %i.ae, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr nonnull align 8 %.8.val, i64 %i.ag, i1 false)
  %i.ah = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %i.ae
  %i.aj = mul nuw nsw i64 %i.ah, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ak = sub nuw i64 %2, %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.al = getelementptr [24 x i8], ptr %.8.val, i64 %1 ; 2 uses
  %i.am = getelementptr [24 x i8], ptr %i.al, i64 %i.f
  %i.an = mul nuw nsw i64 %i.ak, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %.8.val, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
  %i.ap = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.aq = sub i64 %i.f, %i.g                      ; 3 uses
  %i.ar = sub nuw i64 %2, %i.f
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %i.aq
  %i.at = mul nuw nsw i64 %i.ar, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %.8.val, i64 %i.at, i1 false)
  %i.au = sub i64 %.0.val, %i.aq
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %i.au
  %i.aw = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.av, i64 %i.aw, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.az = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.ax, i64 %i.az, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE13push_back_mutCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !152, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e
  %i.k = select i1 %.not, i64 0, i64 %i.e
  %.sroa.03.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
end_hunk_0
