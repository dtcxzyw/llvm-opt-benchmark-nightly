Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverpackethandler?download=true
inline.NumInlined: 3042
inline.NumDeleted: 1149
begin_hunk_0_@_ZN6Server25handleCommand_ClientReadyEP13NetworkPacket:bb.a
bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.h
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.ac, %bb.h ]
  %i.it = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.o
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.bw
  %i.iv = load i64, ptr %i.o, align 8, !tbaa !82
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  resume { ptr, i32 } %.pn36.pn.pn
}

declare void @_ZN12RemoteClient14setVersionInfoEhhhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(568), i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare noundef ptr @_ZN6Server18StageTwoClientInitEt(ptr noundef nonnull align 8 dereferenceable(1880), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6Server14DisconnectPeerEt(ptr noundef nonnull align 8 dereferenceable(1880), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6Server4SendEtP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1880), i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @_ZN15ScriptApiPlayer13on_joinplayerEP18ServerActiveObjectl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNK6Server13ShutdownState23getShutdownTimerMessageB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.515") align 8, ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ChatMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !82
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !378  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !82
  %i.m = shl i64 %i.l, 2
  %i.n = add i64 %i.m, 4
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server23handleCommand_GotBlocksEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !302
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  %i.g = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN15ClientInterface8AutoLockC2ERS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #26
  unreachable

_ZN15ClientInterface8AutoLockC2ERS_.exit:         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.j = load i16, ptr %i.i, align 2, !tbaa !59
  %i.k = invoke noundef ptr @_ZN15ClientInterface19lockedGetClientNoExEt11ClientState(ptr noundef nonnull align 8 dereferenceable(152) %i.h, i16 noundef zeroext %i.j, i32 noundef 8)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %.not = icmp ne ptr %i.k, null
  %i.l = load i8, ptr %i.a, align 1
  %i.m = icmp ne i8 %i.l, 0
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.e:                                             ; preds = %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.01116 = phi i16 [ 0, %.lr.ph ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i16 0, ptr %2, align 8, !tbaa !383
  store i16 0, ptr %i.n, align 2, !tbaa !384
  store i16 0, ptr %i.o, align 4, !tbaa !385
  %i.q = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 2 dereferenceable(6) %2)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load i48, ptr %2, align 8, !tbaa !83
  invoke void @_ZN12RemoteClient8GotBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(568) %i.k, i48 %.sroa.0.0.copyload)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.r = add nuw nsw i16 %.01116, 1               ; 2 uses
  %i.s = load i8, ptr %i.a, align 1, !tbaa !82
  %i.t = zext i8 %i.s to i16
  %i.u = icmp samesign ult i16 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %.loopexit, !llvm.loop !528

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.k

.loopexit:                                        ; preds = %bb.h, %bb.d
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.loopexit
  ret void

bb.k:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.p, %bb.e ]
  %i.x = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN15ClientInterface19lockedGetClientNoExEt11ClientState(ptr noundef nonnull align 8 dereferenceable(152), i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN12RemoteClient8GotBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(568), i48) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server17process_PlayerPosEP12RemotePlayerP9PlayerSAOP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::vector3d.132", align 4 ; 8 uses
  %5 = alloca %"class.core::vector3d.132", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 4, !tbaa !529
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !530
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.i, align 4, !tbaa !531
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 0, ptr %5, align 8, !tbaa !529
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !530
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.l = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIiEE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERi(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.o = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERi(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !288
  %i.q = sitofp nsz i32 %i.p to float
  %i.r = fdiv nsz float %i.q, 1.000000e+02
  %i.s = load i32, ptr %i.b, align 4, !tbaa !288
  %i.t = sitofp nsz i32 %i.s to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i8 0, ptr %i.e, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i8 0, ptr %i.f, align 1, !tbaa !82
  %i.u = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !288
  call void @_ZN13PlayerControl17unpackKeysPressedEj(ptr noundef nonnull align 4 dereferenceable(24) %i.v, i32 noundef %i.w)
  %i.x = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  %i.y = load i8, ptr %i.c, align 1, !tbaa !82
  %i.z = uitofp nsz i8 %i.y to float
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %i.ac = fdiv nsz <2 x float> %i.ab, <float 1.000000e+02, float 8.000000e+01> ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !302
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !310
  %.not = icmp eq i32 %i.af, %i.ah
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !302
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !310
  %.not55 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not55, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  %i.am = load float, ptr %i.g, align 4, !tbaa !386 ; 2 uses
  %i.an = fcmp nsz uno float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !386
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.ao = phi float [ 0.000000e+00, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = fcmp nsz olt float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, float 0.000000e+00, float %i.ao ; 2 uses
  %i.ar = fcmp nsz ogt float %i.aq, 1.000000e+00
  %.sroa.speculated = select i1 %i.ar, float 1.000000e+00, float %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 256
  store float %.sroa.speculated, ptr %i.as, align 8, !tbaa !532
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.au = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.at) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  store <2 x float> zeroinitializer, ptr %i.av, align 8, !tbaa !386
  call void @_ZN13PlayerControl19setMovementFromKeysEv(ptr noundef nonnull align 4 dereferenceable(24) %i.v)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.aw = frem nsz float %i.r, 3.600000e+02
  %i.ax = extractelement <2 x float> %i.ac, i64 0
  %i.ay = frem nsz float %i.ax, 3.600000e+02      ; 3 uses
  %i.az = fcmp nsz olt float %i.ay, 0.000000e+00
  %i.ba = fadd nsz float %i.ay, 3.600000e+02
  %i.bb = select nsz i1 %i.az, float %i.ba, float %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !533
  %.not56 = icmp eq i16 %i.bd, 0
  br i1 %.not56, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %7 = load i32, ptr %i.k, align 8, !tbaa !531
  %8 = load i32, ptr %4, align 4, !tbaa !529
  %i.be = load <2 x i32>, ptr %5, align 8, !tbaa !288
  %9 = insertelement <4 x i32> poison, i32 %7, i64 2
  %10 = insertelement <4 x i32> %9, i32 %8, i64 3
  %11 = shufflevector <2 x i32> %i.be, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x i32> %11, <4 x i32> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = sitofp <4 x i32> %12 to <4 x float>
  %14 = fdiv nsz <4 x float> %13, splat (float 1.000000e+02) ; 3 uses
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %16 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %17 = load <2 x i32>, ptr %i.h, align 4, !tbaa !288
  %i.bf = sitofp <2 x i32> %17 to <2 x float>
  %i.bg = fdiv nsz <2 x float> %i.bf, splat (float 1.000000e+02) ; 2 uses
  %18 = shufflevector <2 x float> %16, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bh = extractelement <2 x float> %i.bg, i64 1
  call void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226) %2, <2 x float> %18, float %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 360
  store <2 x float> %15, ptr %i.bi, align 8, !tbaa !386
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bj = extractelement <4 x float> %14, i64 2
  store float %i.bj, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !386
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN9PlayerSAO12setLookPitchEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.aw)
  call void @_ZN9PlayerSAO12setPlayerYawEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.bb)
  %i.bk = extractelement <2 x float> %i.ac, i64 1
  call void @_ZN9PlayerSAO6setFovEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.bk)
  %i.bl = load i8, ptr %i.e, align 1, !tbaa !82
  %i.bm = zext i8 %i.bl to i16
  call void @_ZN9PlayerSAO14setWantedRangeEs(ptr noundef nonnull align 8 dereferenceable(1226) %2, i16 noundef signext %i.bm)
  %i.bn = load i8, ptr %i.f, align 1, !tbaa !82
  %i.bo = and i8 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 1150
  store i8 %i.bo, ptr %i.bp, align 2, !tbaa !534
  %i.bq = call noundef zeroext i1 @_ZN9PlayerSAO18checkMovementCheatEv(ptr noundef nonnull align 8 dereferenceable(1226) %2)
  br i1 %i.bq, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bt, ptr noundef nonnull align 1 dereferenceable(14) @.str.51, i64 14, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.bu, align 8, !tbaa !87
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.bv, align 2, !tbaa !82
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 576
  invoke void @_ZN15ScriptApiPlayer8on_cheatEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bx = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bt
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !82
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6Server14SendMovePlayerEP9PlayerSAO(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull %2)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bt
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.j
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !82
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIiEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERi(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN13PlayerControl17unpackKeysPressedEj(ptr noundef nonnull align 4 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN13PlayerControl19setMovementFromKeysEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226), <2 x float>, float) local_unnamed_addr #3

declare void @_ZN9PlayerSAO12setLookPitchEf(ptr noundef nonnull align 8 dereferenceable(1226), float noundef) local_unnamed_addr #3

declare void @_ZN9PlayerSAO12setPlayerYawEf(ptr noundef nonnull align 8 dereferenceable(1226), float noundef) local_unnamed_addr #3

declare void @_ZN9PlayerSAO6setFovEf(ptr noundef nonnull align 8 dereferenceable(1226), float noundef) local_unnamed_addr #3

declare void @_ZN9PlayerSAO14setWantedRangeEs(ptr noundef nonnull align 8 dereferenceable(1226), i16 noundef signext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN9PlayerSAO18checkMovementCheatEv(ptr noundef nonnull align 8 dereferenceable(1226)) local_unnamed_addr #3

declare void @_ZN15ScriptApiPlayer8on_cheatEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN6Server14SendMovePlayerEP9PlayerSAO(ptr noundef nonnull align 8 dereferenceable(1880), ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN6Server23handleCommand_PlayerPosEP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.h = load i16, ptr %i.g, align 2, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258
  %i.k = tail call noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %i.j, i16 noundef zeroext %i.h) ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.b, %bb.c
  %i.l = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !inline_history !535
  %.v.i = select i1 %i.p, i64 976, i64 984
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @__PRETTY_FUNCTION__._ZN6Server23handleCommand_PlayerPosEP13NetworkPacket, ptr %i.f, align 8, !tbaa !58
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.52, ptr %i.e, align 8, !tbaa !58
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 5 uses
  %.not.i12 = icmp eq ptr %i.t, null
  br i1 %.not.i12, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW13warningstream.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !60 ; 2 uses
  %.pre29 = load ptr, ptr %.pre.i, align 8, !tbaa !57
  %.phi.trans.insert30 = getelementptr i8, ptr %.pre29, i64 -24
  %.pre31 = load i64, ptr %.phi.trans.insert30, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i64 [ %.pre31, %bb.e ], [ %i.w, %bb.d ]
  %i.ac = phi ptr [ %.pre.i, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
end_hunk_0
begin_hunk_1_@_ZN6Server20handleCommand_DamageEP13NetworkPacket:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 324
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !388
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %.not.i28 = icmp eq ptr @_ZTH13verbosestream, null
  br i1 %.not.i28, label %_ZTW13verbosestream.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit

_ZTW13verbosestream.exit:                         ; preds = %bb.w, %bb.x
  %i.cz = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !57
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.da), !inline_history !556
  %.v.i29 = select i1 %i.dd, i64 976, i64 984
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.v.i29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.72, ptr %i.d, align 8, !tbaa !58
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 328
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !60 ; 5 uses
  %.not.i30 = icmp eq ptr %i.dh, null
  br i1 %.not.i30, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZTW13verbosestream.exit
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !68
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
  %.pre.i31 = load ptr, ptr %i.de, align 8, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dp = phi ptr [ %.pre.i31, %bb.z ], [ %i.dh, %bb.y ]
  %i.dq = load ptr, ptr %i.dg, align 8, !tbaa !92
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !87
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq, i64 noundef %i.ds) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %_ZTW13verbosestream.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.73, ptr %i.c, align 8, !tbaa !58
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !60 ; 5 uses
  %.not.i32 = icmp eq ptr %i.dv, null
  br i1 %.not.i32, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !57
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !68
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
  %.pre.i33 = load ptr, ptr %i.du, align 8, !tbaa !60 ; 2 uses
  %.pre65 = load ptr, ptr %.pre.i33, align 8, !tbaa !57
  %.phi.trans.insert66 = getelementptr i8, ptr %.pre65, i64 -24
  %.pre67 = load i64, ptr %.phi.trans.insert66, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ed = phi i64 [ %.pre67, %bb.ac ], [ %i.dy, %bb.ab ]
  %i.ee = phi ptr [ %.pre.i33, %bb.ac ], [ %i.dv, %bb.ab ] ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i54, label %bb.ae, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !81
  %.not.i1.i.i56 = icmp eq i8 %i.ej, 0
  br i1 %.not.i1.i.i56, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 67
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eh)
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !57
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef signext i8 %i.eo(ptr noundef nonnull align 8 dereferenceable(570) %i.eh, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58: ; preds = %bb.af, %bb.ag
  %.0.i.i.i57 = phi i8 [ %i.el, %bb.af ], [ %i.ep, %bb.ag ]
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i8 noundef signext %.0.i.i.i57)
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.ah:                                            ; preds = %bb.v
  %.not.i35 = icmp eq ptr @_ZTH12actionstream, null
  br i1 %.not.i35, label %_ZTW12actionstream.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit

_ZTW12actionstream.exit:                          ; preds = %bb.ah, %bb.ai
  %i.es = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 328
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !57
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.eu), !inline_history !402
  %.v.i36 = select i1 %i.ex, i64 976, i64 984
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %.v.i36 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !60 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i, label %_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZTW12actionstream.exit
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !57
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !68
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
  %.pre.i.i = load ptr, ptr %i.ey, align 8, !tbaa !60
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fh = phi ptr [ %.pre.i.i, %bb.ak ], [ %i.ez, %bb.aj ]
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !92
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !87
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fi, i64 noundef %i.fk) ; 0 uses
  br label %_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit

_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit: ; preds = %_ZTW12actionstream.exit, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.74, ptr %i.b, align 8, !tbaa !58
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fn = load i16, ptr %i.i, align 2, !tbaa !83
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !60 ; 5 uses
  %.not.i37 = icmp eq ptr %i.fp, null
  br i1 %.not.i37, label %_ZN11StreamProxylsIiEERS_OT_.exit, label %bb.am

bb.am:                                            ; preds = %_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !57
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !68
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
  %.pre.i38 = load ptr, ptr %i.fm, align 8, !tbaa !60
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fx = phi ptr [ %.pre.i38, %bb.an ], [ %i.fp, %bb.am ]
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i32 noundef %i.fo) ; 0 uses
  br label %_ZN11StreamProxylsIiEERS_OT_.exit

_ZN11StreamProxylsIiEERS_OT_.exit:                ; preds = %_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.75, ptr %i.a, align 8, !tbaa !58
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ga, align 8, !tbaa !386 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !386
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0
  %5 = fdiv nsz float %.sroa.0.0.vec.extract, 1.000000e+01
  %6 = shufflevector <2 x float> %.sroa.01.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x float> %6, float %.sroa.22.0.copyload.i, i64 1
  %i.gb = fdiv nsz <2 x float> %7, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %5, i64 0
  %8 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.gb, <2 x i32> <i32 0, i32 2>
  store <2 x float> %8, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = extractelement <2 x float> %i.gb, i64 1
  store float %9, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !60 ; 5 uses
  %.not.i41 = icmp eq ptr %i.gd, null
  br i1 %.not.i41, label %_ZN11StreamProxylsEPFRSoS0_E.exit43, label %bb.ap

bb.ap:                                            ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !57
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !68
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gd)
  %.pre.i42 = load ptr, ptr %i.gc, align 8, !tbaa !60 ; 2 uses
  %.pre = load ptr, ptr %.pre.i42, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre64 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gl = phi i64 [ %.pre64, %bb.aq ], [ %i.gg, %bb.ap ]
  %i.gm = phi ptr [ %.pre.i42, %bb.aq ], [ %i.gd, %bb.ap ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i59 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i59, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60: ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !81
  %.not.i1.i.i61 = icmp eq i8 %i.gr, 0
  br i1 %.not.i1.i.i61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 67
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gp)
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !57
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call noundef signext i8 %i.gw(ptr noundef nonnull align 8 dereferenceable(570) %i.gp, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63: ; preds = %bb.at, %bb.au
  %.0.i.i.i62 = phi i8 [ %i.gt, %bb.at ], [ %i.gx, %bb.au ]
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, i8 noundef signext %.0.i.i.i62)
  %i.gz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gy) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit43

_ZN11StreamProxylsEPFRSoS0_E.exit43:              ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i8 3, ptr %4, align 8, !tbaa !561
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.ha, align 1, !tbaa !562
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.hb, align 4, !tbaa !563
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.hc, align 8, !tbaa !564
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !85
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.hf, align 8, !tbaa !87
  store i8 0, ptr %i.he, align 8, !tbaa !82
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i16 0, ptr %i.hg, align 8, !tbaa !383
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 50
  store i16 0, ptr %i.hh, align 2, !tbaa !384
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i16 0, ptr %i.hi, align 4, !tbaa !385
  %i.hj = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 224
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef zeroext i16 %i.hl(ptr noundef nonnull align 8 dereferenceable(954) %i.av)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit43
  %i.hn = zext i16 %i.hm to i32
  %i.ho = load i16, ptr %i.i, align 2, !tbaa !83
  %i.hp = zext i16 %i.ho to i32
  %i.hq = sub nsw i32 %i.hn, %i.hp
  invoke void @_ZN9PlayerSAO5setHPEiRK20PlayerHPChangeReasonb(ptr noundef nonnull align 8 dereferenceable(1226) %i.av, i32 noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(54) %4, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hr = load ptr, ptr %i.hd, align 8, !tbaa !92 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.he
  br i1 %i.hs, label %_ZN20PlayerHPChangeReasonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.aw
  %i.ht = load i64, ptr %i.he, align 8, !tbaa !82
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #28
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit

_ZN20PlayerHPChangeReasonD2Ev.exit:               ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.ax:                                            ; preds = %bb.av, %_ZN11StreamProxylsEPFRSoS0_E.exit43
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = load ptr, ptr %i.hd, align 8, !tbaa !92 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.he
  br i1 %i.hx, label %_ZN20PlayerHPChangeReasonD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.ax
  %i.hy = load i64, ptr %i.he, align 8, !tbaa !82
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #28
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit48

_ZN20PlayerHPChangeReasonD2Ev.exit48:             ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %common.resume

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53, %_ZTW13warningstream.exit23, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW13warningstream.exit, %_ZN20PlayerHPChangeReasonD2Ev.exit, %_ZNK7UnitSAO10isImmortalEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.v = select i1 %i.d, i64 976, i64 984
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !87
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.o, i64 noundef %i.q) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !68
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !386
end_hunk_1
