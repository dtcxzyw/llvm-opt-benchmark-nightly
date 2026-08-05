inline.NumInlined: 128
inline.NumDeleted: 87
begin_hunk_0_@_ZN12SmokePuffCSOC2EPN5scene13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS5_8vector2dIfEE:bb.a
  %9 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV12SmokePuffCSO, i64 16), ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !nonnull !34, !align !35 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !36
  %.v.i = select i1 %i.j, i64 976, i64 984
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str, ptr %i.a, align 8, !tbaa !37
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !38   ; 5 uses
  %.not.i29 = icmp eq ptr %i.m, null
  br i1 %.not.i29, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %.noexc30

.noexc30:                                         ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !38 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre54 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc30, %bb.c
  %i.u = phi i64 [ %.pre54, %.noexc30 ], [ %i.p, %bb.c ]
  %i.v = phi ptr [ %.pre.i, %.noexc30 ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i42, label %.noexc43, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.noexc43:                                         ; preds = %bb.d
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !53
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %.noexc44, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

.noexc44:                                         ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc44, %bb.e
  %.0.i.i.i = phi i8 [ %i.ac, %bb.e ], [ %i.ag, %.noexc44 ]
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext %.0.i.i.i)
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %_ZTW10infostream.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store <2 x float> splat (float 1.000000e+00), ptr %5, align 8, !tbaa !61
  %i.aj = load ptr, ptr %1, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 noundef -1, i32 -1, i32 -1)
  store ptr %i.am, ptr %i.e, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = call noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aq, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.ar, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.as, align 2, !tbaa !59
  %i.at = invoke noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.au = load ptr, ptr %6, align 8, !tbaa !115   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aq
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !19  ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(218) %i.ay), !inline_history !116
  %.not.i34 = icmp eq i32 %i.bc, 0
  br i1 %.not.i34, label %_ZN5scene10ISceneNode15forEachMaterialIZN12SmokePuffCSOC1EPNS_13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS7_8vector2dIfEEEUlRT_E_EEvOSG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i
  %.04.i = phi i32 [ %i.bn, %.lr.ph.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef nonnull align 8 dereferenceable(127) ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(218) %i.ay, i32 noundef %.04.i), !inline_history !116 ; 5 uses
  store ptr %i.at, ptr %i.bg, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i8 0, ptr %i.bh, align 2, !tbaa !123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  store i8 0, ptr %i.bi, align 1, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store i32 1, ptr %i.bj, align 8, !tbaa !125
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 126 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2
  %i.bm = or i8 %i.bl, 64
  store i8 %i.bm, ptr %i.bk, align 2
  %i.bn = add nuw i32 %.04.i, 1                   ; 2 uses
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(218) %i.ay), !inline_history !116
  %i.bs = icmp ult i32 %i.bn, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %_ZN5scene10ISceneNode15forEachMaterialIZN12SmokePuffCSOC1EPNS_13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS7_8vector2dIfEEEUlRT_E_EEvOSG_.exit, !llvm.loop !134

_ZN5scene10ISceneNode15forEachMaterialIZN12SmokePuffCSOC1EPNS_13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS7_8vector2dIfEEEUlRT_E_EEvOSG_.exit: ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 -16777216, ptr %7, align 4, !tbaa !136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(218) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(218) %i.bx, i1 noundef zeroext true)
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cc = load <2 x float>, ptr %4, align 4, !tbaa !61
  store <2 x float> %i.cc, ptr %8, align 8, !tbaa !61
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 288
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(218) %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cg = load ptr, ptr %2, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(440) %2)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZN5scene10ISceneNode15forEachMaterialIZN12SmokePuffCSOC1EPNS_13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS7_8vector2dIfEEEUlRT_E_EEvOSG_.exit
  %.sroa.02.0.copyload = load <2 x float>, ptr %3, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !61
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.02.0.copyload, i64 1 ; 2 uses
  %i.ck = fcmp nsz ogt float %.sroa.09.4.vec.extract.i, 0.000000e+00
  %i.cl = select nsz i1 %i.ck, float 5.000000e+00, float -5.000000e+00
  %i.cm = fadd nsz float %.sroa.09.4.vec.extract.i, %i.cl
  %i.cn = fdiv nsz float %i.cm, 1.000000e+01
  %i.co = fptosi float %i.cn to i16
  %i.cp = insertelement <2 x float> %.sroa.02.0.copyload, float %.sroa.23.0.copyload, i64 1 ; 2 uses
  %i.cq = fcmp nsz ogt <2 x float> %i.cp, zeroinitializer
  %i.cr = select <2 x i1> %i.cq, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.cs = fadd nsz <2 x float> %i.cp, %i.cr
  %i.ct = fdiv nsz <2 x float> %i.cs, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i = zext i16 %i.co to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %10 = fptosi <2 x float> %i.ct to <2 x i16>     ; 2 uses
  %11 = extractelement <2 x i16> %10, i64 1
  %.sroa.3.0.insert.ext.i = zext i16 %11 to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %12 = extractelement <2 x i16> %10, i64 0
  %.sroa.0.0.insert.ext.i = zext i16 %12 to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.cu = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.cj, i48 %.sroa.0.0.insert.insert.i, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.q       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.extract.shift = lshr i32 %i.cu, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.cv = load i8, ptr %i.b, align 1, !tbaa !137, !range !138, !noundef !34
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.cx = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.k unwind label %bb.q, !inline_history !139

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 336
  %i.df = and i32 %i.cu, 65535
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.dh, align 1, !tbaa !59 ; 3 uses
  %i.di = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, label %bb.l

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i: ; preds = %bb.k
  %i.dj = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dk = and i8 %.sroa.5.0.extract.trunc, 15
  %i.dl = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.dm = call noundef i8 @llvm.umax.i8(i8 %i.dl, i8 %i.dk)
  %i.dn = lshr i8 %.sroa.5.0.extract.trunc, 4
  %i.do = call i8 @llvm.umax.i8(i8 %i.dl, i8 %i.dn)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i
  %i.dp = phi i8 [ %i.dm, %bb.l ], [ %i.dj, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.dq = phi i8 [ %i.do, %bb.l ], [ %i.dj, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.dr = zext nneg i8 %i.dp to i32
  %i.ds = mul i32 %i.cx, %i.dr
  %i.dt = sub i32 1000, %i.cx
  %i.du = zext nneg i8 %i.dq to i32
  %i.dv = mul i32 %i.dt, %i.du
  %i.dw = add i32 %i.dv, %i.ds
  %i.dx = udiv i32 %i.dw, 1000
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.dx, i32 15)
  %i.dy = zext nneg i32 %spec.store.select.i.i to i64
  %i.dz = load ptr, ptr @light_decode_table, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !59
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.ec, 65793
  %i.ee = or disjoint i32 %i.ed, -16777216
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.ef = phi i32 [ %i.ee, %bb.m ], [ -12566464, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 %i.ef, ptr %9, align 4, !tbaa !136
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 320
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(218) %i.eg, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void

bb.p:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %6, align 8, !tbaa !115   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.aq
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  %i.en = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.t

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.g, %_ZN5scene10ISceneNode15forEachMaterialIZN12SmokePuffCSOC1EPNS_13ISceneManagerEP17ClientEnvironmentRKN4core8vector3dIfEERKNS7_8vector2dIfEEEUlRT_E_EEvOSG_.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.eq, %bb.r ], [ %i.ep, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.s
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %.pn24, %bb.s ]
  resume { ptr, i32 } %.pn24.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22, !inline_history !142
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113  ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.h = load ptr, ptr %1, align 8, !tbaa !115, !noalias !143
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !111, !alias.scope !146
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8, !tbaa !113, !alias.scope !146
  store i8 0, ptr %i.i, align 8, !tbaa !59, !alias.scope !146
  %i.k = add i64 %i.f, 21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !113, !alias.scope !146
  %i.m = sub i64 4611686018427387903, %i.l
end_hunk_0
