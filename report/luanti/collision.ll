Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/collision?download=true
inline.NumInlined: 591
inline.NumDeleted: 303
begin_hunk_0_@_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode:bb.a
bb.g:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.g
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !31
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ], [ %i.ah, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %bb.cs

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNK4core8vector3dIfEeqERKS1_.exit
  %i.am = fcmp nsz ogt float %5, 2.500000e+00
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %.critedge
  %.b = load i1, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  br i1 %.b, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.i, %bb.j
  %i.an = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46, !nonnull !59, !align !60 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc438 unwind label %bb.r, !inline_history !61

.noexc438:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i = select i1 %i.ar, i64 976, i64 984
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !62
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.k unwind label %bb.r       ; 0 uses

bb.k:                                             ; preds = %.noexc438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !63 ; 5 uses
  %.not.i440 = icmp eq ptr %i.au, null
  br i1 %.not.i440, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !64
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.noexc441 unwind label %bb.r

.noexc441:                                        ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.as, align 8, !tbaa !63 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre959 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.n:                                             ; preds = %.noexc441, %bb.l
  %i.bc = phi i64 [ %.pre959, %.noexc441 ], [ %i.ax, %bb.l ]
  %i.bd = phi ptr [ %.pre.i, %.noexc441 ], [ %i.au, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i603 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i603, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc604 unwind label %bb.r

.noexc604:                                        ; preds = %bb.o
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !77
  %.not.i1.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !31
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
          to label %.noexc605 unwind label %bb.r

.noexc605:                                        ; preds = %bb.q
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.r, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc605, %bb.p
  %.0.i.i.i = phi i8 [ %i.bk, %bb.p ], [ %i.bo, %.noexc605 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i)
          to label %.noexc607 unwind label %bb.r

.noexc607:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %.noexc607, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc605, %bb.q, %bb.o, %bb.m, %.noexc438, %_ZTW13warningstream.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.k, %.noexc607, %bb.h
  store i8 1, ptr @g_collision_problems_encountered, align 1, !tbaa !84
  %.pre960 = load float, ptr %7, align 4, !tbaa !43
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  store i1 false, ptr @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE22time_notification_done, align 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.s
  %i.bs = phi float [ %.pre960, %_ZN11StreamProxylsEPFRSoS0_E.exit ], [ %i.v, %bb.s ]
  %.0 = phi nsz float [ 2.500000e+00, %_ZN11StreamProxylsEPFRSoS0_E.exit ], [ %5, %bb.s ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.bv = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bw = insertelement <4 x float> %i.bv, float %9, i64 2
  %i.bx = fmul nsz <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = insertelement <4 x float> poison, float %.0, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul nsz <4 x float> %i.bx, %i.bz
  %i.cb = load <2 x float>, ptr %i.bt, align 4, !tbaa !18 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 1
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cg = fadd nsz <4 x float> %i.cf, %i.ca       ; 3 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 0 ; 2 uses
  %i.ci = fcmp nsz ogt float %i.ch, 5.000000e+03
  %..i3.i = select nsz i1 %i.ci, float 5.000000e+03, float %i.ch
  %i.cj = fcmp nsz olt <4 x float> %i.cg, splat (float -5.000000e+03)
  %i.ck = fmul nsz float %..i3.i, 1.000000e+04
  %i.cl = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cm = fcmp nsz ogt <2 x float> %i.cl, splat (float 5.000000e+03)
  %i.cn = select <2 x i1> %i.cm, <2 x float> splat (float 5.000000e+03), <2 x float> %i.cl
  %i.co = fmul nsz <2 x float> %i.cn, splat (float 1.000000e+04)
  %i.cp = call nsz <2 x float> @llvm.trunc.v2f32(<2 x float> %i.co)
  %i.cq = call nsz float @llvm.trunc.f32(float %i.ck)
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.cu = fdiv nsz <4 x float> %i.ct, splat (float 1.000000e+04)
  %i.cv = select <4 x i1> %i.cj, <4 x float> splat (float -5.000000e+03), <4 x float> %i.cu ; 4 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.b391 = load i1, ptr @_ZGVZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, align 1
  br i1 %.b391, label %bb.v, label %bb.u, !prof !85

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, i8 0, i64 24, i1 false)
  %i.cx = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev, ptr nonnull @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, ptr nonnull @__dso_handle) #6 ; 0 uses
  store i1 true, ptr @_ZGVZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cy = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZ19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpModeE5cinfo) ; 6 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !86 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.db, %i.cz
  br i1 %.not.i.i, label %bb.w, label %_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.v
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !89
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt8_DestroyIPN12_GLOBAL__N_119NearbyCollisionInfoES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dc = fmul nsz <4 x float> %i.bz, %i.cv
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !45
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %17 = load float, ptr %16, align 4, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = load float, ptr %i.dh, align 4, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !45
  %i.dl = load <3 x float>, ptr %6, align 4, !tbaa !18 ; 2 uses
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1> ; 4 uses
  %i.dn = fadd nsz <4 x float> %i.dc, %i.dm       ; 4 uses
  %i.do = fcmp nsz olt <4 x float> %i.dm, %i.dn
  %i.dp = fcmp nsz ogt <4 x float> %i.dm, %i.dn
  %i.dq = shufflevector <4 x i1> %i.do, <4 x i1> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dr = select <4 x i1> %i.dq, <4 x float> %i.dm, <4 x float> %i.dn
  %i.ds = fadd nsz <4 x float> %i.dr, <float f0x3DCCCCCC, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.dt = load <2 x float>, ptr %3, align 4, !tbaa !18
  %i.du = insertelement <4 x float> poison, float %i.dg, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.di, i64 3
  %i.dw = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dy = fadd nsz <4 x float> %i.dx, %i.ds       ; 2 uses
  %i.dz = fcmp nsz ogt <4 x float> %i.dy, zeroinitializer
  %i.ea = select <4 x i1> %i.dz, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.eb = fadd nsz <4 x float> %i.dy, %i.ea
  %i.ec = fdiv nsz <4 x float> %i.eb, splat (float 1.000000e+01) ; 2 uses
  %i.ed = shufflevector <3 x float> %i.dl, <3 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ef = fcmp nsz ogt <2 x float> %i.ed, %i.ee
  %i.eg = select <2 x i1> %i.ef, <2 x float> %i.ed, <2 x float> %i.ee
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %i.eh = insertelement <2 x float> %18, float %i.dk, i64 1
  %i.ei = fadd nsz <2 x float> %i.eg, %i.eh       ; 2 uses
  %i.ej = fcmp nsz ogt <2 x float> %i.ei, zeroinitializer
  %i.ek = select <2 x i1> %i.ej, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.el = fadd nsz <2 x float> %i.ei, %i.ek
  %i.em = fdiv nsz <2 x float> %i.el, splat (float 1.000000e+01)
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.ec, <4 x float> %i.en, <4 x i32> <i32 1, i32 0, i32 2, i32 4>
  %i.ep = fptosi <4 x float> %i.eo to <4 x i16>
  %i.eq = add <4 x i16> %i.ep, <i16 -1, i16 -1, i16 -1, i16 1> ; 2 uses
  %.sroa.0.0.insert.insert.i475.v = shufflevector <4 x i16> %i.eq, <4 x i16> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %.sroa.0.0.insert.insert.i475 = bitcast <3 x i16> %.sroa.0.0.insert.insert.i475.v to i48
  %i.er = shufflevector <4 x float> %i.ec, <4 x float> %i.en, <2 x i32> <i32 3, i32 5>
  %i.es = fptosi <2 x float> %i.er to <2 x i16>
  %i.et = add <2 x i16> %i.es, splat (i16 1)
  %.sroa.2.0.insert.insert.i493.v = shufflevector <2 x i16> %i.et, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 2, i32 0, i32 1>
  %.sroa.2.0.insert.insert.i493 = bitcast <3 x i16> %.sroa.2.0.insert.insert.i493.v to i48
  %i.eu = extractelement <4 x i16> %i.eq, i64 3
  %.sroa.0.0.insert.ext.i494 = zext i16 %i.eu to i48
  %.sroa.0.0.insert.insert.i495 = or disjoint i48 %.sroa.2.0.insert.insert.i493, %.sroa.0.0.insert.ext.i494
  %i.ev = invoke fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %.sroa.0.0.insert.insert.i475, i48 %.sroa.0.0.insert.insert.i495, ptr noundef %2, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.ev, label %.critedge420, label %bb.y

bb.y:                                             ; preds = %bb.x
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !18
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !18
  br label %.critedge417

bb.z:                                             ; preds = %bb.w
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

.critedge420:                                     ; preds = %bb.x
  br i1 %11, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.critedge420
  %.sroa.0176.0.copyload = load <2 x float>, ptr %6, align 4
  %.sroa.2177.0.copyload = load float, ptr %i.de, align 4, !tbaa !18
  %i.ex = extractelement <4 x float> %i.cv, i64 2
  invoke fastcc void @_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %3, float noundef %.0, <2 x float> %.sroa.0176.0.copyload, float %.sroa.2177.0.copyload, <2 x float> %i.cw, float %i.ex, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZN19collisionMoveResultD2Ev.exit

bb.ac:                                            ; preds = %bb.aa, %.critedge420
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fc = extractelement <4 x float> %i.cv, i64 2
  br label %bb.an

bb.ad:                                            ; preds = %bb.cg
  store i8 %i.nw, ptr %i.s, align 1
  store i8 %i.nv, ptr %i.t, align 2
  store ptr %i.nu, ptr %i.u, align 8
  %.not.i496 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i496, label %_ZTW13warningstream.exit497, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit497

_ZTW13warningstream.exit497:                      ; preds = %bb.ad, %bb.ae
  %i.fd = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46, !nonnull !59, !align !60 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !22
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef zeroext i1 %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %.noexc499 unwind label %bb.am, !inline_history !90

.noexc499:                                        ; preds = %_ZTW13warningstream.exit497
  %.v.i498 = select i1 %i.fh, i64 976, i64 984
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.v.i498 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !62
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.af unwind label %bb.am     ; 0 uses

bb.af:                                            ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !63 ; 5 uses
  %.not.i501 = icmp eq ptr %i.fk, null
  br i1 %.not.i501, label %_ZN11StreamProxylsEPFRSoS0_E.exit505, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.fm = getelementptr i8, ptr %i.fl, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !64
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc503 unwind label %bb.am

.noexc503:                                        ; preds = %bb.ah
  %.pre.i502 = load ptr, ptr %i.fi, align 8, !tbaa !63 ; 2 uses
  %.pre961 = load ptr, ptr %.pre.i502, align 8, !tbaa !22
  %.phi.trans.insert962 = getelementptr i8, ptr %.pre961, i64 -24
  %.pre963 = load i64, ptr %.phi.trans.insert962, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc503, %bb.ag
  %i.fs = phi i64 [ %.pre963, %.noexc503 ], [ %i.fn, %bb.ag ]
  %i.ft = phi ptr [ %.pre.i502, %.noexc503 ], [ %i.fk, %bb.ag ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 240
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i609 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i609, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc614 unwind label %bb.am

.noexc614:                                        ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610: ; preds = %bb.ai
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !77
  %.not.i1.i.i611 = icmp eq i8 %i.fy, 0
  br i1 %.not.i1.i.i611, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 67
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !31
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fw)
          to label %.noexc615 unwind label %bb.am

.noexc615:                                        ; preds = %bb.al
  %i.gb = load ptr, ptr %i.fw, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = invoke noundef signext i8 %i.gd(ptr noundef nonnull align 8 dereferenceable(570) %i.fw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612 unwind label %bb.am, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612: ; preds = %.noexc615, %bb.ak
  %.0.i.i.i613 = phi i8 [ %i.ga, %bb.ak ], [ %i.ge, %.noexc615 ]
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, i8 noundef signext %.0.i.i.i613)
          to label %.noexc617 unwind label %bb.am

.noexc617:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit505 unwind label %bb.am ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit505:             ; preds = %bb.af, %.noexc617
  store i8 1, ptr @g_collision_problems_encountered, align 1, !tbaa !84
  br label %bb.ch

bb.am:                                            ; preds = %.noexc617, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612, %.noexc615, %bb.al, %bb.aj, %bb.ah, %.noexc499, %_ZTW13warningstream.exit497
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.an:                                            ; preds = %bb.ac, %bb.cg
  %i.gi = phi ptr [ null, %bb.ac ], [ %i.nt, %bb.cg ] ; 17 uses
  %.1880 = phi float [ %.0, %bb.ac ], [ %.2780796, %bb.cg ] ; 9 uses
  %.0365879 = phi i32 [ 0, %bb.ac ], [ %i.ov, %bb.cg ]
  %.sroa.15767.0878 = phi float [ %9, %bb.ac ], [ %.sroa.15767.1800, %bb.cg ] ; 9 uses
  %.sroa.0744.0877 = phi <2 x float> [ %8, %bb.ac ], [ %.sroa.0744.1799, %bb.cg ] ; 10 uses
  %.sroa.0713.0876 = phi <2 x float> [ %i.cw, %bb.ac ], [ %i.oq, %bb.cg ] ; 5 uses
  %.sroa.21.0875 = phi float [ %i.fc, %bb.ac ], [ %i.ou, %bb.cg ] ; 5 uses
  %i.gj = phi i8 [ 0, %bb.ac ], [ %i.nw, %bb.cg ] ; 8 uses
  %i.gk = phi i8 [ 0, %bb.ac ], [ %i.nv, %bb.cg ] ; 8 uses
  %i.gl = phi ptr [ null, %bb.ac ], [ %i.nu, %bb.cg ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !91
  %i.gm = load <2 x float>, ptr %6, align 4, !tbaa !18 ; 6 uses
  %i.gn = load float, ptr %i.de, align 4, !tbaa !45 ; 5 uses
  %i.go = load <4 x float>, ptr %15, align 16, !tbaa !18
  %i.gp = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gq = insertelement <4 x float> %i.gp, float %i.gn, i64 2
  %i.gr = fadd nsz <4 x float> %i.gq, %i.go       ; 5 uses
  store <4 x float> %i.gr, ptr %15, align 16, !tbaa !18
  %i.gs = load <2 x float>, ptr %i.ez, align 16, !tbaa !18
  %i.gt = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %i.gn, i64 1
  %i.gv = fadd nsz <2 x float> %i.gu, %i.gs       ; 3 uses
  store <2 x float> %i.gv, ptr %i.ez, align 16, !tbaa !18
  %.val421 = load ptr, ptr %i.cy, align 8, !tbaa !86 ; 5 uses
  %.val422 = load ptr, ptr %i.da, align 8, !tbaa !89 ; 3 uses
  %i.gw = ptrtoint ptr %.val422 to i64
  %i.gx = ptrtoint ptr %.val421 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 40
  %.not896 = icmp eq ptr %.val422, %.val421
  br i1 %.not896, label %.thread801, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE:bb.a
  %i.s = insertelement <2 x float> poison, float %2, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul nsz <2 x float> %i.t, %5            ; 4 uses
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !18
  %i.w = fadd nsz <2 x float> %3, %i.v
  %i.x = fadd nsz <2 x float> %i.w, splat (float -1.500000e+01)
  %i.y = fcmp nsz ogt <2 x float> %i.u, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.aa = fadd nsz <2 x float> %i.z, %i.x
  %i.ab = load <2 x float>, ptr %i.l, align 4, !tbaa !18
  %i.ac = fadd nsz <2 x float> %3, %i.ab
  %i.ad = fadd nsz <2 x float> %i.ac, splat (float 1.500000e+01)
  %i.ae = fcmp nsz olt <2 x float> %i.u, zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.ag = fadd nsz <2 x float> %i.af, %i.ad
  %i.ah = fadd nsz float %i.r, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store <2 x float> %i.aa, ptr %11, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.k, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12
  store <2 x float> %i.ag, ptr %i.ai, align 4
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  store float %i.ah, ptr %.sroa.591.0..sroa_idx, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %7, ptr %12, align 8, !tbaa !106
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %.sroa.5113.0..sroa_idx, align 8, !tbaa !231
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.ak, align 8, !tbaa !232
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS5_8vector3dIfEESB_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISG_EEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.aj, align 8, !tbaa !234
  invoke void @_ZN17ServerEnvironment16getObjectsInAreaERSt6vectorIP18ServerActiveObjectSaIS2_EERKN4core8aabbox3dIfEESt8functionIFbS2_EE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %11, ptr noundef nonnull align 8 %12)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !234 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ap = load ptr, ptr %10, align 8, !tbaa !235  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !238
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !234 ; 2 uses
  %.not.i78 = icmp eq ptr %i.aw, null
  br i1 %.not.i78, label %_ZNSt14_Function_baseD2Ev.exit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit79 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit79:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ba = load ptr, ptr %10, align 8, !tbaa !235  ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit79
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !238
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit81: ; preds = %_ZNSt14_Function_baseD2Ev.exit79, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  resume { ptr, i32 } %i.av

.thread:                                          ; preds = %bb.b, %bb.a, %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z28collision_check_intersectionP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEERKNS3_8vector3dIfEEP12ActiveObjectb(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::vector.4", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !22
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17ServerEnvironment, i64 16)
  br i1 %i.e, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %.not = phi ptr [ @.str.4, %bb.b ], [ @.str.5, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 38, ptr %i.a, align 8, !tbaa !27
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %7, align 8, !tbaa !29
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.g, ptr noundef nonnull align 1 dereferenceable(38) %.not, i64 38, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %6, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef zeroext 2, i8 noundef signext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !tbaa !31
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %9 = load float, ptr %i.t, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !45
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !18
  %i.z = load <3 x float>, ptr %3, align 4, !tbaa !18 ; 2 uses
  %i.aa = shufflevector <3 x float> %i.z, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ab = insertelement <4 x float> poison, float %i.s, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.v, i64 3
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.af = fadd nsz <4 x float> %i.aa, %i.ae       ; 2 uses
  %i.ag = fcmp nsz ogt <4 x float> %i.af, zeroinitializer
  %i.ah = select <4 x i1> %i.ag, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.ai = fadd nsz <4 x float> %i.af, %i.ah
  %i.aj = fdiv nsz <4 x float> %i.ai, splat (float 1.000000e+01) ; 2 uses
  %i.ak = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %i.al = insertelement <2 x float> %10, float %i.x, i64 1
  %i.am = fadd nsz <2 x float> %i.ak, %i.al       ; 2 uses
  %i.an = fcmp nsz ogt <2 x float> %i.am, zeroinitializer
  %i.ao = select <2 x i1> %i.an, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ap = fadd nsz <2 x float> %i.am, %i.ao
  %i.aq = fdiv nsz <2 x float> %i.ap, splat (float 1.000000e+01)
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> %i.ar, <4 x i32> <i32 1, i32 0, i32 2, i32 4>
  %i.at = fptosi <4 x float> %i.as to <4 x i16>
  %i.au = add <4 x i16> %i.at, <i16 -1, i16 -1, i16 -1, i16 1> ; 2 uses
  %.sroa.0.0.insert.insert.i100.v = shufflevector <4 x i16> %i.au, <4 x i16> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %.sroa.0.0.insert.insert.i100 = bitcast <3 x i16> %.sroa.0.0.insert.insert.i100.v to i48
  %i.av = shufflevector <4 x float> %i.aj, <4 x float> %i.ar, <2 x i32> <i32 3, i32 5>
  %i.aw = fptosi <2 x float> %i.av to <2 x i16>
  %i.ax = add <2 x i16> %i.aw, splat (i16 1)
  %.sroa.2.0.insert.insert.i118.v = shufflevector <2 x i16> %i.ax, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 2, i32 0, i32 1>
  %.sroa.2.0.insert.insert.i118 = bitcast <3 x i16> %.sroa.2.0.insert.insert.i118.v to i48
  %i.ay = extractelement <4 x i16> %i.au, i64 3
  %.sroa.0.0.insert.ext.i119 = zext i16 %i.ay to i48
  %.sroa.0.0.insert.insert.i120 = or disjoint i48 %.sroa.2.0.insert.insert.i118, %.sroa.0.0.insert.ext.i119
  %i.az = invoke fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %.sroa.0.0.insert.insert.i100, i48 %.sroa.0.0.insert.insert.i120, ptr noundef %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %.noexc.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.f:                                             ; preds = %.noexc
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.f
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.f
  %i.be = load i64, ptr %i.f, align 8, !tbaa !31
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.bb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.t

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  br i1 %i.az, label %bb.i, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.val.i.pre = load ptr, ptr %8, align 8, !tbaa !86
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  br i1 %5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.sroa.015.0.copyload = load <2 x float>, ptr %3, align 4
  %.sroa.216.0.copyload = load float, ptr %i.q, align 4, !tbaa !18
  invoke fastcc void @_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(24) %2, float noundef 0.000000e+00, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, <2 x float> zeroinitializer, float 0.000000e+00, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.0140.0.copyload = load float, ptr %2, align 4, !tbaa !18
  %.sroa.7.0.copyload = load float, ptr %i.p, align 4, !tbaa !18
  %.sroa.10.0.copyload = load float, ptr %i.r, align 4, !tbaa !18
  %.sroa.13.0.copyload = load float, ptr %i.t, align 4, !tbaa !18
  %.sroa.16.0.copyload = load float, ptr %i.u, align 4, !tbaa !18
  %.sroa.19.0.copyload = load float, ptr %i.w, align 4, !tbaa !18
  %i.bi = load float, ptr %3, align 4, !tbaa !43  ; 2 uses
  %i.bj = fadd nsz float %i.bi, 1.000000e+00
  %i.bk = load float, ptr %i.o, align 4, !tbaa !44 ; 2 uses
  %i.bl = fadd nsz float %i.bk, 1.000000e+00
  %i.bm = load float, ptr %i.q, align 4, !tbaa !45 ; 2 uses
  %i.bn = fadd nsz float %i.bm, 1.000000e+00
  %i.bo = fadd nsz float %.sroa.0140.0.copyload, %i.bj
  %i.bp = fadd nsz float %.sroa.7.0.copyload, %i.bl
  %i.bq = fadd nsz float %.sroa.10.0.copyload, %i.bn
  %i.br = fadd nsz float %i.bi, -1.000000e+00
  %i.bs = fadd nsz float %i.bk, -1.000000e+00
  %i.bt = fadd nsz float %i.bm, -1.000000e+00
  %i.bu = fadd nsz float %.sroa.13.0.copyload, %i.br
  %i.bv = fadd nsz float %.sroa.16.0.copyload, %i.bs
  %i.bw = fadd nsz float %.sroa.19.0.copyload, %i.bt
  %.val90 = load ptr, ptr %8, align 8, !tbaa !115 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val = load ptr, ptr %i.bx, align 8, !tbaa !115 ; 2 uses
  %.not162163 = icmp eq ptr %.val90, %.val
  br i1 %.not162163, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread
  %.sroa.0136.0164 = phi ptr [ %i.cq, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ], [ %.val90, %bb.l ] ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !13
  %i.ca = fcmp nsz ugt float %i.bz, %i.bu
  br i1 %i.ca, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !15
  %i.cd = fcmp nsz ugt float %i.cc, %i.bv
  br i1 %i.cd, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 16
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !17
  %i.cg = fcmp nsz ugt float %i.cf, %i.bw
  br i1 %i.cg, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !9
  %i.cj = fcmp nsz ult float %i.ci, %i.bo
  br i1 %i.cj, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 24
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !14
  %i.cm = fcmp nsz ult float %i.cl, %i.bp
  br i1 %i.cm, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit

_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !16
  %i.cp = fcmp nsz ult float %i.co, %i.bq
  br i1 %i.cp, label %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, label %.critedge

_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread: ; preds = %.lr.ph, %bb.m, %bb.n, %bb.o, %bb.p, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0136.0164, i64 40 ; 2 uses
  %.not162 = icmp eq ptr %i.cq, %.val
  br i1 %.not162, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit, %..critedge_crit_edge, %bb.l
  %.val.i = phi ptr [ %.val.i.pre, %..critedge_crit_edge ], [ %.val90, %bb.l ], [ %.val90, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit ], [ %.val90, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ] ; 3 uses
  %.5 = phi i1 [ true, %..critedge_crit_edge ], [ false, %bb.l ], [ false, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit.thread ], [ true, %_ZNK4core8aabbox3dIfE17intersectsWithBoxERKS1_.exit ]
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val1.i = load ptr, ptr %i.cr, align 8, !tbaa !116
  %i.cs = ptrtoint ptr %.val1.i to i64
  %i.ct = ptrtoint ptr %.val.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.cu) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit: ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %6) #6
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !29 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !31
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #24
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i1 %.5

bb.r:                                             ; preds = %bb.g, %bb.k
  %.pn86.pn = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bh, %bb.k ]
  %.val.i132 = load ptr, ptr %8, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %.val.i132, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val1.i134 = load ptr, ptr %i.db, align 8, !tbaa !116
  %i.dc = ptrtoint ptr %.val1.i134 to i64
  %i.dd = ptrtoint ptr %.val.i132 to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i132, i64 noundef %i.de) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %6) #6
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit135 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  resume { ptr, i32 } %.pn86.pn.pn
end_hunk_1
