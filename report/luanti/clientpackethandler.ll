Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientpackethandler?download=true
inline.NumInlined: 2826
inline.NumDeleted: 1205
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Client24handleCommand_MovePlayerEP13NetworkPacket:bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37, !nonnull !38, !align !39 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !548
  %.v.i = select i1 %i.t, i64 976, i64 984
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.40, ptr %i.d, align 8, !tbaa !42
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.41, ptr %i.c, align 8, !tbaa !42
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.42, ptr %i.b, align 8, !tbaa !42
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 5 uses
  %.not.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i3, label %_ZN11StreamProxylsIRfEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !59
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %.pre.i, %bb.d ], [ %i.z, %bb.c ]
  %i.ai = load float, ptr %i.e, align 4, !tbaa !283
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, double noundef %i.aj) ; 0 uses
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit

_ZN11StreamProxylsIRfEERS_OT_.exit:               ; preds = %_ZTW10infostream.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.43, ptr %i.a, align 8, !tbaa !42
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51 ; 5 uses
  %.not.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i4, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !59
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN11StreamProxylsIRfEERS_OT_.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.pre.i5 = load ptr, ptr %i.al, align 8, !tbaa !51
  br label %_ZN11StreamProxylsIRfEERS_OT_.exit6

_ZN11StreamProxylsIRfEERS_OT_.exit6:              ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %.pre.i5, %bb.g ], [ %i.am, %bb.f ]
  %i.av = load float, ptr %i.f, align 4, !tbaa !283
  %i.aw = fpext nsz float %i.av to double
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, double noundef %i.aw) ; 0 uses
  %.pr = load ptr, ptr %i.al, align 8, !tbaa !51  ; 5 uses
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit6
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.pr, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i8 = load ptr, ptr %i.al, align 8, !tbaa !51 ; 2 uses
  %.pre = load ptr, ptr %.pre.i8, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre10 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi i64 [ %.pre10, %bb.i ], [ %i.ba, %bb.h ]
  %i.bg = phi ptr [ %.pre.i8, %bb.i ], [ %.pr, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !72
  %.not.i1.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !73
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bn, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext %.0.i.i.i)
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit, %_ZN11StreamProxylsIRfEERS_OT_.exit6, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.bu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 5 uses
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !349
  store i8 2, ptr %i.bu, align 8, !tbaa !352
  %i.bv = load float, ptr %i.e, align 4, !tbaa !283
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.bv, ptr %i.bw, align 8, !tbaa !73
  %i.bx = load float, ptr %i.f, align 4, !tbaa !283
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !353 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !354
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.not.i.i = icmp eq ptr %i.ca, %i.cd
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  store ptr %i.bu, ptr %i.ca, align 8, !tbaa !349
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !353
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !283
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !283
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.113, i64 noundef 1) ; 0 uses
  %i.k = fpext nsz <2 x float> %.sroa.01.0.copyload to <2 x double> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.50, i64 noundef 1) ; 0 uses
  %i.r = fpext nsz float %.sroa.22.0.copyload to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client27handleCommand_MovePlayerRelEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d.201", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !283
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !285
  %i.b = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !319  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 604 ; 2 uses
  %i.f = load <2 x float>, ptr %2, align 8, !tbaa !283
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !283
  %i.h = fadd nsz <2 x float> %i.f, %i.g
  store <2 x float> %i.h, ptr %i.e, align 4, !tbaa !283
  %i.i = load float, ptr %i.a, align 8, !tbaa !285
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 612 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !285
  %i.l = fadd nsz float %i.i, %i.k
  store float %i.l, ptr %i.j, align 4, !tbaa !285
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 652
  store i8 0, ptr %i.m, align 4, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client31handleCommand_DeathScreenLegacyEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !349
  store i8 3, ptr %i.b, align 8, !tbaa !352
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !354
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.d, align 8, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !353
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
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.80", align 8    ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::vector.80", align 8    ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = alloca i16, align 2                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %class.BasicStrfnd, align 8        ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !nonnull !38, !align !39 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !549
  %.v.i = select i1 %i.l, i64 976, i64 984
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.44, ptr %i.f, align 8, !tbaa !42
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !51   ; 5 uses
  %.not.i48 = icmp eq ptr %i.q, null
  br i1 %.not.i48, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !59
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN11StreamProxylsIjEERS_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !51
  br label %_ZN11StreamProxylsIjEERS_OT_.exit

_ZN11StreamProxylsIjEERS_OT_.exit:                ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.q, %bb.c ]
  %i.z = zext i32 %i.p to i64
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.z) ; 0 uses
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !51   ; 5 uses
  %.not.i49 = icmp eq ptr %.pr, null
  br i1 %.not.i49, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11StreamProxylsIjEERS_OT_.exit
  %i.ab = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.pr, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i50 = load ptr, ptr %i.m, align 8, !tbaa !51 ; 2 uses
  %.pre = load ptr, ptr %.pre.i50, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre186 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi i64 [ %.pre186, %bb.f ], [ %i.ad, %bb.e ]
  %i.aj = phi ptr [ %.pre.i50, %bb.f ], [ %.pr, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i141, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !72
  %.not.i1.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 67
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.am)
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef signext i8 %i.at(ptr noundef nonnull align 8 dereferenceable(570) %i.am, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.aq, %bb.i ], [ %i.au, %bb.j ]
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef signext %.0.i.i.i)
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN25ParticleSpawnerParametersD2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIP21ServerParticleTextureS0_EvT_S2_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !445
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt6vectorI21ServerParticleTextureSaIS0_EED2Ev.exit

_ZNSt6vectorI21ServerParticleTextureSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP21ServerParticleTextureS0_EvT_S2_RSaIT0_E.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !281  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN20CommonParticleParamsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorI21ServerParticleTextureSaIS0_EED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !73
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZN20CommonParticleParamsD2Ev.exit

_ZN20CommonParticleParamsD2Ev.exit:               ; preds = %_ZNSt6vectorI21ServerParticleTextureSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client35handleCommand_DeleteParticleSpawnerEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !349
  store i8 9, ptr %i.d, align 8, !tbaa !352
  %i.e = load i32, ptr %i.a, align 4, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !353  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %.not.i.i = icmp eq ptr %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.h, align 8, !tbaa !349
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client20handleCommand_HudAddEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.core::vector2d.291", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.core::vector2d.291", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.core::vector2d.291", align 8 ; 6 uses
  %7 = alloca %"class.core::vector2d.291", align 8 ; 6 uses
  %8 = alloca %"class.core::vector3d.201", align 8 ; 7 uses
  %9 = alloca %"class.core::vector2d.291", align 8 ; 7 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.core::vector2d.523", align 8 ; 7 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !78
  store i8 0, ptr %i.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !78
  store i8 0, ptr %i.k, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !283
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float 0.000000e+00, ptr %i.m, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i16 0, ptr %i.f, align 2, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.n, ptr %10, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !78
  store i8 0, ptr %i.n, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.p = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.q = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.q, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.y = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.x, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %8)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 642
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !276
  %i.ad = icmp ugt i16 %i.ac, 51
  br i1 %i.ad, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store i32 0, ptr %11, align 8, !tbaa !447
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !448
  %i.ah = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ai = load <2 x i32>, ptr %11, align 8, !tbaa !79
  %i.aj = sitofp nsz <2 x i32> %i.ai to <2 x float>
  store <2 x float> %i.aj, ptr %9, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ae

bb.s:                                             ; preds = %bb.n, %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !306
  %.not = icmp eq i32 %i.am, %i.ao
  br i1 %.not, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERs(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.f)
          to label %bb.u unwind label %bb.o       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !74
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !306
  %.not36 = icmp eq i32 %i.aq, %i.ar
  br i1 %.not36, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.w unwind label %bb.o       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.at = load i32, ptr %i.al, align 8, !tbaa !74
  %i.au = load i32, ptr %i.an, align 4, !tbaa !306
  %.not37 = icmp eq i32 %i.at, %i.au
  br i1 %.not37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.y unwind label %bb.o       ; 0 uses

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.aw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.z unwind label %bb.ad      ; 4 uses

bb.z:                                             ; preds = %bb.y
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !349
  store i8 10, ptr %i.aw, align 8, !tbaa !352
  %i.ax = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #30
          to label %bb.aa unwind label %bb.ad     ; 12 uses

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.ax, i8 0, i64 176, i1 false)
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !76
  store i8 0, ptr %i.ba, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 72 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !76
  store i8 0, ptr %i.bc, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !76
  store i8 0, ptr %i.be, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bf, i8 0, i64 36, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 13 uses
  store ptr %i.ax, ptr %i.bg, align 8, !tbaa !73
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !79
  store i32 %i.bh, ptr %i.ax, align 16, !tbaa !642
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !643
  %i.bk = load i64, ptr %2, align 8, !tbaa !283
  store i64 %i.bk, ptr %i.ay, align 8, !tbaa !283
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %4, align 8, !tbaa !283
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !283
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19 unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !79
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  store i32 %i.bq, ptr %i.bs, align 8, !tbaa !644
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !79
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 124
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !645
  %i.bw = load i32, ptr %i.e, align 4, !tbaa !79
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  store i32 %i.bw, ptr %i.by, align 8, !tbaa !646
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.cb = load i64, ptr %6, align 8, !tbaa !283
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !283
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 144
  %i.ce = load i64, ptr %7, align 8, !tbaa !283
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !283
  %i.cf = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !355
  %i.ch = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 164
  %i.cj = load i64, ptr %9, align 8, !tbaa !283
  store i64 %i.cj, ptr %i.ci, align 4, !tbaa !283
  %i.ck = load i16, ptr %i.f, align 2, !tbaa !80
  %i.cl = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 172
  store i16 %i.ck, ptr %i.cm, align 4, !tbaa !647
  %i.cn = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20 unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !79
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 132
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !648
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !353 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !354
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8
  %.not.i.i = icmp eq ptr %i.ct, %i.cw
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20
  store ptr %i.aw, ptr %i.ct, align 8, !tbaa !349
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  invoke void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit unwind label %bb.ad

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.cz = load ptr, ptr %10, align 8, !tbaa !281  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.n
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit
  %i.db = load i64, ptr %i.n, align 8, !tbaa !73
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.dd = load ptr, ptr %5, align 8, !tbaa !281   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.k
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load i64, ptr %i.k, align 8, !tbaa !73
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dh = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.i
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !73
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.aa, %bb.z, %bb.y
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.r, %bb.o
  %.pn16.pn = phi { ptr, i32 } [ %i.dl, %bb.ad ], [ %i.af, %bb.o ], [ %i.ak, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.dm = load ptr, ptr %10, align 8, !tbaa !281  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.n
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.ae
  %i.do = load i64, ptr %i.n, align 8, !tbaa !73
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.dq = load ptr, ptr %5, align 8, !tbaa !281   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.k
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ds = load i64, ptr %i.k, align 8, !tbaa !73
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.du = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.i
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.dw = load i64, ptr %i.i, align 8, !tbaa !73
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn16.pn
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERs(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client23handleCommand_HudRemoveEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !349
  store i8 11, ptr %i.d, align 8, !tbaa !352
  %i.e = load i32, ptr %i.a, align 4, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !353  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %.not.i.i = icmp eq ptr %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.h, align 8, !tbaa !349
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client23handleCommand_HudChangeEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.core::vector2d.291", align 8 ; 7 uses
  %4 = alloca %"class.core::vector3d.201", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.core::vector2d.523", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !78
  store i8 0, ptr %i.e, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !283
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.h = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.c, align 1, !tbaa !73    ; 2 uses
  %i.k = icmp ugt i8 %i.j, 13
  br i1 %i.k, label %bb.r, label %bb.e

bb.d:                                             ; preds = %.invoke, %bb.l, %bb.g, %bb.f, %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  switch i8 %i.j, label %bb.l [
    i8 0, label %.invoke
    i8 2, label %.invoke
    i8 7, label %.invoke
    i8 8, label %.invoke
    i8 1, label %bb.f
    i8 3, label %bb.f
    i8 12, label %bb.f
    i8 9, label %bb.g
    i8 10, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.d       ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.m unwind label %bb.d       ; 0 uses

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 642
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = icmp ugt i16 %i.p, 51
  br i1 %i.q, label %.invoke, label %bb.i

.invoke:                                          ; preds = %bb.h, %bb.e, %bb.e, %bb.e, %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.d       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 0, ptr %5, align 8, !tbaa !447
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !448
  %i.t = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load <2 x i32>, ptr %5, align 8, !tbaa !79
  %i.v = sitofp nsz <2 x i32> %i.u to <2 x float>
  store <2 x float> %i.v, ptr %3, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

bb.l:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.m unwind label %bb.d       ; 0 uses

bb.m:                                             ; preds = %.invoke, %bb.l, %bb.j, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.y = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.n unwind label %bb.s       ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.y, ptr %i.d, align 8, !tbaa !349
  store i8 12, ptr %i.y, align 8, !tbaa !352
  %i.z = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
          to label %bb.o unwind label %bb.s       ; 9 uses

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  store ptr %i.ac, ptr %i.ab, align 16, !tbaa !76
  store i8 0, ptr %i.ac, align 16, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !73
  %i.af = load i32, ptr %i.b, align 4, !tbaa !79
  store i32 %i.af, ptr %i.z, align 16, !tbaa !651
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !652
  %i.ai = load i64, ptr %3, align 8, !tbaa !283
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !283
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 0, ptr %i.aj, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !355
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.o
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !79
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !653
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !353 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !354
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !349
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1064
  invoke void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit unwind label %bb.s

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.au = load ptr, ptr %2, align 8, !tbaa !281   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !73
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k, %bb.d
  %.pn14.pn = phi { ptr, i32 } [ %i.ay, %bb.s ], [ %i.l, %bb.d ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.az = load ptr, ptr %2, align 8, !tbaa !281   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.t
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !73
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client25handleCommand_HudSetFlagsEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.MinimapModeDef, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.d = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !319
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !657  ; 2 uses
  %i.i = and i32 %i.h, 64
  %i.j = icmp ne i32 %i.i, 0
  %i.k = load i32, ptr %i.b, align 4, !tbaa !79
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.h, %i.l
  %i.n = load i32, ptr %i.a, align 4, !tbaa !79
  %i.o = or i32 %i.n, %i.m                        ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !657
  %i.p = and i32 %i.o, 64
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !449  ; 3 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.s, i1 %.not, i1 false
  %or.cond3 = select i1 %or.cond, i1 %i.j, i1 false
  br i1 %or.cond3, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !690
  %.not13.not14 = icmp eq i64 %i.u, 0
  br i1 %.not13.not14, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.z = phi ptr [ %i.r, %.lr.ph ], [ %i.an, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !691, !noalias !692
  call void @_ZN14MinimapModeDefC2ERKS_(ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef nonnull align 8 dereferenceable(82) %i.ab)
  %i.ac = load i32, ptr %2, align 8, !tbaa !454
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !281 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !73
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !281 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.y
  br i1 %i.aj, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !73
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #29
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.ad, label %bb.c, label %.critedge.thread
end_hunk_1
begin_hunk_2_@_ZN6Client25handleCommand_HudSetStarsEP13NetworkPacket:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.s = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !349
  store i8 16, ptr %i.s, align 8, !tbaa !352
  %i.t = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !718
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !353  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.not.i.i = icmp eq ptr %i.w, %i.z
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.w, align 8, !tbaa !349
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client25handleCommand_CloudParamsEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.video::SColor", align 4     ; 5 uses
  %3 = alloca %"class.video::SColor", align 4     ; 5 uses
  %4 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.core::vector2d.291", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 0, ptr %2, align 4, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 0, ptr %3, align 4, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 -3355444, ptr %4, align 4, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !283
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.f = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(36) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.g = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.i = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.j = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !306
  %.not = icmp eq i32 %i.l, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.p = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 10 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !349
  store i8 18, ptr %i.p, align 8, !tbaa !352
  %i.q = load float, ptr %i.a, align 4, !tbaa !283
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store float %i.q, ptr %i.r, align 8, !tbaa !73
  %i.s = load i32, ptr %2, align 4, !tbaa !455
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !73
  %i.u = load i32, ptr %3, align 4, !tbaa !455
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.u, ptr %i.v, align 8, !tbaa !73
  %i.w = load i32, ptr %4, align 4, !tbaa !455
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.w, ptr %i.x, align 4, !tbaa !73
  %i.y = load float, ptr %i.b, align 4, !tbaa !283
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store float %i.y, ptr %i.z, align 8, !tbaa !73
  %i.aa = load float, ptr %i.c, align 4, !tbaa !283
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store float %i.aa, ptr %i.ab, align 4, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = load <2 x float>, ptr %5, align 8, !tbaa !283
  store <2 x float> %i.ad, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !353 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !354
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %.not.i.i = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.af, align 8, !tbaa !349
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client35handleCommand_OverrideDayNightRatioEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERb(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERt(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull align 2 dereferenceable(2) %i.b) ; 0 uses
  %i.f = load i16, ptr %i.b, align 2, !tbaa !80
  %i.g = uitofp nsz i16 %i.f to float
  %i.h = fmul nnan nsz float %i.g, f0x37800000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.i = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 5 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !349
  store i8 17, ptr %i.i, align 8, !tbaa !352
  %i.j = load i8, ptr %i.a, align 1, !tbaa !310, !range !289, !noundef !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.j, ptr %i.k, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store float %i.h, ptr %i.l, align 4, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !353  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !354
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.not.i.i = icmp eq ptr %i.n, %i.q
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %i.n, align 8, !tbaa !349
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client35handleCommand_LocalPlayerAnimationsEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.core::vector2d.523", align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 642 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.f = load i16, ptr %i.c, align 2, !tbaa !276
  %i.g = icmp ugt i16 %i.f, 45
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.e) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 0, ptr %2, align 8, !tbaa !447
  store i32 0, ptr %i.d, align 4, !tbaa !448
  %i.i = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.j = load <2 x i32>, ptr %2, align 8, !tbaa !79
  %i.k = sitofp nsz <2 x i32> %i.j to <2 x float>
  store <2 x float> %i.k, ptr %i.e, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = load i16, ptr %i.c, align 2, !tbaa !276
  %i.m = icmp ugt i16 %i.l, 45
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 0, ptr %2, align 8, !tbaa !447
  store i32 0, ptr %i.d, align 4, !tbaa !448
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.o = load <2 x i32>, ptr %2, align 8, !tbaa !79
  %i.p = sitofp nsz <2 x i32> %i.o to <2 x float>
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <2 x float> %i.p, ptr %i.q, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.r) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load i16, ptr %i.c, align 2, !tbaa !276
  %i.u = icmp ugt i16 %i.t, 45
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 0, ptr %2, align 8, !tbaa !447
  store i32 0, ptr %i.d, align 4, !tbaa !448
  %i.v = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.w = load <2 x i32>, ptr %2, align 8, !tbaa !79
  %i.x = sitofp nsz <2 x i32> %i.w to <2 x float>
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store <2 x float> %i.x, ptr %i.y, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.z) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = load i16, ptr %i.c, align 2, !tbaa !276
  %i.ac = icmp ugt i16 %i.ab, 45
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 0, ptr %2, align 8, !tbaa !447
  store i32 0, ptr %i.d, align 4, !tbaa !448
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.ae = load <2 x i32>, ptr %2, align 8, !tbaa !79
  %i.af = sitofp nsz <2 x i32> %i.ae to <2 x float>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <2 x float> %i.af, ptr %i.ag, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ah) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i32 0, ptr %i.al, align 8, !tbaa !719
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client23handleCommand_EyeOffsetEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !355
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !306
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.g) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client20handleCommand_CameraEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.f = load i8, ptr %i.a, align 1, !tbaa !73    ; 2 uses
  %i.g = icmp ugt i8 %i.f, 3
  %narrow = select i1 %i.g, i8 0, i8 %i.f
  %spec.select = zext i8 %narrow to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %spec.select, ptr %i.h, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 3 uses
  store i8 19, ptr %i.i, align 8, !tbaa !352
  store ptr %i.i, ptr %i.b, align 8, !tbaa !349
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !353  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !354
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.not.i.i.i = icmp eq ptr %i.k, %i.n
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %i.k, align 8, !tbaa !349
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !353
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @_ZNSt5dequeIP11ClientEventSaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

_ZNSt5queueIP11ClientEventSt5dequeIS1_SaIS1_EEE4pushEOS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client30handleCommand_UpdatePlayerListEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.d = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERt(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.b) ; 0 uses
  %i.e = load i16, ptr %i.b, align 2, !tbaa !80
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %.fr = freeze i8 %i.f
  switch i8 %.fr, label %.lr.ph.split [
    i8 0, label %.lr.ph.split.us.preheader
    i8 1, label %.lr.ph.split.us.preheader
    i8 2, label %.lr.ph.split.us15
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us
  %.012.us = phi i16 [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us ], [ 0, %.lr.ph.split.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %2, align 8, !tbaa !76
  store i64 0, ptr %i.h, align 8, !tbaa !78
  store i8 0, ptr %i.g, align 8, !tbaa !73
  %i.j = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us: ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !281    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us: ; preds = %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us
  %i.n = load i64, ptr %i.g, align 8, !tbaa !73
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us: ; preds = %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.p = add nuw i16 %.012.us, 1                  ; 2 uses
  %i.q = load i16, ptr %i.b, align 2, !tbaa !80
  %i.r = icmp ult i16 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !721

.lr.ph.split.us15:                                ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20
  %.012.us16 = phi i16 [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %2, align 8, !tbaa !76
  store i64 0, ptr %i.h, align 8, !tbaa !78
  store i8 0, ptr %i.g, align 8, !tbaa !73
  %i.s = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %.lr.ph.split.us15
  %i.t = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.us unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.us:                                        ; preds = %bb.c
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr %i.u, ptr %i.v)
          to label %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us17 unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us17: ; preds = %.noexc.us
  %i.w = load ptr, ptr %2, align 8, !tbaa !281    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us18: ; preds = %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us17
  %i.y = load i64, ptr %i.g, align 8, !tbaa !73
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20: ; preds = %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.us17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.us18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = add nuw i16 %.012.us16, 1               ; 2 uses
  %i.ab = load i16, ptr %i.b, align 2, !tbaa !80
  %i.ac = icmp ult i16 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us15, label %._crit_edge, !llvm.loop !721

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.012 = phi i16 [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %2, align 8, !tbaa !76
  store i64 0, ptr %i.h, align 8, !tbaa !78
  store i8 0, ptr %i.g, align 8, !tbaa !73
  %i.ad = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN17ClientEnvironment13addPlayerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.split
end_hunk_2
