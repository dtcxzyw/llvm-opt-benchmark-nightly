Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_upnp-d781eba3ba71a735.libp2p_upnp.fb40299a0c51043f-cgu.00?download=true
inline.NumInlined: 1585
inline.NumDeleted: 656
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsgrCzhG8IxpI_8igd_next6common7parsing14RequestReponseNtNtB13_6errors12RequestErrorEECslzoSl9yxMOF_11libp2p_upnp:bb.a
  %i.be = load i64, ptr %i.bd, align 8, !range !11, !invariant.load !9, !noalias !347
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #15, !noalias !347
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0yMYRRwETY_5hyper5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !10, !invariant.load !9, !noalias !347 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !11, !invariant.load !9, !noalias !347
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #15, !noalias !347
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 24, i64 noundef 8) #15, !noalias !347
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0yMYRRwETY_5hyper5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.am, %bb.al, %bb.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 24, i64 noundef 8) #15, !noalias !347
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgrCzhG8IxpI_8igd_next6errors12RequestErrorECslzoSl9yxMOF_11libp2p_upnp.exit

bb.aq:                                            ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !354, !noundef !9 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !354 ; 6 uses
  %i.bm = icmp eq ptr %.val.i.i, null
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.bn = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9, !noalias !354 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void %i.bn(ptr noundef nonnull %.val.i.i)
          to label %bb.at unwind label %bb.av, !noalias !354

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !10, !invariant.load !9, !noalias !354 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !11, !invariant.load !9, !noalias !354
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #15, !noalias !354
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.av:                                            ; preds = %bb.as
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !10, !invariant.load !9, !noalias !354 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.body.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !11, !invariant.load !9, !noalias !354
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #15, !noalias !354
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aw, %bb.av
  %i.bz = icmp eq i8 %i.k, 2
  br i1 %i.bz, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %.body.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect9ConnectedECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %common.resume unwind label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.au, %bb.at, %bb.aq
  %i.cb = icmp eq i8 %i.k, 2
  br i1 %i.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgrCzhG8IxpI_8igd_next6errors12RequestErrorECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect9ConnectedECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgrCzhG8IxpI_8igd_next6errors12RequestErrorECslzoSl9yxMOF_11libp2p_upnp.exit

bb.az:                                            ; preds = %bb.ax
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgrCzhG8IxpI_8igd_next6errors12RequestErrorECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0yMYRRwETY_5hyper5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgG7NDF6zQoN_9attohttpc5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgrCzhG8IxpI_8igd_next6common7parsing14RequestReponseECslzoSl9yxMOF_11libp2p_upnp.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_NtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2G_4SyncEL_EEEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !9 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit: ; preds = %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour14GatewayRequestEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #17
          to label %common.resume.i unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXsz_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !375, !noundef !9 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !376
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #16
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.l = load ptr, ptr %i.f, align 8, !alias.scope !378, !noundef !9 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !379
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit

bb.l:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.r, %bb.h, %bb.g, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.y, %bb.s ], [ %i.y, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !373 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !373, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.s = load ptr, ptr %.val1.i, align 8, !invariant.load !9, !noalias !373 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.s(ptr noundef nonnull %.val.i)
          to label %bb.p unwind label %bb.r, !noalias !373

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !9, !noalias !373 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !11, !invariant.load !9, !noalias !373
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #15, !noalias !373
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslzoSl9yxMOF_11libp2p_upnp5tokio7GatewayINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEEB11_.exit

bb.r:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !9, !noalias !373 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !invariant.load !9, !noalias !373
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #15, !noalias !373
  br label %common.resume.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs66a4hBEq2Hz_2h25codec5CodecINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtBG_5proto7streams10prioritize11PrioritizedINtNtNtB1i_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 8, !alias.scope !396, !noundef !9 ; 2 uses
  %i.c = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i.i.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.e, align 8, !alias.scope !396, !noundef !9 ; 2 uses
  %i.f = icmp eq i32 %.val.i.i.i.i.i.i.i.i, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %0) #17
          to label %.body.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write7EncoderINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(320) %i.j) #17
          to label %.body.i.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write7EncoderINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(320) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_impl10FramedImplINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.i

bb.h:                                             ; preds = %.body.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.m, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %.body.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_impl10FramedImplINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_read10FramedReadINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_impl10FramedImplINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25hpack7decoder7DecoderECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r) #17
          to label %.body2.i unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_read10FramedReadINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_impl10FramedImplINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_read10FramedReadINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %.body.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_read10FramedReadINtNtNtCs66a4hBEq2Hz_2h25codec12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25hpack7decoder5TableECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.t, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.body2.i unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25hpack7decoder5TableECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtCs66a4hBEq2Hz_2h25hpack6header6HeaderEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs66a4hBEq2Hz_2h25codec11framed_read10FramedReadINtNtBG_12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtB2c_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.p

bb.o:                                             ; preds = %.body.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body2.i:                                         ; preds = %bb.p, %.body.i.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 576
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25codec11framed_read7PartialEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(336) %i.z) #17
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25hpack7decoder5TableECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

bb.q:                                             ; preds = %.body2.i, %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.r:                                             ; preds = %.body2.i
  resume { ptr, i32 } %.pn.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs66a4hBEq2Hz_2h25codec11framed_read10FramedReadINtNtBG_12framed_write11FramedWriteINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtB2c_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25hpack7decoder5TableECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25codec11framed_read7PartialEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(336) %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs66a4hBEq2Hz_2h25share10SendStreamINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsa_NtNtNtCs66a4hBEq2Hz_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !419, !nonnull !9, !noundef !9
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !420
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.body.i

end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp:bb.a
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !456, !align !13, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http10extensions10ExtensionsECslzoSl9yxMOF_11libp2p_upnp(ptr %.val1.i) #17
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !456, !align !13, !noundef !9 ; 4 uses
  %i.d = icmp eq ptr %.val.i, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http8response5PartsECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #15
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http8response5PartsECslzoSl9yxMOF_11libp2p_upnp.exit

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.e, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #17
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http8response5PartsECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
  ret void

bb.g:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscL6eteTR0ts_7xmltree7XMLNodeEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCscL6eteTR0ts_7xmltree7XMLNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCscL6eteTR0ts_7xmltree7XMLNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCscL6eteTR0ts_7xmltree7XMLNodeEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCscL6eteTR0ts_7xmltree7XMLNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCscL6eteTR0ts_7xmltree7XMLNodeEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECslzoSl9yxMOF_11libp2p_upnp(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #15
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #15
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !21, !alias.scope !477, !noundef !9
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEENtNtNtB1c_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !480, !nonnull !9, !noundef !9
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !481
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEE9drop_slowB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !484, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !485
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEE9drop_slowB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit3.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.h, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !488, !nonnull !9, !noundef !9
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !489
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit3.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !492, !nonnull !9, !noundef !9
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !493
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit3.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  resume { ptr, i32 } %.pn.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit3.i.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !21, !alias.scope !514, !noundef !9
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !517, !nonnull !9, !noundef !9
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !518
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i unwind label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !521, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !522
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit3.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i: ; preds = %bb.h, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !525, !nonnull !9, !noundef !9
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !526
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit3.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !529, !nonnull !9, !noundef !9
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !530
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB20_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit3.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB20_.exit

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit.i.i
  resume { ptr, i32 } %.pn.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB20_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEEEB26_.exit3.i.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour14GatewayRequestEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs66a4hBEq2Hz_2h25proto10connection15ConnectionInnerNtNtBI_6client4PeerINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp:bb.a
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25proto9ping_pong8PingPongECslzoSl9yxMOF_11libp2p_upnp.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25proto9ping_pong8PingPongECslzoSl9yxMOF_11libp2p_upnp.exit
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
  ret void

bb.q:                                             ; preds = %bb.d, %bb.n, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs66a4hBEq2Hz_2h25proto7go_away6GoAwayECslzoSl9yxMOF_11libp2p_upnp.exit
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.r:                                             ; preds = %bb.n
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot8ReceiverNtNtCse0yMYRRwETY_5hyper5error5ErrorEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_8ReceiverNtNtCse0yMYRRwETY_5hyper5error5ErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !859, !noundef !9 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !860
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEE9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !861, !noundef !9 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !862
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit1

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEE9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit1: ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerNtNtCse0yMYRRwETY_5hyper5error5ErrorEEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4time7timeout7TimeoutNCNvMNtNtNtBI_3net3tcp6socketNtB1s_9TcpSocket7connect0EECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !9
  switch i8 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i = load i32, ptr %i.c, align 8, !range !23, !noundef !9
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.e)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.g, align 1
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %0) #17
          to label %common.resume unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.h, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.d, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.i = load i64, ptr %0, align 8, !range !15, !alias.scope !873, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !876, !nonnull !9, !noundef !9
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !876
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !879, !nonnull !9, !noundef !9
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !879
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.s) #17
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.u)
  ret void

bb.k:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4time7timeout7TimeoutNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0EECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load i8, ptr %i.c, align 8, !range !24, !noundef !9
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0ECslzoSl9yxMOF_11libp2p_upnp.exit [
    i8 7, label %bb.be
    i8 3, label %bb.b
    i8 4, label %bb.g
    i8 5, label %bb.x
    i8 6, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load i8, ptr %i.e, align 8, !range !22, !noundef !9
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0ECslzoSl9yxMOF_11libp2p_upnp.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.val.i.i = load i16, ptr %i.g, align 8, !range !911, !noundef !9
  %i.h = getelementptr i8, ptr %0, i64 488
  %.val1.i.i = load ptr, ptr %i.h, align 8        ; 4 uses
  %cond.i.i.i.i = icmp eq i16 %.val.i.i, -1
  br i1 %cond.i.i.i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0ECslzoSl9yxMOF_11libp2p_upnp.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = ptrtoint ptr %.val1.i.i to i64           ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i
    i64 1, label %bb.f
  ], !prof !20

default.unreachable:                              ; preds = %bb.k, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !912
  store i8 3, ptr %i.b, align 8, !alias.scope !912
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i unwind label %bb.cj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0ECslzoSl9yxMOF_11libp2p_upnp.exit

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.q = load i8, ptr %i.p, align 8, !range !22, !noundef !9
  %cond.i11.i = icmp eq i8 %i.q, 3
  br i1 %cond.i11.i, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.s = load i64, ptr %i.r, align 8, !range !16, !noundef !9
  %cond.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %cond.i.i.i.i.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.u = load i8, ptr %i.t, align 8, !range !25, !noundef !9
  switch i8 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i [
    i8 4, label %bb.n
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.v, align 8, !range !911, !noundef !9
  %i.w = getelementptr i8, ptr %0, i64 624
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8 ; 4 uses
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.val.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !20

bb.l:                                             ; preds = %bb.k
  %i.z = icmp ult ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !913
  store i8 3, ptr %i.a, align 8, !alias.scope !913
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ch

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.n:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.af = load i8, ptr %i.ae, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ah = load i8, ptr %i.ag, align 8, !range !25, !noundef !9
  %cond.i.i2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 3
  br i1 %cond.i.i2.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.aj = load i8, ptr %i.ai, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.al = load i8, ptr %i.ak, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke void @_RNvXs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_ioNtB5_9ReadinessNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.am)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 864
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !align !13, !noundef !9 ; 2 uses
  %i.ap = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ap, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr i8, ptr %0, i64 872
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !9, !noundef !9
  invoke void %i.as(ptr noundef %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.body.i unwind label %bb.w, !inline_history !884

bb.u:                                             ; preds = %bb.r
  %i.at = getelementptr i8, ptr %0, i64 864
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !align !13, !noundef !9 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr i8, ptr %0, i64 872
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !9, !noundef !9
  invoke void %i.ax(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.ch, !inline_history !885

bb.w:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.x:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2332
  %i.bb = load i8, ptr %i.ba, align 4, !range !22, !noundef !9
  %cond.i.i.i = icmp eq i8 %i.bb, 3
  br i1 %cond.i.i.i, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bd = load i64, ptr %i.bc, align 8, !range !15, !noundef !9
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load i8, ptr %i.bf, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %i.bg, 3
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bi = load i8, ptr %i.bh, align 8, !range !25, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bk = load i8, ptr %i.bj, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bk, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.bm = load i8, ptr %i.bl, align 8, !range !22, !noundef !9
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 744
  invoke void @_RNvXs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_ioNtB5_9ReadinessNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bn)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 768
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !align !13, !noundef !9 ; 2 uses
  %i.bq = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.bq, label %.body.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr i8, ptr %0, i64 776
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !9, !noundef !9
  invoke void %i.bt(ptr noundef %.val3.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.body.i.i unwind label %bb.ai, !inline_history !884

bb.ag:                                            ; preds = %bb.ad
  %i.bu = getelementptr i8, ptr %0, i64 768
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !align !13, !noundef !9 ; 2 uses
  %i.bv = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = getelementptr i8, ptr %0, i64 776
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !9, !noundef !9
  invoke void %i.by(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.aj, !inline_history !886

bb.ai:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aj, %bb.af, %bb.ae
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ca, %bb.aj ], [ %i.bo, %bb.af ], [ %i.bo, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.az) #17
          to label %.body.i unwind label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.cb = load i64, ptr %i.az, align 8, !range !15, !alias.scope !914, !noundef !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ce = load ptr, ptr %i.cc, align 8, !alias.scope !917, !nonnull !9, !noundef !9
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !917
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.ao

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio23receive_search_response0ECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.ch = load ptr, ptr %i.cc, align 8, !alias.scope !920, !nonnull !9, !noundef !9
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !920
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 488
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.cl) #17
          to label %.body.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 488
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc13h7DQFCSE_5tokio7runtime5TimerEECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.cn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.ch

bb.aq:                                            ; preds = %.body.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ar:                                            ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 897
  %i.cr = load i8, ptr %i.cq, align 1, !range !25, !noundef !9
  switch i8 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i [
    i8 4, label %bb.ay
    i8 3, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i17.i = load ptr, ptr %i.cs, align 8      ; 5 uses
  %i.ct = getelementptr i8, ptr %0, i64 912
  %.val8.i.i = load ptr, ptr %i.ct, align 8, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.cu = load ptr, ptr %.val8.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i) ]
  invoke void %i.cu(ptr noundef nonnull %.val.i17.i)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i, i64 noundef range(i64 1, 0) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i

bb.aw:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.body.i18.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.de = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i, i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, 536870913) %i.df) #15
  br label %.body.i18.i

bb.ay:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 904
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.dg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %bb.ay, %bb.av, %bb.au
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.cp)
          to label %bb.bc unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i18.i

.body.i18.i:                                      ; preds = %bb.az, %bb.ax, %bb.aw
  %eh.lpad-body.i19.i = phi { ptr, i32 } [ %i.dh, %bb.az ], [ %i.da, %bb.ax ], [ %i.da, %bb.aw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.cp) #17
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.bb, %.body.i18.i
  %.pn6.i.i = phi { ptr, i32 } [ %i.dj, %bb.bb ], [ %eh.lpad-body.i19.i, %.body.i18.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i8 0, ptr %i.di, align 8
  br label %.body20.i

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i8 0, ptr %i.dk, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.bd:                                            ; preds = %.body.i18.i
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.be:                                            ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 945
  %i.do = load i8, ptr %i.dn, align 1, !range !25, !noundef !9
  switch i8 %i.do, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0ECslzoSl9yxMOF_11libp2p_upnp.exit.i [
    i8 4, label %bb.bl
    i8 3, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.val.i22.i = load ptr, ptr %i.dp, align 8      ; 5 uses
  %i.dq = getelementptr i8, ptr %0, i64 960
  %.val8.i23.i = load ptr, ptr %i.dq, align 8, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.dr = load ptr, ptr %.val8.i23.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i24.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i24.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i22.i) ]
  invoke void %i.dr(ptr noundef nonnull %.val.i22.i)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ds = getelementptr inbounds nuw i8, ptr %.val8.i23.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i22.i) ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8.i23.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i22.i, i64 noundef range(i64 1, 0) %i.dt, i64 noundef range(i64 1, 536870913) %i.dw) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i

bb.bj:                                            ; preds = %bb.bg
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val8.i23.i, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.body.i25.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eb = getelementptr inbounds nuw i8, ptr %.val8.i23.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i22.i, i64 noundef range(i64 1, 0) %i.dz, i64 noundef range(i64 1, 536870913) %i.ec) #15
  br label %.body.i25.i

bb.bl:                                            ; preds = %bb.be
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 952
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i unwind label %bb.bm

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i: ; preds = %bb.bl, %bb.bi, %bb.bh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.dm)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i25.i

.body.i25.i:                                      ; preds = %bb.bm, %bb.bk, %bb.bj
  %eh.lpad-body.i26.i = phi { ptr, i32 } [ %i.ee, %bb.bm ], [ %i.dx, %bb.bk ], [ %i.dx, %bb.bj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.dm) #17
          to label %.body29.i unwind label %bb.bp

.body29.i:                                        ; preds = %bb.bn, %.body.i25.i
  %.pn6.i27.i = phi { ptr, i32 } [ %i.eh, %bb.bn ], [ %eh.lpad-body.i26.i, %.body.i25.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i8 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eg) #17
          to label %.body36.i unwind label %bb.ci

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i28.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i8 0, ptr %i.ei, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0ECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.bp:                                            ; preds = %.body.i25.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.cf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4time5sleep5SleepECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, %bb.v, %bb.u, %bb.q, %bb.p, %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCsc2nZRnW43Xw_3mio3net3udp9UdpSocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val2.i.i.i = load i32, ptr %i.em, align 8, !alias.scope !921, !noundef !9 ; 2 uses
  %i.en = icmp eq i32 %.val2.i.i.i, -1
  br i1 %i.en, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsc2nZRnW43Xw_3mio3net3udp9UdpSocketEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eo = call noundef i32 @close(i32 noundef %.val2.i.i.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsc2nZRnW43Xw_3mio3net3udp9UdpSocketEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19send_search_request0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i.i = load i32, ptr %i.ep, align 8, !alias.scope !921, !noundef !9 ; 2 uses
  %i.eq = icmp eq i32 %.val.i.i.i, -1
  br i1 %i.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.er = call noundef i32 @close(i32 noundef %.val.i.i.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketECslzoSl9yxMOF_11libp2p_upnp.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsc2nZRnW43Xw_3mio3net3udp9UdpSocketEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i: ; preds = %bb.br, %bb.bq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ek) #17
          to label %.body unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsc2nZRnW43Xw_3mio3net3udp9UdpSocketEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.bt, %bb.bs
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio20search_gateway_inner0ECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.cj

.body.i:                                          ; preds = %bb.ch, %bb.ce, %.body31.i, %bb.ao, %.body.i.i, %bb.t, %bb.s
  %.pn9.i = phi { ptr, i32 } [ %.pn7.i, %.body31.i ], [ %i.an, %bb.s ], [ %i.an, %bb.t ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ck, %bb.ao ], [ %i.fm, %bb.ch ], [ %i.fk, %bb.ce ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(32) %i.et) #17
          to label %.body unwind label %bb.ci

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i41.i, %bb.bc, %bb.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %.body31.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.cd

.body20.i:                                        ; preds = %bb.cc, %bb.ca, %.body36.i, %bb.ba
  %.pn5.i = phi { ptr, i32 } [ %.pn.i, %.body36.i ], [ %.pn6.i.i, %bb.ba ], [ %i.fg, %bb.cc ], [ %i.fe, %bb.ca ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 344
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ex) #17
          to label %.body31.i unwind label %bb.ci

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0ECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.bo, %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i35.i unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %.body36.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i35.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio19get_control_schemas0ECslzoSl9yxMOF_11libp2p_upnp.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit39.i unwind label %bb.bz

.body36.i:                                        ; preds = %bb.bz, %bb.bx, %.body29.i
  %.pn.i = phi { ptr, i32 } [ %.pn6.i27.i, %.body29.i ], [ %i.fc, %bb.bz ], [ %i.ez, %bb.bx ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 472
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #17
          to label %.body20.i unwind label %bb.ci

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i35.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit39.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i35.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i41.i unwind label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit39.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %.body20.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i41.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit39.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsgrCzhG8IxpI_8igd_next3aio5tokio16get_control_urls0ECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i41.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

.body31.i:                                        ; preds = %bb.cd, %.body20.i, %bb.bv
  %.pn7.i = phi { ptr, i32 } [ %.pn5.i, %.body20.i ], [ %i.fi, %bb.cd ], [ %i.ev, %bb.bv ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fh) #17
          to label %.body.i unwind label %bb.ci

bb.cd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  %i.fi = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeGg2ZMtKzB_14http_body_util4util7BufListNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !14, !alias.scope !1160, !noundef !9
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %.body unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeGg2ZMtKzB_14http_body_util4util7BufListNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i
  %i.i = load i64, ptr %0, align 8, !range !14, !alias.scope !1161, !noundef !9
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskeGg2ZMtKzB_14http_body_util9collected9CollectedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeGg2ZMtKzB_14http_body_util4util7BufListNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskeGg2ZMtKzB_14http_body_util9collected9CollectedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %eh.lpad-body.i.i, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(40) %i.m) #17
          to label %bb.k unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskeGg2ZMtKzB_14http_body_util9collected9CollectedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeGg2ZMtKzB_14http_body_util4util7BufListNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i, %bb.a, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n)
  ret void

bb.j:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4send4SendINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.a = load i64, ptr %0, align 8, !range !1203, !alias.scope !1204, !noundef !9 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1210, !noundef !9
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !1210, !nonnull !9, !align !13, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1210, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1210, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1210, !noundef !9
  invoke void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit.i.i.i unwind label %bb.n, !noalias !1211, !inline_history !1

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1216, !noundef !9
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !1216, !nonnull !9, !align !13, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1216, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1216, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1216, !noundef !9
  tail call void %i.r(ptr noundef %i.o, ptr noundef %i.t, i64 noundef %i.v), !noalias !1216, !inline_history !1184
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1221, !noundef !9
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !1221, !nonnull !9, !align !13, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1221, !nonnull !9, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1221, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1221, !noundef !9
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit9.i.i.i unwind label %bb.g, !noalias !1211, !inline_history !1

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1226, !noundef !9
  %i.aj = load ptr, ptr %i.ag, align 8, !alias.scope !1226, !nonnull !9, !align !13, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !1226, !nonnull !9, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1226, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1226, !noundef !9
  tail call void %i.al(ptr noundef %i.ai, ptr noundef %i.an, i64 noundef %i.ap), !noalias !1226, !inline_history !1184
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1211
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1211, !nonnull !9, !align !13, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECslzoSl9yxMOF_11libp2p_upnp(ptr %.val7.i.i.i, ptr nonnull %.val8.i.i.i) #17
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !1211

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit9.i.i.i: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1211 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1211, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.av = load ptr, ptr %.val6.i.i.i, align 8, !invariant.load !9, !noalias !1211 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit9.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i) ]
  invoke void %i.av(ptr noundef nonnull %.val5.i.i.i)
          to label %bb.i unwind label %bb.k, !noalias !1211

bb.i:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit9.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !10, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !11, !invariant.load !9, !noalias !1211
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #15, !noalias !1211
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit

bb.k:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !10, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %common.resume.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !11, !invariant.load !9, !noalias !1211
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef range(i64 1, 0) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #15, !noalias !1211
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %bb.s, %bb.r, %bb.n, %bb.l, %bb.k, %bb.g
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.aq, %bb.g ], [ %i.bt, %bb.s ], [ %i.bt, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.m:                                             ; preds = %bb.n, %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1211
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !1211
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1211, !nonnull !9, !align !13, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECslzoSl9yxMOF_11libp2p_upnp(ptr %.val3.i.i.i, ptr nonnull %.val4.i.i.i) #17
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !1211

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit.i.i.i: ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1211 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1211, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.bn = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !9, !noalias !1211 ; 2 uses
  %.not.i10.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i10.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.bn(ptr noundef nonnull %.val.i.i.i)
          to label %bb.p unwind label %bb.r, !noalias !1211

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour7MappingEBF_.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !10, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !11, !invariant.load !9, !noalias !1211
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #15, !noalias !1211
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit

bb.r:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !10, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %common.resume.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !11, !invariant.load !9, !noalias !1211
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #15, !noalias !1211
  br label %common.resume.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCslzoSl9yxMOF_11libp2p_upnp9behaviour12GatewayEventEB2b_EEB2f_.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.i, %bb.j, %bb.p, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool10ConnectingINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3y_9authority9AuthorityEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsj_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4poolINtB5_10ConnectingINtNtB7_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB35_9authority9AuthorityEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtBG_9authority9AuthorityEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #17
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtBG_9authority9AuthorityEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.a, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1235, !noundef !9
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4r_9authority9AuthorityEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1236, !noundef !9
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4r_9authority9AuthorityEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB4y_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool10ConnectingINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB2O_9authority9AuthorityEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsj_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4poolINtB5_10ConnectingINtNtB7_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB2l_9authority9AuthorityEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtBG_9authority9AuthorityEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #17
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtBG_9authority9AuthorityEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.a, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1245, !noundef !9
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientNtNtB7_6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3q_9authority9AuthorityEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1246, !noundef !9
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientNtNtB7_6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3q_9authority9AuthorityEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit2: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy4pool7WeakOptINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtBE_9PoolInnerINtNtBG_6client10PoolClientNtNtCsexYYUdYSQU6_5alloc6string6StringETNtNtNtCscwxJ8MeEu7n_4http3uri6scheme6SchemeNtNtB3O_9authority9AuthorityEEEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorINtNtCskeGg2ZMtKzB_14http_body_util5empty5EmptyNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1304, !nonnull !9, !noundef !9
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !1304
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http13HttpConnectorECslzoSl9yxMOF_11libp2p_upnp.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http6ConfigE9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http13HttpConnectorECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1308, !nonnull !9, !noundef !9
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !1308
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtCse0yMYRRwETY_5hyper2rt8ExecutorINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http13HttpConnectorECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1312, !nonnull !9, !noundef !9
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !1312
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit6

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http13HttpConnectorECslzoSl9yxMOF_11libp2p_upnp.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtCse0yMYRRwETY_5hyper2rt8ExecutorINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit6 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(184) %i.n) #17
          to label %.body unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http13HttpConnectorECslzoSl9yxMOF_11libp2p_upnp.exit, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1317, !nonnull !9, !noundef !9
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !1317
  %i.s = icmp eq i64 %i.r, 1
end_hunk_3
begin_hunk_4_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtCs66a4hBEq2Hz_2h26clientINtBJ_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtNtB1A_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10handshake20ECslzoSl9yxMOF_11libp2p_upnp:bb.a

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.e, %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %common.ret

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val2.i.i.i.i2 = load i32, ptr %i.m, align 8, !alias.scope !2046, !noundef !9 ; 2 uses
  %i.n = icmp eq i32 %.val2.i.i.i.i2, -1
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call noundef i32 @close(i32 noundef %.val2.i.i.i.i2) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3

bb.k:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i.i4 = load i32, ptr %i.p, align 8, !alias.scope !2046, !noundef !9 ; 2 uses
  %i.q = icmp eq i32 %.val.i.i.i.i4, -1
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i4) #15 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3: ; preds = %bb.j, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #17
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.l, %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit5 unwind label %bb.n

.body:                                            ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3
  %.pn = phi { ptr, i32 } [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i3 ], [ %i.u, %bb.n ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 0, ptr %i.t, align 1
  br label %common.resume

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEECslzoSl9yxMOF_11libp2p_upnp.exit5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 0, ptr %i.v, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http7connect0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !25, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

common.ret:                                       ; preds = %bb.l, %bb.i, %bb.h, %bb.f, %bb.c, %bb.b, %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i8, ptr %i.c, align 8, !range !22, !noundef !9
  switch i8 %i.d, label %common.ret [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load i32, ptr %i.e, align 8, !range !23, !noundef !9
  %i.f = tail call noundef i32 @close(i32 noundef %.val.i) #15 ; 0 uses
  br label %common.ret

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.g)
          to label %bb.f unwind label %bb.e

common.resume:                                    ; preds = %bb.k, %bb.e
  %.sink3 = phi i64 [ 209, %bb.k ], [ 105, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.i, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3
  store i8 0, ptr %i.h, align 1
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 0, ptr %i.j, align 1
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4time7timeout7TimeoutNCNvMNtNtNtBI_3net3tcp6socketNtB1s_9TcpSocket7connect0EECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.k)
  br label %common.ret

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i8, ptr %i.l, align 8, !range !22, !noundef !9
  switch i8 %i.m, label %common.ret [
    i8 0, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val.i1 = load i32, ptr %i.n, align 8, !range !23, !noundef !9
  %i.o = tail call noundef i32 @close(i32 noundef %.val.i1) #15 ; 0 uses
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.p)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 0, ptr %i.r, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXNtNtCsgrCzhG8IxpI_8igd_next3aio5tokioNtBG_5TokioNtBI_8Provider10send_async0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 363
  %i.b = load i8, ptr %i.a, align 1, !range !25, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 376
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val4, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #15
  br label %.body

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.e, %bb.d, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 0, ptr %i.t, align 2
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(288) %0)
  br label %common.ret

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.k, %bb.g ], [ %i.k, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 0, ptr %i.x, align 2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(288) %0) #17
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscL6eteTR0ts_7xmltree7ElementECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !2055, !noundef !9
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %.body10 unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !8, !alias.scope !2056, !noundef !9
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit13, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i9 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body10 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i9: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit13 unwind label %bb.j

.body10:                                          ; preds = %bb.j, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.j ], [ %i.k, %bb.g ] ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !15, !alias.scope !2057, !noundef !9
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.i

bb.i:                                             ; preds = %.body10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.s

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i9
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit.i9
  %i.q = load i64, ptr %0, align 8, !range !15, !alias.scope !2058, !noundef !9
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit16, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit16 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %.body10, %bb.i, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.u, %bb.l ], [ %.pn, %bb.i ], [ %.pn, %.body10 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #17
          to label %.body17 unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit16: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp.exit13, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit16
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body17 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit16
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.o

.body17:                                          ; preds = %bb.o, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsldfkUAjPaVH_3xml9namespace9NamespaceEECslzoSl9yxMOF_11libp2p_upnp.exit ], [ %i.z, %bb.o ], [ %i.w, %bb.m ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.s

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECslzoSl9yxMOF_11libp2p_upnp.exit22 unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %.body17, %bb.p
  %.pn6 = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %.pn4, %.body17 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_4
begin_hunk_5_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingECslzoSl9yxMOF_11libp2p_upnp:bb.a
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !2423
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping8RecorderECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping8RecorderECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXs_NtNtCse0yMYRRwETY_5hyper6common5watchNtB4_6SenderNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !2426, !nonnull !9, !noundef !9
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !2427
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCse0yMYRRwETY_5hyper6common5watch6SharedE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #16
          to label %.body.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !2430, !nonnull !9, !noundef !9
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !2431
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common5watch6SenderECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCse0yMYRRwETY_5hyper6common5watch6SharedE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common5watch6SenderECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.h, %bb.g ], [ %i.h, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q) #17
          to label %.body6.i unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common5watch6SenderECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_RNvXsz_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common5watch6SenderECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  %i.t = load ptr, ptr %i.r, align 8, !alias.scope !2433, !noundef !9 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.body6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !2434
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.n, label %.body6.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEE9drop_slowB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #16
          to label %.body6.i unwind label %bb.r

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common5watch6SenderECslzoSl9yxMOF_11libp2p_upnp.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !2436, !noundef !9 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !2437
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEE9drop_slowB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body6.i:                                         ; preds = %bb.s, %bb.n, %bb.m, %bb.l, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ad, %bb.s ], [ %i.s, %bb.n ], [ %i.s, %bb.m ], [ %i.s, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiverNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ac) #17
          to label %common.resume.i unwind label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  invoke void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !2440, !nonnull !9, !noundef !9
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !2441
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %common.resume.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapEE9drop_slowCse0yMYRRwETY_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #16
          to label %common.resume.i unwind label %bb.x

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtCse0yMYRRwETY_5hyper5error5ErrorEEECslzoSl9yxMOF_11libp2p_upnp.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  %i.aj = load ptr, ptr %i.ae, align 8, !alias.scope !2444, !nonnull !9, !noundef !9
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !2445
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming4KindECslzoSl9yxMOF_11libp2p_upnp.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapEE9drop_slowCse0yMYRRwETY_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming4KindECslzoSl9yxMOF_11libp2p_upnp.exit

bb.x:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume.i:                                  ; preds = %bb.z, %bb.u, %bb.t, %.body6.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.ao, %bb.z ], [ %.pn.i, %.body6.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.y:                                             ; preds = %bb.z, %.body6.i, %.body.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.z:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs66a4hBEq2Hz_2h25share10RecvStreamECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ap) #17
          to label %common.resume.i unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping8RecorderECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs66a4hBEq2Hz_2h25share10RecvStreamECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aq)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming4KindECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper4body8incoming4KindECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a, %bb.v, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping8RecorderECslzoSl9yxMOF_11libp2p_upnp.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util6common4sync11SyncWrapperINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtBI_6client6legacy6client5ErrorENtNtB4_6marker4SendEL_EEEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util6common4sync11SyncWrapperINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtBI_6client6legacy6client5ErrorENtNtB4_6marker4SendEL_EEEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #15
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp.exit4.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5IbPN03UQpS_10hyper_util6common4sync11SyncWrapperINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtNtBI_6client6legacy6client5ErrorENtNtB4_6marker4SendEL_EEEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client7BuilderECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2491, !nonnull !9, !noundef !9
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !2491
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtCse0yMYRRwETY_5hyper2rt8ExecutorINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(184) %i.f) #17
          to label %.body unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2496, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !2496
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtCse0yMYRRwETY_5hyper2rt8ExecutorINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2498, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !2499
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #16
          to label %.body unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2501, !noundef !9 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i2.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !2502
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %bb.m, %bb.g, %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.z, %bb.m ], [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2503, !noundef !9 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.x = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !2504
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecECslzoSl9yxMOF_11libp2p_upnp.exit.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2505, !noundef !9 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit4, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit
  %i.ad = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !2506
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit4

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCse0yMYRRwETY_5hyper6client4conn5http27BuilderNtNtNtCs5IbPN03UQpS_10hyper_util6common4exec4ExecEECslzoSl9yxMOF_11libp2p_upnp.exit, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %bb.l, %bb.c
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5IbPN03UQpS_10hyper_util6common5timer5TimerEECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.k, %.body, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect9ConnectedECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !9  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 6 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect5ExtraEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect5ExtraEECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect5ExtraEECslzoSl9yxMOF_11libp2p_upnp.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
end_hunk_5
begin_hunk_6_@_RNCNvMNtNtCsgrCzhG8IxpI_8igd_next3aio7gatewayINtB4_7GatewayNtNtB6_5tokio5TokioE15perform_request0CslzoSl9yxMOF_11libp2p_upnp:bb.a
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !2756, !noalias !2747 ; 2 uses
  br i1 %i.cn, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.12.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(238) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(238) %.sroa.12.0..sroa_idx72.i, i64 238, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2747
  store i64 %i.cm, ptr %i.t, align 8, !noalias !2747
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %i.cp, ptr %.sroa.4.0..sroa_idx.i15, align 8, !noalias !2747
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  store i8 %i.cr, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2747
  store i8 0, ptr %i.bd, align 1, !noalias !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(248) %i.t, i64 248, i1 false), !noalias !2747
  %i.cs = invoke { ptr, ptr } @_RNvMs_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientINtB4_6ClientNtNtNtB6_7connect4http13HttpConnectorNtNtCsexYYUdYSQU6_5alloc6string6StringE7requestCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.j)
          to label %bb.aj unwind label %bb.ai, !noalias !2748 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2747
  br label %.body.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2747
  %i.cu = extractvalue { ptr, ptr } %i.cs, 0
  %i.cv = extractvalue { ptr, ptr } %i.cs, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.cu, ptr %i.cw, align 8, !noalias !2747
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 480
  store ptr %i.cv, ptr %i.cx, align 8, !noalias !2747
  br label %bb.av

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2747
  br label %bb.al

bb.al:                                            ; preds = %bb.bn, %bb.ak
  %i.cy = phi ptr [ %i.ba, %bb.ak ], [ %i.er, %bb.bn ] ; 2 uses
  %i.cz = phi ptr [ %i.bb, %bb.ak ], [ %i.es, %bb.bn ] ; 3 uses
  %.sroa.7120.sroa.4.sroa.4.0.i = phi i64 [ undef, %bb.ak ], [ %.sroa.7120.sroa.4.sroa.4.1.i, %bb.bn ]
  %.sroa.7120.sroa.4.sroa.0.0.i = phi i64 [ undef, %bb.ak ], [ %.sroa.7120.sroa.4.sroa.0.1.i, %bb.bn ]
  %.sroa.7120.sroa.0.0.i = phi i64 [ undef, %bb.ak ], [ %.sroa.7120.sroa.0.1.i, %bb.bn ]
  %.sroa.0117.sroa.7.sroa.0.0.i = phi i64 [ 0, %bb.ak ], [ %.sroa.0117.sroa.7.sroa.0.1.in.in.i, %bb.bn ]
  %.sroa.0117.sroa.6.0.i = phi i8 [ %i.cr, %bb.ak ], [ %.sroa.0117.sroa.6.1.i, %bb.bn ]
  %.sroa.0117.sroa.0.0.i = phi i8 [ %i.cp, %bb.ak ], [ %.sroa.0117.sroa.0.1.i, %bb.bn ]
  %.sroa.9129.0.i = phi i8 [ 10, %bb.ak ], [ %.sroa.9129.1.i, %bb.bn ]
  %.sroa.9126.0.i = phi i8 [ undef, %bb.ak ], [ %.sroa.9126.1.i, %bb.bn ]
  %.sroa.8123.0.i = phi i64 [ undef, %bb.ak ], [ %.sroa.8123.1.i, %bb.bn ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 465
  store i8 0, ptr %i.da, align 1, !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2747
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 466
  store i8 0, ptr %i.db, align 2, !noalias !2747
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.cz)
          to label %bb.cl unwind label %bb.cd, !noalias !2748

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http7request7BuilderECslzoSl9yxMOF_11libp2p_upnp.exit.i, %bb.af
  %.pn13.i = phi { ptr, i32 } [ %i.cl, %bb.af ], [ %.pn10.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http7request7BuilderECslzoSl9yxMOF_11libp2p_upnp.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2747
  br label %bb.ap

bb.an:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %.body59.i, %bb.bp, %bb.aw, %bb.aq, %bb.l
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2748
  unreachable

.critedge.i:                                      ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http7request7BuilderECslzoSl9yxMOF_11libp2p_upnp.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http7request7BuilderECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.ao, %.critedge.i
  %.pn10.pn.i = phi { ptr, i32 } [ %.pn8.i, %bb.ao ], [ %i.dd, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2747
  br label %bb.am

bb.ao:                                            ; preds = %bb.ac, %bb.z
  %.pn8.i = phi { ptr, i32 } [ %i.cj, %bb.ac ], [ %.pn6.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2747
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http7request7BuilderECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.ap:                                            ; preds = %bb.ci, %.body.i, %bb.am
  %i.de = phi ptr [ %i.ba, %bb.am ], [ %i.eu, %bb.ci ], [ %i.eu, %.body.i ] ; 2 uses
  %i.df = phi ptr [ %i.bb, %bb.am ], [ %i.ev, %bb.ci ], [ %i.ev, %.body.i ] ; 2 uses
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn13.i, %bb.am ], [ %.pn34.pn.i, %bb.ci ], [ %.pn34.pn.i, %.body.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 465
  store i8 0, ptr %i.dg, align 1, !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2747
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 466
  %i.di = load i8, ptr %i.dh, align 2, !range !31, !noalias !2747, !noundef !9
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.cj, label %bb.r

bb.aq:                                            ; preds = %bb.r, %bb.n
  %i.dk = phi ptr [ %i.cc, %bb.r ], [ %i.ba, %bb.n ]
  %i.dl = phi ptr [ %i.cd, %bb.r ], [ %i.bb, %bb.n ] ; 2 uses
  %.pn37.pn.pn.pn.i = phi { ptr, i32 } [ %.pn37.pn.pn.i, %bb.r ], [ %i.bs, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client6ClientNtNtNtBG_7connect4http13HttpConnectorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.dl) #17
          to label %bb.as unwind label %bb.an, !noalias !2748

bb.ar:                                            ; preds = %bb.l, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.br, %bb.l ], [ %i.az, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2747
  br label %bb.as

bb.as:                                            ; preds = %bb.cd, %bb.ar, %bb.aq
  %i.dm = phi ptr [ %i.gr, %bb.cd ], [ %i.dk, %bb.aq ], [ %i.ba, %bb.ar ]
  %i.dn = phi ptr [ %i.gs, %bb.cd ], [ %i.dl, %bb.aq ], [ %i.bb, %bb.ar ]
  %.pn42.i = phi { ptr, i32 } [ %i.gt, %bb.cd ], [ %.pn37.pn.pn.pn.i, %bb.aq ], [ %.pn.i, %bb.ar ]
  store i8 2, ptr %i.dm, align 1, !noalias !2747
  br label %.body

bb.at:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #19
          to label %.noexc16 unwind label %bb.ck

.noexc16:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #19
          to label %.noexc17 unwind label %bb.ck

.noexc17:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.aj, %bb.g
  %i.do = phi ptr [ %i.ba, %bb.aj ], [ %i.ay, %bb.g ] ; 7 uses
  %i.dp = phi ptr [ %i.bb, %bb.aj ], [ %i.ax, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2747
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 4 uses
  invoke void @_RNvXs6_NtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6clientNtB5_14ResponseFutureNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.aw, !noalias !2748

bb.aw:                                            ; preds = %bb.av
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2747
  %.val.i = load ptr, ptr %i.dq, align 8, !noalias !2747
  %i.ds = getelementptr i8, ptr %1, i64 480
  %.val44.i = load ptr, ptr %i.ds, align 8, !noalias !2747, !nonnull !9, !align !13, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp(ptr %.val.i, ptr nonnull %.val44.i) #17
          to label %.body.i unwind label %bb.an, !noalias !2748

bb.ax:                                            ; preds = %bb.av
  %i.dt = load i64, ptr %i.i, align 8, !range !12, !noalias !2747, !noundef !9 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -2
  br i1 %i.du, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  br label %.thread

bb.az:                                            ; preds = %bb.ax
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.3.sroa.5.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.3.sroa.7.0.copyload.i = load i64, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.3.sroa.9.0.copyload.i = load i64, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.3.sroa.11.0.copyload.i = load i8, ptr %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.13.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  %.sroa.3.sroa.13.0.copyload.i = load i8, ptr %.sroa.3.sroa.13.0..sroa.3.0..sroa_idx.sroa_idx.i, align 1, !noalias !2747 ; 2 uses
  %.sroa.3.sroa.15.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.15.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.15.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 14, i1 false), !noalias !2747
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.581.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.581.0..sroa_idx.i, i64 88, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2747
  %.val45.i = load ptr, ptr %i.dq, align 8, !noalias !2747 ; 5 uses
  %i.dv = getelementptr i8, ptr %1, i64 480
  %.val46.i = load ptr, ptr %i.dv, align 8, !noalias !2747, !nonnull !9, !align !13, !noundef !9 ; 5 uses
  %i.dw = load ptr, ptr %.val46.i, align 8, !invariant.load !9, !noalias !2748 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i14, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val45.i)
          to label %bb.bb unwind label %bb.bd, !noalias !2748

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dx = getelementptr inbounds nuw i8, ptr %.val46.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !10, !invariant.load !9, !noalias !2748 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45.i) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !11, !invariant.load !9, !noalias !2748
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #15, !noalias !2748
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val46.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !10, !invariant.load !9, !noalias !2748 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eg = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !11, !invariant.load !9, !noalias !2748
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #15, !noalias !2748
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.bc, %bb.bb
  %i.ei = icmp eq i64 %i.dt, -1
  br i1 %i.ei, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.584.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.581.i, i64 88, i1 false), !noalias !2747
  %.sroa.483.sroa.10.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.483.sroa.10.0..sroa.483.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.15.i, i64 14, i1 false), !noalias !2747
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i64 %i.dt, ptr %i.k, align 8, !noalias !2747
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.5.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.3.sroa.5.0.copyload.i, ptr %.sroa.483.sroa.5.0..sroa.483.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.6.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.3.sroa.7.0.copyload.i, ptr %.sroa.483.sroa.6.0..sroa.483.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.7.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.3.sroa.9.0.copyload.i, ptr %.sroa.483.sroa.7.0..sroa.483.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.8.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 %.sroa.3.sroa.11.0.copyload.i, ptr %.sroa.483.sroa.8.0..sroa.483.0..sroa_idx.sroa_idx.i, align 8, !noalias !2747
  %.sroa.483.sroa.9.0..sroa.483.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  store i8 %.sroa.3.sroa.13.0.copyload.i, ptr %.sroa.483.sroa.9.0..sroa.483.0..sroa_idx.sroa_idx.i, align 1, !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2747
  store i8 0, ptr %i.ej, align 8, !noalias !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(152) %i.k, i64 152, i1 false), !noalias !2747
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.581.i, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header3map9HeaderMapECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.g)
          to label %bb.bh unwind label %bb.bg, !noalias !2757

bb.bg:                                            ; preds = %bb.bf
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.val1.i.i.i = load ptr, ptr %i.em, align 8, !alias.scope !2758, !noalias !2747, !align !13, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscwxJ8MeEu7n_4http10extensions10ExtensionsECslzoSl9yxMOF_11libp2p_upnp(ptr %.val1.i.i.i) #17
          to label %.body54.i unwind label %bb.bk, !noalias !2757

bb.bh:                                            ; preds = %bb.bf
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.val.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !2758, !noalias !2747, !align !13, !noundef !9 ; 4 uses
  %i.eo = icmp eq ptr %.val.i.i.i, null
  br i1 %i.eo, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i unwind label %bb.bj, !noalias !2757

bb.bj:                                            ; preds = %bb.bi
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #15, !noalias !2757
  br label %.body54.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i: ; preds = %bb.bi
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #15, !noalias !2757
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2757
  unreachable

.body54.i:                                        ; preds = %bb.bj, %bb.bg
  %eh.lpad-body55.i = phi { ptr, i32 } [ %i.el, %bb.bg ], [ %i.ep, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2747
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCscwxJ8MeEu7n_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2747
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2747
  %.sroa.12100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12100.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ek, i64 40, i1 false), !noalias !2747
  store i64 -1, ptr %i.dq, align 8, !noalias !2747
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2747
  %.sroa.1099.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1099.0..sroa_idx.i, align 8, !noalias !2747
  br label %bb.bo

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy6client14ResponseFutureECslzoSl9yxMOF_11libp2p_upnp.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.13.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3.sroa.15.i, i64 14, i1 false), !noalias !2747
  br label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i, %bb.bm
  %i.er = phi ptr [ %i.do, %bb.bm ], [ %i.fa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %i.es = phi ptr [ %i.dp, %bb.bm ], [ %i.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.7120.sroa.4.sroa.4.1.i = phi i64 [ %.sroa.3.sroa.7.0.copyload.i, %bb.bm ], [ %.sroa.7120.sroa.4.sroa.4.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.7120.sroa.4.sroa.0.1.i = phi i64 [ %.sroa.3.sroa.5.0.copyload.i, %bb.bm ], [ %.sroa.7120.sroa.4.sroa.0.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.7120.sroa.0.1.i = phi i64 [ %.sroa.3.sroa.3.0.copyload.i, %bb.bm ], [ %.sroa.7120.sroa.0.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.0117.sroa.7.sroa.0.1.in.in.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i, %bb.bm ], [ %.sroa.0117.sroa.7.sroa.0.3.in.in.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ] ; 3 uses
  %.sroa.9129.1.i = phi i8 [ %.sroa.3.sroa.13.0.copyload.i, %bb.bm ], [ %.sroa.9129.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.9126.1.i = phi i8 [ %.sroa.3.sroa.11.0.copyload.i, %bb.bm ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.8123.1.i = phi i64 [ %.sroa.3.sroa.9.0.copyload.i, %bb.bm ], [ %.sroa.8123.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit64.i ]
  %.sroa.0117.sroa.0.1.i = trunc i64 %.sroa.0117.sroa.7.sroa.0.1.in.in.i to i8
  %.sroa.0117.sroa.6.1.in.i = lshr i64 %.sroa.0117.sroa.7.sroa.0.1.in.in.i, 8
  %.sroa.0117.sroa.6.1.i = trunc i64 %.sroa.0117.sroa.6.1.in.i to i8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i8 0, ptr %i.et, align 8, !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  br label %bb.al

.body.i:                                          ; preds = %bb.ai, %bb.aw, %bb.bd, %bb.be, %bb.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i
  %i.eu = phi ptr [ %i.gj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i ], [ %i.gj, %bb.ch ], [ %i.do, %bb.be ], [ %i.ba, %bb.ai ], [ %i.do, %bb.aw ], [ %i.do, %bb.bd ] ; 2 uses
  %i.ev = phi ptr [ %i.gk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i ], [ %i.gk, %bb.ch ], [ %i.dp, %bb.be ], [ %i.bb, %bb.ai ], [ %i.dp, %bb.aw ], [ %i.dp, %bb.bd ] ; 2 uses
  %.pn34.pn.i = phi { ptr, i32 } [ %.pn31.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i ], [ %.pn31.pn.i, %bb.ch ], [ %i.ec, %bb.be ], [ %i.ct, %bb.ai ], [ %i.dr, %bb.aw ], [ %i.ec, %bb.bd ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i8 0, ptr %i.ew, align 8, !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 465
  %i.ey = load i8, ptr %i.ex, align 1, !range !31, !noalias !2747, !noundef !9
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ci, label %bb.ap

bb.bo:                                            ; preds = %bb.bl, %bb.h
  %i.fa = phi ptr [ %i.do, %bb.bl ], [ %i.ay, %bb.h ] ; 7 uses
  %i.fb = phi ptr [ %i.dp, %bb.bl ], [ %i.ax, %bb.h ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2747
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  invoke void @_RNvXNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collectINtB2_7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.fc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bq unwind label %bb.bp, !noalias !2748

bb.bp:                                            ; preds = %bb.bo
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2747
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.fc) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslzoSl9yxMOF_11libp2p_upnp.exit66.i unwind label %bb.an, !noalias !2748

bb.bq:                                            ; preds = %bb.bo
  %i.fe = load i64, ptr %i.f, align 8, !range !2759, !noalias !2747, !noundef !9 ; 3 uses
  %i.ff = icmp eq i64 %i.fe, -3
  br i1 %i.ff, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2747
  br label %.thread

bb.bs:                                            ; preds = %bb.bq
  %.sroa.3102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3102.0.copyload.i = load ptr, ptr %.sroa.3102.0..sroa_idx.i, align 8, !noalias !2747 ; 3 uses
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5103.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5103.0..sroa_idx.i, i64 112, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2747
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeGg2ZMtKzB_14http_body_util11combinators7collect7CollectNtNtNtCse0yMYRRwETY_5hyper4body8incoming8IncomingEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 dereferenceable(168) %i.fc)
          to label %bb.bt unwind label %bb.cf, !noalias !2748

bb.bt:                                            ; preds = %bb.bs
  %i.fg = icmp eq i64 %i.fe, -2
  br i1 %i.fg, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.1290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.1290.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5103.i, i64 112, i1 false), !noalias !2747
  store i64 %i.fe, ptr %i.e, align 8, !noalias !2747
  %.sroa.1087.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3102.0.copyload.i, ptr %.sroa.1087.0..sroa_idx.i, align 8, !noalias !2747
  invoke void @_RNvMNtCskeGg2ZMtKzB_14http_body_util9collectedINtB2_9CollectedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8to_bytesCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.e)
          to label %bb.bv unwind label %bb.cf, !noalias !2748

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2747
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val48.i = load ptr, ptr %i.fh, align 8, !noalias !2747, !noundef !9 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val49.i = load i64, ptr %i.fi, align 8, !noalias !2747, !noundef !9 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2762
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val49.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc57.i unwind label %bb.by, !noalias !2748

.noexc57.i:                                       ; preds = %bb.bv
  %i.fj = load i64, ptr %i.b, align 8, !range !15, !noalias !2762, !noundef !9
  %i.fk = trunc nuw i64 %i.fj to i1
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB14_19ConnectingTcpRemote7connect0ENtB4_6Future4pollCslzoSl9yxMOF_11libp2p_upnp:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4012
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.dj = load i8, ptr %i.di, align 1, !range !18, !noalias !4012, !noundef !9 ; 2 uses
  %i.dk = icmp eq i8 %i.dj, -1
  br i1 %i.dk, label %.thread39.i.i.i, label %bb.aw

.thread39.i.i.i:                                  ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4012
  store i8 3, ptr %i.de, align 4, !noalias !4012
  br label %bb.br

bb.aw:                                            ; preds = %bb.av
  %.sroa.022.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !4012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4012
  %i.dl = icmp eq i8 %i.dj, 2
  br i1 %i.dl, label %.sink.split.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dm = invoke noundef nonnull align 4 ptr @_RNvXs1_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.df)
          to label %bb.ay unwind label %bb.bb, !noalias !4017

bb.ay:                                            ; preds = %bb.ax
  %i.dn = invoke { i64, ptr } @_RNvMNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6streamNtB2_9TcpStream10take_error(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dm)
          to label %bb.az unwind label %bb.bb, !noalias !4017 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = extractvalue { i64, ptr } %i.dn, 1      ; 3 uses
  %i.dq = trunc nuw i64 %i.do to i1
  br i1 %i.dq, label %.sink.split.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i, label %bb.bm, label %bb.bc

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.sink.split.i.i.i.i:                              ; preds = %bb.az, %bb.aw
  %.sink.i.i.i.i = phi ptr [ %.sroa.022.0.copyload.i.i.i.i, %bb.aw ], [ %i.dp, %bb.az ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i) ]
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split.i.i.i.i, %bb.ba
  %.sroa.626.1.i.i.i.i = phi ptr [ %i.dp, %bb.ba ], [ %.sink.i.i.i.i, %.sink.split.i.i.i.i ]
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %bb.bf unwind label %bb.bd, !noalias !4017

bb.bd:                                            ; preds = %bb.bc
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %.val2.i.i.i.i.i.i = load i32, ptr %i.dt, align 8, !alias.scope !4018, !noalias !4012, !noundef !9 ; 2 uses
  %i.du = icmp eq i32 %.val2.i.i.i.i.i.i, -1
  br i1 %i.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dv = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i) #15, !noalias !4017 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %.val.i.i.i.i.i.i = load i32, ptr %i.dw, align 8, !alias.scope !4018, !noalias !4012, !noundef !9 ; 2 uses
  %i.dx = icmp eq i32 %.val.i.i.i.i.i.i, -1
  br i1 %i.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dy = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #15, !noalias !4017 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.df) #17
          to label %.body.i.i.i.i unwind label %bb.bh, !noalias !4017

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !4017
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %.thread44.i.i.i unwind label %bb.bj, !noalias !4017

bb.bi:                                            ; preds = %bb.bb, %bb.au
  %.pn9.pn.i.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.au ], [ %i.dr, %bb.bb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.df) #17
          to label %.body.i.i.i.i unwind label %bb.bk, !noalias !4017

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !4017
  unreachable

bb.bl:                                            ; preds = %bb.as, %bb.ar
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bl, %.body.i.i.i.i
  %i.ed = phi ptr [ %i.cs, %bb.bl ], [ %i.dd, %.body.i.i.i.i ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ec, %bb.bl ], [ %.pn12.pn.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.ed) #17
          to label %bb.ai unwind label %bb.af, !noalias !4011

.thread44.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i, %bb.aq
  %i.ee = phi ptr [ %i.de, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i ], [ %i.cu, %bb.aq ]
  %i.ef = phi ptr [ %i.df, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i ], [ %i.cv, %bb.aq ]
  %.sroa.626.0.i.ph.i.i.i = phi ptr [ %.sroa.626.1.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECslzoSl9yxMOF_11libp2p_upnp.exit.i.i.i.i.i ], [ %i.da, %bb.aq ]
  store i8 1, ptr %i.ee, align 4, !noalias !4012
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ba
  %.sroa.031.0.copyload.i.i.i.i = load i64, ptr %i.df, align 8, !noalias !4012 ; 2 uses
  %.sroa.432.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %.sroa.432.0.copyload.i.i.i.i = load ptr, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !noalias !4012
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %.sroa.935.i.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.533.0..sroa_idx.i.i.i.i, align 8, !noalias !4010
  %.sroa.935.i.sroa.7.0..sroa.533.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %.sroa.935.i.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.935.i.sroa.7.0..sroa.533.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !4010
  store i8 1, ptr %i.de, align 4, !noalias !4012
  %i.eg = icmp eq i64 %.sroa.031.0.copyload.i.i.i.i, -1
  br i1 %i.eg, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread44.i.i.i
  %.sroa.935.i.sroa.0.3.i.i = phi i64 [ undef, %.thread44.i.i.i ], [ %.sroa.935.i.sroa.0.0.copyload.i.i, %bb.bm ]
  %.sroa.935.i.sroa.7.3.i.i = phi ptr [ undef, %.thread44.i.i.i ], [ %.sroa.935.i.sroa.7.0.copyload.i.i, %bb.bm ]
  %i.eh = phi ptr [ %i.ef, %.thread44.i.i.i ], [ %i.df, %bb.bm ]
  %.sroa.626.0.i48.i.i.i = phi ptr [ %.sroa.626.0.i.ph.i.i.i, %.thread44.i.i.i ], [ %.sroa.432.0.copyload.i.i.i.i, %bb.bm ]
  %.sroa.024.0.i47.i.i.i = phi i64 [ 2, %.thread44.i.i.i ], [ %.sroa.031.0.copyload.i.i.i.i, %bb.bm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.eh)
          to label %bb.bo unwind label %bb.ah, !noalias !4011

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4010
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 329
  store i8 0, ptr %i.ei, align 1, !noalias !4010
  br label %bb.bs

bb.bp:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %.val20.i.i.i = load i32, ptr %i.ej, align 4, !range !23, !noalias !4010, !noundef !9
  %i.ek = call noundef i32 @close(i32 noundef %.val20.i.i.i) #15, !noalias !4011 ; 0 uses
  br label %bb.ae

bb.bq:                                            ; preds = %bb.ak, %bb.aj
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bq, %bb.ae
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.el, %bb.bq ], [ %.pn14.pn.i.i.i, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6socketNtBG_9TcpSocket7connect0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.bv) #17
          to label %.body29.i.i unwind label %bb.w, !noalias !4009

bb.br:                                            ; preds = %bb.bm, %.thread39.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4010
  store i8 3, ptr %i.bw, align 8, !noalias !4010
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bo, %.thread.i.i.i
  %.sroa.4.i.sroa.0.0.i.i = phi i64 [ %.sroa.935.i.sroa.0.3.i.i, %bb.bo ], [ undef, %.thread.i.i.i ]
  %.sroa.4.i.sroa.5.0.i.i = phi ptr [ %.sroa.935.i.sroa.7.3.i.i, %bb.bo ], [ undef, %.thread.i.i.i ]
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.626.0.i48.i.i.i, %bb.bo ], [ %i.cd, %.thread.i.i.i ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.024.0.i47.i.i.i, %bb.bo ], [ 2, %.thread.i.i.i ]
  store i8 1, ptr %i.bw, align 8, !noalias !4010
  br label %bb.bu

bb.bt:                                            ; preds = %.thread.i, %bb.u, %bb.s
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i.i

bb.bu:                                            ; preds = %bb.bs, %bb.t
  %.sroa.21.2.i.i = phi ptr [ %.sroa.4.i.sroa.5.0.i.i, %bb.bs ], [ %.sroa.7.sroa.3.0.copyload.i.i, %bb.t ]
  %.sroa.18.2.i.i = phi i64 [ %.sroa.4.i.sroa.0.0.i.i, %bb.bs ], [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.t ]
  %.sroa.13.1.i.i = phi ptr [ %.sroa.3.0.i.i.i, %bb.bs ], [ %.sroa.6.0.copyload.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.02.0.i.i.i, %bb.bs ], [ %i.br, %bb.t ] ; 2 uses
  %i.en = icmp eq i64 %.sroa.0.1.i.i, 2
  br i1 %i.en, label %.thread.i, label %bb.bx

.thread.i:                                        ; preds = %bb.bu, %bb.v, %bb.u
  %.sroa.13.1.i272.i = phi ptr [ %.sroa.13.1.i.i, %bb.bu ], [ %i.bt, %bb.u ], [ %.sroa.6.0.copyload.i.i, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i272.i) ]
  %i.eo = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull %.sroa.13.1.i272.i)
          to label %.noexc32.i.i unwind label %bb.bt, !noalias !4009 ; 2 uses

.noexc32.i.i:                                     ; preds = %.thread.i
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  br label %bb.bx

bb.bv:                                            ; preds = %bb.n, %bb.m
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bv, %.body29.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.bv ], [ %.pn26.i.i, %.body29.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http7connect0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.be) #17
          to label %bb.by unwind label %bb.dg, !noalias !4002

bb.bw:                                            ; preds = %bb.br, %bb.r
  %.sink.i.ph.i = phi i8 [ 4, %bb.br ], [ 3, %bb.r ]
  store i8 %.sink.i.ph.i, ptr %i.bf, align 8, !noalias !4008
  store i16 -2, ptr %0, align 8, !alias.scope !4002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8197.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8197.sroa.11.i)
  br label %_RNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB7_19ConnectingTcpRemote7connect0CslzoSl9yxMOF_11libp2p_upnp.exit

bb.bx:                                            ; preds = %.noexc32.i.i, %bb.bu
  %.sroa.16.0.i = phi ptr [ %i.eq, %.noexc32.i.i ], [ undef, %bb.bu ]
  %.sroa.15.0.i = phi ptr [ %i.ep, %.noexc32.i.i ], [ undef, %bb.bu ]
  %.sroa.12.0.i = phi ptr [ @54, %.noexc32.i.i ], [ %.sroa.21.2.i.i, %bb.bu ] ; 2 uses
  %.sroa.11201.0.i = phi i64 [ undef, %.noexc32.i.i ], [ %.sroa.18.2.i.i, %bb.bu ] ; 2 uses
  %.sroa.10.0.i = phi ptr [ undef, %.noexc32.i.i ], [ %.sroa.13.1.i.i, %bb.bu ] ; 2 uses
  %.sroa.9200.0.i = phi i64 [ 2, %.noexc32.i.i ], [ %.sroa.0.1.i.i, %bb.bu ] ; 2 uses
  %.not27.i = phi i1 [ false, %.noexc32.i.i ], [ true, %bb.bu ]
  %.sroa.0198.0.i = phi i16 [ 2, %.noexc32.i.i ], [ -1, %bb.bu ]
  store i8 1, ptr %i.bf, align 8, !noalias !4008
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4http7connect0ECslzoSl9yxMOF_11libp2p_upnp(ptr noundef nonnull align 8 %i.be)
          to label %bb.ca unwind label %bb.bz, !noalias !4002

bb.by:                                            ; preds = %bb.fp, %.body164.i, %bb.dh, %bb.bz, %.body.i
  %.pn59.i = phi { ptr, i32 } [ %i.na, %bb.fp ], [ %.pn57.i, %.body164.i ], [ %.pn37.pn.i, %bb.dh ], [ %i.es, %bb.bz ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8197.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8197.sroa.11.i)
  br label %bb.el

bb.bz:                                            ; preds = %bb.bx
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not27.i, label %.noexc84.i, label %.noexc81.i

.noexc84.i:                                       ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4003
  store i64 %.sroa.9200.0.i, ptr %i.ag, align 8, !noalias !4003
  %.sroa.3.sroa.4.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.3.sroa.4.6..sroa_idx.i, align 8, !noalias !4003
  %.sroa.3.sroa.5.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.11201.0.i, ptr %.sroa.3.sroa.5.6..sroa_idx.i, align 8, !noalias !4003
  %.sroa.3.sroa.6.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %.sroa.12.0.i, ptr %.sroa.3.sroa.6.6..sroa_idx.i, align 8, !noalias !4003
  %i.et = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4003
  %.off.i = add i64 %i.et, -2
  %switch.i = icmp ult i64 %.off.i, 4
  br i1 %switch.i, label %.thread289.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc84.i
  %i.eu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4003 ; 2 uses
  %i.ev = icmp ult i8 %i.eu, 3
  br i1 %i.ev, label %bb.cd, label %bb.cc, !prof !32

bb.cc:                                            ; preds = %bb.cb
  %i.ew = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE) #16
          to label %bb.cd unwind label %bb.ce, !noalias !4002

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.0.0.i127.i = phi i8 [ %i.eu, %bb.cb ], [ %i.ew, %bb.cc ] ; 2 uses
  %i.ex = icmp eq i8 %.sroa.0.0.i127.i, 0
  br i1 %i.ex, label %.thread289.i, label %bb.cf

bb.ce:                                            ; preds = %bb.cf, %bb.cc
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.cf:                                            ; preds = %bb.cd
  %i.ez = load ptr, ptr @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE, align 8, !noalias !4003, !nonnull !9, !align !13, !noundef !9
  %i.fa = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ez, i8 noundef %.sroa.0.0.i127.i)
          to label %bb.cg unwind label %bb.ce, !noalias !4002

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.fa, label %bb.cs, label %.thread289.i

.thread289.i:                                     ; preds = %bb.cg, %bb.cd, %.noexc84.i
  %i.fb = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4003
  %.not315.i = icmp eq i8 %i.fb, 0
  br i1 %.not315.i, label %bb.ch, label %bb.cr

bb.ch:                                            ; preds = %.thread289.i
  %i.fc = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4003 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 6
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp samesign ugt i64 %i.fc, 3
  br i1 %i.fe, label %bb.ci, label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  %i.ff = load ptr, ptr @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE, align 8, !noalias !4003, !nonnull !9, !align !13, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4003
  %i.fg = getelementptr i8, ptr %i.ff, i64 32
  %.val113.i = load ptr, ptr %i.fg, align 8, !noalias !4002, !nonnull !9, !noundef !9
  %i.fh = getelementptr i8, ptr %i.ff, i64 40
  %.val114.i = load i64, ptr %i.fh, align 8, !noalias !4002, !noundef !9
  store i64 4, ptr %i.ab, align 8, !alias.scope !4019, !noalias !4003
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.val113.i, ptr %i.fi, align 8, !alias.scope !4019, !noalias !4003
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.val114.i, ptr %i.fj, align 8, !alias.scope !4019, !noalias !4003
  %i.fk = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.cj unwind label %bb.ck, !noalias !4002 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.fl = extractvalue { ptr, ptr } %i.fk, 0      ; 2 uses
  %i.fm = extractvalue { ptr, ptr } %i.fk, 1      ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !invariant.load !9, !noalias !4002, !nonnull !9
  %i.fp = invoke noundef zeroext i1 %i.fo(ptr noundef %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.cl unwind label %bb.ck, !noalias !4002

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.fp, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4003
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4003
  %i.fr = load ptr, ptr @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE, align 8, !noalias !4003, !nonnull !9, !align !13, !noundef !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4003
  %i.ft = getelementptr inbounds nuw i8, ptr %.val, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4003
  store ptr %i.ft, ptr %i.x, align 8, !noalias !4003
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.5217.0..sroa_idx.i, align 8, !noalias !4003
  store ptr @51, ptr %i.y, align 8, !noalias !4003
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.fu, align 8, !noalias !4003
  store ptr %i.y, ptr %i.z, align 8, !noalias !4003
  %i.fv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @6, ptr %i.fv, align 8, !noalias !4003
  store i64 1, ptr %i.aa, align 8, !alias.scope !4020, !noalias !4003
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i130.i, align 8, !alias.scope !4020, !noalias !4003
  %.sroa.5.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i131.i, align 8, !alias.scope !4020, !noalias !4003
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.fs, ptr %i.fw, align 8, !alias.scope !4020, !noalias !4003
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ff, ptr noundef nonnull %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %bb.cp unwind label %bb.co, !noalias !4002

bb.co:                                            ; preds = %bb.cn
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4003
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4003
  br label %bb.cm

bb.cq:                                            ; preds = %bb.co, %bb.ck
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %i.fx, %bb.co ], [ %i.fq, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4003
  br label %bb.df

bb.cr:                                            ; preds = %_RNCNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_0CslzoSl9yxMOF_11libp2p_upnp.exit, %bb.cm, %bb.ch, %.thread289.i
  %.sroa.5242.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5242.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.5242.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4003
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4003
  %i.fy = load ptr, ptr @_RNvNCNvMsf_NtNtNtNtCs5IbPN03UQpS_10hyper_util6client6legacy7connect4httpNtB9_19ConnectingTcpRemote7connect0s_10___CALLSITE, align 8, !noalias !4003, !nonnull !9, !align !13, !noundef !9 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4003
  %i.ga = getelementptr inbounds nuw i8, ptr %.val, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4003
  store ptr %i.ga, ptr %i.ac, align 8, !noalias !4003
  %.sroa.5209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
end_hunk_7
