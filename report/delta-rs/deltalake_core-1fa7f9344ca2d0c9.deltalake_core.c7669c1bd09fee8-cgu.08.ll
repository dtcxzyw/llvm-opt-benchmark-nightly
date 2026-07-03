inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s0_0Bb_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_11DeltaWriter5close0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.c, ptr noundef nonnull align 16 %i.bv, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.al unwind label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.bw = load i64, ptr %i.c, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, -9223372036854775710
  br i1 %i.bx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.an:                                            ; preds = %bb.al
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.361, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.361.0..sroa_idx, i64 24, i1 false)
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.562.sroa.0.0.copyload = load i64, ptr %.sroa.562.0..sroa_idx, align 16
  %.sroa.562.sroa.2.0..sroa.562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.562.sroa.2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.562.sroa.2.0..sroa.562.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5close0EBU_(ptr noundef nonnull align 16 %i.bv)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ap:                                            ; preds = %bb.an
  %.not.i24 = icmp eq i64 %i.bw, -9223372036854775711
  br i1 %.not.i24, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.467, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.361, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ca = load i64, ptr %i.bz, align 16, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 801
  store i8 0, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.cc)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.as, %.body26
  %.pn21 = phi { ptr, i32 } [ %i.cd, %bb.as ], [ %.pn19, %.body26 ]
  store i8 2, ptr %i.g, align 16
  resume { ptr, i32 } %.pn21

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit, %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit, %bb.aq
  %.sroa.066.1 = phi i64 [ -9223372036854775711, %bb.aq ], [ %.sroa.066.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit ]
  %.sroa.768.1 = phi i64 [ %i.ca, %bb.aq ], [ %.sroa.768.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit ]
  store i64 %.sroa.066.1, ptr %0, align 16
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.467.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.467, i64 24, i1 false)
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.768.1, ptr %.sroa.768.0..sroa_idx, align 16
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969, i64 56, i1 false)
  br label %common.ret

bb.au:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.562.sroa.2, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.467, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.361, i64 24, i1 false)
  br label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit: ; preds = %bb.ba, %bb.ah
  store i8 0, ptr %i.bo, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.ce)
          to label %bb.at unwind label %bb.as

bb.av:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26721)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26727)
  %i.ch = load ptr, ptr %i.cg, align 16, !alias.scope !26730, !nonnull !4, !noundef !4
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !26730
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i25

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cg) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i25 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer12WriterConfigEBO_(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.cf) #40
          to label %bb.ay unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i25: ; preds = %bb.aw, %bb.av
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer12WriterConfigEBO_(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.cf)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.pn.i = phi { ptr, i32 } [ %i.cm, %bb.az ], [ %i.ck, %bb.ax ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1D_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cl)
          to label %.body26 unwind label %bb.bb

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i25
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i25
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1D_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_.exit unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.bd:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer11DeltaWriterEBO_(ptr noalias noundef align 8 dereferenceable(400) %i.cq) #40
          to label %.body26 unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [128 x i8], align 8               ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 16               ; 23 uses
  %.sroa.3439 = alloca [32 x i8], align 8         ; 2 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.2416 = alloca [40 x i8], align 8         ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.7410 = alloca [16 x i8], align 8         ; 2 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.3384 = alloca [32 x i8], align 8         ; 2 uses
  %i.w = alloca [40 x i8], align 8                ; 7 uses
  %i.x = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.10359 = alloca [80 x i8], align 16       ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.2339 = alloca [40 x i8], align 8         ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.7333 = alloca [16 x i8], align 8         ; 2 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.8308 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.5316 = alloca [288 x i8], align 16       ; 4 uses
  %i.ab = alloca [112 x i8], align 16             ; 5 uses
  %i.ac = alloca [112 x i8], align 16             ; 6 uses
  %i.ad = alloca [112 x i8], align 16             ; 6 uses
  %i.ae = alloca [112 x i8], align 16             ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [112 x i8], align 16             ; 6 uses
  %i.ah = alloca [112 x i8], align 16             ; 6 uses
  %i.ai = alloca [336 x i8], align 16             ; 6 uses
  %i.aj = alloca [336 x i8], align 16             ; 8 uses
  %i.ak = alloca [112 x i8], align 16             ; 5 uses
  %i.al = alloca [112 x i8], align 16             ; 6 uses
  %i.am = alloca [112 x i8], align 16             ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [112 x i8], align 16             ; 6 uses
  %i.ap = alloca [112 x i8], align 16             ; 6 uses
  %i.aq = alloca [336 x i8], align 16             ; 6 uses
  %i.ar = alloca [336 x i8], align 16             ; 8 uses
  %.sroa.8297 = alloca [40 x i8], align 8         ; 7 uses
  %i.as = alloca [336 x i8], align 16             ; 24 uses
  %.sroa.8279.sroa.9 = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.8279.sroa.11 = alloca [64 x i8], align 16 ; 2 uses
  %.sroa.8294 = alloca [224 x i8], align 16       ; 4 uses
  %i.at = alloca [336 x i8], align 16             ; 9 uses
  %.sroa.10286 = alloca [24 x i8], align 8        ; 8 uses
  %.sroa.11 = alloca [288 x i8], align 16         ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 20 uses
  %i.ay = alloca [48 x i8], align 8               ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !16951, !noundef !4
  switch i8 %i.ba, label %default.unreachable591 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.aw
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.h
  ]

default.unreachable591:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 873
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bb, i8 0, i64 5, i1 false)
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.eb

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.el

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.fe

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.gc

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.z

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4send0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.bd) #40
          to label %.body unwind label %bb.ft

bb.l:                                             ; preds = %bb.h, %bb.am
  %.sroa.3.7 = phi i64 [ %.sroa.3.6, %bb.am ], [ undef, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  invoke fastcc void @_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.t, ptr noundef nonnull align 8 %i.bd, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.t, align 8, !range !1700, !noundef !4 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -9223372036854775807
  br i1 %i.bf, label %bb.n, label %bb.o

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit226, %bb.ge, %bb.fg, %bb.en, %bb.ed, %bb.ay, %bb.ab, %bb.n
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit226 ], [ 7, %bb.ge ], [ 6, %bb.fg ], [ 5, %bb.en ], [ 4, %bb.ed ], [ 3, %bb.ay ], [ 8, %bb.ab ], [ 9, %bb.n ]
  store i8 %.sink, ptr %i.az, align 8
  ret void

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.o:                                             ; preds = %bb.m
  %.sroa.3439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3439, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3439.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4send0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.bd)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s0_0Bd_.exit.i, %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !26731
  store i64 %i.be, ptr %i.r, align 8, !noalias !26735
  %.sroa.3439.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3439.0..sroa_idx440, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3439, i64 32, i1 false), !noalias !26735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !26736
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %bb.s, !noalias !26736

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body unwind label %bb.w, !noalias !26740

bb.t:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %i.q, align 8, !range !3, !noalias !26736, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !201, !noalias !26736, !noundef !4 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.u, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s0_0Bd_.exit.i, !prof !1176

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !26736
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bn) #39
          to label %bb.v unwind label %bb.s, !noalias !26736

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26740
  unreachable

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s0_0Bd_.exit.i: ; preds = %bb.t
  %i.bp = load ptr, ptr %i.bm, align 8, !noalias !26736, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.bl, 29
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !26736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bp, ptr noundef nonnull align 1 dereferenceable(30) @101, i64 30, i1 false), !noalias !26736
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.ii unwind label %bb.p

bb.x:                                             ; preds = %bb.q, %bb.gj
  %.sroa.3.8 = phi i64 [ %.sroa.3.5, %bb.gj ], [ %.sroa.3.7, %bb.q ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.br, ptr %i.bs, align 16
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.body

bb.z:                                             ; preds = %bb.g, %bb.x
  %.sroa.3.6 = phi i64 [ %.sroa.3.8, %bb.x ], [ undef, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8try_nextINtB5_7TryNextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1o_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1o_6marker4SendEL_EEENtNtNtB1o_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i64, ptr %i.u, align 8, !range !48, !noundef !4 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2
  br i1 %i.bw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.ac:                                            ; preds = %bb.aa
  %.sroa.2416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2416, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2416.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.by = trunc nuw i64 %i.bv to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2416, i64 40, i1 false)
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a
  br i1 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %.val126, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val125) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef range(i64 1, 0) %i.da, i64 noundef range(i64 1, 536870913) %i.dd) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151

bb.aq:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val126, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.body149, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.di = getelementptr inbounds nuw i8, ptr %.val126, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef range(i64 1, 0) %i.dg, i64 noundef range(i64 1, 536870913) %i.dj) #33
  br label %.body149

.body149:                                         ; preds = %bb.ea, %bb.ef, %bb.go, %bb.gp, %bb.ar, %bb.aq, %.body145
  %.pn93.pn = phi { ptr, i32 } [ %i.lm, %bb.gp ], [ %.pn91, %.body145 ], [ %i.de, %bb.aq ], [ %i.de, %bb.ar ], [ %i.lm, %bb.go ], [ %i.hz, %bb.ef ], [ %i.hv, %bb.ea ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 874
  %i.dl = load i8, ptr %i.dk, align 2, !range !34, !noundef !4
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ji, label %.body234

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151: ; preds = %bb.ap, %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store <4 x i8> zeroinitializer, ptr %i.dn, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.do)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.bg, %bb.av, %bb.at
  %.pn108 = phi { ptr, i32 } [ %i.eo, %bb.bg ], [ %i.dr, %bb.at ], [ %.pn105.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.du, %bb.av ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val123 = load ptr, ptr %i.dp, align 16
  %i.dq = getelementptr i8, ptr %1, i64 56
  %.val124 = load ptr, ptr %i.dq, align 8, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val123, ptr nonnull %.val124) #40
          to label %bb.jn unwind label %bb.ft

bb.at:                                            ; preds = %bb.he, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ %.sroa.3.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit151 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.ds, ptr %i.dt, align 16
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aw:                                            ; preds = %bb.au, %bb.a
  %.sroa.3.1 = phi i64 [ %.sroa.3.0, %bb.au ], [ undef, %bb.a ]
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.ay, align 8, !range !1535, !noundef !4
  %i.dx = icmp eq i64 %i.dw, 3
  br i1 %i.dx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.az:                                            ; preds = %bb.ax
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dy, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false)
  %i.dz = load i64, ptr %i.dy, align 16, !range !48, !noundef !4
  switch i64 %i.dz, label %bb.bh [
    i64 2, label %bb.ba
    i64 0, label %bb.bi
  ]

bb.ba:                                            ; preds = %bb.az
  store i64 -9223372036854775711, ptr %i.s, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val121 = load ptr, ptr %i.ea, align 16        ; 5 uses
  %i.eb = getelementptr i8, ptr %1, i64 56
  %.val122 = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.ec = load ptr, ptr %.val122, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i153, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121) ]
  invoke void %i.ec(ptr noundef nonnull %.val121)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ed = getelementptr inbounds nuw i8, ptr %.val122, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit157, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eg = getelementptr inbounds nuw i8, ptr %.val122, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit157

bb.be:                                            ; preds = %bb.bb
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = getelementptr inbounds nuw i8, ptr %.val122, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.body155, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.em = getelementptr inbounds nuw i8, ptr %.val122, i64 16
  %i.en = load i64, ptr %i.em, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121, i64 noundef range(i64 1, 0) %i.ek, i64 noundef range(i64 1, 536870913) %i.en) #33
  br label %.body155

bb.bg:                                            ; preds = %bb.bh
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.bh:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.ep, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.hh unwind label %bb.bg

bb.bi:                                            ; preds = %bb.az
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %i.er, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.es = getelementptr i8, ptr %1, i64 856       ; 2 uses
  %.val133 = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.et = atomicrmw add ptr %.val133, i64 1 monotonic, align 8
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.bj, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit: ; preds = %bb.bi
  store ptr %.val133, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.ev = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 24, i64 noundef range(i64 1, 129) 8) #33 ; 6 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.bk, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit, !prof !216

bb.bk:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc160 unwind label %bb.bl

.noexc160:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.ey = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 40, i64 noundef range(i64 1, 129) 8) #33 ; 6 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.bm, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit, !prof !216

bb.bm:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc161 unwind label %bb.bn

.noexc161:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !26746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26749
  %i.fb = load ptr, ptr %i.es, align 8, !alias.scope !26746, !noalias !26751, !nonnull !4, !noundef !4 ; 4 uses
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8, !noalias !26749
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  store ptr %i.fb, ptr %i.n, align 8, !noalias !26749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !26749
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eq)
          to label %bb.bu unwind label %bb.bq, !noalias !26751

bb.bp:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !26752
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.br, label %.body163

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #42
          to label %.body163 unwind label %bb.bs, !noalias !26751

bb.bs:                                            ; preds = %bb.br
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26751
  unreachable

.body163:                                         ; preds = %bb.bq, %bb.br
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef 40, i64 noundef 8) #33
  %.pre.pre = load ptr, ptr %i.av, align 8, !alias.scope !26757
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bn, %.body163
  %.pre = phi ptr [ %.val133, %bb.bn ], [ %.pre.pre, %.body163 ]
  %.pn15 = phi { ptr, i32 } [ %i.fa, %bb.bn ], [ %i.fe, %.body163 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 24, i64 noundef 8) #33
  br label %bb.hf

bb.bu:                                            ; preds = %bb.bo
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.fj = load i64, ptr %i.fi, align 16, !alias.scope !26746, !noalias !26751, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26749
  %.sroa.5273.0..sroa.0271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.fb, ptr %.sroa.5273.0..sroa.0271.0..sroa_idx, align 8
  %.sroa.6274.0..sroa.0271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store i64 %i.fj, ptr %.sroa.6274.0..sroa.0271.0..sroa_idx, align 8
  store i64 1, ptr %i.ev, align 8
  %.sroa.5.0..sroa.0268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ey, ptr %.sroa.5.0..sroa.0268.0..sroa_idx, align 8
  %.sroa.6270.0..sroa.0268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 1, ptr %.sroa.6270.0..sroa.0268.0..sroa_idx, align 8
  store i64 1, ptr %i.au, align 8, !alias.scope !26762, !noalias !26765
  %i.fk = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ev, ptr %i.fk, align 8, !alias.scope !26762, !noalias !26765
  %i.fl = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 1, ptr %i.fl, align 8, !alias.scope !26762, !noalias !26765
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.aw, ptr noundef nonnull %.val133, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !26767)
  %i.fn = load i64, ptr %i.aw, align 8, !range !201, !alias.scope !26770, !noalias !26767, !noundef !4 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, -9223372036854775808
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.fp, i64 40, i1 false), !alias.scope !26772
  br i1 %i.fo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
          to label %bb.hd unwind label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %.sroa.10.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx267, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.sroa.2276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 1, ptr %i.k, align 8, !noalias !26773
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.fq, align 8, !noalias !26773
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.fn, ptr %i.fr, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !26776
  %i.fs = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 128, i64 noundef range(i64 1, 129) 8) #33, !noalias !26776 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.bz, label %bb.cd, !prof !216

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #39
          to label %.noexc.i unwind label %bb.ca, !noalias !26773

.noexc.i:                                         ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.fr)
          to label %.body167 unwind label %bb.cb, !noalias !26773

bb.cb:                                            ; preds = %bb.ca
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26773
  unreachable

bb.cc:                                            ; preds = %bb.bx
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body167

bb.cd:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.fs, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false), !noalias !26773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26773
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 877
  store ptr %i.fs, ptr %i.ax, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @127, ptr %i.fy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10286)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 0, ptr %i.fx, align 1
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext10read_table(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @127)
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !26779)
  call void @llvm.experimental.noalias.scope.decl(metadata !26782)
  %i.ga = load i64, ptr %i.at, align 16, !range !18805, !alias.scope !26782, !noalias !26779, !noundef !4 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 36
  %i.gc = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  br i1 %i.gb, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.gc, i64 40, i1 false), !noalias !26779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26785
  store ptr %i.j, ptr %i.h, align 8, !noalias !26785
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !26785
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @100, ptr noundef nonnull %i.h)
          to label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_00Bd_.exit.i unwind label %bb.ch, !noalias !26789

bb.ch:                                            ; preds = %bb.cg
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #40
          to label %.body170 unwind label %bb.ci, !noalias !26789

bb.ci:                                            ; preds = %bb.ch
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26789
  unreachable

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_00Bd_.exit.i: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10286, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !26782
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.hc unwind label %bb.cj

.body170:                                         ; preds = %bb.cj, %bb.ch, %bb.ce
  %.pn23 = phi { ptr, i32 } [ %i.fz, %bb.ce ], [ %i.gf, %bb.cj ], [ %i.gd, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10286)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.body245

bb.cj:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_00Bd_.exit.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.ck:                                            ; preds = %bb.cf
  %.sroa.10286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10286, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10286.0..sroa_idx, i64 24, i1 false), !alias.scope !26784
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.11, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.11.0..sroa_idx, i64 288, i1 false), !alias.scope !26784
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 876 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gi = load <2 x i64>, ptr %i.gc, align 8, !alias.scope !26784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8279.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10286, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8279.sroa.11, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.11, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8294)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8294, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.11.112..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10286)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i8 1, ptr %i.gg, align 4
  store i64 %i.ga, ptr %i.gh, align 16
  store <2 x i64> %i.gi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8279.sroa.9, i64 24, i1 false)
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7293.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8279.sroa.11, i64 64, i1 false)
  %.sroa.8294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8294.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8294, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke fastcc void @_RNvXs2_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(336) %i.aq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.gh)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn3colReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 12)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i248: ; preds = %.noexc.i.i250, %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !26936)
  call void @llvm.experimental.noalias.scope.decl(metadata !26939)
  %i.ql = load ptr, ptr %i.qa, align 16, !alias.scope !26942, !nonnull !4, !noundef !4
  %i.qm = atomicrmw sub ptr %i.ql, i64 1 release, align 8, !noalias !26942
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %bb.jb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit254

bb.jb:                                            ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i248
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtBL_7bounded9SemaphoreEE9drop_slowCs2xb0BKvnu80_21datafusion_datasource(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qa) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit254 unwind label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body252:                                         ; preds = %bb.jd, %bb.ja, %bb.iz, %bb.iv
  %.pn112 = phi { ptr, i32 } [ %.pn110, %bb.iv ], [ %i.qq, %bb.jd ], [ %i.qh, %bb.ja ], [ %i.qh, %bb.iz ]
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 824
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.qp) #40
          to label %.body224 unwind label %bb.ft

bb.jd:                                            ; preds = %bb.jb
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body252

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit254: ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i248, %bb.jb
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26943)
  call void @llvm.experimental.noalias.scope.decl(metadata !26946)
  call void @llvm.experimental.noalias.scope.decl(metadata !26949)
  %i.qs = load ptr, ptr %i.qr, align 8, !alias.scope !26952, !nonnull !4, !noundef !4 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 496
  %i.qu = atomicrmw sub ptr %i.qt, i64 1 acq_rel, align 8, !noalias !26952
  %i.qv = icmp eq i64 %i.qu, 1
  br i1 %i.qv, label %bb.je, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i255

bb.je:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit254
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5closeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.qw)
          to label %.noexc.i.i257 unwind label %bb.jf, !noalias !26953

.noexc.i.i257:                                    ; preds = %bb.je
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.qx)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i255 unwind label %bb.jf, !noalias !26953

bb.jf:                                            ; preds = %.noexc.i.i257, %bb.je
  %i.qy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26954)
  call void @llvm.experimental.noalias.scope.decl(metadata !26957)
  %i.qz = load ptr, ptr %i.qr, align 8, !alias.scope !26960, !nonnull !4, !noundef !4
  %i.ra = atomicrmw sub ptr %i.qz, i64 1 release, align 8, !noalias !26960
  %i.rb = icmp eq i64 %i.ra, 1
  br i1 %i.rb, label %bb.jg, label %.body224

bb.jg:                                            ; preds = %bb.jf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtBL_7bounded9SemaphoreEE9drop_slowCs2xb0BKvnu80_21datafusion_datasource(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qr) #42
          to label %.body224 unwind label %bb.jh

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i255: ; preds = %.noexc.i.i257, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit254
  call void @llvm.experimental.noalias.scope.decl(metadata !26961)
  call void @llvm.experimental.noalias.scope.decl(metadata !26964)
  %i.rc = load ptr, ptr %i.qr, align 8, !alias.scope !26967, !nonnull !4, !noundef !4
  %i.rd = atomicrmw sub ptr %i.rc, i64 1 release, align 8, !noalias !26967
  %i.re = icmp eq i64 %i.rd, 1
  br i1 %i.re, label %.invoke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit226

.invoke:                                          ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i255, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i220
  %i.rf = phi ptr [ %i.og, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i220 ], [ %i.qr, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB7_7bounded9SemaphoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit.i.i255 ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtBL_7bounded9SemaphoreEE9drop_slowCs2xb0BKvnu80_21datafusion_datasource(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rf) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit226 unwind label %bb.ib

bb.jh:                                            ; preds = %bb.jg
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ji:                                            ; preds = %.body149
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.rh) #40
          to label %.body234 unwind label %bb.ft

bb.jj:                                            ; preds = %.body234
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.as) #40
          to label %.body239 unwind label %bb.ft

bb.jk:                                            ; preds = %.body239
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.ri) #40
          to label %.body245 unwind label %bb.ft

bb.jl:                                            ; preds = %.body245
  call void @llvm.experimental.noalias.scope.decl(metadata !26968)
  call void @llvm.experimental.noalias.scope.decl(metadata !26971)
  %i.rj = load ptr, ptr %i.ax, align 8, !alias.scope !26974, !nonnull !4, !noundef !4
  %i.rk = atomicrmw sub ptr %i.rj, i64 1 release, align 8, !noalias !26974
  %i.rl = icmp eq i64 %i.rk, 1
  br i1 %i.rl, label %bb.jm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ft

bb.jn:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %1) #40
          to label %bb.jo unwind label %bb.ft

bb.jo:                                            ; preds = %bb.jn
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 816
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.rm) #40
          to label %bb.jp unwind label %bb.ft

bb.jp:                                            ; preds = %bb.jo
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 824
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.rn) #40
          to label %.body224 unwind label %bb.ft
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [336 x i8], align 8               ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [336 x i8], align 8               ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 16               ; 27 uses
  %.sroa.04 = alloca [48 x i8], align 8           ; 5 uses
  %.sroa.3465 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.5466 = alloca [64 x i8], align 16        ; 2 uses
  %i.t = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.3447 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.5448 = alloca [64 x i8], align 16        ; 2 uses
  %i.u = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.3428 = alloca [88 x i8], align 8         ; 2 uses
  %i.v = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.2410 = alloca [40 x i8], align 8         ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.7404 = alloca [16 x i8], align 8         ; 2 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.3379 = alloca [88 x i8], align 8         ; 2 uses
  %i.y = alloca [96 x i8], align 16               ; 7 uses
  %i.z = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.10358 = alloca [80 x i8], align 16       ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.2338 = alloca [40 x i8], align 8         ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.7332 = alloca [16 x i8], align 8         ; 2 uses
  %i.ac = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.8307 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.5315 = alloca [288 x i8], align 16       ; 4 uses
  %i.ad = alloca [112 x i8], align 16             ; 5 uses
  %i.ae = alloca [112 x i8], align 16             ; 6 uses
  %i.af = alloca [112 x i8], align 16             ; 6 uses
  %i.ag = alloca [112 x i8], align 16             ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [112 x i8], align 16             ; 6 uses
  %i.aj = alloca [112 x i8], align 16             ; 6 uses
  %i.ak = alloca [336 x i8], align 16             ; 6 uses
  %i.al = alloca [336 x i8], align 16             ; 8 uses
  %i.am = alloca [112 x i8], align 16             ; 5 uses
  %i.an = alloca [112 x i8], align 16             ; 6 uses
  %i.ao = alloca [112 x i8], align 16             ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [112 x i8], align 16             ; 6 uses
  %i.ar = alloca [112 x i8], align 16             ; 6 uses
  %i.as = alloca [336 x i8], align 16             ; 6 uses
  %i.at = alloca [336 x i8], align 16             ; 8 uses
  %.sroa.8296 = alloca [40 x i8], align 8         ; 7 uses
  %i.au = alloca [336 x i8], align 16             ; 24 uses
  %.sroa.8278.sroa.9 = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.8278.sroa.11 = alloca [64 x i8], align 16 ; 2 uses
  %.sroa.8293 = alloca [224 x i8], align 16       ; 4 uses
  %i.av = alloca [336 x i8], align 16             ; 9 uses
  %.sroa.10285 = alloca [24 x i8], align 8        ; 8 uses
  %.sroa.11 = alloca [288 x i8], align 16         ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [8 x i8], align 8                ; 6 uses
  %i.ay = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 20 uses
  %i.ba = alloca [48 x i8], align 8               ; 5 uses
  %i.bb = alloca [336 x i8], align 8              ; 5 uses
  %i.bc = alloca [336 x i8], align 8              ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2368 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 16, !range !17055, !noundef !4
  switch i8 %i.be, label %default.unreachable585 [
    i8 0, label %bb.b
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.bj
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.ii
    i8 11, label %bb.is
  ]

default.unreachable585:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2372
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2369
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2376 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2375 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bg, i8 0, i64 6, i1 false)
  store i8 1, ptr %i.bi, align 1
  store i8 1, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bk = load ptr, ptr %i.bj, align 16, !nonnull !4, !noundef !4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.bc, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !26980
  store ptr %i.bk, ptr %i.r, align 8, !noalias !26980
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !noalias !26980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !26980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.q, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  %i.bo = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @346)
          to label %bb.m unwind label %bb.c, !noalias !26982 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer12WriterConfigEBO_(ptr noalias noundef align 8 dereferenceable(336) %i.q) #40
          to label %bb.e unwind label %bb.d, !noalias !26982

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26982
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.br = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !26983
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #42
          to label %.body unwind label %bb.d, !noalias !26982

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.ei

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.es

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.fn

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.gc

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.al

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.y

.body:                                            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %.body258

bb.m:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 2373
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.bv = extractvalue { i64, i64 } %i.bo, 0
  %i.bw = extractvalue { i64, i64 } %i.bo, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store ptr %i.bk, ptr %i.bx, align 16, !alias.scope !26975, !noalias !26988
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr %i.bm, ptr %i.by, align 8, !alias.scope !26975, !noalias !26988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(336) %i.bc, i64 336, i1 false), !alias.scope !26982, !noalias !26989
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) @348, i64 32, i1 false), !noalias !26988
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1104
  store i64 %i.bv, ptr %.sroa.42.0..sroa_idx.i, align 16, !alias.scope !26975, !noalias !26988
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store i64 %i.bw, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !26975, !noalias !26988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !26980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26980
  store i8 1, ptr %i.bt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i8 0, ptr %i.bh, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.cb = load ptr, ptr %i.ca, align 16, !nonnull !4, !noundef !4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 0, ptr %i.bi, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.bb, ptr noundef nonnull align 16 dereferenceable(336) %i.ce, i64 336, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !26995
  store ptr %i.cb, ptr %i.p, align 8, !noalias !26995
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !noalias !26995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !26995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 16 dereferenceable(336) %i.ce, i64 336, i1 false)
  %i.cg = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @346)
          to label %bb.r unwind label %bb.n, !noalias !26997 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer12WriterConfigEBO_(ptr noalias noundef align 8 dereferenceable(336) %i.o) #40
          to label %bb.p unwind label %bb.o, !noalias !26997

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26997
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cj = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !26998
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.q, label %.body158

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #42
          to label %.body158 unwind label %bb.o, !noalias !26997

.body158:                                         ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %.body247

bb.r:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.cm = extractvalue { i64, i64 } %i.cg, 0
  %i.cn = extractvalue { i64, i64 } %i.cg, 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1456
  store ptr %i.cb, ptr %i.co, align 16, !alias.scope !26990, !noalias !27003
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.cd, ptr %i.cp, align 8, !alias.scope !26990, !noalias !27003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(336) %i.bb, i64 336, i1 false), !alias.scope !26997, !noalias !27004
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) @348, i64 32, i1 false), !noalias !27003
  %.sroa.42.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store i64 %i.cm, ptr %.sroa.42.0..sroa_idx.i156, align 16, !alias.scope !26990, !noalias !27003
  %.sroa.53.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i64 %i.cn, ptr %.sroa.53.0..sroa_idx.i157, align 8, !alias.scope !26990, !noalias !27003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !26995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26995
  store i8 1, ptr %i.bf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1520
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cr)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %.body243, %bb.t
  %.pn116 = phi { ptr, i32 } [ %i.cv, %bb.t ], [ %.pn114, %.body243 ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0Bb_:bb.a
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ar
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 2512
  %i.fd = extractvalue { i64, i32 } %i.el, 0
  %i.fe = extractvalue { i64, i32 } %i.el, 1
  store i64 %i.fd, ptr %i.fc, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store i32 %i.fe, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %.sroa.8422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2880
  store ptr %i.fg, ptr %.sroa.8422.0..sroa_idx, align 16
  %.sroa.9423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2888
  store ptr %i.ek, ptr %.sroa.9423.0..sroa_idx, align 8
  %.sroa.11425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4832
  store i8 0, ptr %.sroa.11425.0..sroa_idx, align 16
  br label %bb.y

.body161:                                         ; preds = %bb.gb, %bb.gg, %bb.hn, %bb.ho, %bb.ax, %bb.aw, %bb.ah, %bb.er, %bb.ew, %bb.fj
  %.pn97 = phi { ptr, i32 } [ %i.km, %bb.ew ], [ %.pn94.pn, %bb.fj ], [ %i.eu, %bb.ax ], [ %i.pi, %bb.ho ], [ %.pn74, %bb.ah ], [ %i.kf, %bb.er ], [ %i.pi, %bb.hn ], [ %i.eu, %bb.aw ], [ %i.na, %bb.gg ], [ %i.mw, %bb.gb ]
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %.val135 = load ptr, ptr %i.fh, align 16
  %i.fi = getelementptr i8, ptr %1, i64 2296
  %.val136 = load ptr, ptr %i.fi, align 8, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val135, ptr nonnull %.val136) #40
          to label %.body165 unwind label %bb.fy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.av, %bb.au
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %.val133 = load ptr, ptr %i.fj, align 16        ; 5 uses
  %i.fk = getelementptr i8, ptr %1, i64 2296
  %.val134 = load ptr, ptr %i.fk, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.fl = load ptr, ptr %.val134, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i163, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val133) ]
  invoke void %i.fl(ptr noundef nonnull %.val133)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.val134, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fp = getelementptr inbounds nuw i8, ptr %.val134, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val133) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val133, i64 noundef range(i64 1, 0) %i.fn, i64 noundef range(i64 1, 536870913) %i.fq) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167

bb.be:                                            ; preds = %bb.bb
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val134, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.body165, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = getelementptr inbounds nuw i8, ptr %.val134, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val133, i64 noundef range(i64 1, 0) %i.ft, i64 noundef range(i64 1, 536870913) %i.fw) #33
  br label %.body165

.body165:                                         ; preds = %bb.eh, %bb.em, %bb.go, %bb.gp, %bb.bf, %bb.be, %.body161
  %.pn99.pn = phi { ptr, i32 } [ %i.nl, %bb.gp ], [ %.pn97, %.body161 ], [ %i.fr, %bb.be ], [ %i.fr, %bb.bf ], [ %i.nl, %bb.go ], [ %i.ka, %bb.em ], [ %i.jw, %bb.eh ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 2369
  %i.fy = load i8, ptr %i.fx, align 1, !range !34, !noundef !4
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ic, label %.body219

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167: ; preds = %bb.bd, %bb.bc
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 0, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 2370
  store i8 0, ptr %i.gb, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 2371
  store i8 0, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 2374
  store i8 0, ptr %i.gd, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 2328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ge)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.he, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body243

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167, %bb.u
  %.sroa.3.0 = phi i64 [ undef, %bb.u ], [ %.sroa.3.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit167 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2384
  store ptr %i.gg, ptr %i.gh, align 16
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bj
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body243

bb.bj:                                            ; preds = %bb.bh, %bb.a
  %.sroa.3.1 = phi i64 [ %.sroa.3.0, %bb.bh ], [ undef, %bb.a ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2384 ; 3 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  %i.gk = load i64, ptr %i.ba, align 8, !range !1535, !noundef !4
  %i.gl = icmp eq i64 %i.gk, 3
  br i1 %i.gl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.bm:                                            ; preds = %bb.bk
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gm, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false)
  %i.gn = load i64, ptr %i.gm, align 16, !range !48, !noundef !4
  switch i64 %i.gn, label %bb.bo [
    i64 2, label %bb.hi
    i64 0, label %bb.bp
  ]

bb.bn:                                            ; preds = %bb.bo
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body243

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.gp, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.hh unwind label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gq, ptr noundef nonnull align 8 dereferenceable(40) %i.gr, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.gs = getelementptr i8, ptr %1, i64 2352      ; 2 uses
  %.val141 = load ptr, ptr %i.gs, align 16, !nonnull !4, !noundef !4 ; 5 uses
  %i.gt = atomicrmw add ptr %.val141, i64 1 monotonic, align 8
  %i.gu = icmp slt i64 %i.gt, 0
  br i1 %i.gu, label %bb.bq, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit: ; preds = %bb.bp
  store ptr %.val141, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.gv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 24, i64 noundef range(i64 1, 129) 8) #33 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.br, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit, !prof !216

bb.br:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc unwind label %bb.bs

.noexc:                                           ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.gy = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 40, i64 noundef range(i64 1, 129) 8) #33 ; 6 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.bt, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit, !prof !216

bb.bt:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc170 unwind label %bb.bu

.noexc170:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxAINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !27010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27013
  %i.hb = load ptr, ptr %i.gs, align 16, !alias.scope !27010, !noalias !27015, !nonnull !4, !noundef !4 ; 4 uses
  %i.hc = atomicrmw add ptr %i.hb, i64 1 monotonic, align 8, !noalias !27013
  %i.hd = icmp slt i64 %i.hc, 0
  br i1 %i.hd, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  store ptr %i.hb, ptr %i.l, align 8, !noalias !27013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !27013
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.cb unwind label %bb.bx, !noalias !27015

bb.bw:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = atomicrmw sub ptr %i.hb, i64 1 release, align 8, !noalias !27016
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.by, label %.body172

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #42
          to label %.body172 unwind label %bb.bz, !noalias !27015

bb.bz:                                            ; preds = %bb.by
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27015
  unreachable

.body172:                                         ; preds = %bb.bx, %bb.by
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef 40, i64 noundef 8) #33
  %.pre.pre = load ptr, ptr %i.ax, align 8, !alias.scope !27021
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bu, %.body172
  %.pre = phi ptr [ %.val141, %bb.bu ], [ %.pre.pre, %.body172 ]
  %.pn22 = phi { ptr, i32 } [ %i.ha, %bb.bu ], [ %i.he, %.body172 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef 24, i64 noundef 8) #33
  br label %bb.hf

bb.cb:                                            ; preds = %bb.bv
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 2360
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !27010, !noalias !27015, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !27013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27013
  %.sroa.5272.0..sroa.0270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store ptr %i.hb, ptr %.sroa.5272.0..sroa.0270.0..sroa_idx, align 8
  %.sroa.6273.0..sroa.0270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  store i64 %i.hj, ptr %.sroa.6273.0..sroa.0270.0..sroa_idx, align 8
  store i64 1, ptr %i.gv, align 8
  %.sroa.5.0..sroa.0267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gy, ptr %.sroa.5.0..sroa.0267.0..sroa_idx, align 8
  %.sroa.6269.0..sroa.0267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 1, ptr %.sroa.6269.0..sroa.0267.0..sroa_idx, align 8
  store i64 1, ptr %i.aw, align 8, !alias.scope !27026, !noalias !27029
  %i.hk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.gv, ptr %i.hk, align 8, !alias.scope !27026, !noalias !27029
  %i.hl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 1, ptr %i.hl, align 8, !alias.scope !27026, !noalias !27029
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ay, ptr noundef nonnull %.val141, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.experimental.noalias.scope.decl(metadata !27031)
  %i.hn = load i64, ptr %i.ay, align 8, !range !201, !alias.scope !27034, !noalias !27031, !noundef !4 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, -9223372036854775808
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.hp, i64 40, i1 false), !alias.scope !27036
  br i1 %i.ho, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.hd unwind label %bb.cj

bb.cf:                                            ; preds = %bb.cd
  %.sroa.10.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx266, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.sroa.2275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2275.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 1, ptr %i.i, align 8, !noalias !27037
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.hq, align 8, !noalias !27037
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %i.hn, ptr %i.hr, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !27040
  %i.hs = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 128, i64 noundef range(i64 1, 129) 8) #33, !noalias !27040 ; 4 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.cg, label %bb.ck, !prof !216

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #39
          to label %.noexc.i unwind label %bb.ch, !noalias !27037

.noexc.i:                                         ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.hr)
          to label %.body176 unwind label %bb.ci, !noalias !27037

bb.ci:                                            ; preds = %bb.ch
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27037
  unreachable

bb.cj:                                            ; preds = %bb.ce
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hs, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !27037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27037
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 2374
  store ptr %i.hs, ptr %i.az, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @127, ptr %i.hy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10285)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 1520
  store i8 0, ptr %i.hx, align 2
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext10read_table(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hz, ptr noundef nonnull %i.hs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @127)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body178

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !27043)
  call void @llvm.experimental.noalias.scope.decl(metadata !27046)
  %i.ib = load i64, ptr %i.av, align 16, !range !18805, !alias.scope !27046, !noalias !27043, !noundef !4 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 36
  %i.id = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  br i1 %i.ic, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.id, i64 40, i1 false), !noalias !27043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27049
  store ptr %i.h, ptr %i.f, align 8, !noalias !27049
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !27049
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @100, ptr noundef nonnull %i.f)
          to label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_00Bd_.exit.i unwind label %bb.co, !noalias !27053

bb.co:                                            ; preds = %bb.cn
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #40
          to label %.body178 unwind label %bb.cp, !noalias !27053

bb.cp:                                            ; preds = %bb.co
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27053
  unreachable

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_00Bd_.exit.i: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10285, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !27046
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.hc unwind label %bb.cq

.body178:                                         ; preds = %bb.cq, %bb.co, %bb.cl
  %.pn30 = phi { ptr, i32 } [ %i.ia, %bb.cl ], [ %i.ig, %bb.cq ], [ %i.ie, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10285)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.body230

bb.cq:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_00Bd_.exit.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body178

bb.cr:                                            ; preds = %bb.cm
  %.sroa.10285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10285, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10285.0..sroa_idx, i64 24, i1 false), !alias.scope !27048
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.11, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.11.0..sroa_idx, i64 288, i1 false), !alias.scope !27048
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 2371 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.ij = load <2 x i64>, ptr %i.id, align 8, !alias.scope !27048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8278.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10285, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8278.sroa.11, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.11, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8293, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.11.112..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10285)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i8 1, ptr %i.ih, align 1
  store i64 %i.ib, ptr %i.ii, align 16
  store <2 x i64> %i.ij, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6291.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8278.sroa.9, i64 24, i1 false)
  %.sroa.7292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7292.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8278.sroa.11, i64 64, i1 false)
  %.sroa.8293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8293.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.8293, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke fastcc void @_RNvXs2_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(336) %i.as, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.ii)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn3colReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 12)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB4_12WriterConfig3new:bb.a
  %i.c = load i64, ptr %3, align 8, !range !48, !noundef !4
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.d = load <2 x i64>, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.e = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.f = load <2 x i64>, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.g = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.h = load <4 x i8>, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 244
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterProperties7builder(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %9) #40
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.l = load <2 x i64>, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.n = load <2 x i64>, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.u = load <2 x i64>, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = load <2 x i64>, ptr %i.v, align 8
  %i.x = load <4 x i8>, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.19.0 = phi i32 [ %.sroa.19.0.copyload, %bb.b ], [ undef, %bb.e ]
  %i.y = phi <4 x i8> [ %i.h, %bb.b ], [ %i.x, %bb.e ]
  %i.z = phi <2 x i64> [ %i.d, %bb.b ], [ %i.u, %bb.e ]
  %i.aa = phi <2 x i64> [ %i.e, %bb.b ], [ %i.w, %bb.e ]
  %i.ab = phi <2 x i64> [ %i.f, %bb.b ], [ %i.l, %bb.e ]
  %i.ac = phi <2 x i64> [ %i.g, %bb.b ], [ %i.n, %bb.e ]
  %i.ad = trunc nuw i64 %5 to i1
  %. = select i1 %i.ad, i64 %6, i64 1024
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02, i64 56, i1 false)
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.z, ptr %.sroa.3.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x i64> %i.aa, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.10.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  %.sroa.11.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.ab, ptr %.sroa.11.0..sroa_idx15, align 8
  %.sroa.13.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.ac, ptr %.sroa.13.0..sroa_idx19, align 8
  %.sroa.15.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i8> %i.y, ptr %.sroa.15.0..sroa_idx23, align 8
  %.sroa.19.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx31, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %4, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %., ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %7, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %8, ptr %i.ak, align 8
  ret void

bb.g:                                             ; preds = %bb.j, %bb.h, %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %2) #40
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.am = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !38854
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeNtB4_9IORuntime10get_handle(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !48, !noundef !4
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !38859
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt5IO_RT, i64 80) acquire, align 8, !noalias !38862
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt.exit, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  call void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt0E0zEB2p_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt5IO_RT, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  br label %_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt.exit

_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt.exit
  %.sroa.0.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt5IO_RT, i64 48), %_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt.exit ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.0.0.val = load i64, ptr %.sroa.0.0, align 8, !range !3, !noundef !4
  %i.f = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = trunc nuw i64 %.sroa.0.0.val to i1
  %i.h = atomicrmw add ptr %.sroa.0.0.val1, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0                     ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.i, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.h, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ 1, %bb.f ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.0.0.val1, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10parse_date(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 16 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 16           ; 6 uses
  %i.l = alloca [64 x i8], align 16               ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = load i8, ptr %1, align 8, !range !16510, !noundef !4
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38865
  store i64 0, ptr %i.c, align 8, !noalias !38865
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !38865
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !38865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38865
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.q, align 8, !noalias !38865
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !38865
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !38865
  store ptr %i.c, ptr %i.b, align 8, !noalias !38865
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @819, ptr %i.r, align 8, !noalias !38865
  %i.s = invoke noundef zeroext i1 @_RNvXs_NtCseqDwI8vvjGQ_10serde_json5valueNtB4_5ValueNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !38869

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #40
          to label %common.resume unwind label %bb.g, !noalias !38869

bb.e:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, !prof !1176

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @820, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @324, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #39
          to label %.noexc.i unwind label %bb.d, !noalias !38869

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !38869
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !38870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38865
  br label %bb.h

bb.h:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue15try_from_string(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @606)
  %i.v = load i128, ptr %i.k, align 16, !range !38871, !noundef !4 ; 2 uses
  %i.w = icmp eq i128 %i.v, 50
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(40) %i.x, i64 40, i1 false)
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.y, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.634.0.copyload = load i64, ptr %.sroa.634.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i128 %i.v, ptr %i.l, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.634.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.l)
          to label %bb.l unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u, %bb.v, %bb.o, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ], [ %i.av, %bb.v ], [ %i.av, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l) #40
          to label %common.resume unwind label %bb.z

bb.k:                                             ; preds = %bb.ab, %bb.x, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.g, align 8, !range !38872, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.aa, 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.af, align 16
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.252.0..sroa_idx, align 8
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.353.0..sroa_idx, align 16
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 0, ptr %i.ah, align 8
  store ptr null, ptr %i.f, align 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %.sroa.344.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr null, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 2
  invoke void @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast17cast_with_options(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @607, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38873)
  call void @llvm.experimental.noalias.scope.decl(metadata !38876)
  %i.aj = load ptr, ptr %i.h, align 8, !alias.scope !38879, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !38879
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

bb.q:                                             ; preds = %bb.n
  %i.am = load i64, ptr %i.i, align 8, !range !2799, !noundef !4 ; 2 uses
  %.not66 = icmp eq i64 %i.am, -9223372036854775788
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  br i1 %.not66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.762.0.copyload = load i64, ptr %.sroa.762.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.am, ptr %i.e, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.aq, ptr %.sroa.330.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.762.0.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.aa unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ao, ptr %i.j, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !38880)
  call void @llvm.experimental.noalias.scope.decl(metadata !38883)
  %i.as = load ptr, ptr %i.h, align 8, !alias.scope !38886, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !38886
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69 unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38887)
  call void @llvm.experimental.noalias.scope.decl(metadata !38890)
  %i.aw = load ptr, ptr %i.j, align 8, !alias.scope !38893, !nonnull !4, !noundef !4
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !38893
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue14try_from_array(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @607, i64 noundef 0)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69
  call void @llvm.experimental.noalias.scope.decl(metadata !38894)
  call void @llvm.experimental.noalias.scope.decl(metadata !38897)
  %i.az = load ptr, ptr %i.j, align 8, !alias.scope !38900, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !38900
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l)
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.z:                                             ; preds = %bb.v, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aa:                                            ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !38901)
  call void @llvm.experimental.noalias.scope.decl(metadata !38904)
  %i.be = load ptr, ptr %i.h, align 8, !alias.scope !38907, !nonnull !4, !noundef !4
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !38907
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75: ; preds = %bb.aa, %bb.ab, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l)
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = zext i1 %3 to i8
  store i8 %i.g, ptr %i.e, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38911)
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !38913, !noalias !38911
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx8, align 8, !alias.scope !38913, !noalias !38911
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx9, align 8, !alias.scope !38913, !noalias !38911
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx10, align 8, !alias.scope !38913, !noalias !38911
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.o, align 8, !alias.scope !38915, !noalias !38908
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.n, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !38915, !noalias !38908
end_hunk_4
begin_hunk_5_@_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema:bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.x, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !38916)
  call void @llvm.experimental.noalias.scope.decl(metadata !38919)
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !38922, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !38922
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !38923
  %i.v = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 80, i64 noundef range(i64 1, 129) 8) #33, !noalias !38923 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.i, !prof !216

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #39
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #40
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !38926)
  call void @llvm.experimental.noalias.scope.decl(metadata !38929)
  %i.z = load ptr, ptr %i.f, align 8, !alias.scope !38932, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !38932
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit7

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.i, %bb.j
  ret ptr %i.v

bb.k:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = tail call noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !1176

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  call void %i.i(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.f) #43
  %i.j = load i128, ptr %i.c, align 16, !noundef !4
  %i.k = icmp eq i128 %i.j, 89879245665812572599847911410771272624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.k, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @608) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38933
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !38933
  %i.l = load i64, ptr %i.b, align 8, !range !3, !noalias !38933, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !201, !noalias !38933, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit, !prof !1176

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.p, align 8, !noalias !38933
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #39, !noalias !38933
  unreachable

_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.p, align 8, !noalias !38933, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp samesign ugt i64 %i.o, 36
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.r, ptr noundef nonnull align 1 dereferenceable(37) @225, i64 37, i1 false), !noalias !38933
  %i.t = inttoptr i64 %i.o to ptr
  store i64 -9223372036854775722, ptr %0, align 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.326.0..sroa_idx, align 16
  %.sroa.326.sroa.2.0..sroa.326.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.326.sroa.2.0..sroa.326.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.u = call { ptr, ptr } @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeE13downcast_dictINtNtB7_10byte_array16GenericByteArrayINtB1n_17GenericStringTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f) ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.h, %_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit30, %_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit
  ret void

bb.h:                                             ; preds = %bb.f
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.y, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38938
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !38938
  %i.z = load i64, ptr %i.a, align 8, !range !3, !noalias !38938, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !201, !noalias !38938, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.j, label %_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit30, !prof !1176

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !38938
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #39, !noalias !38938
  unreachable

_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15get_path_column0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_.exit30: ; preds = %bb.i
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !38938, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.ac, 36
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.af, ptr noundef nonnull align 1 dereferenceable(37) @225, i64 37, i1 false), !noalias !38938
  store i64 -9223372036854775722, ptr %0, align 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.634.0..sroa_idx, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15parse_timestamp(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 16 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 16           ; 6 uses
  %i.l = alloca [64 x i8], align 16               ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = load i8, ptr %1, align 8, !range !16510, !noundef !4
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38943
  store i64 0, ptr %i.c, align 8, !noalias !38943
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !38943
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !38943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38943
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.q, align 8, !noalias !38943
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !38943
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !38943
  store ptr %i.c, ptr %i.b, align 8, !noalias !38943
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @819, ptr %i.r, align 8, !noalias !38943
  %i.s = invoke noundef zeroext i1 @_RNvXs_NtCseqDwI8vvjGQ_10serde_json5valueNtB4_5ValueNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !38947

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #40
          to label %common.resume unwind label %bb.g, !noalias !38947

bb.e:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, !prof !1176

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @820, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @324, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #39
          to label %.noexc.i unwind label %bb.d, !noalias !38947

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !38947
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38943
  br label %bb.h

bb.h:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue15try_from_string(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @609)
  %i.v = load i128, ptr %i.k, align 16, !range !38871, !noundef !4 ; 2 uses
  %i.w = icmp eq i128 %i.v, 50
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(40) %i.x, i64 40, i1 false)
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.y, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.634.0.copyload = load i64, ptr %.sroa.634.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i128 %i.v, ptr %i.l, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.634.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.l)
          to label %bb.l unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u, %bb.v, %bb.o, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ], [ %i.av, %bb.v ], [ %i.av, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l) #40
          to label %common.resume unwind label %bb.z

bb.k:                                             ; preds = %bb.ab, %bb.x, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.g, align 8, !range !38872, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.aa, 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.af, align 16
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.252.0..sroa_idx, align 8
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.353.0..sroa_idx, align 16
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 0, ptr %i.ah, align 8
  store ptr null, ptr %i.f, align 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %.sroa.344.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr null, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 2
  invoke void @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast17cast_with_options(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @607, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38949)
  call void @llvm.experimental.noalias.scope.decl(metadata !38952)
  %i.aj = load ptr, ptr %i.h, align 8, !alias.scope !38955, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !38955
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

bb.q:                                             ; preds = %bb.n
  %i.am = load i64, ptr %i.i, align 8, !range !2799, !noundef !4 ; 2 uses
  %.not66 = icmp eq i64 %i.am, -9223372036854775788
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  br i1 %.not66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.762.0.copyload = load i64, ptr %.sroa.762.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.am, ptr %i.e, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.aq, ptr %.sroa.330.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.762.0.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.aa unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ao, ptr %i.j, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !38956)
  call void @llvm.experimental.noalias.scope.decl(metadata !38959)
  %i.as = load ptr, ptr %i.h, align 8, !alias.scope !38962, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !38962
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69 unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38963)
  call void @llvm.experimental.noalias.scope.decl(metadata !38966)
  %i.aw = load ptr, ptr %i.j, align 8, !alias.scope !38969, !nonnull !4, !noundef !4
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !38969
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue14try_from_array(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @607, i64 noundef 0)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit69
  call void @llvm.experimental.noalias.scope.decl(metadata !38970)
  call void @llvm.experimental.noalias.scope.decl(metadata !38973)
  %i.az = load ptr, ptr %i.j, align 8, !alias.scope !38976, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !38976
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l)
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.z:                                             ; preds = %bb.v, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aa:                                            ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !38977)
  call void @llvm.experimental.noalias.scope.decl(metadata !38980)
  %i.be = load ptr, ptr %i.h, align 8, !alias.scope !38983, !nonnull !4, !noundef !4
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !38983
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit75: ; preds = %bb.aa, %bb.ab, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.l)
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion22get_null_of_arrow_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4103 = alloca [24 x i8], align 8         ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = load i8, ptr %1, align 8, !range !19796, !noundef !4
  switch i8 %i.g, label %default.unreachable130 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %.split
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %.split
    i8 17, label %.split
    i8 18, label %.split
end_hunk_5
