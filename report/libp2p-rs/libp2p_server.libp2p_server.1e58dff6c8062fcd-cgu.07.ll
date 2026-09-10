Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.07?download=true
inline.NumInlined: 3696
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn5StateECs2Bxje7pdMIr_13libp2p_server:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  %switch.i.i.i = icmp samesign ult i8 %i.l, 10
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val1.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !5124, !noundef !17 ; 2 uses
  %i.o = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5124, !nonnull !17, !noundef !17
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #34, !noalias !5124
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load ptr, ptr %i.q, align 8, !noundef !17 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val16 = load ptr, ptr %i.r, align 8           ; 6 uses
  %i.s = icmp eq ptr %.val15, null
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.t = load ptr, ptr %.val16, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val15)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !33, !invariant.load !17
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #34
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !33, !invariant.load !17
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #34
  br label %.body

.body:                                            ; preds = %bb.o, %bb.n, %bb.d
  %.pn4 = phi { ptr, i32 } [ %.pn, %bb.d ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5125)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5125, !noundef !17 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.p

bb.p:                                             ; preds = %.body
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !5126
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscwxJ8MeEu7n_4http6method6MethodEECs2Bxje7pdMIr_13libp2p_server.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5127)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !5127, !noundef !17 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !5128
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22 unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.p, %.body, %bb.q, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.as, %bb.v ], [ %.pn4, %bb.q ], [ %.pn4, %.body ], [ %.pn4, %bb.p ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5129)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !5129, !noundef !17 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit
  %i.aq = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !5130
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper3ext13informational23OnInformationalCallbackNtNtCskKLDkoKarTP_4core6marker4SendNtB1R_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.aq

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5131)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !5131, !noundef !17 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22
  %i.aw = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !5132
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper3ext13informational23OnInformationalCallbackNtNtCskKLDkoKarTP_4core6marker4SendNtB1R_4SyncEL_E9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25 unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit, %bb.u, %bb.y
  %.pn8 = phi { ptr, i32 } [ %i.az, %bb.y ], [ %.pn6, %bb.u ], [ %.pn6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit ], [ %.pn6, %bb.t ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ay) #38
          to label %bb.ab unwind label %bb.aq

bb.y:                                             ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCse0yMYRRwETY_5hyper6common4time4TimeECs2Bxje7pdMIr_13libp2p_server.exit22, %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !range !39, !alias.scope !5133, !noundef !17
  switch i64 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit [
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split.i: ; preds = %bb.aa, %bb.z
  %.sink.i = phi ptr [ %i.bg, %bb.z ], [ %i.bn, %bb.aa ]
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sink.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.ac

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load i64, ptr %i.bc, align 8, !range !39, !alias.scope !5134, !noundef !17 ; 2 uses
  %i.be = icmp ne i64 %i.bd, 3
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp samesign ugt i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !5133
  %i.bi = icmp eq ptr %i.bh, null
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split.i

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bk = load i64, ptr %i.bj, align 8, !range !39, !alias.scope !5135, !noundef !17 ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 3
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !5133
  %i.bp = icmp eq ptr %i.bo, null
  %or.cond6.i = select i1 %i.bm, i1 true, i1 %i.bp
  br i1 %or.cond6.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split.i

bb.ab:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit
  %.pn10 = phi { ptr, i32 } [ %i.br, %bb.ac ], [ %.pn8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bq) #38
          to label %.body27 unwind label %bb.aq

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.aa, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit25, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !66, !alias.scope !5136, !noundef !17 ; 3 uses
  %i.bu = icmp ne i64 %i.bt, -9223372036854775805
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add i64 %i.bt, 9223372036854775806      ; 2 uses
  %1 = icmp ugt i64 %i.bv, 3
  %2 = icmp eq i64 %i.bv, 1
  %3 = or i1 %1, %2
  br i1 %3, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit
  switch i64 %i.bt, label %bb.ae [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit
    i64 -9223372036854775807, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit
    i64 -9223372036854775808, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit
  ]

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.body27 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.ah

.body27:                                          ; preds = %bb.ah, %bb.af, %bb.ab
  %.pn12 = phi { ptr, i32 } [ %.pn10, %bb.ab ], [ %i.bz, %bb.ah ], [ %i.bw, %bb.af ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.by) #38
          to label %common.resume unwind label %bb.aq

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.ad, %bb.ad, %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !25, !alias.scope !5137, !noundef !17
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCse0yMYRRwETY_5hyper7upgrade8UpgradedNtNtB1z_5error5ErrorEENtNtNtBY_3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5138)
  %i.cf = load ptr, ptr %i.cd, align 8, !alias.scope !5139, !noundef !17 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !5140
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCse0yMYRRwETY_5hyper7upgrade8UpgradedNtNtB26_5error5ErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd) #36
          to label %common.resume unwind label %bb.ap

bb.am:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5141)
  %i.cj = load ptr, ptr %i.cd, align 8, !alias.scope !5142, !noundef !17 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !5143
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server.exit

bb.ao:                                            ; preds = %bb.an
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCse0yMYRRwETY_5hyper7upgrade8UpgradedNtNtB26_5error5ErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server.exit

bb.ap:                                            ; preds = %bb.al
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %.body27, %bb.aj, %bb.ak, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.aj ], [ %i.ce, %bb.al ], [ %i.ce, %bb.ak ], [ %.pn12, %.body27 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCse0yMYRRwETY_5hyper7upgrade7PendingEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server.exit, %bb.am, %bb.an, %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.u, %bb.q, %bb.d, %bb.c, %.body27, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper3ext13informational15OnInformationalEECs2Bxje7pdMIr_13libp2p_server.exit
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7ReadingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !39, !noundef !17
  switch i64 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit [
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  tail call void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sink)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !39, !alias.scope !5152, !noundef !17 ; 2 uses
  %i.d = icmp ne i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !39, !alias.scope !5153, !noundef !17 ; 2 uses
  %i.k = icmp ne i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %or.cond6 = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderECs2Bxje7pdMIr_13libp2p_server.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h14conn7WritingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !66, !noundef !17 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add i64 %i.a, 9223372036854775806        ; 2 uses
  %1 = icmp ugt i64 %i.c, 3
  %2 = icmp eq i64 %i.c, 1
  %3 = or i1 %1, %2
  br i1 %3, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.c [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit
    i64 -9223372036854775807, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit
    i64 -9223372036854775808, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode7EncoderECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %bb.b, %bb.b, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h18dispatch15SenderDropGuardECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtCse0yMYRRwETY_5hyper5proto2h18dispatchNtB5_15SenderDropGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper4body8incoming6SenderEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #38
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCse0yMYRRwETY_5hyper4body8incoming6SenderEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6PongerECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5178)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !range !48, !alias.scope !5178, !noundef !17
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5179)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5180 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5180, !nonnull !17, !align !22, !noundef !17 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i, align 8, !invariant.load !17, !noalias !5180 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !5180

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !18, !invariant.load !17, !noalias !5180 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEECs2Bxje7pdMIr_13libp2p_server.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !33, !invariant.load !17, !noalias !5180
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #34, !noalias !5180
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEECs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !18, !invariant.load !17, !noalias !5180 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !33, !invariant.load !17, !noalias !5180
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #34, !noalias !5180
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5181)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !5182, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %.body.i.i
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5183
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #36
          to label %.body unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !5185, !noundef !17 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i2.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !5186
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5TimerNtNtCskKLDkoKarTP_4core6marker4SendNtB1o_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.h, %bb.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %.body.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !5189, !nonnull !17, !noundef !17
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !5189
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.n:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCse0yMYRRwETY_5hyper2rt5timer5Sleepp6OutputuEL_EEECs2Bxje7pdMIr_13libp2p_server.exit.i.i, %bb.a, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5191)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5192, !nonnull !17, !noundef !17
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !5192
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit2

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping9KeepAliveEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCse0yMYRRwETY_5hyper5proto2h24ping6SharedEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.body, %bb.n
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
