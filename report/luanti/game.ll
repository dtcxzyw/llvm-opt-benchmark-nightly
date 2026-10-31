Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game15updateProfilersERK8RunStatsRK10FpsControlf:.noexc.i
  br i1 %.not.i, label %_ZTW10infostream.exit139, label %bb.ak

bb.ak:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit139

_ZTW10infostream.exit139:                         ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.ak
  %i.hk = load ptr, ptr %i.gf, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef zeroext i1 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hk), !inline_history !1210
  %.v.i140 = select i1 %i.hn, i64 432, i64 704
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.v.i140
  %i.hp = call noundef i32 @_ZN8Profiler5printERSojj(ptr noundef nonnull align 8 dereferenceable(144) %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZTW10infostream.exit139, %bb.ab
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !78
  call void @_ZN6GameUI14updateProfilerEv(ptr noundef nonnull align 8 dereferenceable(122) %i.hr)
  %i.hs = load ptr, ptr @g_profiler, align 8, !tbaa !541
  call void @_ZN8Profiler5clearEv(ptr noundef nonnull align 8 dereferenceable(144) %i.hs)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aa
  ret void

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  resume { ptr, i32 } %.pn48.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game18updateCameraOffsetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) initializes((676, 677)) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !267  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.g, align 4, !tbaa !578 ; 3 uses
  %.sroa.049.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.5.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16
  tail call void @_ZN6Camera12updateOffsetEv(ptr noundef nonnull align 8 dereferenceable(536) %i.f)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %.sroa.0.0.copyload.i28 = load i48, ptr %i.i, align 4, !tbaa !578 ; 6 uses
  %.sroa.037.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i28 to i16 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i28, 16
  %.sroa.8.0.extract.trunc = trunc i48 %.sroa.8.0.extract.shift to i16 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i28, 32
  %.sroa.9.0.extract.trunc = trunc nuw i48 %.sroa.9.0.extract.shift to i16 ; 2 uses
  %i.j = icmp eq i16 %.sroa.037.0.extract.trunc, %.sroa.049.0.extract.trunc
  %i.k = icmp eq i16 %.sroa.8.0.extract.trunc, %.sroa.5.0.extract.trunc
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i8 1, ptr %i.l, align 4, !tbaa !579
  br label %bb.b

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16
  %i.m = icmp ne i16 %.sroa.9.0.extract.trunc, %.sroa.6.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4, !tbaa !579
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = load i8, ptr %i.p, align 8, !tbaa !580, !range !306, !noundef !213
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !288 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !581  ; 2 uses
  %.not2.i = icmp eq ptr %i.u, null
  br i1 %.not2.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit

_ZN15RenderingEngine19get_shadow_rendererEv.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !583  ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN15RenderingEngine19get_shadow_rendererEv.exit
  %i.x = tail call noundef nonnull align 4 dereferenceable(413) ptr @_ZN14ShadowRenderer19getDirectionalLightEj(ptr noundef nonnull align 8 dereferenceable(208) %i.w, i32 noundef 0)
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !267
  tail call void @_ZN16DirectionalLight18updateCameraOffsetEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413) %i.x, ptr noundef %i.y)
  %i.z = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 21, ptr %i.a, align 8, !tbaa !190
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !192
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !190 ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ab, ptr noundef nonnull align 1 dereferenceable(21) @.str.168, i64 21, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !193
  %i.ae = load ptr, ptr %1, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ag = invoke noundef zeroext i1 @_ZNK8Settings7getFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.noexc.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.aa
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %i.ag, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 140
  store i8 1, ptr %i.al, align 4, !tbaa !1212
  br label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread

bb.g:                                             ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ap = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.am

_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread: ; preds = %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZN15RenderingEngine19get_shadow_rendererEv.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.d)
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !267 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.at, align 4, !tbaa !88
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %.sroa.01.0.copyload.i32 = load <2 x float>, ptr %i.au, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %.sroa.22.0.copyload.i34 = load float, ptr %.sroa.22.0..sroa_idx.i33, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 156
  %i.aw = load float, ptr %i.av, align 4, !tbaa !627 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !628 ; 2 uses
  %i.az = fcmp nsz ogt float %i.aw, %i.ay
  %..i = select nsz i1 %i.az, float %i.aw, float %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !531
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 592
  %.sroa.05.0.copyload = load i32, ptr %i.bc, align 8, !tbaa !545
  call void @_ZN9ClientMap12updateCameraEN4core8vector3dIfEES2_fNS1_IsEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(656) %i.ar, <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, <2 x float> %.sroa.01.0.copyload.i32, float %.sroa.22.0.copyload.i34, float noundef %..i, i48 %.sroa.0.0.copyload.i28, i32 %.sroa.05.0.copyload)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  store i16 %.sroa.037.0.extract.trunc, ptr %i.bd, align 8, !tbaa !578
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 538
  store i16 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !578
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 540
  store i16 %.sroa.9.0.extract.trunc, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !578
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !197 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 428
  store i48 %.sroa.0.0.copyload.i28, ptr %i.bg, align 4, !tbaa !578
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 472
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !659
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 468
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !660
  %i.bl = fmul nsz float %i.bk, 1.000000e+01
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 376
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 392
  %i.bn = bitcast i48 %.sroa.0.0.copyload.i28 to <3 x i16>
  %i.bo = shufflevector <3 x i16> %i.bn, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bp = sitofp <4 x i16> %i.bo to <4 x float>
  %.scalar = fmul nsz float %i.bi, 1.000000e+01   ; 2 uses
  %i.bq = insertelement <4 x float> <float -1.000000e+07, float poison, float -1.000000e+07, float 1.000000e+07>, float %.scalar, i64 1
  %i.br = fadd nsz float %.scalar, %i.bl
  %i.bs = fmul nnan nsz <4 x float> %i.bp, splat (float 1.000000e+01) ; 2 uses
  %i.bt = fsub nsz <4 x float> %i.bq, %i.bs
  store <4 x float> %i.bt, ptr %i.bm, align 4, !tbaa !88
  %i.bu = insertelement <2 x float> <float poison, float 1.000000e+07>, float %i.br, i64 0
  %i.bv = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bw = fsub nsz <2 x float> %i.bu, %i.bv
  store <2 x float> %i.bw, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, %_ZNK4core8vector3dIsEneERKS1_.exit
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game16processUserInputEf(ptr noundef nonnull align 8 dereferenceable(688) %0, float noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN4Game23shouldShowTouchControlsEv(ptr noundef nonnull align 8 dereferenceable(688) %0)
  %.not = xor i1 %i.b, true                       ; 2 uses
  %i.c = load ptr, ptr @g_touchcontrols, align 8  ; 3 uses
  %i.d = icmp ne ptr %i.c, null                   ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(712) ptr @_Znwm(i64 noundef 712) #33 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !274
  invoke void @_ZN13TouchControlsC1EP14IrrlichtDeviceP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(712) %i.e, ptr noundef %i.g, ptr noundef %i.i)
          to label %.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 712) #36
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %or.cond4 = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN13TouchControlsD1Ev(ptr noundef nonnull align 8 dead_on_return(712) dereferenceable(712) %i.c) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 712) #36
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e
  %.sink = phi ptr [ null, %bb.e ], [ %i.e, %bb.b ]
  store ptr %.sink, ptr @g_touchcontrols, align 8, !tbaa !662
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !300  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @g_menumgr, i64 24), align 8
  %i.r = icmp eq i64 %i.q, 0
  %or.cond23.not = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond23.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @guienv, align 8, !tbaa !326 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i1 noundef zeroext false)
  br i1 %i.y, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 677 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1214, !range !306, !noundef !213
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.z, align 1, !tbaa !1214
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.i, %bb.j
  %i.ac = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad), !inline_history !14
  %.v.i = select i1 %i.ag, i64 976, i64 984
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.102, ptr %i.a, align 8, !tbaa !185
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !215 ; 5 uses
  %.not.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i18, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.k

bb.k:                                             ; preds = %_ZTW10infostream.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !222
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !215 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi i64 [ %.pre25, %bb.l ], [ %i.am, %bb.k ]
  %i.as = phi ptr [ %.pre.i, %bb.l ], [ %i.aj, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !228 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !233
  %.not.i1.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.av)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.az, %bb.o ], [ %i.bd, %bb.p ]
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i)
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !304 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(512) %i.bh)
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !304 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(512) %i.bm)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bq = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 2 uses
  %.not17 = icmp eq ptr %i.bq, null
  br i1 %.not17, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN13TouchControls4hideEv(ptr noundef nonnull align 8 dereferenceable(712) %i.bq)
  br label %bb.w

bb.t:                                             ; preds = %bb.g
  %i.br = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 2 uses
  %.not16 = icmp eq ptr %i.br, null
  br i1 %.not16, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN13TouchControls4showEv(ptr noundef nonnull align 8 dereferenceable(712) %i.br)
  %i.bs = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662
end_hunk_0
begin_hunk_1_@_ZN4Game12updateCameraEf:bb.a

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i6.i
  store ptr %.0.i.i.i.i.i.i7.i, ptr %i.cl, align 8, !tbaa !542
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i9.i = phi ptr [ %i.cr, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.cv, %bb.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i9.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !722 ; 2 uses
  %.not.i.i8.i.i.i.i10.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i8.i.i.i.i10.i, label %bb.j, label %bb.i, !llvm.loop !17

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i9.i, ptr %i.cm, align 8, !tbaa !542
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !333
  store i64 %i.cx, ptr %i.cn, align 8, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store ptr %i.cr, ptr %i.ck, align 8, !tbaa !542
  br label %_ZN16ToolCapabilitiesC2ERKS_.exit

bb.k:                                             ; preds = %bb.h
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bu) #34
  br label %.body

_ZN16ToolCapabilitiesC2ERKS_.exit:                ; preds = %bb.j, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i
  %i.cz = load float, ptr %7, align 8, !tbaa !1243
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.db = load float, ptr %i.da, align 8, !tbaa !310
  %i.dc = fdiv nsz float %i.db, %i.cz             ; 2 uses
  %i.dd = fcmp nsz ogt float %i.dc, 1.000000e+00
  %.sroa.speculated = select i1 %i.dd, float 1.000000e+00, float %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !267
  invoke void @_ZN6Camera6updateEP11LocalPlayerff(ptr noundef nonnull align 8 dereferenceable(536) %i.df, ptr noundef nonnull %i.d, float noundef %1, float noundef %.sroa.speculated)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN16ToolCapabilitiesC2ERKS_.exit
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !267
  invoke void @_ZN6Camera4stepEf(ptr noundef nonnull align 8 dereferenceable(536) %i.dg, float noundef %1)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !580, !range !306, !noundef !213
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  %i.dm = invoke noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.dl)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !267 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.do, align 4, !tbaa !88
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %.sroa.01.0.copyload.i37 = load <2 x float>, ptr %i.dp, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %.sroa.22.0.copyload.i39 = load float, ptr %.sroa.22.0..sroa_idx.i38, align 8, !tbaa !88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 156
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !627 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 160
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !628 ; 2 uses
  %i.du = fcmp nsz ogt float %i.dr, %i.dt
  %..i42 = select nsz i1 %i.du, float %i.dr, float %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.dv, align 4, !tbaa !578
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %.sroa.03.0.copyload = load i32, ptr %i.dw, align 8, !tbaa !545
  invoke void @_ZN9ClientMap12updateCameraEN4core8vector3dIfEES2_fNS1_IsEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(656) %i.dm, <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, <2 x float> %.sroa.01.0.copyload.i37, float %.sroa.22.0.copyload.i39, float noundef %..i42, i48 %.sroa.0.0.copyload.i, i32 %.sroa.03.0.copyload)
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %.noexc34, %_ZN17ItemStackMetadataaSERKS_.exit.i, %bb.c, %bb.b, %bb.a
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.v

bb.q:                                             ; preds = %bb.e, %_ZN9ItemStackD2Ev.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.l, %_ZN16ToolCapabilitiesC2ERKS_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16ToolCapabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #34
  br label %.body

bb.s:                                             ; preds = %bb.o, %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !539
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef %i.eb)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i: ; preds = %bb.s
  %i.ee = load ptr, ptr %i.bw, align 8, !tbaa !539
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef %i.ee)
          to label %_ZN16ToolCapabilitiesD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #35
  unreachable

_ZN16ToolCapabilitiesD2Ev.exit:                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.ab, ptr noundef nonnull @_ZTT17ItemStackMetadata) #34
  %i.eh = load ptr, ptr %5, align 8, !tbaa !192   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.x
  br i1 %i.ei, label %_ZN9ItemStackD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZN16ToolCapabilitiesD2Ev.exit
  %i.ej = load i64, ptr %i.x, align 8, !tbaa !54
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #36
  br label %_ZN9ItemStackD2Ev.exit45

_ZN9ItemStackD2Ev.exit45:                         ; preds = %_ZN16ToolCapabilitiesD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.i, ptr noundef nonnull @_ZTT17ItemStackMetadata) #34
  %i.el = load ptr, ptr %4, align 8, !tbaa !192   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.e
  br i1 %i.em, label %_ZN9ItemStackD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %_ZN9ItemStackD2Ev.exit45
  %i.en = load i64, ptr %i.e, align 8, !tbaa !54
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #36
  br label %_ZN9ItemStackD2Ev.exit48

_ZN9ItemStackD2Ev.exit48:                         ; preds = %_ZN9ItemStackD2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

.body:                                            ; preds = %bb.q, %bb.k, %bb.r
  %.pn29 = phi { ptr, i32 } [ %i.dz, %bb.r ], [ %i.dy, %bb.q ], [ %i.cy, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.p
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body ], [ %i.dx, %bb.p ]
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn29.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game11updateSoundEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, float noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d.53", align 8 ; 5 uses
  %3 = alloca %"class.core::vector3d.53", align 8 ; 5 uses
  %4 = alloca %"class.core::vector3d.53", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !531  ; 5 uses
  %i.e = tail call noundef ptr @_ZNK11LocalPlayer9getParentEv(ptr noundef nonnull align 8 dereferenceable(864) %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !267  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.h, align 4, !tbaa !578 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !200  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !725  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(218) %i.l) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !90
  %i.s = fmul nsz float %i.r, 1.000000e-01
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.t = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !88
  %i.v = fmul nsz <2 x float> %i.u, splat (float 1.000000e-01)
  %i.w = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.x = shufflevector <3 x i16> %i.w, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.y = sitofp <2 x i16> %i.x to <2 x float>
  %i.z = fadd nsz <2 x float> %i.v, %i.y
  %i.aa = fadd nsz float %i.s, %i.t
  store <2 x float> %i.z, ptr %2, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.aa, ptr %.sroa.217.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call { <2 x float>, float } %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 2 uses
  %.fca.0.extract10 = extractvalue { <2 x float>, float } %i.ae, 0
  %.fca.1.extract11 = extractvalue { <2 x float>, float } %i.ae, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.af, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0 = phi nsz float [ %.sroa.22.0.copyload.i, %bb.c ], [ %.fca.1.extract11, %bb.b ]
  %.sroa.048.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i, %bb.c ], [ %.fca.0.extract10, %bb.b ]
  %i.ag = fmul nsz <2 x float> %.sroa.048.0, splat (float 1.000000e-01)
  %i.ah = fmul nsz float %.sroa.6.0, 1.000000e-01
  store <2 x float> %i.ag, ptr %3, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ah, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !267 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.01.0.copyload.i43 = load <2 x float>, ptr %i.aj, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.22.0.copyload.i45 = load float, ptr %.sroa.22.0..sroa_idx.i44, align 8, !tbaa !88
  store <2 x float> %.sroa.01.0.copyload.i43, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.sroa.22.0.copyload.i45, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !725 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(233) %i.al)
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !300 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  call void @_Z20sound_volume_controlP13ISoundManagerb(ptr noundef %i.at, i1 noundef zeroext %i.az)
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.bb)
  %i.bd = call i48 @_ZN11LocalPlayer18getFootstepNodePosEv(ptr noundef nonnull align 8 dereferenceable(864) %i.d)
  %i.be = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, i48 %i.bd, ptr noundef null)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 484
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !1244, !range !306, !noundef !213
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !276 ; 2 uses
  %i.bl = and i32 %i.be, 65535
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !287
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !286 ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 2080
  %i.bv = icmp ugt i64 %i.bu, %i.bm
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw [2080 x i8], ptr %i.bq, i64 %i.bm ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !193
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.f, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.e, %bb.f
  %i.cb = phi ptr [ %i.ca, %bb.f ], [ %i.bw, %bb.e ]
  %i.cc = trunc nuw i8 %i.bi to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1904
  call void @_ZN10SoundMaker6updateEfbRK9SoundSpec(ptr noundef nonnull align 8 dereferenceable(256) %i.bg, float noundef %1, i1 noundef zeroext %i.cc, ptr noundef nonnull align 8 dereferenceable(50) %i.cd)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game24processPlayerInteractionEfb(ptr noundef nonnull align 8 dereferenceable(688) %0, float noundef %1, i1 zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %4 = alloca %struct.ItemStack, align 8          ; 24 uses
  %5 = alloca %struct.ItemStack, align 8          ; 24 uses
  %6 = alloca %"class.core::line3d", align 16     ; 14 uses
  %7 = alloca %struct.PointedThing, align 4       ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %9 = alloca %struct.SoundSpec, align 8          ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.core::vector3d.53", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !531  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !267  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.m, align 4, !tbaa !578
  store i48 %.sroa.0.0.copyload.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !193
  store i8 0, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 0, ptr %i.p, align 8, !tbaa !712
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 0, ptr %i.q, align 2, !tbaa !713
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !47
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -80      ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.x, align 8, !tbaa !714
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.z, ptr %i.y, align 8, !tbaa !715
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.aa, align 8, !tbaa !716
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.r, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i8 0, ptr %i.ae, align 8, !tbaa !717
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i8 0, ptr %i.af, align 8, !tbaa !718
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !193
  store i8 0, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 0, ptr %i.ai, align 8, !tbaa !712
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i16 0, ptr %i.aj, align 2, !tbaa !713
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.al = load i64, ptr %i.u, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store ptr %i.t, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.an, align 8, !tbaa !714
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !715
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.aq, align 8, !tbaa !716
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.ak, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i8 0, ptr %i.au, align 8, !tbaa !717
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 288
  store i8 0, ptr %i.av, align 8, !tbaa !718
  %i.aw = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6Player14getWieldedItemEP9ItemStackS1_(ptr noundef nonnull align 8 dereferenceable(416) %i.i, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !277
  %i.az = invoke noundef nonnull align 8 dereferenceable(982) ptr @_ZNK9ItemStack13getDefinitionEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %i.aw, ptr noundef %i.ay)
          to label %bb.c unwind label %bb.e       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !277
  %i.bb = invoke noundef float @_Z12getToolRangeRK9ItemStackS1_PK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %i.aw, ptr noundef nonnull align 8 dereferenceable(296) %5, ptr noundef %i.ba)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %6, align 16, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.bf, align 16, !tbaa !88
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !267 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 488
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !726
  switch i32 %i.bj, label %bb.l [
    i32 3, label %bb.i
    i32 2, label %bb.g
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.f:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %.sroa.01.0.copyload.i130 = load <2 x float>, ptr %i.bl, align 4, !tbaa !88
  %.sroa.22.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.bh, i64 68
  %.sroa.22.0.copyload.i132 = load float, ptr %.sroa.22.0..sroa_idx.i131, align 4, !tbaa !88
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.bm = invoke { <2 x float>, float } @_ZNK6Camera15getHeadPositionEv(ptr noundef nonnull align 8 dereferenceable(536) %i.bh)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.fca.0.extract60 = extractvalue { <2 x float>, float } %i.bm, 0
  %.fca.1.extract61 = extractvalue { <2 x float>, float } %i.bm, 1
  br label %.sink.split

bb.i:                                             ; preds = %bb.d
  %i.bn = invoke { <2 x float>, float } @_ZNK6Camera15getHeadPositionEv(ptr noundef nonnull align 8 dereferenceable(536) %i.bh)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.fca.0.extract54 = extractvalue { <2 x float>, float } %i.bn, 0
  %.fca.1.extract55 = extractvalue { <2 x float>, float } %i.bn, 1
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.sink.split:                                      ; preds = %bb.j, %bb.h, %bb.f
  %.sroa.01.0.copyload.i130.sink364 = phi <2 x float> [ %.sroa.01.0.copyload.i130, %bb.f ], [ %.fca.0.extract60, %bb.h ], [ %.fca.0.extract54, %bb.j ] ; 2 uses
  %.sroa.22.0.copyload.i132.sink = phi float [ %.sroa.22.0.copyload.i132, %bb.f ], [ %.fca.1.extract61, %bb.h ], [ %.fca.1.extract55, %bb.j ] ; 2 uses
  %.0111.ph = phi float [ %i.bb, %bb.f ], [ %i.bb, %bb.h ], [ 0.000000e+00, %bb.j ]
  store <2 x float> %.sroa.01.0.copyload.i130.sink364, ptr %6, align 16, !tbaa !88
  store float %.sroa.22.0.copyload.i132.sink, ptr %i.bd, align 8, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.d
  %i.bp = phi float [ 0.000000e+00, %bb.d ], [ %.sroa.22.0.copyload.i132.sink, %.sink.split ]
  %.0111 = phi nsz float [ %i.bb, %bb.d ], [ %.0111.ph, %.sink.split ] ; 3 uses
  %i.bq = phi <2 x float> [ zeroinitializer, %bb.d ], [ %.sroa.01.0.copyload.i130.sink364, %.sink.split ]
  %i.br = fmul nsz float %.sroa.22.0.copyload.i, 1.000000e+01
  %i.bs = fmul nsz float %i.br, %.0111
  %i.bt = fmul nsz <2 x float> %.sroa.01.0.copyload.i, splat (float 1.000000e+01)
  %i.bu = insertelement <2 x float> poison, float %.0111, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.bt, %i.bv
  %i.bx = fadd nsz <2 x float> %i.bq, %i.bw
  %i.by = fadd nsz float %i.bs, %i.bp
  store <2 x float> %i.bx, ptr %i.be, align 4, !tbaa !88
  store float %i.by, ptr %i.bg, align 4, !tbaa !88
  %i.bz = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 3 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZNK4Game20isTouchShootlineUsedEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !766
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %_ZNK4Game20isTouchShootlineUsedEv.exit, label %_ZNK4Game20isTouchShootlineUsedEv.exit.thread

_ZNK4Game20isTouchShootlineUsedEv.exit:           ; preds = %bb.m
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 488
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !726
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %_ZNK4Game20isTouchShootlineUsedEv.exit.thread

bb.n:                                             ; preds = %_ZNK4Game20isTouchShootlineUsedEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  %i.ci = load float, ptr %i.bg, align 4, !tbaa !90
  %i.cj = load float, ptr %6, align 16, !tbaa !767 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.bc, align 4, !tbaa !88 ; 4 uses
  %i.cl = load <2 x float>, ptr %i.be, align 4, !tbaa !88
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x float> %i.cm, float %i.cj, i64 0
  %i.co = fsub nsz <2 x float> %i.cl, %i.cn       ; 5 uses
  %i.cp = extractelement <2 x float> %i.ck, i64 1
  %i.cq = fsub nsz float %i.ci, %i.cp             ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.co, %i.co
  %i.cr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cs = extractelement <2 x float> %i.co, i64 0 ; 2 uses
  %i.ct = call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cr)
  %i.cu = call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.ct) ; 2 uses
  %i.cv = fcmp nsz oeq float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = fpext nsz float %i.cu to double
  %i.cx = call nsz double @llvm.sqrt.f64(double %i.cw)
  %i.cy = fdiv nsz double 1.000000e+00, %i.cx     ; 2 uses
  %i.cz = fpext <2 x float> %i.co to <2 x double>
  %i.da = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul nsz <2 x double> %i.db, %i.cz
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float>
  %i.de = fpext nsz float %i.cq to double
  %i.df = fmul nsz double %i.cy, %i.de
  %i.dg = fptrunc nsz double %i.df to float
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.10.0 = phi nsz float [ %i.cq, %bb.n ], [ %i.dg, %bb.o ]
  %.sroa.0293.0 = phi nsz <2 x float> [ %i.co, %bb.n ], [ %i.dd, %bb.o ] ; 2 uses
  %.sroa.0293.0.vec.extract296 = extractelement <2 x float> %.sroa.0293.0, i64 0
  %.sroa.022.0.copyload366 = load <3 x i16>, ptr %3, align 8, !tbaa !578
  %i.dh = fmul nsz float %.sroa.0293.0.vec.extract296, 1.000000e+01
  %i.di = fmul nsz float %.0111, %i.dh
  %i.dj = fadd nsz float %i.cj, %i.di
  %i.dk = shufflevector <3 x i16> %.sroa.022.0.copyload366, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dl = sitofp <4 x i16> %i.dk to <4 x float>
  %i.dm = fmul nnan nsz <4 x float> %i.dl, splat (float 1.000000e+01) ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.do = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dq = insertelement <4 x float> %i.dp, float %i.dj, i64 3
  %i.dr = fadd nsz <4 x float> %i.dm, %i.dq
  store <4 x float> %i.dr, ptr %6, align 16, !tbaa !88
  %i.ds = shufflevector <2 x float> %.sroa.0293.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %.sroa.10.0, i64 1
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 1.000000e+01)
  %i.dv = fmul nsz <2 x float> %i.bv, %i.du
  %i.dw = fadd nsz <2 x float> %i.ck, %i.dv
  %i.dx = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dy = fadd nsz <2 x float> %i.dx, %i.dw
  store <2 x float> %i.dy, ptr %i.bf, align 16, !tbaa !88
  br label %_ZNK4Game20isTouchShootlineUsedEv.exit.thread

_ZNK4Game20isTouchShootlineUsedEv.exit.thread:    ; preds = %bb.l, %bb.m, %bb.p, %_ZNK4Game20isTouchShootlineUsedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.az, i64 347
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !1248, !range !306, !noundef !213
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 352
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 454 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !787, !range !306, !noundef !213
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = xor i1 %i.ef, true
  invoke void @_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE(ptr dead_on_unwind nonnull writable sret(%struct.PointedThing) align 4 %7, ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(24) %6, i1 noundef zeroext %i.eb, ptr noundef nonnull align 8 dereferenceable(232) %i.ec, i1 noundef zeroext %i.eg, ptr noundef nonnull align 2 dereferenceable(6) %3)
          to label %bb.q unwind label %bb.af

bb.q:                                             ; preds = %_ZNK4Game20isTouchShootlineUsedEv.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 5 uses
  %i.ei = invoke noundef zeroext i1 @_ZNK12PointedThingeqERKS_(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.eh)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  br i1 %i.ei, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i166 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i166, label %_ZTW10infostream.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.s, %bb.t
  %i.ej = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !47
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %.noexc unwind label %bb.af, !inline_history !1245

.noexc:                                           ; preds = %_ZTW10infostream.exit
  %.v.i = select i1 %i.en, i64 976, i64 984
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.169, ptr %i.d, align 8, !tbaa !185
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.u unwind label %bb.af      ; 0 uses

bb.u:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(64) %7)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !215 ; 5 uses
  %.not.i168 = icmp eq ptr %i.eq, null
  br i1 %.not.i168, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !222
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %.noexc169 unwind label %bb.ah

.noexc169:                                        ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.eo, align 8, !tbaa !215
  br label %bb.y

bb.y:                                             ; preds = %.noexc169, %bb.w
  %i.ey = phi ptr [ %.pre.i, %.noexc169 ], [ %i.eq, %bb.w ]
  %i.ez = load ptr, ptr %8, align 8, !tbaa !192
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !193
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.ez, i64 noundef %i.fb)
          to label %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.ah ; 0 uses

_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.y
  %.pr = load ptr, ptr %i.eo, align 8, !tbaa !215 ; 5 uses
  %.not.i171 = icmp eq ptr %.pr, null
  br i1 %.not.i171, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.z

bb.z:                                             ; preds = %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.fd = load ptr, ptr %.pr, align 8, !tbaa !47
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8            ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.pr, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !222
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc173 unwind label %bb.ah

.noexc173:                                        ; preds = %bb.aa
  %.pre.i172 = load ptr, ptr %i.eo, align 8, !tbaa !215 ; 2 uses
  %.pre = load ptr, ptr %.pre.i172, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre312 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc173, %bb.z
  %i.fk = phi i64 [ %.pre312, %.noexc173 ], [ %i.ff, %bb.z ]
  %i.fl = phi ptr [ %.pre.i172, %.noexc173 ], [ %.pr, %bb.z ] ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 240
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !228 ; 6 uses
  %.not.i.i.i258 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i258, label %bb.ac, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc259 unwind label %bb.ah

.noexc259:                                        ; preds = %bb.ac
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !233
  %.not.i1.i.i = icmp eq i8 %i.fq, 0
  br i1 %.not.i1.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 67
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fo)
          to label %.noexc260 unwind label %bb.ah

.noexc260:                                        ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef signext i8 %i.fv(ptr noundef nonnull align 8 dereferenceable(570) %i.fo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ah, !inline_history !13

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc260, %bb.ad
  %.0.i.i.i = phi i8 [ %i.fs, %bb.ad ], [ %i.fw, %.noexc260 ]
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i8 noundef signext %.0.i.i.i)
          to label %.noexc262 unwind label %bb.ah

.noexc262:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ah ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.v, %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %.noexc262
  %i.fz = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !54
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ai

bb.af:                                            ; preds = %.invoke, %.noexc283, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i278, %.noexc281, %bb.bn, %.noexc272, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i267, %.noexc270, %bb.ba, %_ZN4Game10wasKeyDownEN7KeyType1TE.exit, %bb.de, %bb.da, %bb.cx, %bb.cu, %bb.ct, %bb.cf, %bb.ce, %bb.bz, %_ZN9SoundSpecD2Ev.exit, %bb.bx, %bb.bt, %bb.bk, %.noexc199, %_ZTW10infostream.exit197, %bb.bb, %bb.ax, %.noexc187, %_ZTW10infostream.exit185, %bb.as, %bb.ap, %.noexc, %_ZTW10infostream.exit, %bb.q, %bb.dd, %bb.dc, %bb.db, %bb.cy, %bb.cw, %bb.cl, %bb.cj, %bb.ch, %bb.bq, %bb.bp, %_ZN11StreamProxylsEPFRSoS0_E.exit205, %bb.an, %_ZNK4Game20isTouchShootlineUsedEv.exit.thread
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ag:                                            ; preds = %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.ah:                                            ; preds = %.noexc262, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc260, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.x
  %i.gg = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN14MinimapModeDefD2Ev:bb.a
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !54
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !54
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef zeroext i1 @_ZN3Hud16hasElementOfTypeE14HudElementType(ptr noundef nonnull align 8 dereferenceable(572), i32 noundef) local_unnamed_addr #3

declare noundef signext i16 @_ZNK8Settings6getS16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z9fwgettextIJRsS0_EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPKcDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.67") align 8 %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [255 x i32], align 16             ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_Z11wstrgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %4, ptr noundef %1)
  %i.c = load ptr, ptr %4, align 8, !tbaa !262
  %i.d = load i16, ptr %2, align 2, !tbaa !578
  %i.e = sext i16 %i.d to i32
  %i.f = load i16, ptr %3, align 2, !tbaa !578
  %i.g = sext i16 %i.f to i32
  %i.h = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 255, ptr noundef %i.c, i32 noundef %i.e, i32 noundef %i.g) #34 ; 0 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !262    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !54
  %i.m = shl i64 %i.l, 2
  %i.n = add i64 %i.m, 4
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !74
  %i.p = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #38 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.p, ptr %i.a, align 8, !tbaa !190
  %i.q = icmp ugt i64 %i.p, 3
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !262
  %i.s = load i64, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.t = phi i64 [ %i.s, %.noexc.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 2 uses
  %i.u = phi ptr [ %i.r, %.noexc.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 4 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.v = load i32, ptr %i.b, align 16, !tbaa !76
  store i32 %i.v, ptr %i.u, align 4, !tbaa !76
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = call ptr @wmemcpy(ptr noundef %i.u, ptr noundef nonnull %i.b, i64 noundef %i.p) #34 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !190
  %.pre7.i.i = load ptr, ptr %0, align 8, !tbaa !262
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.x = phi ptr [ %i.u, %._crit_edge.i.i ], [ %i.u, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.y = phi i64 [ %i.t, %._crit_edge.i.i ], [ %i.t, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !564
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  store i32 0, ptr %i.aa, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z9fwgettextIJRsEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPKcDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.67") align 8 %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [255 x i32], align 16             ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_Z11wstrgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %3, ptr noundef %1)
  %i.c = load ptr, ptr %3, align 8, !tbaa !262
  %i.d = load i16, ptr %2, align 2, !tbaa !578
  %i.e = sext i16 %i.d to i32
  %i.f = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 255, ptr noundef %i.c, i32 noundef %i.e) #34 ; 0 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !262    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !54
  %i.k = shl i64 %i.j, 2
  %i.l = add i64 %i.k, 4
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !74
  %i.n = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #38 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.n, ptr %i.a, align 8, !tbaa !190
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !262
  %i.q = load i64, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.r = phi i64 [ %i.q, %.noexc.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 2 uses
  %i.s = phi ptr [ %i.p, %.noexc.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 4 uses
  switch i64 %i.n, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = load i32, ptr %i.b, align 16, !tbaa !76
  store i32 %i.t, ptr %i.s, align 4, !tbaa !76
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = call ptr @wmemcpy(ptr noundef %i.s, ptr noundef nonnull %i.b, i64 noundef %i.n) #34 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !190
  %.pre7.i.i = load ptr, ptr %0, align 8, !tbaa !262
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.v = phi ptr [ %i.s, %._crit_edge.i.i ], [ %i.s, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.w = phi i64 [ %i.r, %._crit_edge.i.i ], [ %i.r, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !564
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  store i32 0, ptr %i.y, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game23updateCameraOrientationEP17CameraOrientationf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef captures(none) %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !628
  %i.g = fmul nsz float %i.f, 5.000000e-01
  %i.h = tail call nsz noundef float @llvm.tan.f32(float %i.g)
  %i.i = fmul nsz float %i.h, f0x3FB02D48         ; 4 uses
  %i.j = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = fpext nsz float %i.i to double
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !1500
  store <2 x double> zeroinitializer, ptr %i.k, align 8, !tbaa !1500
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !88
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = insertelement <2 x double> poison, double %i.l, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.q, <2 x double> %i.o)
  %i.s = fptrunc <2 x double> %i.r to <2 x float>
  store <2 x float> %i.s, ptr %1, align 4, !tbaa !88
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !308  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 488
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.z = load i32, ptr %i.y, align 4, !tbaa !678
  %i.aa = lshr i32 %i.z, 1                        ; 3 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !308 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 488
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !679
  %i.ai = lshr i32 %i.ah, 1                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !304 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i64 %i.an(ptr noundef nonnull align 8 dereferenceable(512) %i.ak) ; 2 uses
  %.sroa.0.0.extract.trunc33 = trunc i64 %i.ao to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ao, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ap = sub nsw i32 %.sroa.0.0.extract.trunc33, %i.aa
  %i.aq = sub nsw i32 %.sroa.4.0.extract.trunc, %i.ai ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !247, !range !306, !noundef !213
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !267
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 488
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !726
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = sub nsw i32 0, %i.aq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0 = phi i32 [ %i.az, %bb.e ], [ %i.aq, %bb.d ] ; 2 uses
  %i.ba = sitofp nsz i32 %i.ap to float
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bc = load <1 x float>, ptr %i.bb, align 8
  %i.bd = fneg nsz float %i.ba
  %i.be = sitofp nsz i32 %.sroa.5.0 to float
  %i.bf = shufflevector <1 x float> %i.bc, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.be, i64 1
  %i.bi = fmul nsz <2 x float> %i.bf, %i.bh
  %i.bj = load <2 x float>, ptr %1, align 4, !tbaa !88
  %i.bk = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bl, <2 x float> %i.bj)
  store <2 x float> %i.bm, ptr %1, align 4, !tbaa !88
  %i.bn = icmp ne i32 %i.aa, %.sroa.0.0.extract.trunc33
  %i.bo = icmp ne i32 %.sroa.5.0, 0
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !304 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(512) %i.bp, i32 noundef %i.aa, i32 noundef %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 643
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !238, !range !306, !noundef !213
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !241
  %i.by = fmul nsz float %2, %i.bx
  %i.bz = fmul nsz float %i.i, %i.by              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !304
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = tail call nsz noundef float @_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis(ptr noundef nonnull align 8 dereferenceable(504) %i.cc, i32 noundef 2)
  %i.ce = load float, ptr %1, align 4, !tbaa !566
  %i.cf = fneg nsz float %i.cd
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.bz, float %i.ce)
  store float %i.cg, ptr %1, align 4, !tbaa !566
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !304
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = tail call nsz noundef float @_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis(ptr noundef nonnull align 8 dereferenceable(504) %i.ci, i32 noundef 3)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !567
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.bz, float %i.cl)
  store float %i.cm, ptr %i.ck, align 4, !tbaa !567
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.co = load float, ptr %i.cn, align 4, !tbaa !240
  %i.cp = fmul nsz float %2, %i.co
  %i.cq = fmul nsz float %i.i, %i.cp              ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !304 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(512) %i.cs, i32 noundef 11)
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = load float, ptr %1, align 4, !tbaa !566
  %i.cy = fadd nsz float %i.cq, %i.cx
  store float %i.cy, ptr %1, align 4, !tbaa !566
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !304 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(512) %i.cz, i32 noundef 12)
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.de = load float, ptr %1, align 4, !tbaa !566
  %i.df = fsub nsz float %i.de, %i.cq
  store float %i.df, ptr %1, align 4, !tbaa !566
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !304 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(512) %i.dg, i32 noundef 13)
  br i1 %i.dk, label %bb.o, label %_Z8rangelimIfiiET_RKS0_RKT0_RKT1_.exit

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !567
  %i.dn = fsub nsz float %i.dm, %i.cq
  store float %i.dn, ptr %i.dl, align 4, !tbaa !567
  br label %_Z8rangelimIfiiET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfiiET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.o, %bb.n
  %i.do = load ptr, ptr %i.cr, align 8, !tbaa !304 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef zeroext i1 %i.dr(ptr noundef nonnull align 8 dereferenceable(512) %i.do, i32 noundef 14)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !88 ; 2 uses
  %i.dv = fadd nsz float %i.cq, %i.du
  %i.dw = select i1 %i.ds, float %i.dv, float %i.du ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dy = fcmp nsz olt float %i.dw, -9.000000e+01
  %i.dz = fcmp nsz ogt float %i.dw, 9.000000e+01
  %..i = select nsz i1 %i.dz, float 9.000000e+01, float %i.dw
  %.0.i = select nsz i1 %i.dy, float -9.000000e+01, float %..i
  store float %.0.i, ptr %i.dx, align 4, !tbaa !567
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK4Game25getSensitivityScaleFactorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !628
  %i.g = fmul nsz float %i.f, 5.000000e-01
  %i.h = tail call nsz noundef float @llvm.tan.f32(float %i.g)
  %i.i = fmul nsz float %i.h, f0x3FB02D48
  ret float %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Game20isTouchShootlineUsedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !766
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

end_hunk_2
begin_hunk_3_@_ZN4Game24handleClientEvent_SetSunEP11ClientEventP17CameraOrientation:bb.a
_ZN9SunParamsD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 112) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN9SunParamsD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game25handleClientEvent_SetMoonEP11ClientEventP17CameraOrientation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1538, !range !306, !noundef !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2200
  store i8 %i.e, ptr %i.f, align 8, !tbaa !901
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !274
  tail call void @_ZN3Sky14setMoonTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_P14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load float, ptr %i.n, align 8, !tbaa !1539
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2272
  store float %i.o, ptr %i.p, align 8, !tbaa !1540
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !54   ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.u, align 8, !tbaa !54
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN10MoonParamsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #36
  br label %_ZN10MoonParamsD2Ev.exit

_ZN10MoonParamsD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 80) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN10MoonParamsD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game26handleClientEvent_SetStarsEP11ClientEventP17CameraOrientation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1541, !range !306, !noundef !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2280
  store i8 %i.e, ptr %i.f, align 8, !tbaa !1542
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1543
  %i.j = trunc i32 %i.i to i16
  tail call void @_ZN3Sky12setStarCountEt(ptr noundef nonnull align 8 dereferenceable(2368) %i.b, i16 noundef zeroext %i.j)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.m, align 8, !tbaa !545
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2288
  store i32 %.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !545
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !1544
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2292
  store float %i.q, ptr %i.r, align 4, !tbaa !1545
  tail call void @_ZN3Sky11updateStarsEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.k)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !1546
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2296
  store float %i.v, ptr %i.w, align 8, !tbaa !1547
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1548
  tail call void @_ZN3Sky11setStarSeedEm(ptr noundef nonnull align 8 dereferenceable(2368) %i.s, i64 noundef %i.z)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game39handleClientEvent_OverrideDayNightRatioEP11ClientEventP17CameraOrientation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !54, !range !306, !noundef !213
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !54
  %i.i = fmul nsz float %i.h, 1.000000e+03
  %i.j = fptoui float %i.i to i32
  tail call void @_ZN11Environment24setDayNightRatioOverrideEbj(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i1 noundef zeroext %i.f, i32 noundef %i.j)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Game29handleClientEvent_CloudParamsEP11ClientEventP17CameraOrientation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 452 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !1549
  %i.g = fcmp nsz oeq float %i.f, %i.d
  br i1 %i.g, label %_ZN6Clouds10setDensityEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float %i.d, ptr %i.e, align 4, !tbaa !1549
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  store i8 0, ptr %i.h, align 4, !tbaa !1550
  br label %_ZN6Clouds10setDensityEf.exit

_ZN6Clouds10setDensityEf.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  store i32 %i.j, ptr %i.k, align 4, !tbaa !545
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  store i32 %i.m, ptr %i.n, align 4, !tbaa !545
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !902
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN6Clouds14setColorShadowEN5video6SColorE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Clouds10setDensityEf.exit
  store i32 %i.p, ptr %i.q, align 8, !tbaa !545
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  store i8 0, ptr %i.t, align 4, !tbaa !1550
  br label %_ZN6Clouds14setColorShadowEN5video6SColorE.exit

_ZN6Clouds14setColorShadowEN5video6SColorE.exit:  ; preds = %_ZN6Clouds10setDensityEf.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 8, !tbaa !54 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 472 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !659 ; 2 uses
  %i.y = fcmp nsz oeq float %i.x, %i.v
  br i1 %i.y, label %_ZN6Clouds14setColorShadowEN5video6SColorE.exit._ZN6Clouds9setHeightEf.exit_crit_edge, label %bb.d

_ZN6Clouds14setColorShadowEN5video6SColorE.exit._ZN6Clouds9setHeightEf.exit_crit_edge: ; preds = %_ZN6Clouds14setColorShadowEN5video6SColorE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !660
  br label %_ZN6Clouds9setHeightEf.exit

bb.d:                                             ; preds = %_ZN6Clouds14setColorShadowEN5video6SColorE.exit
  store float %i.v, ptr %i.w, align 4, !tbaa !659
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  %i.aa = load float, ptr %i.z, align 4, !tbaa !660 ; 2 uses
  %i.ab = fmul nsz float %i.aa, 1.000000e+01
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %.scalar = fmul nsz float %i.v, 1.000000e+01    ; 2 uses
  %i.ae = insertelement <4 x float> <float -1.000000e+07, float poison, float -1.000000e+07, float 1.000000e+07>, float %.scalar, i64 1
  %i.af = fadd nsz float %.scalar, %i.ab
  %i.ag = load <3 x i16>, ptr %i.ad, align 4, !tbaa !578
  %i.ah = shufflevector <3 x i16> %i.ag, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ai = sitofp <4 x i16> %i.ah to <4 x float>
  %i.aj = fmul nnan nsz <4 x float> %i.ai, splat (float 1.000000e+01) ; 2 uses
  %i.ak = fsub nsz <4 x float> %i.ae, %i.aj
  store <4 x float> %i.ak, ptr %i.ac, align 4, !tbaa !88
  %i.al = insertelement <2 x float> <float poison, float 1.000000e+07>, float %i.af, i64 0
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.an = fsub nsz <2 x float> %i.al, %i.am
  store <2 x float> %i.an, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  store i8 0, ptr %i.ao, align 4, !tbaa !1550
  br label %_ZN6Clouds9setHeightEf.exit

_ZN6Clouds9setHeightEf.exit:                      ; preds = %_ZN6Clouds14setColorShadowEN5video6SColorE.exit._ZN6Clouds9setHeightEf.exit_crit_edge, %bb.d
  %i.ap = phi float [ %i.x, %_ZN6Clouds14setColorShadowEN5video6SColorE.exit._ZN6Clouds9setHeightEf.exit_crit_edge ], [ %i.v, %bb.d ]
  %i.aq = phi float [ %.pre, %_ZN6Clouds14setColorShadowEN5video6SColorE.exit._ZN6Clouds9setHeightEf.exit_crit_edge ], [ %i.aa, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !54 ; 3 uses
  %i.at = fcmp nsz oeq float %i.aq, %i.as
  br i1 %i.at, label %_ZN6Clouds12setThicknessEf.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Clouds9setHeightEf.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store float %i.as, ptr %i.au, align 4, !tbaa !660
  %i.av = fmul nsz float %i.as, 1.000000e+01
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %.sroa.7.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %.scalar22 = fmul nsz float %i.ap, 1.000000e+01 ; 2 uses
  %i.ay = insertelement <4 x float> <float -1.000000e+07, float poison, float -1.000000e+07, float 1.000000e+07>, float %.scalar22, i64 1
  %i.az = fadd nsz float %i.av, %.scalar22
  %i.ba = load <3 x i16>, ptr %i.ax, align 4, !tbaa !578
  %i.bb = shufflevector <3 x i16> %i.ba, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bc = sitofp <4 x i16> %i.bb to <4 x float>
  %i.bd = fmul nnan nsz <4 x float> %i.bc, splat (float 1.000000e+01) ; 2 uses
  %i.be = fsub nsz <4 x float> %i.ay, %i.bd
  store <4 x float> %i.be, ptr %i.aw, align 4, !tbaa !88
  %i.bf = insertelement <2 x float> <float poison, float 1.000000e+07>, float %i.az, i64 0
  %i.bg = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bh = fsub nsz <2 x float> %i.bf, %i.bg
  store <2 x float> %i.bh, ptr %.sroa.7.0..sroa_idx.i.i12, align 4, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  store i8 0, ptr %i.bi, align 4, !tbaa !1550
  br label %_ZN6Clouds12setThicknessEf.exit

_ZN6Clouds12setThicknessEf.exit:                  ; preds = %_ZN6Clouds9setHeightEf.exit, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load <2 x float>, ptr %i.bj, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  store <2 x float> %i.bk, ptr %i.bl, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game30handleClientEvent_UpdateCameraEP11ClientEventP17CameraOrientation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !531  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !863  ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i32 %i.f, ptr %i.i, align 8, !tbaa !726
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 776
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !864  ; 3 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %_ZN4Game16updateCameraModeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10GenericCAO17updateMeshCullingEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !267
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  %i.o = load i32, ptr %i.n, align 8, !tbaa !726
  %i.p = icmp sgt i32 %i.o, 1
  tail call void @_ZN10GenericCAO18setChildrenVisibleEb(ptr noundef nonnull align 8 dereferenceable(1076) %i.k, i1 noundef zeroext %i.p)
  br label %_ZN4Game16updateCameraModeEv.exit

_ZN4Game16updateCameraModeEv.exit:                ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #20

declare void @_ZN15ScriptApiClient15on_damage_takenEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN6Client5getHPEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

declare noundef ptr @_ZN6Client15getEventManagerEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

declare void @_ZN12GameFormSpec23showDeathFormspecLegacyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN12GameFormSpec12showFormSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN12GameFormSpec15showCSMFormSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN12GameFormSpec21showPauseMenuFormSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN15ParticleManager19handleParticleEventEP11ClientEventP6ClientP11LocalPlayer(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6Player6addHudEP10HudElement(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6Player9removeHudEj(ptr noundef nonnull align 8 dereferenceable(416), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6Player6getHudEj(ptr noundef nonnull align 8 dereferenceable(416), i32 noundef) local_unnamed_addr #3

declare void @_ZN3Sky12setSkyColorsERK8SkyColor(ptr noundef nonnull align 8 dereferenceable(2368), ptr noundef nonnull align 4 dereferenceable(28)) local_unnamed_addr #3

declare void @_ZN3Sky14setHorizonTintEN5video6SColorES1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2368), i32, i32, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN3Sky18addTextureToSkyboxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3Sky13setSunTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_P14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN3Sky17setSunriseTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN3Sky14setMoonTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_P14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN3Sky12setStarCountEt(ptr noundef nonnull align 8 dereferenceable(2368), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3Sky11setStarSeedEm(ptr noundef nonnull align 8 dereferenceable(2368), i64 noundef) local_unnamed_addr #3

declare void @_ZN11Environment24setDayNightRatioOverrideEbj(ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6Client14getClientEventEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game10updateChatEf(ptr noundef nonnull align 8 dereferenceable(688) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %8 = alloca %class.EnrichedString, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !1554
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34, !noalias !1554 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN16CaptureLogOutput4takeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #37
          to label %.noexc.i unwind label %bb.c, !noalias !1554

.noexc.i:                                         ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn22.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI8LogEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34
  br label %common.resume

_ZN16CaptureLogOutput4takeEv.exit:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !903, !noalias !1554 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load <2 x ptr>, ptr %i.g, align 8, !tbaa !904, !noalias !1554
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !905, !noalias !1554 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !1554
  store ptr %i.f, ptr %2, align 8, !tbaa !903, !alias.scope !1554
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !904, !alias.scope !1554
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34, !noalias !1554 ; 0 uses
  %.not86 = icmp eq ptr %i.f, %i.j
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16CaptureLogOutput4takeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN16CaptureLogOutput4takeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !564
  store i32 0, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit51

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.062.087 = phi ptr [ %i.f, %.lr.ph ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.l, ptr %3, align 8, !tbaa !189
  store i64 0, ptr %i.m, align 8, !tbaa !193
  store i8 0, ptr %i.l, align 8, !tbaa !54
  %i.x = load i32, ptr %.sroa.062.087, align 8, !tbaa !908
  %switch.tableidx = add i32 %i.x, -1             ; 2 uses
  %i.y = icmp ult i32 %switch.tableidx, 6
  br i1 %i.y, label %switch.lookup, label %"_ZZN4Game10updateChatEfENK3$_0clE8LogLevel.exit"

switch.lookup:                                    ; preds = %bb.d
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4Game10updateChatEf, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %"_ZZN4Game10updateChatEfENK3$_0clE8LogLevel.exit"

"_ZZN4Game10updateChatEfENK3$_0clE8LogLevel.exit": ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.172, %bb.d ] ; 2 uses
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #34 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 4611686018427387903
  br i1 %i.ab, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %"_ZZN4Game10updateChatEfENK3$_0clE8LogLevel.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #37
end_hunk_3
begin_hunk_4_@_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE:bb.a
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 136
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef ptr %i.dn(ptr noundef nonnull align 8 dereferenceable(1076) %i.dg)
          to label %bb.ab unwind label %bb.ae     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(218) %i.do)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dt = invoke { <2 x float>, float } @_ZNK4core8CMatrix4IfE18getRotationRadiansEv(ptr noundef nonnull align 4 dereferenceable(64) %i.ds)
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.fca.0.extract55 = extractvalue { <2 x float>, float } %i.dt, 0
  %.fca.1.extract56 = extractvalue { <2 x float>, float } %i.dt, 1
  br label %bb.af

bb.ae:                                            ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.s, %bb.o, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit, %bb.ac, %bb.ab, %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ah

.thread:                                          ; preds = %bb.u, %bb.z, %bb.y
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !266
  br label %bb.af

bb.af:                                            ; preds = %.thread, %bb.ad
  %.sink278 = phi ptr [ %i.dv, %.thread ], [ %i.dk, %bb.ad ] ; 2 uses
  %.sink276 = phi <2 x float> [ zeroinitializer, %.thread ], [ %.fca.0.extract55, %bb.ad ]
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %.fca.1.extract56, %bb.ad ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink278, i64 264
  store <2 x float> %.sink276, ptr %i.dw, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %.sink278, i64 272
  store float %.sink, ptr %.sroa.22.0..sroa_idx.i147, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n, %bb.l, %bb.j
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dz, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 12, i1 false), !tbaa.struct !894
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ax

bb.ah:                                            ; preds = %bb.ae, %bb.x
  %.pn121.pn = phi { ptr, i32 } [ %i.du, %bb.ae ], [ %i.df, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.sroa.050.0.copyload = load i48, ptr %i.ea, align 2, !tbaa !578
  %i.eb = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.050.0.copyload, ptr noundef null)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.eb, ptr %12, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.sroa.048.0.copyload = load i48, ptr %i.ea, align 2, !tbaa !578
  %i.ec = invoke noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4) %12, i48 %.sroa.048.0.copyload, ptr noundef nonnull %i.u)
          to label %bb.ak unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef %i.w, ptr noundef nonnull %13, i8 noundef zeroext %i.ec)
          to label %bb.al unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.ed = load ptr, ptr %13, align 8, !tbaa !1597 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1597 ; 2 uses
  %.not234242 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not234242, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !1583
  %.pre250 = load ptr, ptr %i.eg, align 8, !tbaa !1593
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.an:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163
  %i.ei = phi ptr [ %.pre250, %.lr.ph ], [ %i.fj, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163 ] ; 5 uses
  %i.ej = phi ptr [ %.pre, %.lr.ph ], [ %i.fk, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163 ] ; 4 uses
  %.sroa.0216.0243 = phi ptr [ %i.ed, %.lr.ph ], [ %i.fl, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163 ] ; 3 uses
  %i.ek = load <4 x float>, ptr %.sroa.0216.0243, align 4, !tbaa !88
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0216.0243, i64 16
  %i.el = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !88
  %i.em = fadd nsz <4 x float> %i.ek, <float f0xBCA3D70B, float f0xBCA3D70B, float f0xBCA3D70B, float f0x3CA3D70B> ; 2 uses
  %i.en = fadd nsz <2 x float> %i.el, splat (float f0x3CA3D70B) ; 2 uses
  %.not.i148 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i148, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store <4 x float> %i.em, ptr %i.ej, align 4, !tbaa !88
  %.sroa.14.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x float> %i.en, ptr %.sroa.14.0..sroa_idx207, align 4, !tbaa !88
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  store ptr %i.eo, ptr %i.e, align 8, !tbaa !1583
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163

bb.ap:                                            ; preds = %bb.an
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !1582 ; 5 uses
  %i.eq = ptrtoint ptr %i.ei to i64
  %i.er = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.aq, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i149

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #37
          to label %.noexc161 unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc161:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i149: ; preds = %bb.ap
  %i.eu = sdiv exact i64 %i.es, 24                ; 3 uses
  %.sroa.speculated.i.i.i150 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i150, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 384307168202282325)
  %i.ey = select i1 %i.ew, i64 384307168202282325, i64 %i.ex ; 3 uses
  %.not.i.i.i151 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i151)
  %i.ez = mul nuw nsw i64 %i.ey, 24
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #33
          to label %.noexc162 unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc162:                                        ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i149
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es ; 2 uses
  store <4 x float> %i.em, ptr %i.fb, align 4, !tbaa !88
  %.sroa.14.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x float> %i.en, ptr %.sroa.14.0..sroa_idx209, align 4, !tbaa !88
  %.not10.i.i.i.i.i152 = icmp eq ptr %i.ep, %i.ei
  br i1 %.not10.i.i.i.i.i152, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i157, label %.lr.ph.i.i.i.i.i153

.lr.ph.i.i.i.i.i153:                              ; preds = %.noexc162, %.lr.ph.i.i.i.i.i153
  %.012.i.i.i.i.i154 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i153 ], [ %i.fa, %.noexc162 ] ; 2 uses
  %.0911.i.i.i.i.i155 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i153 ], [ %i.ep, %.noexc162 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i154, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i155, i64 24, i1 false), !tbaa.struct !1594, !alias.scope !1598
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i155, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i154, i64 24 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq ptr %i.fc, %i.ei
  br i1 %.not.i.i.i.i.i156, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i157, label %.lr.ph.i.i.i.i.i153, !llvm.loop !1578

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i157: ; preds = %.lr.ph.i.i.i.i.i153, %.noexc162
  %.0.lcssa.i.i.i.i.i158 = phi ptr [ %i.fa, %.noexc162 ], [ %i.fd, %.lr.ph.i.i.i.i.i153 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i158, i64 24 ; 2 uses
  %.not.i23.i.i159 = icmp eq ptr %i.ep, null
  br i1 %.not.i23.i.i159, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i157
  %i.ff = load ptr, ptr %i.eg, align 8, !tbaa !1593
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fh) #36
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160: ; preds = %bb.ar, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i157
  store ptr %i.fa, ptr %i.c, align 8, !tbaa !1582
  store ptr %i.fe, ptr %i.e, align 8, !tbaa !1583
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.ey ; 2 uses
  store ptr %i.fi, ptr %i.eg, align 8, !tbaa !1593
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163: ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160, %bb.ao
  %i.fj = phi ptr [ %i.fi, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160 ], [ %i.ei, %bb.ao ]
  %i.fk = phi ptr [ %i.fe, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i160 ], [ %i.eo, %bb.ao ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0216.0243, i64 24 ; 2 uses
  %.not234 = icmp eq ptr %i.fl, %i.ef
  br i1 %.not234, label %._crit_edge, label %bb.an

.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i149, %bb.aj, %bb.ak, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp236

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit163, %bb.al
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %.sroa.038.0.copyload = load i48, ptr %i.ea, align 2, !tbaa !578 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.038.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.fn = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.fo = bitcast i48 %.sroa.038.0.copyload to <3 x i16>
  %i.fp = shufflevector <3 x i16> %i.fo, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.fq = sitofp <2 x i16> %i.fp to <2 x float>
  %i.fr = fmul nnan nsz <2 x float> %i.fq, splat (float 1.000000e+01)
  %i.fs = fmul nnan nsz float %i.fn, 1.000000e+01
  store <2 x float> %i.fr, ptr %14, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.fs, ptr %.sroa.236.0..sroa_idx, align 8
  invoke void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr noundef nonnull align 8 dereferenceable(572) %i.fm, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !266 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 264
  store <2 x float> zeroinitializer, ptr %i.fu, align 8, !tbaa !88
  %.sroa.22.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.ft, i64 272
  store float 0.000000e+00, ptr %.sroa.22.0..sroa_idx.i164, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fw, ptr noundef nonnull align 4 dereferenceable(12) %i.fv, i64 12, i1 false), !tbaa.struct !894
  %i.fx = load ptr, ptr %13, align 8, !tbaa !1582 ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1593
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #36
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %.loopexit.split-lp236

.loopexit.split-lp236:                            ; preds = %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au
  %.pn117.pn = phi { ptr, i32 } [ %i.gd, %bb.au ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ge = load ptr, ptr %13, align 8, !tbaa !1582 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167, label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp236
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1593
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #36
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167: ; preds = %.loopexit.split-lp236, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167, %bb.am
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit167 ], [ %i.eh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.f, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, %bb.ag
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !1597
  %i.gl = load ptr, ptr %i.e, align 8, !tbaa !1597
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !266 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.go, align 8, !tbaa !88 ; 2 uses
  %.sroa.22.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.gn, i64 248
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i168, align 8, !tbaa !88
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 2 uses
  %i.gp = fcmp nsz ogt float %.sroa.09.4.vec.extract.i, 0.000000e+00
  %i.gq = select nsz i1 %i.gp, float 5.000000e+00, float -5.000000e+00
  %i.gr = fadd nsz float %.sroa.09.4.vec.extract.i, %i.gq
  %i.gs = fdiv nsz float %i.gr, 1.000000e+01
  %i.gt = fptosi float %i.gs to i16               ; 7 uses
  %i.gu = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.gv = fcmp nsz ogt <2 x float> %i.gu, zeroinitializer
  %i.gw = select <2 x i1> %i.gv, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = fdiv nsz <2 x float> %i.gx, splat (float 1.000000e+01) ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = fptosi float %i.gz to i16               ; 7 uses
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  %i.hc = fptosi float %i.hb to i16               ; 7 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.hc to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.gt to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ha to i48
  %i.hd = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.hd, %.sroa.2.0.insert.shift.i
  %i.he = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.hf = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.he, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.az
  %i.hg = load i16, ptr @g_6dirs, align 16, !tbaa !791
  %i.hh = add i16 %i.hg, %i.ha
  %i.hi = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 2), align 2, !tbaa !792
  %i.hj = add i16 %i.hi, %i.gt
  %i.hk = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 4), align 4, !tbaa !793
  %i.hl = add i16 %i.hk, %i.hc
  %.sroa.3.0.insert.ext.i169 = zext i16 %i.hl to i48
  %.sroa.3.0.insert.shift.i170 = shl nuw i48 %.sroa.3.0.insert.ext.i169, 32
  %.sroa.2.0.insert.ext.i171 = zext i16 %i.hj to i48
  %.sroa.2.0.insert.shift.i172 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171, 16
  %.sroa.2.0.insert.insert.i173 = or disjoint i48 %.sroa.3.0.insert.shift.i170, %.sroa.2.0.insert.shift.i172
  %.sroa.0.0.insert.ext.i174 = zext i16 %i.hh to i48
  %.sroa.0.0.insert.insert.i175 = or disjoint i48 %.sroa.2.0.insert.insert.i173, %.sroa.0.0.insert.ext.i174
  %i.hm = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175, ptr noundef null)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %.preheader.preheader
  %i.hn = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hm, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.1 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.1:                                     ; preds = %bb.ba
  %spec.select = call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hf)
  %i.ho = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 6), align 2, !tbaa !791
  %i.hp = add i16 %i.ho, %i.ha
  %i.hq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 8), align 8, !tbaa !792
  %i.hr = add i16 %i.hq, %i.gt
  %i.hs = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 10), align 2, !tbaa !793
  %i.ht = add i16 %i.hs, %i.hc
  %.sroa.3.0.insert.ext.i169.1 = zext i16 %i.ht to i48
  %.sroa.3.0.insert.shift.i170.1 = shl nuw i48 %.sroa.3.0.insert.ext.i169.1, 32
  %.sroa.2.0.insert.ext.i171.1 = zext i16 %i.hr to i48
  %.sroa.2.0.insert.shift.i172.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.1, 16
  %.sroa.2.0.insert.insert.i173.1 = or disjoint i48 %.sroa.3.0.insert.shift.i170.1, %.sroa.2.0.insert.shift.i172.1
  %.sroa.0.0.insert.ext.i174.1 = zext i16 %i.hp to i48
  %.sroa.0.0.insert.insert.i175.1 = or disjoint i48 %.sroa.2.0.insert.insert.i173.1, %.sroa.0.0.insert.ext.i174.1
  %i.hu = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.1, ptr noundef null)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.preheader.1
  %i.hv = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hu, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.2 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.2:                                     ; preds = %bb.bb
  %spec.select.1 = call i16 @llvm.umax.i16(i16 %i.hv, i16 %spec.select)
  %i.hw = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 12), align 4, !tbaa !791
  %i.hx = add i16 %i.hw, %i.ha
  %i.hy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 14), align 2, !tbaa !792
  %i.hz = add i16 %i.hy, %i.gt
  %i.ia = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 16), align 16, !tbaa !793
  %i.ib = add i16 %i.ia, %i.hc
  %.sroa.3.0.insert.ext.i169.2 = zext i16 %i.ib to i48
  %.sroa.3.0.insert.shift.i170.2 = shl nuw i48 %.sroa.3.0.insert.ext.i169.2, 32
  %.sroa.2.0.insert.ext.i171.2 = zext i16 %i.hz to i48
  %.sroa.2.0.insert.shift.i172.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.2, 16
  %.sroa.2.0.insert.insert.i173.2 = or disjoint i48 %.sroa.3.0.insert.shift.i170.2, %.sroa.2.0.insert.shift.i172.2
  %.sroa.0.0.insert.ext.i174.2 = zext i16 %i.hx to i48
  %.sroa.0.0.insert.insert.i175.2 = or disjoint i48 %.sroa.2.0.insert.insert.i173.2, %.sroa.0.0.insert.ext.i174.2
  %i.ic = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.2, ptr noundef null)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.preheader.2
  %i.id = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ic, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.3 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.3:                                     ; preds = %bb.bc
  %spec.select.2 = call i16 @llvm.umax.i16(i16 %i.id, i16 %spec.select.1)
  %i.ie = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 18), align 2, !tbaa !791
  %i.if = add i16 %i.ie, %i.ha
  %i.ig = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 20), align 4, !tbaa !792
  %i.ih = add i16 %i.ig, %i.gt
  %i.ii = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 22), align 2, !tbaa !793
  %i.ij = add i16 %i.ii, %i.hc
  %.sroa.3.0.insert.ext.i169.3 = zext i16 %i.ij to i48
  %.sroa.3.0.insert.shift.i170.3 = shl nuw i48 %.sroa.3.0.insert.ext.i169.3, 32
  %.sroa.2.0.insert.ext.i171.3 = zext i16 %i.ih to i48
  %.sroa.2.0.insert.shift.i172.3 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.3, 16
  %.sroa.2.0.insert.insert.i173.3 = or disjoint i48 %.sroa.3.0.insert.shift.i170.3, %.sroa.2.0.insert.shift.i172.3
  %.sroa.0.0.insert.ext.i174.3 = zext i16 %i.if to i48
  %.sroa.0.0.insert.insert.i175.3 = or disjoint i48 %.sroa.2.0.insert.insert.i173.3, %.sroa.0.0.insert.ext.i174.3
  %i.ik = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.3, ptr noundef null)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %.preheader.3
  %i.il = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ik, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.4 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.4:                                     ; preds = %bb.bd
  %spec.select.3 = call i16 @llvm.umax.i16(i16 %i.il, i16 %spec.select.2)
  %i.im = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 24), align 8, !tbaa !791
  %i.in = add i16 %i.im, %i.ha
  %i.io = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 26), align 2, !tbaa !792
  %i.ip = add i16 %i.io, %i.gt
  %i.iq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 28), align 4, !tbaa !793
  %i.ir = add i16 %i.iq, %i.hc
  %.sroa.3.0.insert.ext.i169.4 = zext i16 %i.ir to i48
  %.sroa.3.0.insert.shift.i170.4 = shl nuw i48 %.sroa.3.0.insert.ext.i169.4, 32
  %.sroa.2.0.insert.ext.i171.4 = zext i16 %i.ip to i48
  %.sroa.2.0.insert.shift.i172.4 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.4, 16
  %.sroa.2.0.insert.insert.i173.4 = or disjoint i48 %.sroa.3.0.insert.shift.i170.4, %.sroa.2.0.insert.shift.i172.4
  %.sroa.0.0.insert.ext.i174.4 = zext i16 %i.in to i48
  %.sroa.0.0.insert.insert.i175.4 = or disjoint i48 %.sroa.2.0.insert.insert.i173.4, %.sroa.0.0.insert.ext.i174.4
  %i.is = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.4, ptr noundef null)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.preheader.4
  %i.it = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.is, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.5 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader.5:                                     ; preds = %bb.be
  %spec.select.4 = call i16 @llvm.umax.i16(i16 %i.it, i16 %spec.select.3)
  %i.iu = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 30), align 2, !tbaa !791
  %i.iv = add i16 %i.iu, %i.ha
  %i.iw = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 32), align 16, !tbaa !792
  %i.ix = add i16 %i.iw, %i.gt
  %i.iy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 34), align 2, !tbaa !793
  %i.iz = add i16 %i.iy, %i.hc
  %.sroa.3.0.insert.ext.i169.5 = zext i16 %i.iz to i48
  %.sroa.3.0.insert.shift.i170.5 = shl nuw i48 %.sroa.3.0.insert.ext.i169.5, 32
  %.sroa.2.0.insert.ext.i171.5 = zext i16 %i.ix to i48
  %.sroa.2.0.insert.shift.i172.5 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.5, 16
  %.sroa.2.0.insert.insert.i173.5 = or disjoint i48 %.sroa.3.0.insert.shift.i170.5, %.sroa.2.0.insert.shift.i172.5
  %.sroa.0.0.insert.ext.i174.5 = zext i16 %i.iv to i48
  %.sroa.0.0.insert.insert.i175.5 = or disjoint i48 %.sroa.2.0.insert.insert.i173.5, %.sroa.0.0.insert.ext.i174.5
  %i.ja = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.5, ptr noundef null)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %.preheader.5
  %i.jb = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ja, i32 noundef -1, ptr noundef %i.w)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.jc = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 128
  %i.je = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jd)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %spec.select.5 = call i16 @llvm.umax.i16(i16 %i.jb, i16 %spec.select.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store i32 0, ptr %15, align 4, !tbaa !902
  invoke void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef nonnull %15, i16 noundef zeroext %spec.select.5, i32 noundef %i.je)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jf = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 544
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !919
  %i.ji = urem i64 %i.jh, 5000
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = uitofp nsz nneg i32 %i.jj to double
  %i.jl = fdiv nnan nsz double %i.jk, 2.500000e+03
  %i.jm = fadd nnan nsz double %i.jl, -5.000000e-01
  %i.jn = fmul nnan nsz double %i.jm, f0x400921FB60000000
  %i.jo = load i32, ptr %15, align 4, !tbaa !902  ; 4 uses
  %i.jp = and i32 %i.jo, 255
  %i.jq = uitofp nsz nneg i32 %i.jp to double
  %i.jr = fptrunc nsz double %i.jn to float       ; 3 uses
  %i.js = call nsz noundef float @llvm.sin.f32(float %i.jr)
  %i.jt = fadd nsz float %i.jr, f0x3FC90FDB
  %i.ju = call nsz noundef float @llvm.sin.f32(float %i.jt)
  %i.jv = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.ju, i64 1
  %i.jx = fmul nsz <2 x float> %i.jw, splat (float 8.000000e-02)
  %i.jy = fadd nsz float %i.jr, f0x40490FDB
  %i.jz = call nsz noundef float @llvm.sin.f32(float %i.jy)
  %i.ka = fmul nsz float %i.jz, 8.000000e-02
  %i.kb = lshr i32 %i.jo, 16
  %i.kc = and i32 %i.kb, 255
  %i.kd = uitofp nsz nneg i32 %i.kc to double
  %i.ke = and i32 %i.jo, -16777216
  %i.kf = lshr i32 %i.jo, 8
  %i.kg = and i32 %i.kf, 255
  %i.kh = uitofp nsz nneg i32 %i.kg to double
  %i.ki = fpext <2 x float> %i.jx to <2 x double>
  %i.kj = fadd nsz <2 x double> %i.ki, splat (double 8.000000e-01)
  %i.kk = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %i.kh, i64 1
  %i.km = fmul nsz <2 x double> %i.kj, %i.kl
  %i.kn = fptrunc <2 x double> %i.km to <2 x float>
  %i.ko = fadd nsz <2 x float> %i.kn, splat (float 5.000000e-01)
  %i.kp = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ko)
  %i.kq = fpext nsz float %i.ka to double
  %i.kr = fadd nsz double %i.kq, 8.000000e-01
  %i.ks = fmul nsz double %i.kr, %i.jq
  %i.kt = fptrunc nsz double %i.ks to float
  %i.ku = fadd nsz float %i.kt, 5.000000e-01
  %i.kv = call nsz noundef float @llvm.floor.f32(float %i.ku)
  %i.kw = fptosi float %i.kv to i32
  %i.kx = insertelement <4 x i32> poison, i32 %i.kw, i64 2
  %i.ky = insertelement <4 x i32> %i.kx, i32 %i.ke, i64 3
  %i.kz = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.la = fptosi <4 x float> %i.kz to <4 x i32>
  %i.lb = shufflevector <4 x i32> %i.la, <4 x i32> %i.ky, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lb, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %i.ld = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lc, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %i.le = shl nuw nsw <4 x i32> %i.ld, <i32 16, i32 8, i32 0, i32 0>
  %i.lf = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.le)
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 288
  store i32 %i.lf, ptr %i.lh, align 8, !tbaa !545
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bk

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ba, %.preheader.preheader, %.preheader.1, %bb.bb, %.preheader.2, %bb.bc, %.preheader.3, %bb.bd, %.preheader.4, %bb.be, %.preheader.5, %bb.bf, %bb.e, %bb.ay, %bb.az, %bb.bg
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi, %bb.ax
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 8, !tbaa !920, !range !306, !noundef !213
  %i.ll = trunc nuw i8 %i.lk to i1
  store i8 0, ptr %i.lj, align 8, !tbaa !920
  br i1 %i.ll, label %bb.bl, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 144
  call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.lm) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i: ; preds = %bb.bl, %bb.bk
  %i.ln = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !923 ; 3 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i176, label %_ZN12RaycastStateD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !924
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #36
  br label %_ZN12RaycastStateD2Ev.exit

_ZN12RaycastStateD2Ev.exit:                       ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bj, %bb.aw, %bb.ah
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.aw ], [ %.pn121.pn, %bb.ah ], [ %i.li, %bb.bj ], [ %lpad.loopexit.split-lp246, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn134.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK16TouchInteraction7getModeERK14ItemDefinition16PointedThingType(ptr noundef nonnull align 1 dereferenceable(3), ptr noundef nonnull align 8 dereferenceable(982), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN13TouchControls20applyContextControlsERK20TouchInteractionMode(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6Client8setCrackEiN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674), i32 noundef, i48) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN15ScriptApiClient11on_item_useERK9ItemStackRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN4Game20handlePointingAtNodeERK12PointedThingRK9ItemStackS5_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %7 = alloca %"class.core::vector3d", align 2    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %struct.SoundSpec, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 4 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !1601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.j = load float, ptr %i.i, align 4, !tbaa !562
  %i.k = fcmp nsz ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %.critedge71.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(512) %i.m, i32 noundef 8), !inline_history !15
  br i1 %i.q, label %bb.c, label %.critedge71.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.s = load i8, ptr %i.r, align 8, !tbaa !789, !range !306, !noundef !213
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !189
  store i64 8386654075050290793, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.w, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1384
  %i.z = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %.not.i.i.i.not = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.not.i.i.i.not, label %.critedge71.thread, label %bb.d

bb.d:                                             ; preds = %.critedge71
  call void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4)
  br label %.critedge71.thread

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.e
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ab

.critedge71.thread:                               ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %.critedge71
  %.sroa.015.0.copyload = load i48, ptr %6, align 8, !tbaa !578 ; 2 uses
  %i.aj = call noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i48 %.sroa.015.0.copyload) ; 4 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.k, label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.critedge71.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
end_hunk_4
begin_hunk_5_@_ZN4Game22handlePointingAtObjectERK12PointedThingRK9ItemStackS5_RKN4core8vector3dIfEEb:bb.a
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i67, %bb.l
  %.pn38 = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i67 ], [ %i.cf, %bb.m ] ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !192  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !54
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.k
  %.pn38.pn = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %.pn38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ap

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN6GameUI11setInfoTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit unwind label %bb.ae

_ZN6GameUI11setInfoTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit: ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !304 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(512) %i.cv, i32 noundef 8)
          to label %_ZN4Game9isKeyDownEN7KeyType1TE.exit unwind label %bb.ae, !inline_history !15

_ZN4Game9isKeyDownEN7KeyType1TE.exit:             ; preds = %_ZN6GameUI11setInfoTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit
  br i1 %i.cz, label %bb.o, label %bb.af

bb.o:                                             ; preds = %_ZN4Game9isKeyDownEN7KeyType1TE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !563
  %i.dc = fcmp nsz ole float %i.db, 0.000000e+00  ; 3 uses
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float 2.000000e-01, ptr %i.da, align 4, !tbaa !563
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !304 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(512) %i.dd, i32 noundef 8)
          to label %_ZN4Game13wasKeyPressedEN7KeyType1TE.exit unwind label %bb.ae, !inline_history !19

_ZN4Game13wasKeyPressedEN7KeyType1TE.exit:        ; preds = %bb.q
  %i.di = or i1 %i.dc, %i.dh
  br i1 %i.di, label %bb.r, label %bb.z

bb.r:                                             ; preds = %_ZN4Game13wasKeyPressedEN7KeyType1TE.exit
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.r, %bb.s
  %i.dj = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !47
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %.noexc76 unwind label %bb.ae, !inline_history !1605

.noexc76:                                         ; preds = %_ZTW10infostream.exit
  %.v.i = select i1 %i.dn, i64 976, i64 984
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.192, ptr %i.b, align 8, !tbaa !185
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.ae      ; 0 uses

bb.t:                                             ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !215 ; 5 uses
  %.not.i78 = icmp eq ptr %i.dq, null
  br i1 %.not.i78, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !222
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %.noexc79 unwind label %bb.ae

.noexc79:                                         ; preds = %bb.v
  %.pre.i = load ptr, ptr %i.do, align 8, !tbaa !215 ; 2 uses
  %.pre121 = load ptr, ptr %.pre.i, align 8, !tbaa !47
  %.phi.trans.insert122 = getelementptr i8, ptr %.pre121, i64 -24
  %.pre123 = load i64, ptr %.phi.trans.insert122, align 8
  br label %bb.w

bb.w:                                             ; preds = %.noexc79, %bb.u
  %i.dy = phi i64 [ %.pre123, %.noexc79 ], [ %i.dt, %bb.u ]
  %i.dz = phi ptr [ %.pre.i, %.noexc79 ], [ %i.dq, %bb.u ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !228 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.w, %bb.al
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.cont unwind label %bb.ae

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !233
  %.not.i1.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 67
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ec)
          to label %.noexc101 unwind label %bb.ae

.noexc101:                                        ; preds = %bb.y
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef signext i8 %i.ej(ptr noundef nonnull align 8 dereferenceable(570) %i.ec, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ae, !inline_history !13

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc101, %bb.x
  %.0.i.i.i = phi i8 [ %i.eg, %bb.x ], [ %i.ek, %.noexc101 ]
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i8 noundef signext %.0.i.i.i)
          to label %.noexc103 unwind label %bb.ae

.noexc103:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ae ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.t, %.noexc103
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 453
  store i8 1, ptr %i.en, align 1, !tbaa !796
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !88 ; 2 uses
  %i.eq = fcmp nsz ogt float %i.ep, 1.500000e-01
  %.sroa.speculated = select i1 %i.eq, float %i.ep, float 1.500000e-01
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 460
  store float %.sroa.speculated, ptr %i.er, align 4, !tbaa !562
  br label %bb.z

bb.z:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZN4Game13wasKeyPressedEN7KeyType1TE.exit
  br i1 %i.dc, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !914 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke { <2 x float>, float } %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %bb.ab unwind label %bb.ae     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.fca.0.extract6 = extractvalue { <2 x float>, float } %i.ew, 0
  %.fca.1.extract7 = extractvalue { <2 x float>, float } %i.ew, 1
  %i.ex = load <2 x float>, ptr %4, align 4, !tbaa !88
  %i.ey = fsub nsz <2 x float> %.fca.0.extract6, %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !90
  %i.fb = fsub nsz float %.fca.1.extract7, %i.fa  ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ey, %i.ey
  %i.fc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fd = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.fc)
  %i.ff = call nsz float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fe) ; 2 uses
  %i.fg = fcmp nsz oeq float %i.ff, 0.000000e+00
  br i1 %i.fg, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = fpext nsz float %i.ff to double
  %i.fi = call nsz double @llvm.sqrt.f64(double %i.fh)
  %i.fj = fdiv nsz double 1.000000e+00, %i.fi     ; 2 uses
  %i.fk = fpext <2 x float> %i.ey to <2 x double>
  %i.fl = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul nsz <2 x double> %i.fm, %i.fk
  %i.fo = fptrunc <2 x double> %i.fn to <2 x float>
  %i.fp = fpext nsz float %i.fb to double
  %i.fq = fmul nsz double %i.fj, %i.fp
  %i.fr = fptrunc nsz double %i.fq to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.ac, %bb.ab
  %.sroa.9.0 = phi nsz float [ %i.fb, %bb.ab ], [ %i.fr, %bb.ac ]
  %.sroa.0.0 = phi nsz <2 x float> [ %i.ey, %bb.ab ], [ %i.fo, %bb.ac ]
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !914 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !310
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !47
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, <2 x float> %.sroa.0.0, float %.sroa.9.0, ptr noundef nonnull %2, ptr noundef nonnull %3, float noundef %i.fu)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  store float 0.000000e+00, ptr %i.ft, align 8, !tbaa !310
  br i1 %i.fy, label %bb.ao, label %_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke

bb.ae:                                            ; preds = %.invoke, %_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke, %bb.e, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i, %bb.n, %_ZN6GameUI11setInfoTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit, %bb.q, %_ZTW10infostream.exit, %.noexc76, %bb.v, %bb.af, %_ZTW10infostream.exit85, %.noexc87, %bb.ak, %bb.y, %.noexc101, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc103, %bb.an, %.noexc111, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108, %.noexc113, %bb.aa, %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.af:                                            ; preds = %_ZN4Game9isKeyDownEN7KeyType1TE.exit
  %i.ga = load ptr, ptr %i.cu, align 8, !tbaa !304 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !47
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = invoke noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(512) %i.ga, i32 noundef 9)
          to label %_ZN4Game10wasKeyDownEN7KeyType1TE.exit unwind label %bb.ae, !inline_history !20

_ZN4Game10wasKeyDownEN7KeyType1TE.exit:           ; preds = %bb.af
  br i1 %i.ge, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %_ZN4Game10wasKeyDownEN7KeyType1TE.exit
  %.not.i84 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i84, label %_ZTW10infostream.exit85, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit85

_ZTW10infostream.exit85:                          ; preds = %bb.ag, %bb.ah
  %i.gf = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !47
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef zeroext i1 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %.noexc87 unwind label %bb.ae, !inline_history !1606

.noexc87:                                         ; preds = %_ZTW10infostream.exit85
  %.v.i86 = select i1 %i.gj, i64 976, i64 984
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.v.i86 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.193, ptr %i.a, align 8, !tbaa !185
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ai unwind label %bb.ae     ; 0 uses

bb.ai:                                            ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !215 ; 5 uses
  %.not.i89 = icmp eq ptr %i.gm, null
  br i1 %.not.i89, label %_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !47
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i64, ptr %i.go, align 8            ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !222
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
          to label %.noexc91 unwind label %bb.ae

.noexc91:                                         ; preds = %bb.ak
  %.pre.i90 = load ptr, ptr %i.gk, align 8, !tbaa !215 ; 2 uses
  %.pre = load ptr, ptr %.pre.i90, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre120 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.al

bb.al:                                            ; preds = %.noexc91, %bb.aj
  %i.gu = phi i64 [ %.pre120, %.noexc91 ], [ %i.gp, %bb.aj ]
  %i.gv = phi ptr [ %.pre.i90, %.noexc91 ], [ %i.gm, %bb.aj ] ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 240
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !228 ; 6 uses
  %.not.i.i.i105 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i105, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106: ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !233
  %.not.i1.i.i107 = icmp eq i8 %i.ha, 0
  br i1 %.not.i1.i.i107, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 67
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gy)
          to label %.noexc111 unwind label %bb.ae

.noexc111:                                        ; preds = %bb.an
  %i.hd = load ptr, ptr %i.gy, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef signext i8 %i.hf(ptr noundef nonnull align 8 dereferenceable(570) %i.gy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108 unwind label %bb.ae, !inline_history !13

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108: ; preds = %.noexc111, %bb.am
  %.0.i.i.i109 = phi i8 [ %i.hc, %bb.am ], [ %i.hg, %.noexc111 ]
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, i8 noundef signext %.0.i.i.i109)
          to label %.noexc113 unwind label %bb.ae

.noexc113:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke unwind label %bb.ae ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke:       ; preds = %.noexc113, %bb.ai, %bb.ad
  %i.hj = phi i8 [ 0, %bb.ad ], [ 3, %bb.ai ], [ 3, %.noexc113 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !264
  invoke void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.hl, i8 noundef zeroext %i.hj, ptr noundef nonnull align 4 dereferenceable(64) %1)
          to label %bb.ao unwind label %bb.ae

bb.ao:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit93.invoke, %bb.ad, %bb.z, %_ZN4Game10wasKeyDownEN7KeyType1TE.exit
  %i.hm = load ptr, ptr %7, align 8, !tbaa !262   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ao
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !54
  %i.hq = shl i64 %i.hp, 2
  %i.hr = add i64 %i.hq, 4
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hr) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void

bb.ap:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.fz, %bb.ae ] ; 2 uses
  %i.hs = load ptr, ptr %7, align 8, !tbaa !262   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ap
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !54
  %i.hw = shl i64 %i.hv, 2
  %i.hx = add i64 %i.hw, 4
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hx) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit99: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn41.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i97 ], [ %.pn41.pn.pn.pn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game23handlePointingAtNothingERK9ItemStack(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree nonnull readnone align 8 captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.PointedThing, align 4       ; 4 uses
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.b = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !1608
  %.v.i = select i1 %i.f, i64 976, i64 984
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.175, ptr %i.a, align 8, !tbaa !185
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !215  ; 5 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !222
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !215 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %.pre2, %bb.d ], [ %i.l, %bb.c ]
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !228  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !233
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.y, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !264
  call void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.ag, i8 noundef zeroext 5, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare void @_ZN6Camera10setDiggingEi(ptr noundef nonnull align 8 dereferenceable(536), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

declare void @_ZN12RaycastStateC1ERKN4core6line3dIfEEbbRKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 4 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #3

declare void @_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4core8CMatrix4IfE18getRotationRadiansEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !88   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !88 ; 3 uses
  %i.d = fmul nsz float %i.c, %i.c
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !88 ; 3 uses
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = tail call nsz noundef float @llvm.sqrt.f32(float %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !88 ; 3 uses
  %i.l = tail call nsz float @llvm.fabs.f32(float %i.i)
  %i.m = fcmp nsz ole float %i.l, f0x358637BD
  %i.n = fpext nsz float %i.i to double
  %i.o = fdiv nsz double 1.000000e+00, %i.n
  %i.p = select i1 %i.m, double f0x37F0000010000010, double %i.o ; 3 uses
  %i.q = fpext nsz float %i.g to double
  %i.r = fmul nsz double %i.p, %i.q               ; 2 uses
  %i.s = fcmp nsz olt double %i.r, -1.000000e+00
  %i.t = select i1 %i.s, double -1.000000e+00, double %i.r ; 2 uses
  %i.u = fcmp nsz olt double %i.t, 1.000000e+00
  %i.v = select i1 %i.u, double %i.t, double 1.000000e+00 ; 2 uses
  %i.w = tail call nsz noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd nsz double %i.w, -1.000000e+00
  %i.y = tail call nsz noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp nsz ugt double %i.y, 1.000000e-08
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = load <2 x float>, ptr %i.ac, align 4, !tbaa !88 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.k, <2 x float> %i.af, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ah = fmul nsz <2 x float> %i.ag, %i.ag
  %i.ai = shufflevector <2 x float> %i.k, <2 x float> %i.af, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ah)
  %i.ak = insertelement <2 x float> %i.ae, float %i.ab, i64 1 ; 3 uses
  %i.al = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ak, <2 x float> %i.aj)
  %i.am = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.al) ; 2 uses
  %i.an = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.am)
  %i.ao = fcmp nsz ole <2 x float> %i.an, splat (float f0x358637BD)
  %i.ap = fpext <2 x float> %i.am to <2 x double>
  %i.aq = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ap
  %i.ar = select <2 x i1> %i.ao, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.aq
  %i.as = fpext <2 x float> %i.ak to <2 x double>
  %i.at = fmul nsz <2 x double> %i.ar, %i.as      ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = extractelement <2 x double> %i.at, i64 1
  %i.aw = tail call nsz double @llvm.atan2.f64(double %i.au, double %i.av)
  %i.ax = fpext nsz float %i.a to double
  %i.ay = fmul nsz double %i.p, %i.ax
  %i.az = fpext nsz float %i.c to double
  %i.ba = fmul nsz double %i.p, %i.az
  %i.bb = tail call nsz double @llvm.atan2.f64(double %i.ba, double %i.ay)
  %i.bc = fptrunc nsz double %i.aw to float
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = load float, ptr %i.bd, align 4, !tbaa !88
  %i.bf = fpext nsz float %i.be to double
  %i.bg = extractelement <2 x float> %i.k, i64 0
  %i.bh = fneg nsz float %i.bg
  %i.bi = fpext nsz float %i.bh to double
  %i.bj = tail call nsz double @llvm.atan2.f64(double %i.bi, double %i.bf)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit: ; preds = %bb.b, %bb.c
  %.025.i.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bc, %bb.b ]
  %.0.i.i = phi nsz double [ %i.bj, %bb.c ], [ %i.bb, %bb.b ]
  %i.bk = tail call nsz double @llvm.asin.f64(double %i.v)
  %i.bl = fptrunc nsz double %i.bk to float
  %i.bm = fneg nsz float %i.bl
  %i.bn = fptrunc nsz double %.0.i.i to float
  %.sroa.032.0.vec.insert.i.i = insertelement <2 x float> poison, float %.025.i.i, i64 0
  %.sroa.032.4.vec.insert.i.i = insertelement <2 x float> %.sroa.032.0.vec.insert.i.i, float %i.bm, i64 1
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.032.4.vec.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.bn, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4), i48, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #23 comdat {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %i.a = fcmp nsz ogt float %.sroa.09.0.vec.extract, 0.000000e+00
  %i.b = fmul nsz float %2, 5.000000e-01          ; 2 uses
  %i.c = fmul nsz float %2, -5.000000e-01         ; 2 uses
  %i.d = select nsz i1 %i.a, float %i.b, float %i.c
  %i.e = fadd nsz float %.sroa.09.0.vec.extract, %i.d
  %i.f = fdiv nsz float %i.e, %2
  %i.g = fptosi float %i.f to i16
  %i.h = insertelement <2 x float> %0, float %1, i64 0 ; 2 uses
  %i.i = fcmp nsz ogt <2 x float> %i.h, zeroinitializer
  %i.j = insertelement <2 x float> poison, float %i.b, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = select <2 x i1> %i.i, <2 x float> %i.k, <2 x float> %i.m
  %i.o = fadd nsz <2 x float> %i.h, %i.n
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv nsz <2 x float> %i.o, %i.q
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 32, i48 16>
  %.sroa.2.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.u)
  %.sroa.0.0.insert.ext = zext i16 %i.g to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

declare noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !920, !range !306, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !920
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.d) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !923  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !924
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit

_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, ptr noundef nonnull align 8 dereferenceable(296) %4, float noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.MapNode, align 4            ; 9 uses
  %7 = alloca %struct.DigParams, align 8          ; 20 uses
  %8 = alloca %struct.DigParams, align 8          ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !531  ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.sroa.041.0.copyload = load i48, ptr %2, align 2, !tbaa !578
  %i.k = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.041.0.copyload, ptr noundef null) ; 2 uses
  store i32 %i.k, ptr %6, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276  ; 2 uses
  %i.n = and i32 %i.k, 65535
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !286  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 2080
  %i.x = icmp ugt i64 %i.w, %i.o
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [2080 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !193
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %bb.b ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !193
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, ptr %4, ptr %3         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !277
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %i.ah, ptr noundef %i.ak, ptr noundef nonnull %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.an = load i16, ptr %i.am, align 2, !tbaa !713
  call void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.al, i16 noundef zeroext %i.an)
  %i.ao = load i8, ptr %7, align 8, !tbaa !1613, !range !306, !noundef !213
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.thread197, label %bb.d

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !277
  %i.ar = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef %i.aq, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.ar, i16 noundef zeroext 0)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !192 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !192 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
end_hunk_5
begin_hunk_6_@_ZN4Game13nodePlacementERK14ItemDefinitionRK9ItemStackRKN4core8vector3dIsEESA_RK12PointedThingPK12NodeMetadata:bb.a
  %i.jb = load ptr, ptr %i.el, align 8, !tbaa !192
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !193
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef %i.jb, i64 noundef %i.jd) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327: ; preds = %_ZTW11errorstream.exit, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.185, ptr %i.e, align 8, !tbaa !185
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !215 ; 5 uses
  %.not.i328 = icmp eq ptr %i.jg, null
  br i1 %.not.i328, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330, label %bb.au

bb.au:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !47
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %i.jg, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !222
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jg)
  %.pre.i329 = load ptr, ptr %i.jf, align 8, !tbaa !215
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jo = phi ptr [ %.pre.i329, %bb.av ], [ %i.jg, %bb.au ]
  %i.jp = load ptr, ptr %i.k, align 8, !tbaa !192
  %i.jq = load i64, ptr %i.da, align 8, !tbaa !193
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef %i.jp, i64 noundef %i.jq) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330: ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.186, ptr %i.d, align 8, !tbaa !185
  %i.js = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !215 ; 5 uses
  %.not.i331 = icmp eq ptr %i.jt, null
  br i1 %.not.i331, label %_ZN11StreamProxylsEPFRSoS0_E.exit333, label %bb.ax

bb.ax:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !47
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !222
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jt)
  %.pre.i332 = load ptr, ptr %i.js, align 8, !tbaa !215 ; 2 uses
  %.pre593 = load ptr, ptr %.pre.i332, align 8, !tbaa !47
  %.phi.trans.insert594 = getelementptr i8, ptr %.pre593, i64 -24
  %.pre595 = load i64, ptr %.phi.trans.insert594, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kb = phi i64 [ %.pre595, %bb.ay ], [ %i.jw, %bb.ax ]
  %i.kc = phi ptr [ %.pre.i332, %bb.ay ], [ %i.jt, %bb.ax ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 240
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !228 ; 6 uses
  %.not.i.i.i464 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i464, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465: ; preds = %bb.az
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !233
  %.not.i1.i.i466 = icmp eq i8 %i.kh, 0
  br i1 %.not.i1.i.i466, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 67
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kf)
  %i.kk = load ptr, ptr %i.kf, align 8, !tbaa !47
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call noundef signext i8 %i.km(ptr noundef nonnull align 8 dereferenceable(570) %i.kf, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468: ; preds = %bb.bb, %bb.bc
  %.0.i.i.i467 = phi i8 [ %i.kj, %bb.bb ], [ %i.kn, %bb.bc ]
  %i.ko = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, i8 noundef signext %.0.i.i.i467)
  %i.kp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit333

_ZN11StreamProxylsEPFRSoS0_E.exit333:             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468
  %i.kq = load ptr, ptr %i.l, align 8, !tbaa !264
  call void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.kq, i8 noundef zeroext 3, ptr noundef nonnull align 4 dereferenceable(64) %5)
  br label %bb.ei

bb.bd:                                            ; preds = %bb.ao
  %i.kr = load i16, ptr %i.j, align 2, !tbaa !578 ; 2 uses
  %i.ks = zext i16 %i.kr to i64                   ; 2 uses
  %i.kt = load ptr, ptr %i.dg, align 8, !tbaa !287
  %i.ku = load ptr, ptr %i.df, align 8, !tbaa !286 ; 3 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 2080
  %i.kz = icmp ugt i64 %i.ky, %i.ks
  br i1 %i.kz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.la = getelementptr inbounds nuw [2080 x i8], ptr %i.ku, i64 %i.ks ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !193
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %bb.bf, label %_ZNK14NodeDefManager3getEt.exit

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.be, %bb.bf
  %i.lf = phi ptr [ %i.le, %bb.bf ], [ %i.la, %bb.be ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i16 %i.kr, ptr %9, align 4, !tbaa !1637
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 0, ptr %i.lg, align 2, !tbaa !1638
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 6 uses
  store i8 0, ptr %i.lh, align 1, !tbaa !1639
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.lj = load i16, ptr %i.li, align 8            ; 2 uses
  %i.lk = and i16 %i.lj, 256
  %.not = icmp eq i16 %i.lk, 0                    ; 2 uses
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit
  %.sroa.0526.0.extract.trunc = trunc i16 %i.lj to i8
  br label %._crit_edge.i.i356.sink.split

bb.bh:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !1640
  switch i8 %i.lm, label %._crit_edge.i.i356 [
    i8 4, label %bb.bi
    i8 10, label %bb.bi
    i8 3, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 14, label %bb.bs
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.ln = load i16, ptr %3, align 2, !tbaa !791
  %i.lo = load i16, ptr %4, align 2, !tbaa !791   ; 2 uses
  %i.lp = sub i16 %i.ln, %i.lo                    ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !792
  %i.ls = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !792
  %i.lt = sub i16 %i.lr, %i.ls                    ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !793
  %i.lw = load i16, ptr %.sroa.19.0..sroa_idx, align 2, !tbaa !793 ; 2 uses
  %i.lx = sub i16 %i.lv, %i.lw                    ; 2 uses
  %i.ly = call i16 @llvm.abs.i16(i16 %i.lt, i1 false)
  %i.lz = call i16 @llvm.abs.i16(i16 %i.lp, i1 false) ; 2 uses
  %i.ma = call i16 @llvm.abs.i16(i16 %i.lx, i1 false) ; 2 uses
  %i.mb = call i16 @llvm.umax.i16(i16 %i.ma, i16 %i.lz)
  %i.mc = icmp ult i16 %i.mb, %i.ly
  br i1 %i.mc, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %.sroa.789.0.extract.trunc.lobit = lshr i16 %i.lt, 15
  %i.md = trunc nuw nsw i16 %.sroa.789.0.extract.trunc.lobit to i8 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 978
  %i.mf = load i8, ptr %i.me, align 2, !tbaa !1641, !range !306, !noundef !213
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.bk, label %._crit_edge.i.i356.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.mh = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !531 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 604
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !88
  %.sroa.0522.0.vec.extract = load float, ptr %i.mk, align 4, !tbaa !88
  %i.ml = insertelement <2 x float> poison, float %.sroa.0522.0.vec.extract, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %.sroa.22.0.copyload.i, i64 1
  %i.mn = fdiv nsz <2 x float> %i.mm, splat (float 1.000000e+01)
  %i.mo = insertelement <2 x i16> poison, i16 %i.lo, i64 0
  %i.mp = insertelement <2 x i16> %i.mo, i16 %i.lw, i64 1
  %i.mq = sitofp <2 x i16> %i.mp to <2 x float>
  %i.mr = fsub nsz <2 x float> %i.mq, %i.mn       ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lf, i64 98
  %i.mt = load i8, ptr %i.ms, align 2, !tbaa !1642
  switch i8 %i.mt, label %bb.bn [
    i8 7, label %bb.bl
    i8 8, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.mu = extractelement <2 x float> %i.mr, i64 0 ; 2 uses
  %i.mv = fcmp nsz olt float %i.mu, 0.000000e+00
  %i.mw = extractelement <2 x float> %i.mr, i64 1 ; 2 uses
  %i.mx = fcmp nsz ogt float %i.mw, 0.000000e+00
  %or.cond = select i1 %i.mv, i1 %i.mx, i1 false
  %i.my = fcmp nsz ogt float %i.mu, 0.000000e+00
  %i.mz = fcmp nsz olt float %i.mw, 0.000000e+00
  %i.na = select i1 %i.my, i1 %i.mz, i1 false
  %i.nb = select i1 %or.cond, i1 true, i1 %i.na
  %i.nc = icmp slt i16 %i.lt, 1
  %spec.select = xor i1 %i.nc, %i.nb
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.nd = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mr) ; 2 uses
  %i.ne = extractelement <2 x float> %i.nd, i64 0
  %i.nf = extractelement <2 x float> %i.nd, i64 1
  %i.ng = fcmp nsz olt float %i.ne, %i.nf
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.nh = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mr) ; 2 uses
  %i.ni = extractelement <2 x float> %i.nh, i64 0
  %i.nj = extractelement <2 x float> %i.nh, i64 1
  %i.nk = fcmp nsz ogt float %i.ni, %i.nj
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm
  %.0249.in = phi i1 [ %i.nk, %bb.bn ], [ %i.ng, %bb.bm ], [ %spec.select, %bb.bl ]
  %i.nl = or disjoint i8 %i.md, 6
  %.0247 = select i1 %.0249.in, i8 %i.nl, i8 %i.md
  br label %._crit_edge.i.i356.sink.split

bb.bp:                                            ; preds = %bb.bi
  %i.nm = icmp ult i16 %i.ma, %i.lz
  br i1 %i.nm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nn = icmp slt i16 %i.lp, 0
  %i.no = select i1 %i.nn, i8 3, i8 2
  br label %._crit_edge.i.i356.sink.split

bb.br:                                            ; preds = %bb.bp
  %i.np = icmp slt i16 %i.lx, 0
  %i.nq = select i1 %i.np, i8 5, i8 4
  br label %._crit_edge.i.i356.sink.split

bb.bs:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.nr = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 224
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !531 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 604
  %.sroa.01.0.copyload.i344 = load <2 x float>, ptr %i.nu, align 4, !tbaa !88
  %.sroa.22.0..sroa_idx.i345 = getelementptr inbounds nuw i8, ptr %i.nt, i64 612
  %.sroa.22.0.copyload.i346 = load float, ptr %.sroa.22.0..sroa_idx.i345, align 4, !tbaa !88
  %i.nv = call i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %.sroa.01.0.copyload.i344, float %.sroa.22.0.copyload.i346, float noundef 1.000000e+01) ; 2 uses
  %.sroa.0517.0.extract.trunc = trunc i48 %i.nv to i16
  %.sroa.5519.0.extract.shift = lshr i48 %i.nv, 32
  %.sroa.5519.0.extract.trunc = trunc nuw i48 %.sroa.5519.0.extract.shift to i16
  %i.nw = load i16, ptr %3, align 2, !tbaa !791
  %i.nx = sub i16 %i.nw, %.sroa.0517.0.extract.trunc ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !793
  %i.oa = sub i16 %i.nz, %.sroa.5519.0.extract.trunc ; 2 uses
  %i.ob = call i16 @llvm.abs.i16(i16 %i.nx, i1 false)
  %i.oc = call i16 @llvm.abs.i16(i16 %i.oa, i1 false)
  %i.od = icmp ult i16 %i.oc, %i.ob
  br i1 %i.od, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.oe = icmp slt i16 %i.nx, 0
  %i.of = select i1 %i.oe, i8 3, i8 1
  br label %._crit_edge.i.i356.sink.split

bb.bu:                                            ; preds = %bb.bs
  %i.og = icmp slt i16 %i.oa, 0
  %i.oh = select i1 %i.og, i8 2, i8 0
  br label %._crit_edge.i.i356.sink.split

._crit_edge.i.i356.sink.split:                    ; preds = %bb.bj, %bb.bo, %bb.bg, %bb.bq, %bb.br, %bb.bu, %bb.bt
  %.sink = phi i8 [ %i.of, %bb.bt ], [ %i.oh, %bb.bu ], [ %.sroa.0526.0.extract.trunc, %bb.bg ], [ %i.nq, %bb.br ], [ %i.no, %bb.bq ], [ %.0247, %bb.bo ], [ %i.md, %bb.bj ]
  store i8 %.sink, ptr %i.lh, align 1, !tbaa !1639
  br label %._crit_edge.i.i356

._crit_edge.i.i356:                               ; preds = %._crit_edge.i.i356.sink.split, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.oi, ptr %10, align 8, !tbaa !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.oi, ptr noundef nonnull align 1 dereferenceable(13) @.str.187, i64 13, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 13, ptr %i.oj, align 8, !tbaa !193
  %i.ok = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.ok, align 1, !tbaa !54
  %i.ol = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.om = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ol, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc360 unwind label %bb.bx ; 2 uses

.noexc360:                                        ; preds = %._crit_edge.i.i356
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.bv

bb.bv:                                            ; preds = %.noexc360
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !1644
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.bv, %.noexc360
  %.0.i = phi i32 [ %i.op, %bb.bv ], [ 0, %.noexc360 ]
  %i.oq = load ptr, ptr %10, align 8, !tbaa !192  ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.oi
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.os = load i64, ptr %i.oi, align 8, !tbaa !54
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  switch i32 %.0.i, label %bb.cb [
    i32 0, label %.critedge281
    i32 3, label %bb.bw
    i32 4, label %bb.by
    i32 2, label %bb.bz
  ]

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.ou = add i16 %.sroa.13.0, -1
  br label %bb.ce

bb.bx:                                            ; preds = %._crit_edge.i.i356
  %i.ov = landingpad { ptr, i32 }
          cleanup
  %i.ow = load ptr, ptr %10, align 8, !tbaa !192  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.oi
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %bb.bx
  %i.oy = load i64, ptr %i.oi, align 8, !tbaa !54
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.eh

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.pa = add i16 %.sroa.13.0, 1
  br label %bb.ce

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.pb = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !1640
  switch i8 %i.pc, label %bb.ce [
    i8 3, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 14, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.pd = call noundef zeroext i8 @_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %i.r, i1 noundef zeroext false)
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [6 x i8], ptr @facedir_dirs, i64 %i.pe ; 3 uses
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !791
  %i.ph = add i16 %i.pg, %.sroa.0531.0
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 2
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !792
  %i.pk = add i16 %i.pj, %.sroa.13.0
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !793
  %i.pn = add i16 %i.pm, %.sroa.19.0
  br label %bb.ce

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.po = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !1640
  switch i8 %i.pp, label %bb.cd [
    i8 4, label %bb.cc
    i8 10, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.pq = call i48 @_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %i.r) ; 3 uses
  %.sroa.0486.0.extract.trunc = trunc i48 %i.pq to i16
  %.sroa.4487.0.extract.shift = lshr i48 %i.pq, 16
  %.sroa.4487.0.extract.trunc = trunc i48 %.sroa.4487.0.extract.shift to i16
  %.sroa.5488.0.extract.shift = lshr i48 %i.pq, 32
  %.sroa.5488.0.extract.trunc = trunc nuw i48 %.sroa.5488.0.extract.shift to i16
end_hunk_6
begin_hunk_7_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !192
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !189
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !193  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !192
  %i.q = load i64, ptr %i.k, align 8, !tbaa !54
  store i64 %i.q, ptr %i.i, align 8, !tbaa !54
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !193
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !193
  store ptr %i.k, ptr %i.h, align 8, !tbaa !192
  store i64 0, ptr %i.s, align 8, !tbaa !193
  store i8 0, ptr %i.k, align 8, !tbaa !54
  ret void
}

declare noundef zeroext i1 @_ZN15ScriptApiClient10on_dignodeEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(8), i48, i32) local_unnamed_addr #3

declare void @_ZN6Client10removeNodeEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674), i48) local_unnamed_addr #3

declare void @_ZN15ParticleManager19addDiggingParticlesEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, i48, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN17ClientEnvironment15updateFrameTimeEb(ptr noundef nonnull align 8 dereferenceable(440), i1 noundef zeroext) local_unnamed_addr #3

declare noundef float @_Z14decode_light_ff(float noundef) local_unnamed_addr #3

declare noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656), float noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_ZN11Environment13getTimeOfDayFEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

declare void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368), float noundef, float noundef, float noundef, i1 noundef zeroext, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game12updateCloudsEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.core::vector3d.53", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1816
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1646, !range !306, !noundef !213
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1817
  %i.g = load i8, ptr %i.f, align 1, !range !306
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197  ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k, i1 noundef zeroext true)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !197
  tail call void @_ZN6Clouds4stepEf(ptr noundef nonnull align 8 dereferenceable(484) %i.o, float noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !725  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(218) %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !894
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !267
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.y, align 4, !tbaa !578 ; 2 uses
  %i.z = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.aa = shufflevector <3 x i16> %i.z, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ab = load <2 x float>, ptr %3, align 8, !tbaa !88
  %i.ac = sitofp <2 x i16> %i.aa to <2 x float>
  %i.ad = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float 1.000000e+01), <2 x float> %i.ab)
  store <2 x float> %i.ad, ptr %3, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !90
  %i.ag = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.ah = trunc nsw i48 %i.ag to i32
  %i.ai = sitofp nsz i32 %i.ah to float
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ai, float 1.000000e+01, float %i.af)
  store float %i.aj, ptr %i.ae, align 8, !tbaa !90
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !197
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1876
  call void @_ZN6Clouds6updateERKN4core8vector3dIfEERKN5video7SColorfE(ptr noundef nonnull align 8 dereferenceable(484) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.am)
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !197
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 434
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !1647, !range !306, !noundef !213
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2068
  %i.at = load i16, ptr %i.as, align 4, !tbaa !813
  %i.au = icmp sgt i16 %i.at, -1
  br i1 %i.au, label %._crit_edge.i.i.i, label %_ZN4Game10fogEnabledEv.exit

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ax, ptr noundef nonnull align 1 dereferenceable(5) @.str.91, i64 5, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.ay, align 8, !tbaa !193
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.az, align 1, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1384
  %i.bb = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge.i unwind label %bb.d

.critedge.i:                                      ; preds = %._crit_edge.i.i.i
  %.not.i.i.i.not.i = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ax
  br i1 %i.bd, label %.critedge19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge.i
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %.critedge19.i

.critedge19.i:                                    ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.not.i.i.i.not.i, label %_ZN4Game10fogEnabledEv.exit.thread, label %_ZN4Game10fogEnabledEv.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ax
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %bb.d
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.bg

_ZN4Game10fogEnabledEv.exit:                      ; preds = %bb.c, %.critedge19.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !239, !range !306, !noundef !213
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN4Game10fogEnabledEv.exit.thread, label %bb.e

_ZN4Game10fogEnabledEv.exit.thread:               ; preds = %.critedge19.i, %_ZN4Game10fogEnabledEv.exit
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !197 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 436
  %i.bq = load <4 x float>, ptr %i.bp, align 4, !tbaa !88
  %i.br = fmul nsz <4 x float> %i.bq, splat (float 2.550000e+02)
  %i.bs = fadd nsz <4 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.bs)
  %i.bu = fptosi <4 x float> %i.bt to <4 x i32>   ; 4 uses
  %i.bv = extractelement <4 x i32> %i.bu, i64 3
  %i.bw = shl i32 %i.bv, 24
  %i.bx = extractelement <4 x i32> %i.bu, i64 0
  %i.by = shl i32 %i.bx, 16
  %i.bz = and i32 %i.by, 16711680
  %i.ca = or disjoint i32 %i.bz, %i.bw
  %i.cb = extractelement <4 x i32> %i.bu, i64 1
  %i.cc = shl i32 %i.cb, 8
  %i.cd = and i32 %i.cc, 65280
  %i.ce = or disjoint i32 %i.ca, %i.cd
  %i.cf = and <4 x i32> %i.bu, splat (i32 255)    ; 2 uses
  %i.cg = extractelement <4 x i32> %i.cf, i64 2
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = uitofp nneg <4 x i32> %i.cf to <4 x float>
  %i.cj = fmul nnan nsz <4 x float> %i.ci, splat (float f0x3F666666)
  %i.ck = fadd nsz <4 x float> %i.cj, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x41CC0003> ; 4 uses
  %i.cl = extractelement <4 x float> %i.ck, i64 3
  %i.cm = fadd nsz float %i.cl, 5.000000e-01
  %i.cn = call nsz noundef float @llvm.floor.f32(float %i.cm)
  %i.co = fptosi float %i.cn to i32
  %i.cp = extractelement <4 x float> %i.ck, i64 0
  %i.cq = call nsz noundef float @llvm.floor.f32(float %i.cp)
  %i.cr = fptosi float %i.cq to i32
  %i.cs = extractelement <4 x float> %i.ck, i64 1
  %i.ct = call nsz noundef float @llvm.floor.f32(float %i.cs)
  %i.cu = fptosi float %i.ct to i32
  %i.cv = extractelement <4 x float> %i.ck, i64 2
  %i.cw = call nsz noundef float @llvm.floor.f32(float %i.cv)
  %i.cx = fptosi float %i.cw to i32
  %i.cy = shl i32 %i.co, 24
  %i.cz = shl i32 %i.cr, 16
  %i.da = and i32 %i.cz, 16711680
  %i.db = or disjoint i32 %i.da, %i.cy
  %i.dc = shl i32 %i.cu, 8
  %i.dd = and i32 %i.dc, 65280
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = and i32 %i.cx, 255
  %i.dg = or disjoint i32 %i.de, %i.df
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !194 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1868
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !545
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1872
  store i32 %i.ch, ptr %i.dj, align 8, !tbaa !545
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1819
  store i8 1, ptr %i.dk, align 1, !tbaa !1648
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !816
  %i.dn = fmul nsz float %i.dm, 5.000000e-01
  %i.do = call nsz noundef float @llvm.minnum.f32(float %i.dn, float 3.200000e+02)
  store float %i.do, ptr %i.dl, align 8, !tbaa !816
  %i.dp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(218) %i.bo, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Game10fogEnabledEv.exit.thread, %_ZN4Game10fogEnabledEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN15ParticleManager4stepEf(ptr noundef nonnull align 8 dereferenceable(232), float noundef) local_unnamed_addr #3

declare void @_ZN7Minimap6setPosEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(192), i48) local_unnamed_addr #3

declare void @_ZN7Minimap8setAngleEf(ptr noundef nonnull align 8 dereferenceable(192), float noundef) local_unnamed_addr #3

declare void @_ZN6Client13setPlayerItemEt(ptr noundef nonnull align 8 dereferenceable(1674), i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6Client17updateWieldedItemEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6Client29consumeSkipNextWieldAnimationEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

declare void @_ZN6Camera5wieldERK9ItemStackb(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(296), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN9ClientMap14updateDrawListEv(ptr noundef nonnull align 8 dereferenceable(656)) local_unnamed_addr #3

declare void @_ZN9ClientMap14touchMapBlocksEv(ptr noundef nonnull align 8 dereferenceable(656)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game13updateShadowsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !288 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !581  ; 2 uses
  %.not2.i = icmp eq ptr %i.c, null
  br i1 %.not2.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit

_ZN15RenderingEngine19get_shadow_rendererEv.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !583  ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN15RenderingEngine19get_shadow_rendererEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load float, ptr %i.f, align 8, !tbaa !818
  %i.h = frem nsz float %i.g, 1.000000e+00        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !531  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 836
  %.sroa.018.0.copyload = load i32, ptr %i.m, align 4, !tbaa !545
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store i32 %.sroa.018.0.copyload, ptr %i.n, align 4, !tbaa !545
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 852 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !767 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 856
  %i.r = load float, ptr %i.q, align 4, !tbaa !822 ; 2 uses
  %i.s = fmul nsz float %i.r, %i.r
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 860 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !90 ; 2 uses
  %i.w = tail call nsz noundef float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.t)
  %i.x = fcmp nsz ogt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 824
  %i.z = load float, ptr %i.y, align 4, !tbaa !1649
  tail call void @_ZN14ShadowRenderer18setShadowIntensityEf(ptr noundef nonnull align 8 dereferenceable(208) %i.e, float noundef %i.z)
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !88
  %.sroa.8.0.copyload = load float, ptr %i.u, align 4, !tbaa !88
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call nsz noundef float @_Z18getWickedTimeOfDayf(float noundef %i.h) ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 2.500000e-01
  %i.ac = fcmp nsz olt float %i.aa, 7.500000e-01
  %i.ad = and i1 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !194 ; 2 uses
  br i1 %i.ad, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2088
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !900, !range !306, !noundef !213
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread40, label %.thread

.thread40:                                        ; preds = %.split
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 824
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !1649
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 2200
  %i.am = load i8, ptr %i.al, align 8, !tbaa !901, !range !306, !noundef !213
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %.thread39

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 824
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !1649
  br label %.thread39

.thread:                                          ; preds = %.split, %.thread40
  %.sink = phi float [ %i.ak, %.thread40 ], [ 0.000000e+00, %.split ]
  tail call void @_ZN14ShadowRenderer18setShadowIntensityEf(ptr noundef nonnull align 8 dereferenceable(208) %i.e, float noundef %.sink)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ar = tail call { <2 x float>, float } @_ZN3Sky15getSunDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.aq)
  br label %bb.h

.thread39:                                        ; preds = %bb.f, %bb.g
  %.sink43 = phi float [ %i.ap, %bb.g ], [ 0.000000e+00, %bb.f ]
  tail call void @_ZN14ShadowRenderer18setShadowIntensityEf(ptr noundef nonnull align 8 dereferenceable(208) %i.e, float noundef %.sink43)
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.at = tail call { <2 x float>, float } @_ZN3Sky16getMoonDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.as)
  br label %bb.h

bb.h:                                             ; preds = %.thread39, %.thread
  %.pn = phi { <2 x float>, float } [ %i.ar, %.thread ], [ %i.at, %.thread39 ] ; 2 uses
  %.sroa.5.0 = extractvalue { <2 x float>, float } %.pn, 1
  %.sroa.014.0 = extractvalue { <2 x float>, float } %.pn, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.sroa.8.0 = phi nsz float [ %.sroa.8.0.copyload, %bb.d ], [ %.sroa.5.0, %bb.h ]
  %.sroa.0.0 = phi nsz <2 x float> [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.014.0, %bb.h ]
  %i.au = fmul nsz <2 x float> %.sroa.0.0, splat (float 1.000000e+04)
  %i.av = fmul nsz float %.sroa.8.0, 1.000000e+04
  %i.aw = tail call noundef nonnull align 4 dereferenceable(413) ptr @_ZN14ShadowRenderer19getDirectionalLightEj(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i32 noundef 0)
  tail call void @_ZN16DirectionalLight12setDirectionEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(413) %i.aw, <2 x float> %i.au, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store float %i.h, ptr %i.ax, align 4, !tbaa !1650
  %i.ay = tail call noundef nonnull align 4 dereferenceable(413) ptr @_ZN14ShadowRenderer19getDirectionalLightEj(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i32 noundef 0)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !267
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !264
  tail call void @_ZN16DirectionalLight13updateFrustumEPK6CameraP6Client(ptr noundef nonnull align 4 dereferenceable(413) %i.ay, ptr noundef %i.ba, ptr noundef %i.bb)
  br label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread

_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZN15RenderingEngine19get_shadow_rendererEv.exit, %bb.i
  ret void
}

declare void @_ZN6GameUI6updateERK8RunStatsP6ClientP14MapDrawControlRK17CameraOrientationRK12PointedThingPK14GUIChatConsolef(ptr noundef nonnull align 8 dereferenceable(122), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, float noundef) local_unnamed_addr #3

declare void @_ZN12GameFormSpec6updateEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game9drawSceneEP13ProfilerGraphP8RunStats(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_7
begin_hunk_8_@_ZN29GameGlobalShaderUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE:bb.a
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 525
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !996, !range !306, !noundef !213
  %i.rx = trunc nuw i8 %i.rw to i1                ; 2 uses
  %i.ry = load ptr, ptr %i.rp, align 8, !tbaa !994
  %i.rz = load ptr, ptr %1, align 8, !tbaa !47
  %..i275 = select i1 %i.rx, i64 56, i64 24
  %.18.i276 = select i1 %i.rx, i64 64, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %..i275
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = call noundef i32 %i.sb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ry), !inline_history !1787
  %i.sd = load ptr, ptr %1, align 8, !tbaa !47
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.18.i276
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = call noundef zeroext i1 %i.sf(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.sc, ptr noundef nonnull %i.s, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.si = load float, ptr %i.s, align 4, !tbaa !88
  store float %i.si, ptr %i.sh, align 8, !tbaa !88
  store i8 1, ptr %i.rq, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit279

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit279: ; preds = %.lr.ph.i.i.i.i.preheader.i277, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i274
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.sk = load i8, ptr %i.sj, align 8, !tbaa !1009, !range !306, !noundef !213
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit279
  %i.sm = load ptr, ptr %i.y, align 8, !tbaa !993
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 624
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !513
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !725 ; 8 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !47
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 296
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = call noundef nonnull align 4 dereferenceable(64) ptr %i.st(ptr noundef nonnull align 8 dereferenceable(233) %i.sq) ; 8 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 56
  %.sroa.40.0.copyload = load float, ptr %.sroa.40.0..sroa_idx, align 4 ; 4 uses
  %i.sv = load ptr, ptr %i.sq, align 8, !tbaa !47
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 304
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = load <2 x float>, ptr %i.su, align 4    ; 4 uses
  %i.sz = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 4 ; 4 uses
  %i.ta = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 4 ; 4 uses
  %i.tb = load <2 x float>, ptr %.sroa.34.0..sroa_idx, align 4 ; 4 uses
  %i.tc = call noundef nonnull align 4 dereferenceable(64) ptr %i.sx(ptr noundef nonnull align 8 dereferenceable(233) %i.sq) ; 16 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !88 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.tf = load float, ptr %i.te, align 4, !tbaa !88 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.th = load float, ptr %i.tg, align 4, !tbaa !88 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !88 ; 2 uses
  %i.tk = insertelement <2 x float> poison, float %i.tf, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = fmul nsz <2 x float> %i.sz, %i.tl
  %i.tn = insertelement <2 x float> poison, float %i.td, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.to, <2 x float> %i.tm)
  %i.tq = insertelement <2 x float> poison, float %i.th, i64 0
  %i.tr = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ts = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.tr, <2 x float> %i.tp)
  %i.tt = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.tu, <2 x float> %i.ts) ; 2 uses
  %i.tw = fmul nsz float %.sroa.20.0.copyload, %i.tf
  %i.tx = call nsz float @llvm.fmuladd.f32(float %.sroa.10.0.copyload, float %i.td, float %i.tw)
  %i.ty = call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.th, float %i.tx)
  %i.tz = call nsz float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float %i.tj, float %i.ty) ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !88 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tc, i64 20
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !88 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !88 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tc, i64 28
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !88 ; 2 uses
  %i.ui = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uk = fmul nsz <2 x float> %i.sz, %i.uj
  %i.ul = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.um = shufflevector <2 x float> %i.ul, <2 x float> poison, <2 x i32> zeroinitializer
  %i.un = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.um, <2 x float> %i.uk)
  %i.uo = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.up, <2 x float> %i.un)
  %i.ur = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ut = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.us, <2 x float> %i.uq) ; 2 uses
  %i.uu = fmul nsz float %.sroa.20.0.copyload, %i.ud
  %i.uv = call nsz float @llvm.fmuladd.f32(float %.sroa.10.0.copyload, float %i.ub, float %i.uu)
  %i.uw = call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.uf, float %i.uv)
  %i.ux = call nsz float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float %i.uh, float %i.uw) ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !88 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.tc, i64 36
  %i.vb = load float, ptr %i.va, align 4, !tbaa !88 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !88 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tc, i64 44
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !88 ; 2 uses
  %i.vg = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vi = fmul nsz <2 x float> %i.sz, %i.vh
  %i.vj = insertelement <2 x float> poison, float %i.uz, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.vk, <2 x float> %i.vi)
  %i.vm = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.vn, <2 x float> %i.vl)
  %i.vp = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.vq, <2 x float> %i.vo) ; 2 uses
  %i.vs = fmul nsz float %.sroa.20.0.copyload, %i.vb
  %i.vt = call nsz float @llvm.fmuladd.f32(float %.sroa.10.0.copyload, float %i.uz, float %i.vs)
  %i.vu = call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.vd, float %i.vt)
  %i.vv = call nsz float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float %i.vf, float %i.vu) ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !88 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tc, i64 52
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !88 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tc, i64 56
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !88 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.tc, i64 60
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !88 ; 2 uses
  %i.we = insertelement <2 x float> poison, float %i.vz, i64 0
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wg = fmul nsz <2 x float> %i.sz, %i.wf
  %i.wh = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.wi, <2 x float> %i.wg)
  %i.wk = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.wl, <2 x float> %i.wj)
  %i.wn = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.wo, <2 x float> %i.wm) ; 2 uses
  %i.wq = fmul nsz float %.sroa.20.0.copyload, %i.vz
  %i.wr = call nsz float @llvm.fmuladd.f32(float %.sroa.10.0.copyload, float %i.vx, float %i.wq)
  %i.ws = call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.wb, float %i.wr)
  %i.wt = call nsz float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float %i.wd, float %i.ws) ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 2088
  %i.wx = load i8, ptr %i.ww, align 8, !tbaa !900, !range !306, !noundef !213
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.wz = load ptr, ptr %i.sq, align 8, !tbaa !47
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 232
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = call { <2 x float>, float } %i.xb(ptr noundef nonnull align 8 dereferenceable(218) %i.sq) ; 2 uses
  %.fca.0.extract48 = extractvalue { <2 x float>, float } %i.xc, 0
  %.fca.1.extract49 = extractvalue { <2 x float>, float } %i.xc, 1
  %i.xd = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.xe = call { <2 x float>, float } @_ZN3Sky15getSunDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.xd) ; 2 uses
  %.fca.0.extract44 = extractvalue { <2 x float>, float } %i.xe, 0
  %.fca.1.extract45 = extractvalue { <2 x float>, float } %i.xe, 1
  %i.xf = shufflevector <2 x float> %.fca.0.extract44, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.xg = insertelement <3 x float> %i.xf, float %.fca.1.extract45, i64 0
  %i.xh = fmul nsz <3 x float> %i.xg, splat (float 1.000000e+04)
  %i.xi = shufflevector <2 x float> %.fca.0.extract48, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.xj = insertelement <3 x float> %i.xi, float %.fca.1.extract49, i64 0
  %i.xk = fadd nsz <3 x float> %i.xj, %i.xh       ; 6 uses
  %i.xl = shufflevector <3 x float> %i.xk, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xm = fmul nsz <2 x float> %i.ut, %i.xl
  %i.xn = shufflevector <3 x float> %i.xk, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xn, <2 x float> %i.tv, <2 x float> %i.xm)
  %i.xp = shufflevector <3 x float> %i.xk, <3 x float> poison, <2 x i32> zeroinitializer
  %i.xq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xp, <2 x float> %i.vr, <2 x float> %i.xo)
  %i.xr = fadd nsz <2 x float> %i.wp, %i.xq       ; 5 uses
  %i.xs = extractelement <3 x float> %i.xk, i64 2
  %i.xt = fmul nsz float %i.ux, %i.xs
  %i.xu = extractelement <3 x float> %i.xk, i64 1
  %i.xv = call nsz float @llvm.fmuladd.f32(float %i.xu, float %i.tz, float %i.xt)
  %i.xw = extractelement <3 x float> %i.xk, i64 0
  %i.xx = call nsz float @llvm.fmuladd.f32(float %i.xw, float %i.vv, float %i.xv)
  %i.xy = fadd nsz float %i.wt, %i.xx             ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.xr, %i.xr
  %i.xz = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ya = extractelement <2 x float> %i.xr, i64 0 ; 2 uses
  %i.yb = call nsz float @llvm.fmuladd.f32(float %i.ya, float %i.ya, float %i.xz)
  %i.yc = call nsz float @llvm.fmuladd.f32(float %i.xy, float %i.xy, float %i.yb) ; 2 uses
  %i.yd = fcmp nsz oeq float %i.yc, 0.000000e+00
  br i1 %i.yd, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ye = fpext nsz float %i.yc to double
  %i.yf = call nsz double @llvm.sqrt.f64(double %i.ye)
  %i.yg = fdiv nsz double 1.000000e+00, %i.yf     ; 2 uses
  %i.yh = fpext <2 x float> %i.xr to <2 x double>
  %i.yi = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yj = shufflevector <2 x double> %i.yi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yk = fmul nsz <2 x double> %i.yj, %i.yh
  %i.yl = fptrunc <2 x double> %i.yk to <2 x float>
  %i.ym = fpext nsz float %i.xy to double
  %i.yn = fmul nsz double %i.yg, %i.ym
  %i.yo = fptrunc nsz double %i.yn to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.g, %bb.h
  %.sroa.0402.0 = phi nsz <2 x float> [ %i.xr, %bb.g ], [ %i.yl, %bb.h ] ; 3 uses
  %.sroa.11410.0 = phi nsz float [ %i.xy, %bb.g ], [ %i.yo, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %.sroa.02.0.vec.extract.i284 = extractelement <2 x float> %.sroa.0402.0, i64 0
  %.sroa.02.4.vec.extract.i285 = extractelement <2 x float> %.sroa.0402.0, i64 1
  store <2 x float> %.sroa.0402.0, ptr %i.d, align 8, !tbaa !88
  %i.yp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %.sroa.11410.0, ptr %i.yp, align 8, !tbaa !88
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.yr = load i8, ptr %i.yq, align 4, !tbaa !1000, !range !306, !noundef !213
  %i.ys = trunc nuw i8 %i.yr to i1
  %.0810.i.i.i.i.ptr.i.i286 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.yt = load float, ptr %.0810.i.i.i.i.ptr.i.i286, align 8
  %i.yu = fcmp nsz oeq float %i.yt, %.sroa.02.0.vec.extract.i284
  %or.cond.i287 = select i1 %i.ys, i1 %i.yu, i1 false
  %.0810.i.i.i.i.ptr.1.i.i288 = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.yv = load float, ptr %.0810.i.i.i.i.ptr.1.i.i288, align 4
  %i.yw = fcmp nsz oeq float %i.yv, %.sroa.02.4.vec.extract.i285
  %or.cond5.i289 = select i1 %or.cond.i287, i1 %i.yw, i1 false
  %.0810.i.i.i.i.ptr.2.i.i290 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.yx = load float, ptr %.0810.i.i.i.i.ptr.2.i.i290, align 8
  %i.yy = fcmp nsz oeq float %i.yx, %.sroa.11410.0
  %or.cond7.i291 = select i1 %or.cond5.i289, i1 %i.yy, i1 false
  br i1 %or.cond7.i291, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit295, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i292

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i292:           ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 557
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !1001, !range !306, !noundef !213
  %i.zc = trunc nuw i8 %i.zb to i1                ; 2 uses
  %i.zd = load ptr, ptr %i.yz, align 8, !tbaa !999
  %i.ze = load ptr, ptr %1, align 8, !tbaa !47
  %..i.i293 = select i1 %i.zc, i64 56, i64 24
  %.18.i.i294 = select i1 %i.zc, i64 64, i64 32
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 %..i.i293
  %i.zg = load ptr, ptr %i.zf, align 8
  %i.zh = call noundef i32 %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.zd), !inline_history !1788
  %i.zi = load ptr, ptr %1, align 8, !tbaa !47
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.18.i.i294
  %i.zk = load ptr, ptr %i.zj, align 8
  %i.zl = call noundef zeroext i1 %i.zk(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.zh, ptr noundef nonnull %i.d, i32 noundef 3), !inline_history !1788 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0810.i.i.i.i.ptr.i.i286, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  store i8 1, ptr %i.yq, align 4, !tbaa !1000
  br label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit295

_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit295: ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #34
  %i.zm = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.zn = call { <2 x float>, float } @_ZN3Sky15getSunDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.zm)
  %.fca.0.extract26 = extractvalue { <2 x float>, float } %i.zn, 0
  %.sroa.030.4.vec.extract = extractelement <2 x float> %.fca.0.extract26, i64 1
  %i.zo = fmul nsz float %.sroa.030.4.vec.extract, 1.071430e+02 ; 2 uses
  %i.zp = fcmp nsz olt float %i.zo, 0.000000e+00
  %i.zq = select i1 %i.zp, float 0.000000e+00, float %i.zo ; 2 uses
  %i.zr = fcmp nsz olt float %i.zq, 1.000000e+00
  %i.zs = select i1 %i.zr, float %i.zq, float 1.000000e+00 ; 2 uses
  store float %i.zs, ptr %i.t, align 4, !tbaa !88
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.zv = load i8, ptr %i.zu, align 4, !tbaa !995, !range !306, !noundef !213
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %.lr.ph.i.i.i.i.preheader.i299, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i296

.lr.ph.i.i.i.i.preheader.i299:                    ; preds = %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit295
  %.0810.i.i.i.i.ptr.i300 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.zx = load float, ptr %.0810.i.i.i.i.ptr.i300, align 8, !tbaa !88
  %i.zy = fcmp nsz oeq float %i.zx, %i.zs
  br i1 %i.zy, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit301, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i296

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i296:             ; preds = %.lr.ph.i.i.i.i.preheader.i299, %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit295
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !996, !range !306, !noundef !213
  %i.aab = trunc nuw i8 %i.aaa to i1              ; 2 uses
  %i.aac = load ptr, ptr %i.zt, align 8, !tbaa !994
  %i.aad = load ptr, ptr %1, align 8, !tbaa !47
  %..i297 = select i1 %i.aab, i64 56, i64 24
  %.18.i298 = select i1 %i.aab, i64 64, i64 32
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %..i297
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = call noundef i32 %i.aaf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aac), !inline_history !1787
  %i.aah = load ptr, ptr %1, align 8, !tbaa !47
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.18.i298
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = call noundef zeroext i1 %i.aaj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.aag, ptr noundef nonnull %i.t, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aam = load float, ptr %i.t, align 4, !tbaa !88
  store float %i.aam, ptr %i.aal, align 8, !tbaa !88
  store i8 1, ptr %i.zu, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit301

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit301: ; preds = %.lr.ph.i.i.i.i.preheader.i299, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #34
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store <2 x float> zeroinitializer, ptr %i.c, align 8, !tbaa !88
  %i.aan = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float -1.000000e+00, ptr %i.aan, align 8, !tbaa !88
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 4, !tbaa !1000, !range !306, !noundef !213
  %i.aaq = trunc nuw i8 %i.aap to i1
  %.0810.i.i.i.i.ptr.i.i304 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aar = load float, ptr %.0810.i.i.i.i.ptr.i.i304, align 8
  %i.aas = fcmp nsz oeq float %i.aar, 0.000000e+00
  %or.cond.i305 = select i1 %i.aaq, i1 %i.aas, i1 false
  %.0810.i.i.i.i.ptr.1.i.i306 = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.aat = load float, ptr %.0810.i.i.i.i.ptr.1.i.i306, align 4
  %i.aau = fcmp nsz oeq float %i.aat, 0.000000e+00
  %or.cond5.i307 = select i1 %or.cond.i305, i1 %i.aau, i1 false
  %.0810.i.i.i.i.ptr.2.i.i308 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aav = load float, ptr %.0810.i.i.i.i.ptr.2.i.i308, align 8
  %i.aaw = fcmp nsz oeq float %i.aav, -1.000000e+00
  %or.cond7.i309 = select i1 %or.cond5.i307, i1 %i.aaw, i1 false
  br i1 %or.cond7.i309, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit313, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i310

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i310:           ; preds = %bb.i
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 557
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !1001, !range !306, !noundef !213
  %i.aba = trunc nuw i8 %i.aaz to i1              ; 2 uses
  %i.abb = load ptr, ptr %i.aax, align 8, !tbaa !999
  %i.abc = load ptr, ptr %1, align 8, !tbaa !47
  %..i.i311 = select i1 %i.aba, i64 56, i64 24
  %.18.i.i312 = select i1 %i.aba, i64 64, i64 32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %..i.i311
  %i.abe = load ptr, ptr %i.abd, align 8
  %i.abf = call noundef i32 %i.abe(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.abb), !inline_history !1788
  %i.abg = load ptr, ptr %1, align 8, !tbaa !47
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %.18.i.i312
  %i.abi = load ptr, ptr %i.abh, align 8
  %i.abj = call noundef zeroext i1 %i.abi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abf, ptr noundef nonnull %i.c, i32 noundef 3), !inline_history !1788 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0810.i.i.i.i.ptr.i.i304, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  store i8 1, ptr %i.aao, align 4, !tbaa !1000
  br label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit313

_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit313: ; preds = %bb.i, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #34
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !88
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.abm = load i8, ptr %i.abl, align 4, !tbaa !995, !range !306, !noundef !213
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %.lr.ph.i.i.i.i.preheader.i317, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i314

.lr.ph.i.i.i.i.preheader.i317:                    ; preds = %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit313
  %.0810.i.i.i.i.ptr.i318 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.abo = load float, ptr %.0810.i.i.i.i.ptr.i318, align 8, !tbaa !88
  %i.abp = fcmp nsz oeq float %i.abo, 0.000000e+00
  br i1 %i.abp, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit319, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i314

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i314:             ; preds = %.lr.ph.i.i.i.i.preheader.i317, %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit313
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !996, !range !306, !noundef !213
  %i.abs = trunc nuw i8 %i.abr to i1              ; 2 uses
  %i.abt = load ptr, ptr %i.abk, align 8, !tbaa !994
  %i.abu = load ptr, ptr %1, align 8, !tbaa !47
  %..i315 = select i1 %i.abs, i64 56, i64 24
  %.18.i316 = select i1 %i.abs, i64 64, i64 32
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %..i315
  %i.abw = load ptr, ptr %i.abv, align 8
  %i.abx = call noundef i32 %i.abw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.abt), !inline_history !1787
  %i.aby = load ptr, ptr %1, align 8, !tbaa !47
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %.18.i316
  %i.aca = load ptr, ptr %i.abz, align 8
  %i.acb = call noundef zeroext i1 %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.abx, ptr noundef nonnull %i.u, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.acd = load float, ptr %i.u, align 4, !tbaa !88
  store float %i.acd, ptr %i.acc, align 8, !tbaa !88
  store i8 1, ptr %i.abl, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit319

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit319: ; preds = %.lr.ph.i.i.i.i.preheader.i317, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit319, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit301
  %i.ace = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 2200
  %i.acg = load i8, ptr %i.acf, align 8, !tbaa !901, !range !306, !noundef !213
  %i.ach = trunc nuw i8 %i.acg to i1
  br i1 %i.ach, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aci = load ptr, ptr %i.sq, align 8, !tbaa !47
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 232
  %i.ack = load ptr, ptr %i.acj, align 8
  %i.acl = call { <2 x float>, float } %i.ack(ptr noundef nonnull align 8 dereferenceable(218) %i.sq) ; 2 uses
  %.fca.0.extract20 = extractvalue { <2 x float>, float } %i.acl, 0
  %.fca.1.extract21 = extractvalue { <2 x float>, float } %i.acl, 1
  %i.acm = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.acn = call { <2 x float>, float } @_ZN3Sky16getMoonDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.acm) ; 2 uses
  %.fca.0.extract16 = extractvalue { <2 x float>, float } %i.acn, 0
  %.fca.1.extract17 = extractvalue { <2 x float>, float } %i.acn, 1
  %i.aco = shufflevector <2 x float> %.fca.0.extract16, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.acp = insertelement <3 x float> %i.aco, float %.fca.1.extract17, i64 0
  %i.acq = fmul nsz <3 x float> %i.acp, splat (float 1.000000e+04)
  %i.acr = shufflevector <2 x float> %.fca.0.extract20, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.acs = insertelement <3 x float> %i.acr, float %.fca.1.extract21, i64 0
  %i.act = fadd nsz <3 x float> %i.acs, %i.acq    ; 6 uses
  %i.acu = shufflevector <3 x float> %i.act, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.acv = fmul nsz <2 x float> %i.ut, %i.acu
  %i.acw = shufflevector <3 x float> %i.act, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acw, <2 x float> %i.tv, <2 x float> %i.acv)
  %i.acy = shufflevector <3 x float> %i.act, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acy, <2 x float> %i.vr, <2 x float> %i.acx)
  %i.ada = fadd nsz <2 x float> %i.wp, %i.acz     ; 5 uses
  %i.adb = extractelement <3 x float> %i.act, i64 2
  %i.adc = fmul nsz float %i.ux, %i.adb
  %i.add = extractelement <3 x float> %i.act, i64 1
  %i.ade = call nsz float @llvm.fmuladd.f32(float %i.add, float %i.tz, float %i.adc)
  %i.adf = extractelement <3 x float> %i.act, i64 0
  %i.adg = call nsz float @llvm.fmuladd.f32(float %i.adf, float %i.vv, float %i.ade)
  %i.adh = fadd nsz float %i.wt, %i.adg           ; 4 uses
  %foldExtExtBinop534 = fmul nsz <2 x float> %i.ada, %i.ada
  %i.adi = extractelement <2 x float> %foldExtExtBinop534, i64 1
  %i.adj = extractelement <2 x float> %i.ada, i64 0 ; 2 uses
  %i.adk = call nsz float @llvm.fmuladd.f32(float %i.adj, float %i.adj, float %i.adi)
  %i.adl = call nsz float @llvm.fmuladd.f32(float %i.adh, float %i.adh, float %i.adk) ; 2 uses
  %i.adm = fcmp nsz oeq float %i.adl, 0.000000e+00
  br i1 %i.adm, label %_ZN4core8vector3dIfE9normalizeEv.exit330, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.adn = fpext nsz float %i.adl to double
  %i.ado = call nsz double @llvm.sqrt.f64(double %i.adn)
  %i.adp = fdiv nsz double 1.000000e+00, %i.ado   ; 2 uses
  %i.adq = fpext <2 x float> %i.ada to <2 x double>
  %i.adr = insertelement <2 x double> poison, double %i.adp, i64 0
  %i.ads = shufflevector <2 x double> %i.adr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adt = fmul nsz <2 x double> %i.ads, %i.adq
  %i.adu = fptrunc <2 x double> %i.adt to <2 x float>
  %i.adv = fpext nsz float %i.adh to double
  %i.adw = fmul nsz double %i.adp, %i.adv
  %i.adx = fptrunc nsz double %i.adw to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit330

_ZN4core8vector3dIfE9normalizeEv.exit330:         ; preds = %bb.k, %bb.l
  %.sroa.11.0 = phi nsz float [ %i.adh, %bb.k ], [ %i.adx, %bb.l ] ; 2 uses
  %.sroa.0381.0 = phi nsz <2 x float> [ %i.ada, %bb.k ], [ %i.adu, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %.sroa.02.0.vec.extract.i331 = extractelement <2 x float> %.sroa.0381.0, i64 0
  %.sroa.02.4.vec.extract.i332 = extractelement <2 x float> %.sroa.0381.0, i64 1
  store <2 x float> %.sroa.0381.0, ptr %i.b, align 8, !tbaa !88
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.sroa.11.0, ptr %i.ady, align 8, !tbaa !88
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.aea = load i8, ptr %i.adz, align 4, !tbaa !1000, !range !306, !noundef !213
  %i.aeb = trunc nuw i8 %i.aea to i1
  %.0810.i.i.i.i.ptr.i.i333 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aec = load float, ptr %.0810.i.i.i.i.ptr.i.i333, align 8
  %i.aed = fcmp nsz oeq float %i.aec, %.sroa.02.0.vec.extract.i331
  %or.cond.i334 = select i1 %i.aeb, i1 %i.aed, i1 false
  %.0810.i.i.i.i.ptr.1.i.i335 = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.aee = load float, ptr %.0810.i.i.i.i.ptr.1.i.i335, align 4
  %i.aef = fcmp nsz oeq float %i.aee, %.sroa.02.4.vec.extract.i332
  %or.cond5.i336 = select i1 %or.cond.i334, i1 %i.aef, i1 false
  %.0810.i.i.i.i.ptr.2.i.i337 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aeg = load float, ptr %.0810.i.i.i.i.ptr.2.i.i337, align 8
  %i.aeh = fcmp nsz oeq float %i.aeg, %.sroa.11.0
  %or.cond7.i338 = select i1 %or.cond5.i336, i1 %i.aeh, i1 false
  br i1 %or.cond7.i338, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit342, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i339

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i339:           ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit330
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !1001, !range !306, !noundef !213
  %i.ael = trunc nuw i8 %i.aek to i1              ; 2 uses
  %i.aem = load ptr, ptr %i.aei, align 8, !tbaa !999
  %i.aen = load ptr, ptr %1, align 8, !tbaa !47
  %..i.i340 = select i1 %i.ael, i64 56, i64 24
  %.18.i.i341 = select i1 %i.ael, i64 64, i64 32
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %..i.i340
  %i.aep = load ptr, ptr %i.aeo, align 8
  %i.aeq = call noundef i32 %i.aep(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aem), !inline_history !1788
  %i.aer = load ptr, ptr %1, align 8, !tbaa !47
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %.18.i.i341
  %i.aet = load ptr, ptr %i.aes, align 8
  %i.aeu = call noundef zeroext i1 %i.aet(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.aeq, ptr noundef nonnull %i.b, i32 noundef 3), !inline_history !1788 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0810.i.i.i.i.ptr.i.i333, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  store i8 1, ptr %i.adz, align 4, !tbaa !1000
  br label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit342

_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit342: ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit330, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #34
  %i.aev = load ptr, ptr %i.wu, align 8, !tbaa !530
  %i.aew = call { <2 x float>, float } @_ZN3Sky16getMoonDirectionEv(ptr noundef nonnull align 8 dereferenceable(2368) %i.aev)
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.aew, 0
  %.sroa.03.4.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.aex = fmul nsz float %.sroa.03.4.vec.extract, 1.071430e+02 ; 2 uses
  %i.aey = fcmp nsz olt float %i.aex, 0.000000e+00
  %i.aez = select i1 %i.aey, float 0.000000e+00, float %i.aex ; 2 uses
  %i.afa = fcmp nsz olt float %i.aez, 1.000000e+00
  %i.afb = select i1 %i.afa, float %i.aez, float 1.000000e+00 ; 2 uses
  store float %i.afb, ptr %i.v, align 4, !tbaa !88
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.afe = load i8, ptr %i.afd, align 4, !tbaa !995, !range !306, !noundef !213
  %i.aff = trunc nuw i8 %i.afe to i1
  br i1 %i.aff, label %.lr.ph.i.i.i.i.preheader.i346, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i343

.lr.ph.i.i.i.i.preheader.i346:                    ; preds = %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit342
  %.0810.i.i.i.i.ptr.i347 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.afg = load float, ptr %.0810.i.i.i.i.ptr.i347, align 8, !tbaa !88
  %i.afh = fcmp nsz oeq float %i.afg, %i.afb
  br i1 %i.afh, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit348, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i343

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i343:             ; preds = %.lr.ph.i.i.i.i.preheader.i346, %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit342
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 613
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !996, !range !306, !noundef !213
  %i.afk = trunc nuw i8 %i.afj to i1              ; 2 uses
  %i.afl = load ptr, ptr %i.afc, align 8, !tbaa !994
  %i.afm = load ptr, ptr %1, align 8, !tbaa !47
  %..i344 = select i1 %i.afk, i64 56, i64 24
  %.18.i345 = select i1 %i.afk, i64 64, i64 32
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 %..i344
  %i.afo = load ptr, ptr %i.afn, align 8
  %i.afp = call noundef i32 %i.afo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.afl), !inline_history !1787
  %i.afq = load ptr, ptr %1, align 8, !tbaa !47
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %.18.i345
  %i.afs = load ptr, ptr %i.afr, align 8
  %i.aft = call noundef zeroext i1 %i.afs(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.afp, ptr noundef nonnull %i.v, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.afv = load float, ptr %i.v, align 4, !tbaa !88
  store float %i.afv, ptr %i.afu, align 8, !tbaa !88
  store i8 1, ptr %i.afd, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit348

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit348: ; preds = %.lr.ph.i.i.i.i.preheader.i346, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !88
  %i.afw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float -1.000000e+00, ptr %i.afw, align 8, !tbaa !88
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.afy = load i8, ptr %i.afx, align 4, !tbaa !1000, !range !306, !noundef !213
  %i.afz = trunc nuw i8 %i.afy to i1
  %.0810.i.i.i.i.ptr.i.i351 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aga = load float, ptr %.0810.i.i.i.i.ptr.i.i351, align 8
  %i.agb = fcmp nsz oeq float %i.aga, 0.000000e+00
  %or.cond.i352 = select i1 %i.afz, i1 %i.agb, i1 false
  %.0810.i.i.i.i.ptr.1.i.i353 = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.agc = load float, ptr %.0810.i.i.i.i.ptr.1.i.i353, align 4
  %i.agd = fcmp nsz oeq float %i.agc, 0.000000e+00
  %or.cond5.i354 = select i1 %or.cond.i352, i1 %i.agd, i1 false
  %.0810.i.i.i.i.ptr.2.i.i355 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.age = load float, ptr %.0810.i.i.i.i.ptr.2.i.i355, align 8
  %i.agf = fcmp nsz oeq float %i.age, -1.000000e+00
  %or.cond7.i356 = select i1 %or.cond5.i354, i1 %i.agf, i1 false
  br i1 %or.cond7.i356, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit360, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i357

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i357:           ; preds = %bb.m
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !1001, !range !306, !noundef !213
  %i.agj = trunc nuw i8 %i.agi to i1              ; 2 uses
  %i.agk = load ptr, ptr %i.agg, align 8, !tbaa !999
  %i.agl = load ptr, ptr %1, align 8, !tbaa !47
  %..i.i358 = select i1 %i.agj, i64 56, i64 24
  %.18.i.i359 = select i1 %i.agj, i64 64, i64 32
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 %..i.i358
  %i.agn = load ptr, ptr %i.agm, align 8
  %i.ago = call noundef i32 %i.agn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.agk), !inline_history !1788
  %i.agp = load ptr, ptr %1, align 8, !tbaa !47
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %.18.i.i359
  %i.agr = load ptr, ptr %i.agq, align 8
  %i.ags = call noundef zeroext i1 %i.agr(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ago, ptr noundef nonnull %i.a, i32 noundef 3), !inline_history !1788 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0810.i.i.i.i.ptr.i.i351, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  store i8 1, ptr %i.afx, align 4, !tbaa !1000
  br label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit360

_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit360: ; preds = %bb.m, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #34
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !88
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.agv = load i8, ptr %i.agu, align 4, !tbaa !995, !range !306, !noundef !213
  %i.agw = trunc nuw i8 %i.agv to i1
  br i1 %i.agw, label %.lr.ph.i.i.i.i.preheader.i364, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i361

.lr.ph.i.i.i.i.preheader.i364:                    ; preds = %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit360
  %.0810.i.i.i.i.ptr.i365 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.agx = load float, ptr %.0810.i.i.i.i.ptr.i365, align 8, !tbaa !88
  %i.agy = fcmp nsz oeq float %i.agx, 0.000000e+00
  br i1 %i.agy, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit366, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i361

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i361:             ; preds = %.lr.ph.i.i.i.i.preheader.i364, %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit360
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 613
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !996, !range !306, !noundef !213
  %i.ahb = trunc nuw i8 %i.aha to i1              ; 2 uses
  %i.ahc = load ptr, ptr %i.agt, align 8, !tbaa !994
  %i.ahd = load ptr, ptr %1, align 8, !tbaa !47
  %..i362 = select i1 %i.ahb, i64 56, i64 24
  %.18.i363 = select i1 %i.ahb, i64 64, i64 32
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %..i362
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = call noundef i32 %i.ahf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ahc), !inline_history !1787
  %i.ahh = load ptr, ptr %1, align 8, !tbaa !47
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %.18.i363
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = call noundef zeroext i1 %i.ahj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ahg, ptr noundef nonnull %i.w, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ahm = load float, ptr %i.w, align 4, !tbaa !88
  store float %i.ahm, ptr %i.ahl, align 8, !tbaa !88
  store i8 1, ptr %i.agu, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit366

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit366: ; preds = %.lr.ph.i.i.i.i.preheader.i364, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #34
  br label %bb.n

bb.n:                                             ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit366, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #34
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.og, i64 832
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !1794 ; 2 uses
  store float %i.aho, ptr %i.x, align 4, !tbaa !88
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.ahr = load i8, ptr %i.ahq, align 4, !tbaa !995, !range !306, !noundef !213
  %i.ahs = trunc nuw i8 %i.ahr to i1
  br i1 %i.ahs, label %.lr.ph.i.i.i.i.preheader.i370, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i367

.lr.ph.i.i.i.i.preheader.i370:                    ; preds = %bb.n
  %.0810.i.i.i.i.ptr.i371 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.aht = load float, ptr %.0810.i.i.i.i.ptr.i371, align 8, !tbaa !88
  %i.ahu = fcmp nsz oeq float %i.aht, %i.aho
  br i1 %i.ahu, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit372, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i367

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i367:             ; preds = %.lr.ph.i.i.i.i.preheader.i370, %bb.n
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 629
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !996, !range !306, !noundef !213
  %i.ahx = trunc nuw i8 %i.ahw to i1              ; 2 uses
  %i.ahy = load ptr, ptr %i.ahp, align 8, !tbaa !994
  %i.ahz = load ptr, ptr %1, align 8, !tbaa !47
  %..i368 = select i1 %i.ahx, i64 56, i64 24
  %.18.i369 = select i1 %i.ahx, i64 64, i64 32
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %..i368
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = call noundef i32 %i.aib(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ahy), !inline_history !1787
  %i.aid = load ptr, ptr %1, align 8, !tbaa !47
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 %.18.i369
  %i.aif = load ptr, ptr %i.aie, align 8
  %i.aig = call noundef zeroext i1 %i.aif(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.aic, ptr noundef nonnull %i.x, i32 noundef 1), !inline_history !1787 ; 0 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.aii = load float, ptr %i.x, align 4, !tbaa !88
  store float %i.aii, ptr %i.aih, align 8, !tbaa !88
  store i8 1, ptr %i.ahq, align 4, !tbaa !995
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit372

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit372: ; preds = %.lr.ph.i.i.i.i.preheader.i370, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit372, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29GameGlobalShaderUniformSetter13onSetMaterialERKN5video9SMaterialE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load float, ptr %i.a, align 8, !tbaa !1795
  %i.c = fptoui float %i.b to i32                 ; 2 uses
  %i.d = and i32 %i.c, 65535
  %i.e = add nsw i32 %i.d, -1
  %i.f = lshr i32 %i.c, 16
  %i.g = and i32 %i.f, 255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.e, ptr %i.h, align 8, !tbaa !997
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.g, ptr %i.i, align 8, !tbaa !998
  %i.j = load ptr, ptr %1, align 8, !tbaa !1800   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !545
  %i.m = uitofp <2 x i32> %i.l to <2 x float>
  %i.n = fdiv nsz <2 x float> splat (float 1.000000e+00), %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi <2 x float> [ %i.n, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x float> %i.o, ptr %i.p, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29GameGlobalShaderUniformSetter16onSettingsChangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !193
  %i.d = icmp eq i64 %i.c, 21
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.f = load i128, ptr %i.e, align 1
  %i.g = xor i128 %i.f, 153434429600496852949931157388260309093
  %i.h = getelementptr i8, ptr %i.e, i64 5
  %i.i = load i128, ptr %i.h, align 1
  %i.j = xor i128 %i.i, 146793563361272940719705011940200116853
  %i.k = or i128 %i.g, %i.j
  %i.l = icmp ne i128 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 21, ptr %i.a, align 8, !tbaa !190
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !192
  %i.r = load i64, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.q, ptr noundef nonnull align 1 dereferenceable(21) @.str.298, i64 21, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !193
  %i.t = load ptr, ptr %2, align 8, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.v = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef -1.000000e+00, float noundef 1.000000e+00)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  store float %i.v, ptr %i.w, align 8, !tbaa !1007
  %i.x = load ptr, ptr %2, align 8, !tbaa !192    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.z = load i64, ptr %i.p, align 8, !tbaa !54
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !54
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.ab

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void
}

declare void @_Z18get_sunlight_colorPN5video7SColorfEj(ptr noundef, i32 noundef) local_unnamed_addr #3

declare { <2 x float>, float } @_ZN7Minimap9getYawVecEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN25CachedStructShaderSettingIfLm7ELb1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !1006, !range !306, !noundef !213
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.lr.ph.i.i.i.i.preheader, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %.0810.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %.0810.i.i.i.i.ptr, align 8, !tbaa !88
  %i.f = load float, ptr %1, align 4, !tbaa !88
  %i.g = fcmp nsz oeq float %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i.i.1, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0810.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %.0810.i.i.i.i.ptr.1, align 4, !tbaa !88
  %i.j = load float, ptr %i.h, align 4, !tbaa !88
  %i.k = fcmp nsz oeq float %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i.i.2, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0810.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load float, ptr %.0810.i.i.i.i.ptr.2, align 8, !tbaa !88
  %i.n = load float, ptr %i.l, align 4, !tbaa !88
  %i.o = fcmp nsz oeq float %i.m, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.i.3, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0810.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load float, ptr %.0810.i.i.i.i.ptr.3, align 4, !tbaa !88
  %i.r = load float, ptr %i.p, align 4, !tbaa !88
  %i.s = fcmp nsz oeq float %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i.i.4, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0810.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load float, ptr %.0810.i.i.i.i.ptr.4, align 8, !tbaa !88
  %i.v = load float, ptr %i.t, align 4, !tbaa !88
  %i.w = fcmp nsz oeq float %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.5, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0810.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load float, ptr %.0810.i.i.i.i.ptr.5, align 4, !tbaa !88
  %i.z = load float, ptr %i.x, align 4, !tbaa !88
  %i.aa = fcmp nsz oeq float %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i.i.6, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.6:                                 ; preds = %.lr.ph.i.i.i.i.5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0810.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load float, ptr %.0810.i.i.i.i.ptr.6, align 8, !tbaa !88
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !88
  %i.ae = fcmp nsz oeq float %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.thread, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

_ZSt5equalIPfPKfEbT_S3_T0_.exit:                  ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.am, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false)
  store i8 1, ptr %i.b, align 4, !tbaa !1006
  br label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.thread

bb.c:                                             ; preds = %_ZSt5equalIPfPKfEbT_S3_T0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.01577 = phi i64 [ 0, %_ZSt5equalIPfPKfEbT_S3_T0_.exit ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.an = load ptr, ptr %0, align 8, !tbaa !1005  ; 4 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !189
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.213) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !190
end_hunk_8
