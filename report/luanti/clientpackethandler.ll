begin_hunk_0_@_ZN6Client24handleCommand_MovePlayerEP13NetworkPacket:bb.a
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.p = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9, !nonnull !24, !align !25 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !391
  %.v.i = select i1 %i.t, i64 976, i64 984
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.40, ptr %i.d, align 8, !tbaa !29
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.41, ptr %i.c, align 8, !tbaa !29
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.42, ptr %i.b, align 8, !tbaa !29
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 5 uses
  %.not.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i3, label %_ZN11StreamProxylsIRfEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !42
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %.pre.i, %bb.d ], [ %i.z, %bb.c ]
  %i.ai = load float, ptr %i.e, align 4, !tbaa !279
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, double noundef %i.aj) ; 0 uses
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit

_ZN11StreamProxylsIRfEERS_OT_.exit:               ; preds = %_ZTW10infostream.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.43, ptr %i.a, align 8, !tbaa !29
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41 ; 5 uses
  %.not.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i4, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN11StreamProxylsIRfEERS_OT_.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.pre.i5 = load ptr, ptr %i.al, align 8, !tbaa !41
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit6

_ZN11StreamProxylsIRfEERS_OT_.exit6:              ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %.pre.i5, %bb.g ], [ %i.am, %bb.f ]
  %i.av = load float, ptr %i.f, align 4, !tbaa !279
  %i.aw = fpext nsz float %i.av to double
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, double noundef %i.aw) ; 0 uses
  %.pr = load ptr, ptr %i.al, align 8, !tbaa !41  ; 5 uses
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit6
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !26
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.pr, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !42
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i8 = load ptr, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %.pre = load ptr, ptr %.pre.i8, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre10 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi i64 [ %.pre10, %bb.i ], [ %i.ba, %bb.h ]
  %i.bg = phi ptr [ %.pre.i8, %bb.i ], [ %.pr, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !57
  %.not.i1.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !63
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 10), !inline_history !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bn, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext %.0.i.i.i)
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit, %_ZN11StreamProxylsIRfEERS_OT_.exit6, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.bu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 5 uses
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !381
  store i8 2, ptr %i.bu, align 8, !tbaa !383
  %i.bv = load float, ptr %i.e, align 4, !tbaa !279
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.bv, ptr %i.bw, align 8, !tbaa !63
  %i.bx = load float, ptr %i.f, align 4, !tbaa !279
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !386 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !387
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.not.i.i = icmp eq ptr %i.ca, %i.cd
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  store ptr %i.bu, ptr %i.ca, align 8, !tbaa !381
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !386
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.o:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !279
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.113, i64 noundef 1) ; 0 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %2 = fpext nsz float %.sroa.01.0.vec.extract.i to double
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %2) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  %3 = fpext nsz float %.sroa.01.4.vec.extract.i to double
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, double noundef %3) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %i.o = fpext nsz float %.sroa.22.0.copyload to double
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client27handleCommand_MovePlayerRelEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d.201", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !279
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !280
  %i.b = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 604 ; 2 uses
  %i.f = load <2 x float>, ptr %2, align 8, !tbaa !279
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !279
  %i.h = fadd nsz <2 x float> %i.f, %i.g
  store <2 x float> %i.h, ptr %i.e, align 4, !tbaa !279
  %i.i = load float, ptr %i.a, align 8, !tbaa !280
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 612 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !280
  %i.l = fadd nsz float %i.i, %i.k
  store float %i.l, ptr %i.j, align 4, !tbaa !280
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 652
  store i8 0, ptr %i.m, align 4, !tbaa !390
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client31handleCommand_DeathScreenLegacyEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !381
  store i8 3, ptr %i.b, align 8, !tbaa !383
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.d, align 8, !tbaa !381
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !386
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Client27handleCommand_AnnounceMediaEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.80", align 8    ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::vector.80", align 8    ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %class.BasicStrfnd, align 8        ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !24, !align !25 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !392
  %.v.i = select i1 %i.k, i64 976, i64 984
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.44, ptr %i.e, align 8, !tbaa !29
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  %.not.i48 = icmp eq ptr %i.p, null
  br i1 %.not.i48, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN11StreamProxylsIjEERS_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !41
  br label %_ZN11StreamProxylsIjEERS_OT_.exit

_ZN11StreamProxylsIjEERS_OT_.exit:                ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.y = zext i32 %i.o to i64
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.y) ; 0 uses
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  %.not.i49 = icmp eq ptr %.pr, null
  br i1 %.not.i49, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11StreamProxylsIjEERS_OT_.exit
  %i.aa = load ptr, ptr %.pr, align 8, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.pr, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !42
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i50 = load ptr, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  %.pre = load ptr, ptr %.pre.i50, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre174 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %.pre174, %bb.f ], [ %i.ac, %bb.e ]
  %i.ai = phi ptr [ %.pre.i50, %bb.f ], [ %.pr, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %.not.i.i.i138 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i138, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !57
  %.not.i1.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !63
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 10), !inline_history !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.at, %bb.j ]
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext %.0.i.i.i)
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZN11StreamProxylsIjEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !393 ; 3 uses
  %.not.i51 = icmp eq ptr %i.ax, null
end_hunk_0
