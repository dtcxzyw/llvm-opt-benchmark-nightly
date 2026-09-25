Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15ParticleManager18addParticleSpawnerEmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EE:bb.a

bb.g:                                             ; preds = %.loopexit
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.g, %bb.h
  %i.ab = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !361, !nonnull !143, !align !362 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc4 unwind label %bb.t, !inline_history !5

.noexc4:                                          ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.af, i64 976, i64 984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.5, ptr %i.b, align 8, !tbaa !200
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !363 ; 5 uses
  %.not.i6 = icmp eq ptr %i.ai, null
  br i1 %.not.i6, label %_ZN11StreamProxylsIRmEERS_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !370
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.noexc7 unwind label %bb.t

.noexc7:                                          ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !363
  br label %bb.l

bb.l:                                             ; preds = %.noexc7, %bb.j
  %i.aq = phi ptr [ %.pre.i, %.noexc7 ], [ %i.ai, %bb.j ]
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %1)
          to label %_ZN11StreamProxylsIRmEERS_OT_.exit unwind label %bb.t ; 0 uses

_ZN11StreamProxylsIRmEERS_OT_.exit:               ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.6, ptr %i.a, align 8, !tbaa !200
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZN11StreamProxylsIRmEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !363 ; 5 uses
  %.not.i10 = icmp eq ptr %i.at, null
  br i1 %.not.i10, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !370
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.noexc12 unwind label %bb.t

.noexc12:                                         ; preds = %bb.o
  %.pre.i11 = load ptr, ptr %i.as, align 8, !tbaa !363 ; 2 uses
  %.pre = load ptr, ptr %.pre.i11, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre27 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.p:                                             ; preds = %.noexc12, %bb.n
  %i.bb = phi i64 [ %.pre27, %.noexc12 ], [ %i.aw, %bb.n ]
  %i.bc = phi ptr [ %.pre.i11, %.noexc12 ], [ %i.at, %bb.n ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !376 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.q
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !381
  %.not.i1.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !63
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf)
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.s
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.t, !inline_history !6

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc16, %bb.r
  %.0.i.i.i = phi i8 [ %i.bj, %bb.r ], [ %i.bn, %.noexc16 ]
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i8 noundef signext %.0.i.i.i)
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %.noexc18, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc16, %bb.s, %bb.q, %bb.o, %_ZN11StreamProxylsIRmEERS_OT_.exit, %bb.l, %bb.k, %.noexc4, %_ZTW11errorstream.exit, %.loopexit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %i.z, %bb.f ]
  %i.br = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %.loopexit
  %i.bs = load ptr, ptr %2, align 8, !tbaa !419
  store ptr null, ptr %2, align 8, !tbaa !419
  %i.bt = load ptr, ptr %.1.i.i, align 8, !tbaa !419 ; 2 uses
  store ptr %i.bs, ptr %.1.i.i, align 8, !tbaa !419
  %.not.i.i.i.i14 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i14, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNKSt14default_deleteI15ParticleSpawnerEclEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i, ptr noundef nonnull %i.bt)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.v, %bb.u, %bb.m, %.noexc18
  %i.bu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288), i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager19addDiggingParticlesEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %struct.ParticleParameters, align 8 ; 52 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %8 = alloca %"class.video::SColor", align 4     ; 6 uses
  %9 = alloca %"class.std::unique_ptr.496", align 8 ; 4 uses
  %10 = alloca %struct.ClientParticleTexRef, align 8 ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.2.0.extract.shift = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %.sroa.3.0.extract.shift = lshr i48 %2, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.d, align 4, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i32 0, ptr %5, align 8
  store i16 1, ptr %i.f, align 2, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 74
  store i16 1, ptr %i.m, align 2, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  store <2 x float> splat (float 1.000000e+00), ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104
  store <2 x float> splat (float 1.000000e+00), ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.u, align 8, !tbaa !62
  store i8 0, ptr %i.t, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i8 0, ptr %i.w, align 8, !tbaa !199
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i8 0, ptr %i.x, align 8, !tbaa !273
  store i8 0, ptr %i.v, align 8, !tbaa !193
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i16 127, ptr %i.y, align 4, !tbaa !274
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 172 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 224
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 4, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 240
  store float 0.000000e+00, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 256
  store float 0.000000e+00, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 264
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 280
  store <2 x float> zeroinitializer, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 288
  store float 0.000000e+00, ptr %i.aj, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ah, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 304
  store <2 x float> zeroinitializer, ptr %i.al, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 312
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ak, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  store float 0.000000e+00, ptr %i.an, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 0, ptr %8, align 4, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !192
  %i.as = invoke noundef zeroext i1 @_ZN15ParticleManager21getNodeParticleParamsEP6ClientRK7MapNodeR18ParticleParametersPPN5video8ITextureERN4core8vector2dIfEESE_PNS7_6SColorEh(ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(328) %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull %8, i8 noundef zeroext 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.as, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.au = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.av = sitofp nsz i32 %i.au to float
  %i.aw = fdiv nsz float %i.av, 1.000000e+02
  store float %i.aw, ptr %i.ab, align 8, !tbaa !90
  %i.ax = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.ay = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.000000e+00)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float %i.ax, ptr %i.ba, align 8, !tbaa !95
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float %i.ay, ptr %.sroa.515.0..sroa_idx, align 4, !tbaa !95
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 192
  store float %i.az, ptr %.sroa.616.0..sroa_idx, align 8, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !651
  %i.bd = fneg nsz float %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bf = load float, ptr %i.be, align 8, !tbaa !652
  %i.bg = fmul nsz float %i.bf, %i.bd
  %i.bh = fdiv nsz float %i.bg, 1.000000e+01
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 196
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !95
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 200
  store float %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 204
  store float 0.000000e+00, ptr %.sroa.513.0..sroa_idx, align 4, !tbaa !95
  %i.bj = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.bk = sitofp nsz i16 %.sroa.0.0.extract.trunc to float
  %i.bl = fadd nsz float %i.bj, %i.bk
  %i.bm = fadd nsz float %i.bl, -2.500000e-01
  %i.bn = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bo = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %11 = insertelement <2 x i16> poison, i16 %.sroa.2.0.extract.trunc, i64 0
  %12 = insertelement <2 x i16> %11, i16 %.sroa.3.0.extract.trunc, i64 1
  %i.bp = sitofp <2 x i16> %12 to <2 x float>
  store float %i.bm, ptr %i.z, align 4, !tbaa !95
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bo, i64 1
  %i.bs = fadd nsz <2 x float> %i.br, %i.bp
  %i.bt = fadd nsz <2 x float> %i.bs, splat (float -2.500000e-01)
  store <2 x float> %i.bt, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !94
  store ptr null, ptr %10, align 8, !tbaa !653
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !340
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bw = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #31
          to label %.noexc unwind label %bb.w     ; 3 uses

.noexc:                                           ; preds = %bb.k
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %6, align 8, !noalias !654
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %7, align 8, !noalias !654
  %.sroa.0.0.copyload.i = load i32, ptr %8, align 4, !tbaa !92, !noalias !654
  store ptr null, ptr %4, align 8, !tbaa !326, !noalias !654
  invoke void @_ZN8ParticleC2ERK18ParticleParametersRK20ClientParticleTexRefN4core8vector2dIfEES8_N5video6SColorEP15ParticleSpawnerSt10unique_ptrI21ClientParticleTextureSt14default_deleteISE_EE(ptr noundef nonnull align 8 dereferenceable(448) %i.bw, ptr noundef nonnull align 8 dereferenceable(328) %5, ptr noundef nonnull align 8 dereferenceable(16) %10, <2 x float> %.sroa.03.0.copyload.i, <2 x float> %.sroa.02.0.copyload.i, i32 %.sroa.0.0.copyload.i, ptr noundef null, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.m, !noalias !654

bb.l:                                             ; preds = %.noexc
  store ptr %i.bw, ptr %9, align 8, !tbaa !248, !alias.scope !654
  %i.bx = load ptr, ptr %4, align 8, !tbaa !102, !noalias !654 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i: ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 112) #28, !noalias !654
  br label %bb.n

bb.m:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %4, align 8, !tbaa !102, !noalias !654 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.bz, null
  br i1 %.not.i9.i, label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i: ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 112) #28, !noalias !654
  br label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i

_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i: ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 448) #28, !noalias !654
  br label %.body

bb.n:                                             ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ca = invoke noundef zeroext i1 @_ZN15ParticleManager11addParticleESt10unique_ptrI8ParticleSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 %9)
          to label %bb.o unwind label %bb.x       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %9, align 8, !tbaa !248   ; 7 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !103
  invoke void @_ZN14ParticleBuffer7releaseEt(ptr noundef nonnull align 8 dereferenceable(263) %i.cc, i16 noundef zeroext %i.ce)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 440
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 112) #28
  br label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 224 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !63
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #28
  br label %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #30
  unreachable

_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i:  ; preds = %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 448) #28
  br label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !64  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.t
  br i1 %i.cq, label %_ZN20CommonParticleParamsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.cr = load i64, ptr %i.t, align 8, !tbaa !63
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZN20CommonParticleParamsD2Ev.exit

_ZN20CommonParticleParamsD2Ev.exit:               ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.u:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  br label %.body

.body:                                            ; preds = %bb.w, %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.x ], [ %i.cv, %bb.w ], [ %i.by, %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.v, %bb.u, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cu, %bb.v ], [ %i.ct, %bb.u ], [ %i.at, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !64  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.t
  br i1 %i.cy, label %_ZN20CommonParticleParamsD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.y
  %i.cz = load i64, ptr %i.t, align 8, !tbaa !63
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #28
  br label %_ZN20CommonParticleParamsD2Ev.exit11

_ZN20CommonParticleParamsD2Ev.exit11:             ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN15ParticleManager22getMaterialForParticleEPK8Particle(ptr dead_on_unwind noalias nofree writable sret(%"class.video::SMaterial") align 8 captures(none) initializes((0, 8), (10, 14), (16, 32), (34, 38), (40, 56), (58, 62), (64, 80), (82, 86), (88, 127)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %0, align 8, !tbaa !331
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -4096
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, -4096
  store i16 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -4096
  store i16 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 58
end_hunk_0
