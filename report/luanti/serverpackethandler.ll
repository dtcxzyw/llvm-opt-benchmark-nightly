Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverpackethandler?download=true
inline.NumInlined: 3042
inline.NumDeleted: 1149
begin_hunk_0_@_ZN6Server23handleCommand_GotBlocksEP13NetworkPacket:bb.a
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
  %i.be = load i32, ptr %i.k, align 8, !tbaa !531
  %i.bf = load i32, ptr %4, align 4, !tbaa !529
  %i.bg = load <2 x i32>, ptr %5, align 8, !tbaa !288
  %i.bh = insertelement <4 x i32> poison, i32 %i.be, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.bf, i64 3
  %i.bj = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bl = sitofp <4 x i32> %i.bk to <4 x float>
  %i.bm = fdiv nsz <4 x float> %i.bl, splat (float 1.000000e+02) ; 3 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bp = load <2 x i32>, ptr %i.h, align 4, !tbaa !288
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = fdiv nsz <2 x float> %i.bq, splat (float 1.000000e+02) ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bt = extractelement <2 x float> %i.br, i64 1
  call void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226) %2, <2 x float> %i.bs, float %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 360
  store <2 x float> %i.bn, ptr %i.bu, align 8, !tbaa !386
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bv = extractelement <4 x float> %i.bm, i64 2
  store float %i.bv, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !386
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN9PlayerSAO12setLookPitchEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.aw)
  call void @_ZN9PlayerSAO12setPlayerYawEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.bb)
  %i.bw = extractelement <2 x float> %i.ac, i64 1
  call void @_ZN9PlayerSAO6setFovEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.bw)
  %i.bx = load i8, ptr %i.e, align 1, !tbaa !82
  %i.by = zext i8 %i.bx to i16
  call void @_ZN9PlayerSAO14setWantedRangeEs(ptr noundef nonnull align 8 dereferenceable(1226) %2, i16 noundef signext %i.by)
  %i.bz = load i8, ptr %i.f, align 1, !tbaa !82
  %i.ca = and i8 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1150
  store i8 %i.ca, ptr %i.cb, align 2, !tbaa !534
  %i.cc = call noundef zeroext i1 @_ZN9PlayerSAO18checkMovementCheatEv(ptr noundef nonnull align 8 dereferenceable(1226) %2)
  br i1 %i.cc, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.cf, ptr noundef nonnull align 1 dereferenceable(14) @.str.51, i64 14, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.cg, align 8, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.ch, align 2, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 576
  invoke void @_ZN15ScriptApiPlayer8on_cheatEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cf
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !82
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6Server14SendMovePlayerEP9PlayerSAO(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull %2)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cf
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.j
  %i.cq = load i64, ptr %i.cf, align 8, !tbaa !82
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #28
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
  resume { ptr, i32 } %i.cn

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
end_hunk_0
begin_hunk_1_@_ZN6Server20handleCommand_DamageEP13NetworkPacket:bb.a
  br i1 %.not.i41, label %_ZN11StreamProxylsEPFRSoS0_E.exit43, label %bb.ap

bb.ap:                                            ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !57
  %i.gk = getelementptr i8, ptr %i.gj, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !68
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
  %.pre.i42 = load ptr, ptr %i.gh, align 8, !tbaa !60 ; 2 uses
  %.pre = load ptr, ptr %.pre.i42, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre64 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gq = phi i64 [ %.pre64, %bb.aq ], [ %i.gl, %bb.ap ]
  %i.gr = phi ptr [ %.pre.i42, %bb.aq ], [ %i.gi, %bb.ap ] ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 240
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i59 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i59, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60: ; preds = %bb.ar
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !81
  %.not.i1.i.i61 = icmp eq i8 %i.gw, 0
  br i1 %.not.i1.i.i61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 67
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gu)
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = call noundef signext i8 %i.hb(ptr noundef nonnull align 8 dereferenceable(570) %i.gu, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63: ; preds = %bb.at, %bb.au
  %.0.i.i.i62 = phi i8 [ %i.gy, %bb.at ], [ %i.hc, %bb.au ]
  %i.hd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i8 noundef signext %.0.i.i.i62)
  %i.he = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hd) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit43

_ZN11StreamProxylsEPFRSoS0_E.exit43:              ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i8 3, ptr %4, align 8, !tbaa !561
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.hf, align 1, !tbaa !562
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.hg, align 4, !tbaa !563
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.hh, align 8, !tbaa !564
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !85
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.hk, align 8, !tbaa !87
  store i8 0, ptr %i.hj, align 8, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i16 0, ptr %i.hl, align 8, !tbaa !383
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 50
  store i16 0, ptr %i.hm, align 2, !tbaa !384
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i16 0, ptr %i.hn, align 4, !tbaa !385
  %i.ho = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 224
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef zeroext i16 %i.hq(ptr noundef nonnull align 8 dereferenceable(954) %i.av)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit43
  %i.hs = zext i16 %i.hr to i32
  %i.ht = load i16, ptr %i.i, align 2, !tbaa !83
  %i.hu = zext i16 %i.ht to i32
  %i.hv = sub nsw i32 %i.hs, %i.hu
  invoke void @_ZN9PlayerSAO5setHPEiRK20PlayerHPChangeReasonb(ptr noundef nonnull align 8 dereferenceable(1226) %i.av, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(54) %4, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !92 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hj
  br i1 %i.hx, label %_ZN20PlayerHPChangeReasonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.aw
  %i.hy = load i64, ptr %i.hj, align 8, !tbaa !82
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #28
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit

_ZN20PlayerHPChangeReasonD2Ev.exit:               ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.ax:                                            ; preds = %bb.av, %_ZN11StreamProxylsEPFRSoS0_E.exit43
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %i.hi, align 8, !tbaa !92 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hj
  br i1 %i.ic, label %_ZN20PlayerHPChangeReasonD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.ax
  %i.id = load i64, ptr %i.hj, align 8, !tbaa !82
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
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
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !386
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.189, i64 noundef 1) ; 0 uses
  %i.k = fpext <2 x float> %.sroa.01.0.copyload to <2 x double> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.190, i64 noundef 1) ; 0 uses
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.190, i64 noundef 1) ; 0 uses
  %i.r = fpext nsz float %.sroa.22.0.copyload to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_ZN9PlayerSAO5setHPEiRK20PlayerHPChangeReasonb(ptr noundef nonnull align 8 dereferenceable(1226), i32 noundef, ptr noundef nonnull align 8 dereferenceable(54), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN6Server24handleCommand_PlayerItemEP13NetworkPacket(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1880) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !302
  %i.l = icmp ult i32 %i.k, 2
  br i1 %i.l, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.n = load i16, ptr %i.m, align 2, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !258
  %i.q = tail call noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %i.p, i16 noundef zeroext %i.n) ; 7 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.c, %bb.d
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !inline_history !565
  %.v.i = select i1 %i.v, i64 976, i64 984
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @__PRETTY_FUNCTION__._ZN6Server24handleCommand_PlayerItemEP13NetworkPacket, ptr %i.h, align 8, !tbaa !58
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.52, ptr %i.g, align 8, !tbaa !58
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60   ; 5 uses
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW13warningstream.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !60 ; 2 uses
  %.pre47 = load ptr, ptr %.pre.i, align 8, !tbaa !57
  %.phi.trans.insert48 = getelementptr i8, ptr %.pre47, i64 -24
  %.pre49 = load i64, ptr %.phi.trans.insert48, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %.pre49, %bb.f ], [ %i.ac, %bb.e ]
  %i.ai = phi ptr [ %.pre.i, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !81
  %.not.i1.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.at, %bb.j ]
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext %.0.i.i.i)
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.k:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !387 ; 2 uses
  %.not13 = icmp eq ptr %i.ax, null
  br i1 %.not13, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %.not.i16 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i16, label %_ZTW13warningstream.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit17

_ZTW13warningstream.exit17:                       ; preds = %bb.l, %bb.m
  %i.ay = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az), !inline_history !565
  %.v.i18 = select i1 %i.bc, i64 976, i64 984
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.v.i18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @__PRETTY_FUNCTION__._ZN6Server24handleCommand_PlayerItemEP13NetworkPacket, ptr %i.f, align 8, !tbaa !58
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.53, ptr %i.e, align 8, !tbaa !58
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 5 uses
  %.not.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i19, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.n

bb.n:                                             ; preds = %_ZTW13warningstream.exit17
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !68
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %.pre.i20 = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 2 uses
  %.pre44 = load ptr, ptr %.pre.i20, align 8, !tbaa !57
  %.phi.trans.insert45 = getelementptr i8, ptr %.pre44, i64 -24
  %.pre46 = load i64, ptr %.phi.trans.insert45, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi i64 [ %.pre46, %bb.o ], [ %i.bj, %bb.n ]
  %i.bp = phi ptr [ %.pre.i20, %bb.o ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i33 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i33, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34: ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !81
  %.not.i1.i.i35 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
end_hunk_1
begin_hunk_2_@_ZN6Server22handleCommand_InteractEP13NetworkPacket:bb.a

_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit509: ; preds = %bb.dc, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @.str.92, ptr %i.u, align 8, !tbaa !58
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pw, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.dg unwind label %bb.dm     ; 2 uses

bb.dg:                                            ; preds = %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !60 ; 5 uses
  %.not.i512 = icmp eq ptr %i.ql, null
  br i1 %.not.i512, label %_ZN11StreamProxylsEPFRSoS0_E.exit516, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !57
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %i.ql, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !68
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ql)
          to label %.noexc514 unwind label %bb.dm

.noexc514:                                        ; preds = %bb.di
  %.pre.i513 = load ptr, ptr %i.qk, align 8, !tbaa !60
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc514, %bb.dh
  %i.qt = phi ptr [ %.pre.i513, %.noexc514 ], [ %i.ql, %bb.dh ]
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.qt)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit516 unwind label %bb.dm, !inline_history !2 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit516:             ; preds = %bb.dg, %bb.dj
  %i.qv = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit516
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !82
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit516, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ra = load i8, ptr %4, align 4, !tbaa !576
  %.not357 = icmp eq i8 %i.ra, 1
  br i1 %.not357, label %bb.dn, label %_ZN11StreamProxylsEPFRSoS0_E.exit408

bb.dk:                                            ; preds = %._crit_edge.i.i490
  %i.rb = landingpad { ptr, i32 }
          cleanup
  %i.rc = load ptr, ptr %7, align 8, !tbaa !92    ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.ov
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %bb.dk
  %i.re = load i64, ptr %i.ov, align 8, !tbaa !82
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.nw

bb.dl:                                            ; preds = %bb.db
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525

bb.dm:                                            ; preds = %bb.dj, %bb.di, %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit509, %bb.df, %bb.de
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ri = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523: ; preds = %bb.dm
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !82
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523, %bb.dl
  %.pn355 = phi { ptr, i32 } [ %i.rg, %bb.dl ], [ %i.rh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %i.rh, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.nw

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519
  %i.rn = invoke noundef ptr @_ZN6Server9getClientEt11ClientState(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %i.ds, i32 noundef 8)
          to label %bb.do unwind label %bb.ey

bb.do:                                            ; preds = %bb.dn
  %i.ro = load i8, ptr %i.al, align 1, !tbaa !424
  switch i8 %i.ro, label %_ZN11StreamProxylsEPFRSoS0_E.exit408 [
    i8 2, label %bb.dp
    i8 3, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.rp = getelementptr inbounds nuw i8, ptr %4, i64 2
  %.sroa.0119.0.copyload = load i48, ptr %i.rp, align 2, !tbaa !83
  br label %.invoke988

bb.dq:                                            ; preds = %bb.do
  %i.rq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0114.0.copyload = load i48, ptr %i.rq, align 4, !tbaa !83
  br label %.invoke988

.invoke988:                                       ; preds = %bb.dp, %bb.dq
  %i.rr = phi i48 [ %.sroa.0114.0.copyload, %bb.dq ], [ %.sroa.0119.0.copyload, %bb.dp ]
  %i.rs = invoke i48 @_Z15getNodeBlockPosN4core8vector3dIsEE(i48 %i.rr)
          to label %.invoke unwind label %bb.ey

.invoke:                                          ; preds = %.invoke988, %bb.ev
  %i.rt = phi ptr [ %i.vd, %bb.ev ], [ %i.rn, %.invoke988 ]
  %i.ru = phi i48 [ %i.vf, %bb.ev ], [ %i.rs, %.invoke988 ]
  invoke void @_ZN12RemoteClient15SetBlockNotSentEN4core8vector3dIsEEb(ptr noundef nonnull align 8 dereferenceable(568) %i.rt, i48 %i.ru, i1 noundef zeroext false)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit408 unwind label %bb.ey

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496
  %.b = load i1, ptr @_ZGVZN6Server22handleCommand_InteractEP13NetworkPacketE15anticheat_flags, align 1
  br i1 %.b, label %bb.dv, label %bb.ds, !prof !583

bb.ds:                                            ; preds = %bb.dr
  %i.rv = load ptr, ptr @g_settings, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.dt unwind label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.rw = invoke noundef i32 @_ZNK8Settings10getFlagStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK8FlagDescPj(ptr noundef nonnull align 8 dereferenceable(236) %i.rv, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @_ZL18flagdesc_anticheat, ptr noundef null)
          to label %bb.du unwind label %bb.eb

bb.du:                                            ; preds = %bb.dt
  %i.rx = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526: ; preds = %bb.du
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !82
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.sc = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN6Server22handleCommand_InteractEP13NetworkPacketE15anticheat_flags)
  store i32 %i.rw, ptr %i.sc, align 4, !tbaa !288
  %i.sd = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6Server22handleCommand_InteractEP13NetworkPacketE15anticheat_flags) ; 0 uses
  store i1 true, ptr @_ZGVZN6Server22handleCommand_InteractEP13NetworkPacketE15anticheat_flags, align 1
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %bb.dr
  %i.se = load i8, ptr %i.al, align 1, !tbaa !424
  switch i8 %i.se, label %.critedge373 [
    i8 4, label %bb.dw
    i8 3, label %bb.dw
    i8 2, label %bb.dw
    i8 0, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.sf = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN6Server22handleCommand_InteractEP13NetworkPacketE15anticheat_flags)
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !288
  %i.sh = and i32 %i.sg, 2
  %.not297 = icmp eq i32 %i.sh, 0
  br i1 %.not297, label %.critedge373, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !256, !range !257, !noundef !54
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %.critedge373, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sl = load i8, ptr %4, align 4, !tbaa !576
  switch i8 %i.sl, label %bb.ep [
    i8 1, label %bb.dz
    i8 2, label %bb.ec
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.sm = getelementptr inbounds nuw i8, ptr %4, i64 2
  %.sroa.0108.0.copyload = load i48, ptr %i.sm, align 2, !tbaa !83 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0108.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.sn = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.so = bitcast i48 %.sroa.0108.0.copyload to <3 x i16>
  %i.sp = shufflevector <3 x i16> %i.so, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.sq = sitofp <2 x i16> %i.sp to <2 x float>
  %i.sr = fmul nnan nsz <2 x float> %i.sq, splat (float 1.000000e+01)
  %i.ss = fmul nnan nsz float %i.sn, 1.000000e+01
  br label %bb.ep

bb.ea:                                            ; preds = %bb.ds
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531

bb.eb:                                            ; preds = %bb.dt
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529: ; preds = %bb.eb
  %i.sy = load i64, ptr %i.sw, align 8, !tbaa !82
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529, %bb.ea
  %.pn295 = phi { ptr, i32 } [ %i.st, %bb.ea ], [ %i.su, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529 ], [ %i.su, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.nw

bb.ec:                                            ; preds = %bb.dy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.tb = load i16, ptr %i.ta, align 8, !tbaa !584
  %i.tc = getelementptr inbounds nuw i8, ptr %.0277, i64 8
  %i.td = load i16, ptr %i.tc, align 8, !tbaa !584
  %i.te = icmp eq i16 %i.tb, %i.td
  br i1 %i.te, label %bb.ed, label %bb.eo

bb.ed:                                            ; preds = %bb.ec
  %.not.i532 = icmp eq ptr @_ZTH12actionstream, null
  br i1 %.not.i532, label %_ZTW12actionstream.exit533, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit533

_ZTW12actionstream.exit533:                       ; preds = %bb.ed, %bb.ee
  %i.tf = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !57
  %i.ti = load ptr, ptr %i.th, align 8
  %i.tj = invoke noundef zeroext i1 %i.ti(ptr noundef nonnull align 8 dereferenceable(8) %i.tg)
          to label %.noexc535 unwind label %bb.ey, !inline_history !6

.noexc535:                                        ; preds = %_ZTW12actionstream.exit533
  %.v.i534 = select i1 %i.tj, i64 976, i64 984
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.v.i534 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @.str.11, ptr %i.t, align 8, !tbaa !58
  %i.tl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.ef unwind label %bb.ey     ; 0 uses

bb.ef:                                            ; preds = %.noexc535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, ptr noundef nonnull align 8 dereferenceable(32) %i.ou)
          to label %bb.eg unwind label %bb.ey

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @.str.94, ptr %i.s, align 8, !tbaa !58
  %i.tn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tm, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.eh unwind label %bb.ey     ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !60 ; 5 uses
  %.not.i540 = icmp eq ptr %i.to, null
  br i1 %.not.i540, label %_ZN11StreamProxylsEPFRSoS0_E.exit544, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !57
  %i.tq = getelementptr i8, ptr %i.tp, i64 -24
  %i.tr = load i64, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds i8, ptr %i.to, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !68
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.to)
          to label %.noexc542 unwind label %bb.ey

.noexc542:                                        ; preds = %bb.ej
  %.pre.i541 = load ptr, ptr %i.tn, align 8, !tbaa !60
  br label %bb.ek

bb.ek:                                            ; preds = %.noexc542, %bb.ei
  %i.tw = phi ptr [ %.pre.i541, %.noexc542 ], [ %i.to, %bb.ei ]
  %i.tx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.tw)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit544 unwind label %bb.ey, !inline_history !2 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit544:             ; preds = %bb.eh, %bb.ek
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.95, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit544
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 576
  invoke void @_ZN15ScriptApiPlayer8on_cheatEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ua, ptr noundef nonnull %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.critedge unwind label %bb.en

.critedge:                                        ; preds = %bb.el
  %i.ub = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %.critedge
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !82
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit408

bb.em:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit544
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.en:                                            ; preds = %bb.el
  %i.uh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ui = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.uk = icmp eq ptr %i.ui, %i.uj
  br i1 %i.uk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %bb.en
  %i.ul = load i64, ptr %i.uj, align 8, !tbaa !82
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.um) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %bb.em
  %.pn298 = phi { ptr, i32 } [ %i.ug, %bb.em ], [ %i.uh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %i.uh, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.nw

bb.eo:                                            ; preds = %bb.ec
  %i.un = getelementptr inbounds nuw i8, ptr %.0277, i64 312
  %.sroa.01.0.copyload.i551 = load <2 x float>, ptr %i.un, align 8, !tbaa !386
  %.sroa.22.0..sroa_idx.i552 = getelementptr inbounds nuw i8, ptr %.0277, i64 320
  %.sroa.22.0.copyload.i553 = load float, ptr %.sroa.22.0..sroa_idx.i552, align 8, !tbaa !386
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dy, %bb.eo, %bb.dz
  %.sroa.10835.0 = phi nsz float [ %.sroa.22.0.copyload.i, %bb.dy ], [ %i.ss, %bb.dz ], [ %.sroa.22.0.copyload.i553, %bb.eo ]
  %.sroa.0834.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i, %bb.dy ], [ %i.sr, %bb.dz ], [ %.sroa.01.0.copyload.i551, %bb.eo ] ; 2 uses
  %i.uo = invoke { <2 x float>, float } @_ZNK9PlayerSAO14getEyePositionEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.fr)
          to label %bb.eq unwind label %bb.ey     ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.er unwind label %bb.ew

bb.er:                                            ; preds = %bb.eq
  %.fca.1.extract94 = extractvalue { <2 x float>, float } %i.uo, 1
  %i.up = fsub nsz float %.fca.1.extract94, %.sroa.10835.0 ; 2 uses
  %.fca.0.extract93 = extractvalue { <2 x float>, float } %i.uo, 0 ; 2 uses
  %foldExtExtBinop = fsub nsz <2 x float> %.fca.0.extract93, %.sroa.0834.0
  %i.uq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop994 = fsub nsz <2 x float> %.fca.0.extract93, %.sroa.0834.0 ; 2 uses
  %foldExtExtBinop996 = fmul nsz <2 x float> %foldExtExtBinop994, %foldExtExtBinop994
  %i.ur = extractelement <2 x float> %foldExtExtBinop996, i64 1
  %i.us = call nsz float @llvm.fmuladd.f32(float %i.uq, float %i.uq, float %i.ur)
  %i.ut = call nsz float @llvm.fmuladd.f32(float %i.up, float %i.up, float %i.us)
  %i.uu = call nsz noundef float @llvm.sqrt.f32(float %i.ut)
  %i.uv = invoke noundef zeroext i1 @_ZN6Server21checkInteractDistanceEP12RemotePlayerfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull %i.dv, float noundef %i.uu, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.es unwind label %bb.ex

bb.es:                                            ; preds = %bb.er
  %i.uw = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %bb.es
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !82
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
end_hunk_2
begin_hunk_3_@_ZN6Server22handleCommand_InteractEP13NetworkPacket:bb.a
  %.not.i732 = icmp eq ptr %i.aqp, null
  br i1 %.not.i732, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit731
  %i.aqq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aqs = load i8, ptr %i.aqr, align 8, !tbaa !401, !range !257, !noundef !54
  %i.aqt = trunc nuw i8 %i.aqs to i1
  %i.aqu = load ptr, ptr %i.aqp, align 8, !tbaa !57
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24
  %i.aqw = load ptr, ptr %i.aqv, align 8
  invoke void %i.aqw(ptr noundef nonnull align 8 dereferenceable(8) %i.aqp, ptr noundef nonnull align 8 dereferenceable(32) %i.aqq, i1 noundef zeroext %i.aqt)
          to label %bb.ns unwind label %bb.nt

bb.ns:                                            ; preds = %bb.nr, %_ZN11StreamProxylsEPFRSoS0_E.exit731
  %i.aqx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !92 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.ara = icmp eq ptr %i.aqy, %i.aqz
  br i1 %i.ara, label %_ZN18RollbackScopeActorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i733: ; preds = %bb.ns
  %i.arb = load i64, ptr %i.aqz, align 8, !tbaa !82
  %i.arc = add i64 %i.arb, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arc) #28
  br label %_ZN18RollbackScopeActorD2Ev.exit

bb.nt:                                            ; preds = %bb.nr
  %i.ard = landingpad { ptr, i32 }
          catch ptr null
  %i.are = extractvalue { ptr, i32 } %i.ard, 0
  call void @__clang_call_terminate(ptr %i.are) #30
  unreachable

_ZN18RollbackScopeActorD2Ev.exit:                 ; preds = %bb.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i733
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit408

_ZN11StreamProxylsEPFRSoS0_E.exit408:             ; preds = %.noexc749.invoke, %.invoke, %bb.et, %bb.cr, %bb.cu, %bb.ce, %bb.an, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %_ZN18RollbackScopeActorD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.arf = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.arf, ptr %2, align 8, !tbaa !57
  %i.arg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.arh = getelementptr i8, ptr %i.arf, i64 -24
  %i.ari = load i64, ptr %i.arh, align 8
  %i.arj = getelementptr inbounds i8, ptr %2, i64 %i.ari
  store ptr %i.arg, ptr %i.arj, align 8, !tbaa !57
  %i.ark = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ark, align 8, !tbaa !57
  %i.arl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !92 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aro = icmp eq ptr %i.arm, %i.arn
  br i1 %i.aro, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit408
  %i.arp = load i64, ptr %i.arn, align 8, !tbaa !82
  %i.arq = add i64 %i.arp, 1
  call void @_ZdlPvm(ptr noundef %i.arm, i64 noundef %i.arq) #28
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ark, align 8, !tbaa !57
  %i.arr = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.arr) #27
  %i.ars = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ars, ptr %2, align 8, !tbaa !57
  %i.art = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.aru = getelementptr i8, ptr %i.ars, i64 -24
  %i.arv = load i64, ptr %i.aru, align 8
  %i.arw = getelementptr inbounds i8, ptr %2, i64 %i.arv
  store ptr %i.art, ptr %i.arw, align 8, !tbaa !57
  %i.arx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.arx, align 8, !tbaa !301
  %i.ary = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ary) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #27
  ret void

bb.nu:                                            ; preds = %bb.ni, %bb.mu, %bb.lz, %bb.kk, %bb.go, %bb.ft, %bb.fo
  %.pn352 = phi { ptr, i32 } [ %i.yj, %bb.ft ], [ %i.xu, %bb.fo ], [ %.pn342.pn.pn.pn.pn.pn, %bb.go ], [ %.pn336.pn.pn.pn, %bb.kk ], [ %.pn315.pn.pn.pn, %bb.lz ], [ %.pn310, %bb.mu ], [ %i.apw, %bb.ni ]
  call void @_ZN18RollbackScopeActorD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %14) #27
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %.body
  %.pn352.pn = phi { ptr, i32 } [ %.pn352, %bb.nu ], [ %.pn306, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.nw

bb.nw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %bb.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %.pn366.pn.pn.pn = phi { ptr, i32 } [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522 ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ], [ %.pn295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531 ], [ %.pn366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449 ], [ %.pn352.pn, %bb.nv ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ], [ %i.vn, %bb.ey ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #27
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %.pn366.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn366.pn.pn.pn, %bb.nw ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #27
  resume { ptr, i32 } %.pn366.pn.pn.pn.pn
}

declare void @_ZN13NetworkPacket14readLongStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare void @_ZN12PointedThing11deSerializeERSi(ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i48 @_Z15getNodeBlockPosN4core8vector3dIsEE(i48 %0) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.0.0.extract.trunc.i = trunc i48 %0 to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %0, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 2 uses
  %i.a = sext i16 %.sroa.0.0.extract.trunc.i to i32 ; 2 uses
  %i.b = add nsw i32 %i.a, -15
  %i.c = icmp slt i16 %.sroa.0.0.extract.trunc.i, 0
  %i.d = select i1 %i.c, i32 %i.b, i32 %i.a
  %i.e = sdiv i32 %i.d, 16
  %i.f = sext i16 %.sroa.2.0.extract.trunc.i to i32 ; 2 uses
  %i.g = add nsw i32 %i.f, -15
  %i.h = icmp slt i16 %.sroa.2.0.extract.trunc.i, 0
  %i.i = select i1 %i.h, i32 %i.g, i32 %i.f
  %i.j = sdiv i32 %i.i, 16
  %i.k = ashr i48 %0, 32
  %i.l = trunc nsw i48 %i.k to i32                ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i48 %0, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16
  %.mask.i = and i32 %i.p, 65535
  %.sroa.3.0.insert.ext.i = zext nneg i32 %.mask.i to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %i.q = shl nsw i32 %i.j, 16
  %.sroa.2.0.insert.shift.i = zext i32 %i.q to i48
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.mask5.i = and i32 %i.e, 65535
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.mask5.i to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

declare noundef i32 @_ZNK8Settings10getFlagStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK8FlagDescPj(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK9PlayerSAO14getEyePositionEv(ptr noundef nonnull align 8 dereferenceable(1226) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 8, !tbaa !386
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !386
  %i.b = tail call { <2 x float>, float } @_ZNK9PlayerSAO12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(1226) %0) ; 2 uses
  %.fca.0.extract3 = extractvalue { <2 x float>, float } %i.b, 0
  %.fca.1.extract4 = extractvalue { <2 x float>, float } %i.b, 1
  %i.c = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %.fca.0.extract3
  %i.d = fadd nsz float %.sroa.22.0.copyload.i, %.fca.1.extract4
  %.fca.0.insert.i13 = insertvalue { <2 x float>, float } poison, <2 x float> %i.c, 0
  %.fca.1.insert.i14 = insertvalue { <2 x float>, float } %.fca.0.insert.i13, float %i.d, 1
  ret { <2 x float>, float } %.fca.1.insert.i14
}

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560)) unnamed_addr #3

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN13EmergeManager18enqueueBlockEmergeEtN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(480), i16 noundef zeroext, i48, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN13ScriptApiNode13node_on_punchEN4core8vector3dIsEE7MapNodeP18ServerActiveObjectRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8), i48, i32, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef, ptr noundef) local_unnamed_addr #3

declare { <2 x float>, float } @_ZNK9PlayerSAO12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(1226)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN4core8vector3dIfE9normalizeEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !386 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !602 ; 3 uses
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp nsz oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fpext nsz float %i.g to double
  %i.j = tail call nsz double @llvm.sqrt.f64(double %i.i)
  %i.k = fdiv nsz double 1.000000e+00, %i.j       ; 2 uses
  %i.l = fpext <2 x float> %i.a to <2 x double>
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x double> %i.n, %i.l
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  store <2 x float> %i.p, ptr %0, align 4, !tbaa !386
  %i.q = fpext nsz float %i.f to double
  %i.r = fmul nsz double %i.k, %i.q
  %i.s = fptrunc nsz double %i.r to float
  store float %i.s, ptr %i.e, align 4, !tbaa !602
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZN9ItemStack7addWearEiPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #6 comdat align 2 {
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
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !83 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.189, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.190, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.190, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind writable sret(%struct.DigParams) align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN9DigParamsaSEOS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !92   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !92   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !431

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !82
  store i8 %i.l, ptr %i.c, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !87
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !82
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.a, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !87
  store i64 %i.s, ptr %i.q, align 8, !tbaa !87
  %i.t = load i64, ptr %i.g, align 8, !tbaa !82
  store i64 %i.t, ptr %i.d, align 8, !tbaa !82
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !82
  store ptr %i.f, ptr %i.a, align 8, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !87
  %i.y = load i64, ptr %i.g, align 8, !tbaa !82
  store i64 %i.y, ptr %i.d, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !92
  store i64 %i.u, ptr %i.g, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !87
  store i8 0, ptr %i.z, align 1, !tbaa !82
  ret ptr %0
}

declare noundef zeroext i1 @_ZN13ScriptApiNode11node_on_digEN4core8vector3dIsEE7MapNodeP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(8), i48, i32, ptr noundef) local_unnamed_addr #3

declare void @_ZN12RemoteClient19ResendBlockIfOnWireEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(568), i48) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZL14getWieldedItemPK9PlayerSAORSt8optionalI9ItemStackE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ItemStack, align 8          ; 21 uses
  %3 = alloca %struct.ItemStack, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.a, i8 0, i64 280, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 0, ptr %i.d, align 8, !tbaa !416
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !57
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -80
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.k, align 8, !tbaa !418
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.m, ptr %i.l, align 8, !tbaa !419
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.n, align 8, !tbaa !420
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !307
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.e, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i8 0, ptr %i.r, align 8, !tbaa !421
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i8 0, ptr %i.s, align 8, !tbaa !422
  %i.t = invoke noundef nonnull align 8 dereferenceable(304) ptr @_ZNSt8optionalI9ItemStackEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.e, ptr noundef nonnull @_ZTT17ItemStackMetadata) #27
  %i.u = load ptr, ptr %2, align 8, !tbaa !92     ; 2 uses
end_hunk_3
