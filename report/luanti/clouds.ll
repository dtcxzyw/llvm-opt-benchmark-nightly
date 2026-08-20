inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6CloudsD2Ev:bb.a
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !9
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(218) %0)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5video9SMaterialD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.al = load ptr, ptr %.09.i.i.i, align 8, !tbaa !20 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #22
  %.not.i.i.i3 = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i3, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !11, !range !118, !noundef !132
  %i.ao = trunc nuw i8 %i.an to i1
  store i8 0, ptr %i.am, align 8, !tbaa !11
  br i1 %i.ao, label %bb.j, label %_ZN5scene10ISceneNodeD2Ev.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN5scene10ISceneNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !57
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #22
  br label %_ZN5scene10ISceneNodeD2Ev.exit

bb.k:                                             ; preds = %_ZN5video9SMaterialD2Ev.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable

_ZN5scene10ISceneNodeD2Ev.exit:                   ; preds = %bb.j, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void

bb.l:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable
}

declare noundef i64 @_ZN8Settings29deregisterAllChangedCallbacksEPKv(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6CloudsD1Ev(ptr noundef nonnull align 8 dereferenceable(484) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull @_ZTT6Clouds) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N6CloudsD1Ev(ptr noundef %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %i.d, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !133
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6CloudsD0Ev(ptr noundef nonnull align 8 dereferenceable(484) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !133
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N6CloudsD0Ev(ptr noundef %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) %i.d, ptr noundef nonnull @_ZTT6Clouds) #23, !inline_history !134
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(484) %i.d, i64 noundef 504) #22, !inline_history !135
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Clouds19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(484) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !118, !noundef !132
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %0, i32 noundef 16) ; 0 uses
  %.pre = load i8, ptr %i.a, align 8, !tbaa !47, !range !118
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %bb.c, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04.i = load ptr, ptr %i.k, align 8, !tbaa !20 ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.01.04.i, %i.k
  br i1 %.not5.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %.sroa.01.0.i, %.lr.ph.i ], [ %.sroa.01.04.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(218) %i.m), !inline_history !137
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.06.i, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %i.k
  br i1 %.not.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i, !llvm.loop !138

_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !118, !noundef !132
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.04, %i.d
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.01.06 = phi ptr [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.04, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %i.f)
  %.sroa.01.0 = load ptr, ptr %.sroa.01.06, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %.sroa.01.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !138

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Clouds10updateMeshEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = load <4 x float>, ptr %i.c, align 8
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = load float, ptr %i.f, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.i = load <2 x float>, ptr %i.h, align 8, !tbaa !14 ; 4 uses
  %i.j = insertelement <2 x float> %i.e, float %i.g, i64 1
  %i.k = fsub nsz <2 x float> %i.j, %i.i
  %i.l = fdiv nsz <2 x float> %i.k, splat (float 6.400000e+02)
  %i.m = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i16>     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !120, !range !118, !noundef !132
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load float, ptr %i.r, align 8, !tbaa !140
  %i.t = extractelement <2 x float> %i.i, i64 0
  %i.u = fsub nsz float %i.s, %i.t                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.w = load float, ptr %i.v, align 4, !tbaa !141
  %i.x = extractelement <2 x float> %i.i, i64 1
  %i.y = fsub nsz float %i.w, %i.x                ; 2 uses
  %i.z = fmul nsz float %i.y, %i.y
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.z)
  %i.ab = tail call nsz noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ac = fcmp nsz ult float %i.ab, 5.000000e+01
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ae = load <2 x i16>, ptr %i.ad, align 8
  %i.af = icmp ne <2 x i16> %i.ae, %i.n           ; 2 uses
  %i.ag = extractelement <2 x i1> %i.af, i64 0
  %i.ah = extractelement <2 x i1> %i.af, i64 1
  %.not3.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %.not3.i, label %bb.d, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aj = load i64, ptr %i.h, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.al = extractelement <2 x i16> %i.n, i64 1
  %i.am = extractelement <2 x i16> %i.n, i64 0
  store <2 x i16> %i.n, ptr %i.ak, align 8
  store i8 1, ptr %i.o, align 4, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 435 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !117, !range !118, !noundef !132
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fcmp nsz oge float %i.ar, f0x3C23D70A
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  %i.au = select i1 %i.at, i32 6, i32 1           ; 2 uses
  %i.av = trunc i64 %i.aj to i32
  %i.aw = bitcast i32 %i.av to float
  %i.ax = extractelement <2 x float> %i.i, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0216.0.copyload = load i32, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.az = lshr i32 %.sroa.0216.0.copyload, 8
  %i.ba = lshr i32 %.sroa.0216.0.copyload, 16
  %i.bb = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.az, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %.sroa.0216.0.copyload, i64 2
  %i.be = and <4 x i32> %i.bd, <i32 255, i32 255, i32 255, i32 poison>
  %i.bf = uitofp nneg <4 x i32> %i.be to <4 x float>
  %i.bg = fmul nnan nsz <4 x float> %i.bf, <float f0x3B808081, float f0x3B808081, float f0x3B808081, float poison> ; 3 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %2 = sitofp <2 x i16> %i.n to <2 x float>
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %5 = tail call nnan nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float undef, float undef>, <8 x float> <float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float undef, float undef>)
  %6 = shufflevector <8 x float> %3, <8 x float> %5, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bk = fmul nnan nsz <8 x float> %6, <float 6.400000e+02, float 6.400000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02> ; 5 uses
  %i.bl = extractelement <8 x float> %i.bk, i64 0
  %i.bm = fadd nsz float %i.bl, %i.aw
  %i.bn = extractelement <8 x float> %i.bk, i64 1
  %i.bo = fadd nsz float %i.ax, %i.bn
  %i.bp = shufflevector <8 x float> %i.bk, <8 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bq = fadd nsz <2 x float> %i.bp, splat (float 5.000000e-01) ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = tail call nsz noundef float @llvm.floor.f32(float %i.br)
  %i.bt = fptosi float %i.bs to i32
  %i.bu = extractelement <2 x float> %i.bq, i64 1
  %i.bv = shl i32 %i.bt, 16
  %i.bw = shufflevector <8 x float> %i.bk, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.bx = fadd nsz <2 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = extractelement <2 x float> %i.bx, i64 1
  %i.ca = tail call nsz noundef float @llvm.floor.f32(float %i.bz)
  %i.cb = fptosi float %i.ca to i32
  %i.cc = shufflevector <8 x float> %i.bk, <8 x float> poison, <2 x i32> <i32 6, i32 7>
  %i.cd = fadd nsz <2 x float> %i.cc, splat (float 5.000000e-01) ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = extractelement <2 x float> %i.cd, i64 1
  %i.cg = shl i32 %i.cb, 16
  %i.ch = tail call nsz noundef float @llvm.floor.f32(float %i.cf)
  %i.ci = tail call nsz noundef float @llvm.floor.f32(float %i.ce)
  %i.cj = tail call nsz noundef float @llvm.floor.f32(float %i.by)
  %i.ck = tail call nsz noundef float @llvm.floor.f32(float %i.bu)
  %i.cl = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.cj, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.ci, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ch, i64 3
  %i.cp = fptosi <4 x float> %i.co to <4 x i32>
  %i.cq = shl <4 x i32> %i.cp, <i32 8, i32 0, i32 8, i32 0>
  %i.cr = and <4 x i32> %i.cq, <i32 65280, i32 255, i32 65280, i32 255> ; 4 uses
  %i.cs = extractelement <4 x i32> %i.cr, i64 0
  %i.ct = or disjoint i32 %i.cs, %i.bv
  %i.cu = extractelement <4 x i32> %i.cr, i64 1
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = or i32 %i.cv, -16777216                 ; 8 uses
  %i.cx = extractelement <4 x i32> %i.cr, i64 2
  %i.cy = or disjoint i32 %i.cx, %i.cg
  %i.cz = extractelement <4 x i32> %i.cr, i64 3
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = or i32 %i.da, -16777216                 ; 8 uses
  %i.dc = extractelement <4 x float> %i.bg, i64 0
  %i.dd = fmul nnan nsz float %i.dc, 2.550000e+02
  %i.de = fadd nsz float %i.dd, 5.000000e-01
  %i.df = tail call nsz noundef float @llvm.floor.f32(float %i.de)
  %i.dg = fptosi float %i.df to i32
  %i.dh = fmul nnan nsz <2 x float> %i.bi, splat (float 2.550000e+02) ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  %i.dj = fadd nsz float %i.di, 5.000000e-01
  %i.dk = tail call nsz noundef float @llvm.floor.f32(float %i.dj)
  %i.dl = fptosi float %i.dk to i32
  %i.dm = extractelement <2 x float> %i.dh, i64 1
  %i.dn = fadd nsz float %i.dm, 5.000000e-01
  %i.do = tail call nsz noundef float @llvm.floor.f32(float %i.dn)
  %i.dp = fptosi float %i.do to i32
  %i.dq = shl i32 %i.dg, 16
  %i.dr = shl i32 %i.dl, 8
  %i.ds = and i32 %i.dr, 65280
  %i.dt = or disjoint i32 %i.ds, %i.dq
  %i.du = and i32 %i.dp, 255
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = or i32 %i.dv, -16777216                 ; 12 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.dy = load i16, ptr %i.dx, align 8, !tbaa !119 ; 3 uses
  %i.dz = zext i16 %i.dy to i32                   ; 5 uses
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = mul nuw nsw i32 %i.ea, %i.dz            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.d
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %narrow = add nuw i32 %i.ec, 63
  %i.ed = zext i32 %narrow to i64                 ; 2 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = and i64 %i.ee, 536870904
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #25 ; 3 uses
  %i.eh = lshr i64 %i.ed, 6                       ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  %.idx.i.i = shl nuw nsw i64 %i.eh, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %.idx.i.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %.noexc, %bb.d
  %.sroa.19511.0 = phi ptr [ null, %bb.d ], [ %i.ei, %.noexc ] ; 4 uses
  %.sroa.0502.0 = phi ptr [ null, %bb.d ], [ %i.eg, %.noexc ] ; 10 uses
  %i.ej = sub i16 0, %i.dy                        ; 2 uses
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.dz
  br i1 %i.el, label %.lr.ph637, label %._crit_edge638

.lr.ph637:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.em = sext i16 %i.am to i32
  %i.en = sext i16 %i.al to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 452
  br label %bb.f

._crit_edge638:                                   ; preds = %._crit_edge, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %.lcssa633 = phi i32 [ %i.dz, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ], [ %.pre-phi, %._crit_edge ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !108 ; 18 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !129 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 11 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !130 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 16 uses
  %i.ey = shl nuw nsw i32 %i.au, 4
  %i.ez = mul nuw nsw i32 %i.ey, %.lcssa633
  %i.fa = mul i32 %i.ez, %.lcssa633               ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 10 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !142
  %i.fe = load ptr, ptr %i.eu, align 8, !tbaa !145 ; 6 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = sdiv exact i64 %i.fh, 40
  %i.fj = icmp ult i64 %i.fi, %i.fb
  br i1 %i.fj, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %._crit_edge638
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !146 ; 3 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.fg
  %i.fo = mul nuw nsw i64 %i.fb, 40
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #25
          to label %.noexc341 unwind label %bb.n  ; 5 uses

.noexc341:                                        ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.fe, %i.fl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc341, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i ], [ %i.fp, %.noexc341 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.fe, %.noexc341 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !147, !alias.scope !148
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.fq, %i.fl
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc341
  %.not.i8.i = icmp eq ptr %i.fe, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fh) #22
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.fp, ptr %i.eu, align 8, !tbaa !145
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  store ptr %i.fs, ptr %i.fk, align 8, !tbaa !146
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %i.fb
  store ptr %i.ft, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

bb.f:                                             ; preds = %.lr.ph637, %._crit_edge
  %i.fu = phi i16 [ %i.dy, %.lr.ph637 ], [ %i.gi, %._crit_edge ] ; 3 uses
  %i.fv = phi i32 [ %i.dz, %.lr.ph637 ], [ %.pre-phi, %._crit_edge ] ; 3 uses
  %i.fw = phi i32 [ %i.ek, %.lr.ph637 ], [ %i.gk, %._crit_edge ] ; 2 uses
  %.0256636 = phi i16 [ %i.ej, %.lr.ph637 ], [ %i.gj, %._crit_edge ]
  %i.fx = add nsw i32 %i.fv, %i.fw
  %i.fy = shl nuw nsw i32 %i.fv, 1
  %i.fz = mul i32 %i.fy, %i.fx
  %i.ga = add nsw i32 %i.fz, %i.fv
  %i.gb = sub i16 0, %i.fu                        ; 2 uses
  %i.gc = sext i16 %i.gb to i32                   ; 2 uses
  %i.gd = zext i16 %i.fu to i32                   ; 2 uses
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.gf = add nsw i32 %i.fw, %i.en
  %i.gg = sitofp nsz i32 %i.gf to float
  %i.gh = fmul nnan nsz float %i.gg, 3.200000e-01
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.f
  %.pre-phi = phi i32 [ %i.gd, %bb.f ], [ %i.hk, %_ZNSt14_Bit_referenceaSEb.exit ] ; 3 uses
  %i.gi = phi i16 [ %i.fu, %bb.f ], [ %i.hj, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.gj = add i16 %.0256636, 1                    ; 2 uses
  %i.gk = sext i16 %i.gj to i32                   ; 2 uses
  %i.gl = icmp sgt i32 %.pre-phi, %i.gk
  br i1 %i.gl, label %bb.f, label %._crit_edge638, !llvm.loop !153

bb.g:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %i.gm = phi i32 [ %i.gc, %.lr.ph ], [ %i.hi, %_ZNSt14_Bit_referenceaSEb.exit ] ; 2 uses
  %.0257635 = phi i16 [ %i.gb, %.lr.ph ], [ %i.hh, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.gn = add nsw i32 %i.gm, %i.em
  %i.go = sitofp nsz i32 %i.gn to float
  %i.gp = fmul nnan nsz float %i.go, 3.200000e-01
  %i.gq = load i32, ptr %i.eo, align 4, !tbaa !58
  %i.gr = invoke noundef float @_Z15noise2d_fractalffiifb(float noundef %i.gp, float noundef %i.gh, i32 noundef %i.gq, i32 noundef 3, float noundef 5.000000e-01, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.gs = fdiv nsz float %i.gr, 1.750000e+00
  %i.gt = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float 5.000000e-01, float 5.000000e-01)
  %i.gu = load float, ptr %i.ep, align 4, !tbaa !154
  %i.gv = fcmp nsz olt float %i.gt, %i.gu
  %i.gw = add i32 %i.ga, %i.gm                    ; 2 uses
  %i.gx = lshr i32 %i.gw, 6
  %.zext = zext nneg i32 %i.gx to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext ; 3 uses
  %i.gz = and i32 %i.gw, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha                    ; 2 uses
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hc = load i64, ptr %i.gy, align 8, !tbaa !104
  %i.hd = or i64 %i.hc, %i.hb
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.j:                                             ; preds = %bb.h
  %i.he = xor i64 %i.hb, -1
  %i.hf = load i64, ptr %i.gy, align 8, !tbaa !104
  %i.hg = and i64 %i.hf, %i.he
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.i, %bb.j
  %storemerge = phi i64 [ %i.hg, %bb.j ], [ %i.hd, %bb.i ]
  store i64 %storemerge, ptr %i.gy, align 8, !tbaa !104
  %i.hh = add i16 %.0257635, 1                    ; 2 uses
  %i.hi = sext i16 %i.hh to i32                   ; 2 uses
  %i.hj = load i16, ptr %i.dx, align 8, !tbaa !119 ; 2 uses
  %i.hk = zext i16 %i.hj to i32                   ; 2 uses
  %i.hl = icmp slt i32 %i.hi, %i.hk
  br i1 %i.hl, label %bb.g, label %._crit_edge, !llvm.loop !155

bb.k:                                             ; preds = %bb.g
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %._crit_edge638
  %i.hn = phi ptr [ %i.fp, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.fe, %._crit_edge638 ]
  %i.ho = lshr exact i32 %i.fa, 2
  %i.hp = mul i32 %i.ho, 6
  %i.hq = zext i32 %i.hp to i64                   ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ew, i64 48 ; 9 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !156
  %i.ht = load ptr, ptr %i.ex, align 8, !tbaa !159 ; 4 uses
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = ashr exact i64 %i.hw, 1
  %i.hy = icmp ult i64 %i.hx, %i.hq
  br i1 %i.hy, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !160
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.hv                    ; 3 uses
  %i.id = shl nuw nsw i64 %i.hq, 1
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #25
          to label %.noexc344 unwind label %bb.n  ; 4 uses

.noexc344:                                        ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.if = icmp sgt i64 %i.ic, 0
  br i1 %i.if, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %.noexc344
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ie, ptr align 2 %i.ht, i64 %i.ic, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.l, %.noexc344
  %.not.i8.i343 = icmp eq ptr %i.ht, null
  br i1 %.not.i8.i343, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hw) #22
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.ie, ptr %i.ex, align 8, !tbaa !159
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ic
  store ptr %i.ig, ptr %i.hz, align 8, !tbaa !160
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.hq
  store ptr %i.ih, ptr %i.hr, align 8, !tbaa !156
  %.pre = load ptr, ptr %i.eu, align 8, !tbaa !145
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.ii = phi ptr [ %.pre, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i ], [ %i.hn, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 15 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.ik, %i.ii
  br i1 %.not.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !146
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.il = load i16, ptr %i.dx, align 8, !tbaa !119 ; 3 uses
  %i.im = sub i16 0, %i.il                        ; 2 uses
  %i.in = sext i16 %i.im to i32
  %i.io = zext i16 %i.il to i32
  %i.ip = icmp slt i32 %i.in, %i.io
  br i1 %i.ip, label %.lr.ph656, label %._crit_edge657

.lr.ph656:                                        ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 27
  br label %bb.o

._crit_edge657:                                   ; preds = %._crit_edge654, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  %i.iu = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef ptr %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc345 unwind label %bb.ba, !inline_history !161

.noexc345:                                        ; preds = %._crit_edge657
  invoke void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ix)
          to label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit unwind label %bb.ba

bb.n:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.o:                                             ; preds = %.lr.ph656, %._crit_edge654
  %i.iz = phi i16 [ %i.il, %.lr.ph656 ], [ %i.jg, %._crit_edge654 ] ; 5 uses
  %.0261655 = phi i16 [ %i.im, %.lr.ph656 ], [ %i.jh, %._crit_edge654 ] ; 4 uses
  %i.ja = sub i16 0, %i.iz                        ; 2 uses
  %i.jb = sext i16 %i.ja to i32
  %i.jc = zext i16 %i.iz to i32                   ; 3 uses
  %i.jd = icmp slt i32 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph653, label %._crit_edge654

.lr.ph653:                                        ; preds = %bb.o
  %i.je = xor i16 %.0261655, -1
  %i.jf = icmp slt i16 %.0261655, 0
  br label %bb.p

._crit_edge654.loopexit:                          ; preds = %bb.av
  %.pre758 = zext i16 %i.rz to i32
  br label %._crit_edge654

._crit_edge654:                                   ; preds = %._crit_edge654.loopexit, %bb.o
  %.pre-phi759 = phi i32 [ %.pre758, %._crit_edge654.loopexit ], [ %i.jc, %bb.o ]
  %i.jg = phi i16 [ %i.rz, %._crit_edge654.loopexit ], [ %i.iz, %bb.o ]
  %i.jh = add i16 %.0261655, 1                    ; 2 uses
  %i.ji = sext i16 %i.jh to i32
  %i.jj = icmp sgt i32 %.pre-phi759, %i.ji
  br i1 %i.jj, label %bb.o, label %._crit_edge657, !llvm.loop !162

bb.p:                                             ; preds = %.lr.ph653, %bb.av
  %i.jk = phi i16 [ %i.iz, %.lr.ph653 ], [ %i.rz, %bb.av ]
  %i.jl = phi i16 [ %i.iz, %.lr.ph653 ], [ %i.sa, %bb.av ] ; 3 uses
  %i.jm = phi i32 [ %i.jc, %.lr.ph653 ], [ %i.sd, %bb.av ] ; 3 uses
  %.0260651 = phi i16 [ %i.ja, %.lr.ph653 ], [ %i.sb, %bb.av ] ; 4 uses
  %i.jn = add i16 %i.jl, %i.je
  %.0259 = select i1 %i.jf, i16 %.0261655, i16 %i.jn ; 2 uses
  %i.jo = xor i16 %.0260651, -1
  %i.jp = add i16 %i.jl, %i.jo
  %i.jq = icmp slt i16 %.0260651, 0
  %.0258 = select i1 %i.jq, i16 %.0260651, i16 %i.jp ; 2 uses
  %i.jr = sext i16 %.0259 to i32                  ; 11 uses
  %i.js = add nsw i32 %i.jm, %i.jr
  %i.jt = shl nuw nsw i32 %i.jm, 1
  %i.ju = mul i32 %i.jt, %i.js
  %i.jv = sext i16 %.0258 to i32                  ; 11 uses
  %i.jw = add nsw i32 %i.jm, %i.jv
  %i.jx = add i32 %i.jw, %i.ju                    ; 2 uses
  %i.jy = lshr i32 %i.jx, 6
  %.zext558 = zext nneg i32 %i.jy to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext558
  %i.ka = and i32 %i.jx, 63
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl nuw i64 1, %i.kb
  %i.kd = load i64, ptr %i.jz, align 8, !tbaa !104
  %i.ke = and i64 %i.kd, %i.kc
  %.not569 = icmp eq i64 %i.ke, 0
  br i1 %.not569, label %bb.av, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p
  %i.kf = sitofp nsz i16 %.0258 to float
  %i.kg = sitofp nsz i16 %.0259 to float
  %i.kh = fmul nnan nsz float %i.kf, 6.400000e+02
  %i.ki = fadd nsz float %i.bm, %i.kh             ; 4 uses
  %i.kj = fmul nnan nsz float %i.kg, 6.400000e+02
  %i.kk = fadd nsz float %i.bo, %i.kj
  %i.kl = load i8, ptr %i.an, align 1, !tbaa !117, !range !118, !noundef !132
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = load float, ptr %i.aq, align 4          ; 2 uses
  %i.ko = fcmp nsz oge float %i.kn, f0x3C23D70A
  %i.kp = select i1 %i.km, i1 %i.ko, i1 false
  %i.kq = fmul nsz float %i.kn, 1.000000e+01
  %i.kr = select nsz i1 %i.kp, float %i.kq, float 0.000000e+00 ; 10 uses
  %i.ks = load ptr, ptr @g_settings, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.iq, ptr %1, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.iq, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  store i64 11, ptr %i.ir, align 8, !tbaa !80
  store i8 0, ptr %i.it, align 1, !tbaa !57
  %i.kt = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.s       ; 4 uses

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ku = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.iq
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.kw = load i64, ptr %i.iq, align 8, !tbaa !57
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ky = add nsw i32 %i.jv, -1
  %i.kz = add nsw i32 %i.jr, 1                    ; 3 uses
  %i.la = add nsw i32 %i.jv, 1                    ; 3 uses
  %i.lb = add nsw i32 %i.jr, -1
  %i.lc = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.kk, i64 0 ; 4 uses
  %i.ld = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.le = insertelement <2 x float> <float 3.200000e+02, float poison>, float %i.kr, i64 1
  br label %bb.t

bb.r:                                             ; preds = %.loopexit606
  %.pre753 = load i16, ptr %i.dx, align 8, !tbaa !119 ; 2 uses
  br label %bb.av

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.iq
  br i1 %i.lh, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.s
  %i.li = load i64, ptr %i.iq, align 8, !tbaa !57
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #22
  br label %.thread

.thread:                                          ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.da

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit606
  %.sroa.282.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.282.6, %.loopexit606 ] ; 5 uses
  %.sroa.207.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.207.6, %.loopexit606 ] ; 5 uses
  %.sroa.136.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.136.6, %.loopexit606 ] ; 9 uses
  %.sroa.65.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.65.6, %.loopexit606 ] ; 9 uses
  %.0255650 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ry, %.loopexit606 ] ; 2 uses
  switch i32 %.0255650, label %default.unreachable [
    i32 0, label %.preheader.preheader
    i32 1, label %bb.u
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 4, label %bb.af
    i32 5, label %.preheader624.preheader
  ]

.preheader.preheader:                             ; preds = %bb.t
  br label %.preheader624.preheader

bb.u:                                             ; preds = %bb.t
  %i.lk = load i16, ptr %i.dx, align 8, !tbaa !119
  %i.ll = zext i16 %i.lk to i32                   ; 6 uses
  %i.lm = sub nsw i32 0, %i.ll                    ; 2 uses
  %.not307 = icmp sge i32 %i.jv, %i.lm
  %i.ln = icmp slt i32 %i.jv, %i.ll
  %or.cond = and i1 %.not307, %i.ln
  br i1 %or.cond, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not308.not = icmp sle i32 %i.jr, %i.lm
  %.not309 = icmp sgt i32 %i.jr, %i.ll
  %or.cond325 = or i1 %.not308.not, %.not309
  br i1 %or.cond325, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lo = add nsw i32 %i.lb, %i.ll
  %i.lp = shl nuw nsw i32 %i.ll, 1
  %i.lq = mul i32 %i.lp, %i.lo
  %i.lr = add nsw i32 %i.ll, %i.jv
  %i.ls = add i32 %i.lr, %i.lq                    ; 2 uses
  %i.lt = lshr i32 %i.ls, 6
  %.zext560 = zext nneg i32 %i.lt to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext560
  %i.lv = and i32 %i.ls, 63
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = shl nuw i64 1, %i.lw
  %i.ly = load i64, ptr %i.lu, align 8, !tbaa !104
  %i.lz = and i64 %i.ly, %i.lx
  %.not580 = icmp eq i64 %i.lz, 0
  br i1 %.not580, label %bb.x, label %.loopexit606

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  br i1 %i.kt, label %.preheader612.preheader, label %.preheader624.preheader

.preheader612.preheader:                          ; preds = %bb.x
  br label %.preheader624.preheader

bb.y:                                             ; preds = %bb.t
  %i.ma = load i16, ptr %i.dx, align 8, !tbaa !119
  %i.mb = zext i16 %i.ma to i32                   ; 6 uses
  %i.mc = sub nsw i32 0, %i.mb                    ; 2 uses
  %.not303 = icmp sge i32 %i.la, %i.mc
  %i.md = icmp slt i32 %i.la, %i.mb
  %or.cond326.not575.not578 = and i1 %.not303, %i.md
  %.not304 = icmp sge i32 %i.jr, %i.mc
  %or.cond327.not576 = and i1 %.not304, %or.cond326.not575.not578
  %i.me = icmp slt i32 %i.jr, %i.mb
  %or.cond328 = and i1 %i.me, %or.cond327.not576
  br i1 %or.cond328, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.mf = add nsw i32 %i.mb, %i.jr
  %i.mg = shl nuw nsw i32 %i.mb, 1
  %i.mh = mul i32 %i.mg, %i.mf
  %i.mi = add nsw i32 %i.la, %i.mb
  %i.mj = add i32 %i.mi, %i.mh                    ; 2 uses
  %i.mk = lshr i32 %i.mj, 6
  %.zext562 = zext nneg i32 %i.mk to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext562
  %i.mm = and i32 %i.mj, 63
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = shl nuw i64 1, %i.mn
  %i.mp = load i64, ptr %i.ml, align 8, !tbaa !104
  %i.mq = and i64 %i.mp, %i.mo
  %.not579 = icmp eq i64 %i.mq, 0
  br i1 %.not579, label %bb.aa, label %.loopexit606

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.kt, label %.preheader615.preheader, label %.preheader624.preheader

.preheader615.preheader:                          ; preds = %bb.aa
  br label %.preheader624.preheader

bb.ab:                                            ; preds = %bb.t
  %i.mr = load i16, ptr %i.dx, align 8, !tbaa !119
  %i.ms = zext i16 %i.mr to i32                   ; 6 uses
  %i.mt = sub nsw i32 0, %i.ms                    ; 2 uses
  %.not299 = icmp sge i32 %i.jv, %i.mt
  %i.mu = icmp slt i32 %i.jv, %i.ms
  %or.cond330 = and i1 %.not299, %i.mu
  br i1 %or.cond330, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not300 = icmp sge i32 %i.kz, %i.mt
  %i.mv = icmp slt i32 %i.kz, %i.ms
  %or.cond331 = and i1 %.not300, %i.mv
  br i1 %or.cond331, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mw = add nsw i32 %i.kz, %i.ms
  %i.mx = shl nuw nsw i32 %i.ms, 1
  %i.my = mul i32 %i.mx, %i.mw
  %i.mz = add nsw i32 %i.ms, %i.jv
  %i.na = add i32 %i.mz, %i.my                    ; 2 uses
  %i.nb = lshr i32 %i.na, 6
  %.zext564 = zext nneg i32 %i.nb to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext564
  %i.nd = and i32 %i.na, 63
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl nuw i64 1, %i.ne
  %i.ng = load i64, ptr %i.nc, align 8, !tbaa !104
  %i.nh = and i64 %i.ng, %i.nf
  %.not573 = icmp eq i64 %i.nh, 0
  br i1 %.not573, label %bb.ae, label %.loopexit606

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %i.kt, label %.preheader618.preheader, label %.preheader624.preheader

.preheader618.preheader:                          ; preds = %bb.ae
  br label %.preheader624.preheader

bb.af:                                            ; preds = %bb.t
  %i.ni = load i16, ptr %i.dx, align 8, !tbaa !119
  %i.nj = zext i16 %i.ni to i32                   ; 6 uses
  %i.nk = sub nsw i32 0, %i.nj                    ; 2 uses
  %.not294.not = icmp sgt i32 %i.jv, %i.nk
  %.not295 = icmp sle i32 %i.jv, %i.nj
  %or.cond333.not571 = and i1 %.not294.not, %.not295
  %.not296 = icmp sge i32 %i.jr, %i.nk
  %or.cond334.not570 = and i1 %.not296, %or.cond333.not571
  %i.nl = icmp slt i32 %i.jr, %i.nj
  %or.cond335 = and i1 %i.nl, %or.cond334.not570
  br i1 %or.cond335, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.nm = add nsw i32 %i.nj, %i.jr
  %i.nn = shl nuw nsw i32 %i.nj, 1
  %i.no = mul i32 %i.nn, %i.nm
  %i.np = add nsw i32 %i.ky, %i.nj
  %i.nq = add i32 %i.np, %i.no                    ; 2 uses
  %i.nr = lshr i32 %i.nq, 6
  %.zext566 = zext nneg i32 %i.nr to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext566
  %i.nt = and i32 %i.nq, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl nuw i64 1, %i.nu
  %i.nw = load i64, ptr %i.ns, align 8, !tbaa !104
  %i.nx = and i64 %i.nw, %i.nv
  %.not572 = icmp eq i64 %i.nx, 0
  br i1 %.not572, label %bb.ah, label %.loopexit606

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.kt, label %.preheader621.preheader, label %.preheader624.preheader

.preheader621.preheader:                          ; preds = %bb.ah
  br label %.preheader624.preheader

default.unreachable:                              ; preds = %bb.t
  unreachable

.preheader624.preheader:                          ; preds = %.preheader621.preheader, %bb.ah, %.preheader618.preheader, %bb.ae, %.preheader615.preheader, %bb.aa, %.preheader612.preheader, %bb.x, %bb.t, %.preheader.preheader
  %.sroa.282.5 = phi i32 [ %.sroa.282.0, %.preheader.preheader ], [ %i.dw, %bb.t ], [ %i.cw, %bb.x ], [ %i.db, %bb.aa ], [ %i.cw, %bb.ae ], [ %i.dw, %.preheader612.preheader ], [ %i.dw, %.preheader615.preheader ], [ %i.dw, %.preheader618.preheader ], [ %i.dw, %.preheader621.preheader ], [ %i.db, %bb.ah ] ; 4 uses
  %.sroa.271.4 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ 0.000000e+00, %bb.t ], [ -1.000000e+00, %bb.x ], [ 0.000000e+00, %bb.aa ], [ -1.000000e+00, %bb.ae ], [ -1.000000e+00, %.preheader612.preheader ], [ 0.000000e+00, %.preheader615.preheader ], [ -1.000000e+00, %.preheader618.preheader ], [ 0.000000e+00, %.preheader621.preheader ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %.sroa.260.4 = phi nsz float [ 1.000000e+00, %.preheader.preheader ], [ -1.000000e+00, %bb.t ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %.preheader612.preheader ], [ 0.000000e+00, %.preheader615.preheader ], [ 0.000000e+00, %.preheader618.preheader ], [ 0.000000e+00, %.preheader621.preheader ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %.sroa.249.4 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.x ], [ 1.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %.preheader612.preheader ], [ 1.000000e+00, %.preheader615.preheader ], [ 0.000000e+00, %.preheader618.preheader ], [ -1.000000e+00, %.preheader621.preheader ], [ -1.000000e+00, %bb.ah ] ; 4 uses
  %.sroa.220728.0 = phi nsz float [ 3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.t ], [ -3.200000e+02, %bb.x ], [ 3.200000e+02, %bb.aa ], [ 3.200000e+02, %bb.ae ], [ -3.200000e+02, %.preheader612.preheader ], [ 3.200000e+02, %.preheader615.preheader ], [ 3.200000e+02, %.preheader618.preheader ], [ -3.200000e+02, %.preheader621.preheader ], [ -3.200000e+02, %bb.ah ]
  %.sroa.207.5 = phi i32 [ %.sroa.207.0, %.preheader.preheader ], [ %i.dw, %bb.t ], [ %i.cw, %bb.x ], [ %i.db, %bb.aa ], [ %i.cw, %bb.ae ], [ %i.dw, %.preheader612.preheader ], [ %i.dw, %.preheader615.preheader ], [ %i.dw, %.preheader618.preheader ], [ %i.dw, %.preheader621.preheader ], [ %i.db, %bb.ah ] ; 4 uses
  %.sroa.136.5 = phi i32 [ %.sroa.136.0, %.preheader.preheader ], [ %i.dw, %bb.t ], [ %i.cw, %bb.x ], [ %i.db, %bb.aa ], [ %i.cw, %bb.ae ], [ %.sroa.136.0, %.preheader612.preheader ], [ %.sroa.136.0, %.preheader615.preheader ], [ %.sroa.136.0, %.preheader618.preheader ], [ %.sroa.136.0, %.preheader621.preheader ], [ %i.db, %bb.ah ] ; 4 uses
  %.sroa.85.0 = phi nsz float [ %i.kr, %.preheader.preheader ], [ 0.000000e+00, %bb.t ], [ %i.kr, %bb.x ], [ %i.kr, %bb.aa ], [ %i.kr, %bb.ae ], [ %i.kr, %.preheader612.preheader ], [ %i.kr, %.preheader615.preheader ], [ %i.kr, %.preheader618.preheader ], [ %i.kr, %.preheader621.preheader ], [ %i.kr, %bb.ah ]
  %.sroa.74684.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ -3.200000e+02, %bb.t ], [ 3.200000e+02, %bb.x ], [ 3.200000e+02, %bb.aa ], [ -3.200000e+02, %bb.ae ], [ 3.200000e+02, %.preheader612.preheader ], [ 3.200000e+02, %.preheader615.preheader ], [ -3.200000e+02, %.preheader618.preheader ], [ -3.200000e+02, %.preheader621.preheader ], [ -3.200000e+02, %bb.ah ]
  %.sroa.65.5 = phi i32 [ %.sroa.65.0, %.preheader.preheader ], [ %i.dw, %bb.t ], [ %i.cw, %bb.x ], [ %i.db, %bb.aa ], [ %i.cw, %bb.ae ], [ %.sroa.65.0, %.preheader612.preheader ], [ %.sroa.65.0, %.preheader615.preheader ], [ %.sroa.65.0, %.preheader618.preheader ], [ %.sroa.65.0, %.preheader621.preheader ], [ %i.db, %bb.ah ] ; 4 uses
  %.sroa.0.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.t ], [ -3.200000e+02, %bb.x ], [ 3.200000e+02, %bb.aa ], [ 3.200000e+02, %bb.ae ], [ -3.200000e+02, %.preheader612.preheader ], [ 3.200000e+02, %.preheader615.preheader ], [ 3.200000e+02, %.preheader618.preheader ], [ -3.200000e+02, %.preheader621.preheader ], [ -3.200000e+02, %bb.ah ]
  %i.ny = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.t ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.x ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.aa ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ae ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader612.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader615.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader618.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader621.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ah ]
  %i.nz = phi <2 x float> [ %i.le, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.t ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.x ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.aa ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ae ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader612.preheader ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader615.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader618.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader621.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ah ]
  %7 = phi <4 x float> [ <float 3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.t ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.x ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.aa ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ae ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader612.preheader ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader615.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader618.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader621.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ah ]
  %i.oa = phi <4 x float> [ <float 3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.t ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.x ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.aa ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ae ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader612.preheader ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader615.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader618.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader621.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ah ]
  %i.ob = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.t ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.x ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.aa ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ae ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader612.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader615.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader618.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader621.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ah ]
  %i.oc = load float, ptr %i.is, align 8, !tbaa !105
  %i.od = fmul nsz float %i.oc, 1.000000e+01      ; 2 uses
  %i.oe = fadd nsz float %i.ki, %.sroa.0.0        ; 2 uses
  %i.of = fadd nsz float %i.od, %.sroa.85.0       ; 4 uses
  %i.og = fadd nsz <4 x float> %i.lc, %i.ob       ; 2 uses
  %i.oh = load ptr, ptr %i.ij, align 8, !tbaa !146 ; 13 uses
  %i.oi = load ptr, ptr %i.fc, align 8, !tbaa !142
  %.not.i = icmp eq ptr %i.oh, %i.oi
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader624.preheader
  store float %i.oe, ptr %i.oh, align 4, !tbaa !14
  %.sroa.14.0..sroa_idx664 = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store float %i.of, ptr %.sroa.14.0..sroa_idx664, align 4, !tbaa !14
  %.sroa.23.0..sroa_idx666 = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = extractelement <4 x float> %i.og, i64 0
  store float %i.oj, ptr %.sroa.23.0..sroa_idx666, align 4, !tbaa !14
  %.sroa.32.0..sroa_idx668 = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store float %.sroa.249.4, ptr %.sroa.32.0..sroa_idx668, align 4, !tbaa !14
  %.sroa.43.0..sroa_idx670 = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store float %.sroa.260.4, ptr %.sroa.43.0..sroa_idx670, align 4, !tbaa !14
  %.sroa.54.0..sroa_idx672 = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  store float %.sroa.271.4, ptr %.sroa.54.0..sroa_idx672, align 4, !tbaa !14
  %.sroa.65.0..sroa_idx674 = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx674, align 4, !tbaa !101
  %.sroa.71.0..sroa_idx676 = getelementptr inbounds nuw i8, ptr %i.oh, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx676, align 4, !tbaa !14
  %.sroa.73.0..sroa_idx680 = getelementptr inbounds nuw i8, ptr %i.oh, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx680, align 4, !tbaa !107
  %i.ok = load ptr, ptr %i.ij, align 8, !tbaa !146
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 40 ; 2 uses
  store ptr %i.ol, ptr %i.ij, align 8, !tbaa !146
  %.pre750 = load ptr, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.aj:                                            ; preds = %.preheader624.preheader
  %i.om = load ptr, ptr %i.eu, align 8, !tbaa !145 ; 5 uses
  %i.on = ptrtoint ptr %i.oh to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo                    ; 4 uses
  %i.oq = icmp eq i64 %i.op, 9223372036854775800
  br i1 %i.oq, label %bb.ak, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.at, %bb.aq, %bb.an, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.noexc376 unwind label %.loopexit.split-lp608

.noexc376:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.or = sdiv exact i64 %i.op, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.or, i64 1)
  %i.os = add nsw i64 %.sroa.speculated.i.i.i, %i.or ; 2 uses
  %i.ot = icmp ult i64 %i.os, %i.or
  %i.ou = call i64 @llvm.umin.i64(i64 %i.os, i64 230584300921369395)
  %i.ov = select i1 %i.ot, i64 230584300921369395, i64 %i.ou ; 3 uses
  %.not.i.i.i375 = icmp ne i64 %i.ov, 0
  call void @llvm.assume(i1 %.not.i.i.i375)
  %i.ow = mul nuw nsw i64 %i.ov, 40
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ow) #25
          to label %.noexc377 unwind label %.loopexit607 ; 5 uses

.noexc377:                                        ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.op ; 6 uses
  store float %i.oe, ptr %i.oy, align 4, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  store float %i.of, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !14
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store <4 x float> %i.og, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !14
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx, align 4, !tbaa !101
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx, align 4, !tbaa !14
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !107
  %.not10.i.i.i.i.i = icmp eq ptr %i.om, %i.oh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc377, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i ], [ %i.ox, %.noexc377 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i ], [ %i.om, %.noexc377 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !147, !alias.scope !163
  %i.oz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oz, %i.oh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc377
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ox, %.noexc377 ], [ %i.pa, %.lr.ph.i.i.i.i.i ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.op) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ox, ptr %i.eu, align 8, !tbaa !145
  store ptr %i.pb, ptr %i.ij, align 8, !tbaa !146
  %i.pc = getelementptr inbounds nuw [40 x i8], ptr %i.ox, i64 %i.ov ; 2 uses
  store ptr %i.pc, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ai
  %i.pd = phi ptr [ %i.pc, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre750, %bb.ai ] ; 4 uses
  %i.pe = phi ptr [ %i.pb, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ol, %bb.ai ] ; 10 uses
  %i.pf = fadd nsz float %i.ki, %.sroa.74684.0    ; 2 uses
  %i.pg = fadd nsz <4 x float> %i.lc, %i.oa       ; 2 uses
  %.not.i.1 = icmp eq ptr %i.pe, %i.pd
  br i1 %.not.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  store float %i.pf, ptr %i.pe, align 4, !tbaa !14
  %.sroa.85.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store float %i.of, ptr %.sroa.85.40..sroa_idx, align 4, !tbaa !14
  %.sroa.94.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = extractelement <4 x float> %i.pg, i64 0
  store float %i.ph, ptr %.sroa.94.40..sroa_idx, align 4, !tbaa !14
  %.sroa.103.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store float %.sroa.249.4, ptr %.sroa.103.40..sroa_idx, align 4, !tbaa !14
  %.sroa.114.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store float %.sroa.260.4, ptr %.sroa.114.40..sroa_idx, align 4, !tbaa !14
  %.sroa.125.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  store float %.sroa.271.4, ptr %.sroa.125.40..sroa_idx, align 4, !tbaa !14
  %.sroa.136.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx, align 4, !tbaa !101
  %.sroa.142.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx, align 4, !tbaa !14
  %.sroa.144.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx, align 4, !tbaa !107
  %i.pi = load ptr, ptr %i.ij, align 8, !tbaa !146
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 40 ; 2 uses
  store ptr %i.pj, ptr %i.ij, align 8, !tbaa !146
  %.pre751 = load ptr, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

bb.an:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  %i.pk = load ptr, ptr %i.eu, align 8, !tbaa !145 ; 5 uses
  %i.pl = ptrtoint ptr %i.pd to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 4 uses
  %i.po = icmp eq i64 %i.pn, 9223372036854775800
  br i1 %i.po, label %bb.ak, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.an
  %i.pp = sdiv exact i64 %i.pn, 40                ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.pq = add nsw i64 %.sroa.speculated.i.i.i.1, %i.pp ; 2 uses
  %i.pr = icmp ult i64 %i.pq, %i.pp
  %i.ps = call i64 @llvm.umin.i64(i64 %i.pq, i64 230584300921369395)
  %i.pt = select i1 %i.pr, i64 230584300921369395, i64 %i.ps ; 3 uses
  %.not.i.i.i375.1 = icmp ne i64 %i.pt, 0
  call void @llvm.assume(i1 %.not.i.i.i375.1)
  %i.pu = mul nuw nsw i64 %i.pt, 40
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #25
          to label %.noexc377.1 unwind label %.loopexit607 ; 5 uses

.noexc377.1:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pn ; 6 uses
  store float %i.pf, ptr %i.pw, align 4, !tbaa !14
  %.sroa.85.40..sroa_idx686 = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  store float %i.of, ptr %.sroa.85.40..sroa_idx686, align 4, !tbaa !14
  %.sroa.94.40..sroa_idx688 = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store <4 x float> %i.pg, ptr %.sroa.94.40..sroa_idx688, align 4, !tbaa !14
  %.sroa.136.40..sroa_idx696 = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx696, align 4, !tbaa !101
  %.sroa.142.40..sroa_idx698 = getelementptr inbounds nuw i8, ptr %i.pw, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx698, align 4, !tbaa !14
  %.sroa.144.40..sroa_idx702 = getelementptr inbounds nuw i8, ptr %i.pw, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx702, align 4, !tbaa !107
  %.not10.i.i.i.i.i.1 = icmp eq ptr %i.pk, %i.pd
  br i1 %.not10.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.noexc377.1, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.1 ], [ %i.pv, %.noexc377.1 ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.1 ], [ %i.pk, %.noexc377.1 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.1, i64 40, i1 false), !tbaa.struct !147, !alias.scope !163
  %i.px = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 40 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.px, %i.pd
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !152

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %.noexc377.1
  %.0.lcssa.i.i.i.i.i.1 = phi ptr [ %i.pv, %.noexc377.1 ], [ %i.py, %.lr.ph.i.i.i.i.i.1 ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i23.i.i.1 = icmp eq ptr %i.pk, null
  br i1 %.not.i23.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pn) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1: ; preds = %bb.ao, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  store ptr %i.pv, ptr %i.eu, align 8, !tbaa !145
  store ptr %i.pz, ptr %i.ij, align 8, !tbaa !146
  %i.qa = getelementptr inbounds nuw [40 x i8], ptr %i.pv, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, %bb.am
  %i.qb = phi ptr [ %i.qa, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %.pre751, %bb.am ] ; 4 uses
  %i.qc = phi ptr [ %i.pz, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %i.pj, %bb.am ] ; 6 uses
  %i.qd = insertelement <2 x float> %i.ld, float %i.od, i64 1
  %i.qe = fadd nsz <2 x float> %i.qd, %i.nz       ; 4 uses
  %8 = fadd nsz <4 x float> %i.lc, %7             ; 2 uses
  %.not.i.2 = icmp eq ptr %i.qc, %i.qb
  br i1 %.not.i.2, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  store <2 x float> %i.qe, ptr %i.qc, align 4, !tbaa !14
  %.sroa.165.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store <4 x float> %8, ptr %.sroa.165.80..sroa_idx, align 4, !tbaa !14
  %.sroa.207.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i32 %.sroa.207.5, ptr %.sroa.207.80..sroa_idx, align 4, !tbaa !101
  %.sroa.217.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qc, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx, align 4, !tbaa !14
  %.sroa.219.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qc, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx, align 4, !tbaa !107
  %i.qf = load ptr, ptr %i.ij, align 8, !tbaa !146
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 40 ; 2 uses
  store ptr %i.qg, ptr %i.ij, align 8, !tbaa !146
  %.pre752 = load ptr, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

bb.aq:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  %i.qh = load ptr, ptr %i.eu, align 8, !tbaa !145 ; 5 uses
  %i.qi = ptrtoint ptr %i.qb to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj                    ; 4 uses
  %i.ql = icmp eq i64 %i.qk, 9223372036854775800
  br i1 %i.ql, label %bb.ak, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.aq
  %i.qm = sdiv exact i64 %i.qk, 40                ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.qm, i64 1)
  %i.qn = add nsw i64 %.sroa.speculated.i.i.i.2, %i.qm ; 2 uses
  %i.qo = icmp ult i64 %i.qn, %i.qm
  %i.qp = call i64 @llvm.umin.i64(i64 %i.qn, i64 230584300921369395)
  %i.qq = select i1 %i.qo, i64 230584300921369395, i64 %i.qp ; 3 uses
  %.not.i.i.i375.2 = icmp ne i64 %i.qq, 0
  call void @llvm.assume(i1 %.not.i.i.i375.2)
  %i.qr = mul nuw nsw i64 %i.qq, 40
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #25
          to label %.noexc377.2 unwind label %.loopexit607 ; 5 uses

.noexc377.2:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qk ; 8 uses
  store <2 x float> %i.qe, ptr %i.qt, align 4, !tbaa !14
  %.sroa.165.80..sroa_idx710 = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %9 = extractelement <4 x float> %8, i64 0
  store float %9, ptr %.sroa.165.80..sroa_idx710, align 4, !tbaa !14
  %.sroa.174.80..sroa_idx712 = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store float %.sroa.249.4, ptr %.sroa.174.80..sroa_idx712, align 4, !tbaa !14
  %.sroa.185.80..sroa_idx714 = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store float %.sroa.260.4, ptr %.sroa.185.80..sroa_idx714, align 4, !tbaa !14
  %.sroa.196.80..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.qt, i64 20
  store float %.sroa.271.4, ptr %.sroa.196.80..sroa_idx716, align 4, !tbaa !14
  %.sroa.207.80..sroa_idx718 = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  store i32 %.sroa.207.5, ptr %.sroa.207.80..sroa_idx718, align 4, !tbaa !101
  %.sroa.217.80..sroa_idx720 = getelementptr inbounds nuw i8, ptr %i.qt, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx720, align 4, !tbaa !14
  %.sroa.219.80..sroa_idx724 = getelementptr inbounds nuw i8, ptr %i.qt, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx724, align 4, !tbaa !107
  %.not10.i.i.i.i.i.2 = icmp eq ptr %i.qh, %i.qb
  br i1 %.not10.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.noexc377.2, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.2 ], [ %i.qs, %.noexc377.2 ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i.2 ], [ %i.qh, %.noexc377.2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.2, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.2, i64 40, i1 false), !tbaa.struct !147, !alias.scope !163
  %i.qu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 40 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.qu, %i.qb
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !152

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %.noexc377.2
  %.0.lcssa.i.i.i.i.i.2 = phi ptr [ %i.qs, %.noexc377.2 ], [ %i.qv, %.lr.ph.i.i.i.i.i.2 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i23.i.i.2 = icmp eq ptr %i.qh, null
  br i1 %.not.i23.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qk) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2: ; preds = %bb.ar, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  store ptr %i.qs, ptr %i.eu, align 8, !tbaa !145
  store ptr %i.qw, ptr %i.ij, align 8, !tbaa !146
  %i.qx = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %i.qq ; 2 uses
  store ptr %i.qx, ptr %i.fc, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, %bb.ap
  %i.qy = phi ptr [ %i.qx, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %.pre752, %bb.ap ] ; 4 uses
  %i.qz = phi ptr [ %i.qw, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %i.qg, %bb.ap ] ; 10 uses
  %i.ra = fadd nsz float %i.ki, %.sroa.220728.0   ; 2 uses
  %i.rb = fadd nsz <4 x float> %i.lc, %i.ny       ; 2 uses
  %.not.i.3 = icmp eq ptr %i.qz, %i.qy
  br i1 %.not.i.3, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  store float %i.ra, ptr %i.qz, align 4, !tbaa !14
  %.sroa.231.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rc = extractelement <2 x float> %i.qe, i64 1
  store float %i.rc, ptr %.sroa.231.120..sroa_idx, align 4, !tbaa !14
  %.sroa.240.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rd = extractelement <4 x float> %i.rb, i64 0
  store float %i.rd, ptr %.sroa.240.120..sroa_idx, align 4, !tbaa !14
  %.sroa.249.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  store float %.sroa.249.4, ptr %.sroa.249.120..sroa_idx, align 4, !tbaa !14
  %.sroa.260.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store float %.sroa.260.4, ptr %.sroa.260.120..sroa_idx, align 4, !tbaa !14
  %.sroa.271.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 20
  store float %.sroa.271.4, ptr %.sroa.271.120..sroa_idx, align 4, !tbaa !14
  %.sroa.282.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  store i32 %.sroa.282.5, ptr %.sroa.282.120..sroa_idx, align 4, !tbaa !101
  %.sroa.292.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx, align 4, !tbaa !14
  %.sroa.294.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx, align 4, !tbaa !107
  %i.re = load ptr, ptr %i.ij, align 8, !tbaa !146
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  store ptr %i.rf, ptr %i.ij, align 8, !tbaa !146
  br label %.loopexit606

bb.at:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  %i.rg = load ptr, ptr %i.eu, align 8, !tbaa !145 ; 5 uses
  %i.rh = ptrtoint ptr %i.qy to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri                    ; 4 uses
  %i.rk = icmp eq i64 %i.rj, 9223372036854775800
  br i1 %i.rk, label %bb.ak, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.at
  %i.rl = sdiv exact i64 %i.rj, 40                ; 3 uses
  %.sroa.speculated.i.i.i.3 = call i64 @llvm.umax.i64(i64 %i.rl, i64 1)
  %i.rm = add nsw i64 %.sroa.speculated.i.i.i.3, %i.rl ; 2 uses
  %i.rn = icmp ult i64 %i.rm, %i.rl
  %i.ro = call i64 @llvm.umin.i64(i64 %i.rm, i64 230584300921369395)
  %i.rp = select i1 %i.rn, i64 230584300921369395, i64 %i.ro ; 3 uses
  %.not.i.i.i375.3 = icmp ne i64 %i.rp, 0
  call void @llvm.assume(i1 %.not.i.i.i375.3)
  %i.rq = mul nuw nsw i64 %i.rp, 40
  %i.rr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rq) #25
          to label %.noexc377.3 unwind label %.loopexit607 ; 5 uses

.noexc377.3:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rj ; 6 uses
  store float %i.ra, ptr %i.rs, align 4, !tbaa !14
  %.sroa.231.120..sroa_idx730 = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.rt = extractelement <2 x float> %i.qe, i64 1
  store float %i.rt, ptr %.sroa.231.120..sroa_idx730, align 4, !tbaa !14
  %.sroa.240.120..sroa_idx732 = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store <4 x float> %i.rb, ptr %.sroa.240.120..sroa_idx732, align 4, !tbaa !14
  %.sroa.282.120..sroa_idx740 = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  store i32 %.sroa.282.5, ptr %.sroa.282.120..sroa_idx740, align 4, !tbaa !101
  %.sroa.292.120..sroa_idx742 = getelementptr inbounds nuw i8, ptr %i.rs, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx742, align 4, !tbaa !14
  %.sroa.294.120..sroa_idx746 = getelementptr inbounds nuw i8, ptr %i.rs, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx746, align 4, !tbaa !107
  %.not10.i.i.i.i.i.3 = icmp eq ptr %i.rg, %i.qy
  br i1 %.not10.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.noexc377.3, %.lr.ph.i.i.i.i.i.3
  %.012.i.i.i.i.i.3 = phi ptr [ %i.rv, %.lr.ph.i.i.i.i.i.3 ], [ %i.rr, %.noexc377.3 ] ; 2 uses
  %.0911.i.i.i.i.i.3 = phi ptr [ %i.ru, %.lr.ph.i.i.i.i.i.3 ], [ %i.rg, %.noexc377.3 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.3, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.3, i64 40, i1 false), !tbaa.struct !147, !alias.scope !163
  %i.ru = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.3, i64 40 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.3, i64 40 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.ru, %i.qy
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !152

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3, %.noexc377.3
  %.0.lcssa.i.i.i.i.i.3 = phi ptr [ %i.rr, %.noexc377.3 ], [ %i.rv, %.lr.ph.i.i.i.i.i.3 ]
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.3, i64 40
  %.not.i23.i.i.3 = icmp eq ptr %i.rg, null
  br i1 %.not.i23.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rj) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3: ; preds = %bb.au, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  store ptr %i.rr, ptr %i.eu, align 8, !tbaa !145
  store ptr %i.rw, ptr %i.ij, align 8, !tbaa !146
  %i.rx = getelementptr inbounds nuw [40 x i8], ptr %i.rr, i64 %i.rp
  store ptr %i.rx, ptr %i.fc, align 8, !tbaa !142
  br label %.loopexit606

.loopexit607:                                     ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp608:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit606:                                     ; preds = %bb.as, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, %bb.ag, %bb.ad, %bb.z, %bb.w
  %.sroa.282.6 = phi i32 [ %.sroa.282.0, %bb.ag ], [ %.sroa.282.0, %bb.w ], [ %.sroa.282.0, %bb.z ], [ %.sroa.282.0, %bb.ad ], [ %.sroa.282.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.282.5, %bb.as ]
  %.sroa.207.6 = phi i32 [ %.sroa.207.0, %bb.ag ], [ %.sroa.207.0, %bb.w ], [ %.sroa.207.0, %bb.z ], [ %.sroa.207.0, %bb.ad ], [ %.sroa.207.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.207.5, %bb.as ]
  %.sroa.136.6 = phi i32 [ %.sroa.136.0, %bb.ag ], [ %.sroa.136.0, %bb.w ], [ %.sroa.136.0, %bb.z ], [ %.sroa.136.0, %bb.ad ], [ %.sroa.136.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.136.5, %bb.as ]
  %.sroa.65.6 = phi i32 [ %.sroa.65.0, %bb.ag ], [ %.sroa.65.0, %bb.w ], [ %.sroa.65.0, %bb.z ], [ %.sroa.65.0, %bb.ad ], [ %.sroa.65.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.65.5, %bb.as ]
  %i.ry = add nuw nsw i32 %.0255650, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ry, %i.au
  br i1 %exitcond.not, label %bb.r, label %bb.t, !llvm.loop !167

bb.av:                                            ; preds = %bb.p, %bb.r
  %i.rz = phi i16 [ %i.jk, %bb.p ], [ %.pre753, %bb.r ] ; 3 uses
  %i.sa = phi i16 [ %i.jl, %bb.p ], [ %.pre753, %bb.r ] ; 2 uses
  %i.sb = add i16 %.0260651, 1                    ; 2 uses
  %i.sc = sext i16 %i.sb to i32
  %i.sd = zext i16 %i.sa to i32                   ; 2 uses
  %i.se = icmp slt i32 %i.sc, %i.sd
  br i1 %i.se, label %bb.p, label %._crit_edge654.loopexit, !llvm.loop !168

_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit: ; preds = %.noexc345
  %i.sf = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = invoke noundef ptr %i.sh(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc378 unwind label %bb.bb, !inline_history !169 ; 2 uses

.noexc378:                                        ; preds = %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !9
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = invoke noundef i32 %i.sl(ptr noundef nonnull align 8 dereferenceable(28) %i.si)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit unwind label %bb.bb, !inline_history !169

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit:   ; preds = %.noexc378
  %i.sn = lshr i32 %i.sm, 2                       ; 3 uses
  %i.so = mul i32 %i.sn, 6                        ; 3 uses
  %i.sp = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = invoke noundef ptr %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc380 unwind label %bb.bc, !inline_history !170 ; 2 uses

.noexc380:                                        ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !9
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = invoke noundef i32 %i.sv(ptr noundef nonnull align 8 dereferenceable(28) %i.ss)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit unwind label %bb.bc, !inline_history !170

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit:    ; preds = %.noexc380
  %i.sx = icmp ugt i32 %i.sw, %i.so
  br i1 %i.sx, label %bb.aw, label %bb.bd

end_hunk_0
begin_hunk_1_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !222 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !218 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !208 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.dn = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul nsz <2 x float> %i.dp, %i.dn
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dm, <2 x float> %i.dq)
  %i.du = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.dv = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dy = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.dz = fadd nsz <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bf, align 8, !tbaa !14
  %i.eb = load float, ptr %i.bg, align 8, !tbaa !14
  %i.ec = fmul nsz float %i.dj, %i.eb
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bh, align 8, !tbaa !14
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bi, align 8, !tbaa !14
  %i.eh = fadd nsz float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.dg, align 4
  store float %i.eh, ptr %i.dk, align 4, !tbaa !14
  %i.ei = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !222 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.em = load float, ptr %i.el, align 4, !tbaa !218 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 44 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !208 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.eq = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul nsz <2 x float> %i.es, %i.eq
  %i.eu = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ep, <2 x float> %i.et)
  %i.ex = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.ey = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ex, <2 x float> %i.ew)
  %i.fb = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.fc = fadd nsz <2 x float> %i.fa, %i.fb
  %i.fd = load float, ptr %i.bf, align 8, !tbaa !14
  %i.fe = load float, ptr %i.bg, align 8, !tbaa !14
  %i.ff = fmul nsz float %i.em, %i.fe
  %i.fg = tail call nsz float @llvm.fmuladd.f32(float %i.ek, float %i.fd, float %i.ff)
  %i.fh = load float, ptr %i.bh, align 8, !tbaa !14
  %i.fi = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.fh, float %i.fg)
  %i.fj = load float, ptr %i.bi, align 8, !tbaa !14
  %i.fk = fadd nsz float %i.fj, %i.fi
  store <2 x float> %i.fc, ptr %i.ej, align 4
  store float %i.fk, ptr %i.en, align 4, !tbaa !14
  %i.fl = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !222 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 52
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !218 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 56 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !208 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.ft = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.fu = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul nsz <2 x float> %i.fv, %i.ft
  %i.fx = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fs, <2 x float> %i.fw)
  %i.ga = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.gb = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ga, <2 x float> %i.fz)
  %i.ge = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.gf = fadd nsz <2 x float> %i.gd, %i.ge
  %i.gg = load float, ptr %i.bf, align 8, !tbaa !14
  %i.gh = load float, ptr %i.bg, align 8, !tbaa !14
  %i.gi = fmul nsz float %i.fp, %i.gh
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %i.fn, float %i.gg, float %i.gi)
  %i.gk = load float, ptr %i.bh, align 8, !tbaa !14
  %i.gl = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.gk, float %i.gj)
  %i.gm = load float, ptr %i.bi, align 8, !tbaa !14
  %i.gn = fadd nsz float %i.gm, %i.gl
  store <2 x float> %i.gf, ptr %i.fm, align 4
  store float %i.gn, ptr %i.fq, align 4, !tbaa !14
  %i.go = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 60 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !222 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !218 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 68 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !208 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.gw = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.gx = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw
  %i.ha = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gv, <2 x float> %i.gz)
  %i.hd = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.he = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hd, <2 x float> %i.hc)
  %i.hh = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.hi = fadd nsz <2 x float> %i.hg, %i.hh
  %i.hj = load float, ptr %i.bf, align 8, !tbaa !14
  %i.hk = load float, ptr %i.bg, align 8, !tbaa !14
  %i.hl = fmul nsz float %i.gs, %i.hk
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.hj, float %i.hl)
  %i.hn = load float, ptr %i.bh, align 8, !tbaa !14
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.hn, float %i.hm)
  %i.hp = load float, ptr %i.bi, align 8, !tbaa !14
  %i.hq = fadd nsz float %i.hp, %i.ho
  store <2 x float> %i.hi, ptr %i.gp, align 4
  store float %i.hq, ptr %i.gt, align 4, !tbaa !14
  %i.hr = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !222 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 76
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !218 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !208 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.hz = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.ia = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hy, <2 x float> %i.ic)
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ik = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.il = fadd nsz <2 x float> %i.ij, %i.ik
  %i.im = load float, ptr %i.bf, align 8, !tbaa !14
  %i.in = load float, ptr %i.bg, align 8, !tbaa !14
  %i.io = fmul nsz float %i.hv, %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.im, float %i.io)
  %i.iq = load float, ptr %i.bh, align 8, !tbaa !14
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iq, float %i.ip)
  %i.is = load float, ptr %i.bi, align 8, !tbaa !14
  %i.it = fadd nsz float %i.is, %i.ir
  store <2 x float> %i.il, ptr %i.hs, align 4
  store float %i.it, ptr %i.hw, align 4, !tbaa !14
  %i.iu = load ptr, ptr %1, align 8, !tbaa !227   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 84 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !222 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !218 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 92 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !208 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.bb, align 8, !tbaa !14
  %i.jc = load <2 x float>, ptr %i.bc, align 8, !tbaa !14
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jb, <2 x float> %i.jf)
  %i.jj = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.jk = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jj, <2 x float> %i.ji)
  %i.jn = load <2 x float>, ptr %i.be, align 8, !tbaa !14
  %i.jo = fadd nsz <2 x float> %i.jm, %i.jn
  %i.jp = load float, ptr %i.bf, align 8, !tbaa !14
  %i.jq = load float, ptr %i.bg, align 8, !tbaa !14
  %i.jr = fmul nsz float %i.iy, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.jp, float %i.jr)
  %i.jt = load float, ptr %i.bh, align 8, !tbaa !14
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jt, float %i.js)
  %i.jv = load float, ptr %i.bi, align 8, !tbaa !14
  %i.jw = fadd nsz float %i.jv, %i.ju
  store <2 x float> %i.jo, ptr %i.iv, align 4
  store float %i.jw, ptr %i.iz, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load float, ptr %i.e, align 4, !tbaa !208
  %i.g = fmul nsz float %i.f, f0x3C8EFA35
  %i.h = fpext nsz float %i.g to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 2 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.d, align 4, !tbaa !14
  %i.k = fmul nsz <2 x float> %i.j, splat (float f0x3C8EFA35)
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.l) ; 2 uses
  %i.n = extractvalue { <2 x double>, <2 x double> } %i.m, 0 ; 5 uses
  %i.o = extractvalue { <2 x double>, <2 x double> } %i.m, 1 ; 5 uses
  %i.p = extractelement <2 x double> %i.n, i64 1
  %i.q = fptrunc nsz double %i.p to float
  %i.r = fneg nsz float %i.q                      ; 4 uses
  store float %i.r, ptr %i.i, align 4, !tbaa !14
  %i.s = shufflevector <2 x double> %i.n, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.t = fmul nsz <2 x double> %i.s, %i.n         ; 2 uses
  %i.u = fneg nsz double %sin40.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = fneg nsz double %cos41.i.i
  %i.z = shufflevector <2 x double> %i.o, <2 x double> %i.n, <2 x i32> <i32 1, i32 2>
  %i.aa = fmul nsz <2 x double> %i.o, %i.z        ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1
  %i.ac = fptrunc nsz double %i.ab to float       ; 3 uses
  store float %i.ac, ptr %i.w, align 4, !tbaa !14
  %i.ad = extractelement <2 x double> %i.aa, i64 0
  %i.ae = fptrunc nsz double %i.ad to float       ; 5 uses
  store float %i.ae, ptr %i.c, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %sin40.i.i, i64 1 ; 4 uses
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  store <2 x float> %i.al, ptr %0, align 4, !tbaa !14
  %i.am = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ao = insertelement <2 x double> %i.an, double %i.u, i64 0
  %i.ap = fmul nsz <2 x double> %i.am, %i.ao
  %i.aq = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aj, <2 x double> %i.ap)
  %i.as = fptrunc <2 x double> %i.ar to <2 x float> ; 3 uses
  store <2 x float> %i.as, ptr %i.v, align 4, !tbaa !14
  %i.at = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> %i.an, double %i.y, i64 1
  %i.av = fmul nsz <2 x double> %i.at, %i.au
  %i.aw = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aj, <2 x double> %i.av)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 5 uses
  store <2 x float> %i.ay, ptr %i.x, align 4, !tbaa !14
  %i.az = load <2 x float>, ptr %i.af, align 8, !tbaa !14 ; 5 uses
  store <2 x float> %i.az, ptr %i.ag, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !208 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %2 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bb, i64 0
  store <2 x float> %2, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load float, ptr %i.bd, align 8, !tbaa !222 ; 4 uses
  %i.bf = fcmp nsz oeq float %i.be, 1.000000e+00
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !218 ; 2 uses
  %i.bi = fcmp nsz oeq float %i.bh, 1.000000e+00
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !208
  %i.bl = fcmp nsz une float %i.bk, 1.000000e+00
  br i1 %i.bl, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bm = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bh, %bb.a ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !208 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = fmul nsz <2 x float> %i.as, zeroinitializer ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer, <2 x float> %i.bs)
  %i.bu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.bt)
  store <2 x float> %i.bu, ptr %0, align 4, !tbaa !14
  %i.bv = fmul nsz float %i.ac, 0.000000e+00      ; 2 uses
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.r, float %i.be, float %i.bv)
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bw)
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.bx)
  store float %i.by, ptr %i.i, align 4, !tbaa !14
  %i.bz = fmul nsz float %i.be, 0.000000e+00
  store float %i.bz, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !14
  %i.ca = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul nsz <2 x float> %i.cb, %i.as
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.cc)
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer, <2 x float> %i.cd)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %i.v, align 4, !tbaa !14
  %i.cg = fmul nsz float %i.bm, %i.ac
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.r, float 0.000000e+00, float %i.cg)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.ch)
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.ci)
  store float %i.cj, ptr %i.w, align 4, !tbaa !14
  %i.ck = fmul nsz float %i.bm, 0.000000e+00
  store float %i.ck, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !14
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.r, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bo, float %i.cl)
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.cm)
  store float %i.cn, ptr %i.c, align 4, !tbaa !14
  %i.co = fmul nsz float %i.bo, 0.000000e+00
  store float %i.co, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !14
  %i.cp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.bp) ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cs)
  store <2 x float> %i.ct, ptr %i.x, align 4, !tbaa !14
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer, <2 x float> %i.cp)
  %i.cv = fadd nsz <2 x float> %i.az, %i.cu
  store <2 x float> %i.cv, ptr %i.ag, align 4, !tbaa !14
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cl)
  %i.cx = fadd nsz float %i.cw, %i.bb
  store float %i.cx, ptr %i.bc, align 4, !tbaa !14
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !118, !noundef !132
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !118, !noundef !132
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !136
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !229
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !24, !range !118, !noundef !132
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !24
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN5scene11CMeshBufferIN5video9S3DVertexEED2Ev:bb.a
  store i32 %i.n, ptr %i.l, align 8, !tbaa !109
  %.not.i2 = icmp eq i32 %i.n, 0
  br i1 %.not.i2, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit3

bb.c:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #23, !inline_history !231
  br label %_ZNK17IReferenceCounted4dropEv.exit3

_ZNK17IReferenceCounted4dropEv.exit3:             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 64) #22
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.d, %_ZNK17IReferenceCounted4dropEv.exit3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131  ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.1.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 64) #22
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i:           ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131  ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.x, null
  br i1 %.not.i.2.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i, label %bb.f

bb.f:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 64) #22
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i:           ; preds = %bb.f, %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131  ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.z, null
  br i1 %.not.i.3.i, label %_ZN5video9SMaterialD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 64) #22
  br label %_ZN5video9SMaterialD2Ev.exit

_ZN5video9SMaterialD2Ev.exit:                     ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !159    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !107
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !160
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !107
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !107
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !159
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !160
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !156
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #17

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare extern_weak void @_ZTH11tracestream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !13, i64 32}
!12 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !13, i64 32}
!13 = !{!"bool", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt8__detail15_List_node_baseE", !18, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!17, !18, i64 0}
!21 = !{!22, !23, i64 16}
!22 = !{!"_ZTSNSt8__detail17_List_node_headerE", !17, i64 0, !23, i64 16}
!23 = !{!"long", !7, i64 0}
!24 = !{!25, !13, i64 8}
!25 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !7, i64 0, !13, i64 8}
!26 = !{!27, !40, i64 192}
!27 = !{!"_ZTSN5scene10ISceneNodeE", !28, i64 8, !32, i64 48, !33, i64 112, !33, i64 124, !33, i64 136, !34, i64 152, !37, i64 176, !40, i64 192, !41, i64 200, !6, i64 208, !42, i64 212, !42, i64 214, !13, i64 216, !13, i64 217}
!28 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !29, i64 0}
!29 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !30, i64 0}
!30 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !31, i64 0}
!31 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !12, i64 0}
!32 = !{!"_ZTSN4core8CMatrix4IfEE", !7, i64 0}
!33 = !{!"_ZTSN4core8vector3dIfEE", !15, i64 0, !15, i64 4, !15, i64 8}
!34 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !35, i64 0}
!35 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !36, i64 0}
!36 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !22, i64 0}
!37 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !38, i64 0}
!38 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !39, i64 0}
!39 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !25, i64 0}
!40 = !{!"p1 _ZTSN5scene10ISceneNodeE", !19, i64 0}
!41 = !{!"p1 _ZTSN5scene13ISceneManagerE", !19, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = !{!27, !41, i64 200}
!44 = !{!27, !6, i64 208}
!45 = !{!27, !42, i64 212}
!46 = !{!27, !42, i64 214}
!47 = !{!27, !13, i64 216}
!48 = !{!27, !13, i64 217}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN5video14SMaterialLayerE", !53, i64 0, !7, i64 8, !7, i64 8, !7, i64 9, !54, i64 10, !55, i64 11, !7, i64 12, !7, i64 13, !56, i64 16}
!53 = !{!"p1 _ZTSN5video8ITextureE", !19, i64 0}
!54 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !7, i64 0}
!55 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !7, i64 0}
!56 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !19, i64 0}
!57 = !{!7, !7, i64 0}
!58 = !{!59, !6, i64 412}
!59 = !{!"_ZTS6Clouds", !27, i64 0, !60, i64 224, !68, i64 352, !70, i64 360, !71, i64 368, !13, i64 372, !72, i64 376, !70, i64 400, !42, i64 408, !6, i64 412, !33, i64 416, !73, i64 428, !13, i64 434, !13, i64 435, !74, i64 436, !75, i64 452}
!60 = !{!"_ZTSN5video9SMaterialE", !7, i64 0, !61, i64 96, !62, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !63, i64 124, !64, i64 124, !65, i64 125, !66, i64 125, !13, i64 126, !13, i64 126, !67, i64 126, !13, i64 126, !13, i64 126, !13, i64 126, !13, i64 126}
!61 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !7, i64 0}
!62 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!63 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !7, i64 0}
!64 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !7, i64 0}
!65 = !{!"_ZTSN5video13E_COLOR_PLANEE", !7, i64 0}
!66 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !7, i64 0}
!67 = !{!"_ZTSN5video8E_ZWRITEE", !7, i64 0}
!68 = !{!"_ZTS7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE", !69, i64 0}
!69 = !{!"p1 _ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !19, i64 0}
!70 = !{!"_ZTSN4core8vector2dIfEE", !15, i64 0, !15, i64 4}
!71 = !{!"_ZTSN4core8vector2dIsEE", !42, i64 0, !42, i64 2}
!72 = !{!"_ZTSN4core8aabbox3dIfEE", !33, i64 0, !33, i64 12}
!73 = !{!"_ZTSN4core8vector3dIsEE", !42, i64 0, !42, i64 2, !42, i64 4}
!74 = !{!"_ZTSN5video7SColorfE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!75 = !{!"_ZTS11CloudParams", !15, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !15, i64 16, !15, i64 20, !70, i64 24}
!76 = !{!62, !6, i64 0}
!77 = !{!78, !79, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!79 = !{!"p1 omnipotent char", !19, i64 0}
!80 = !{!81, !23, i64 8}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !23, i64 8, !7, i64 16}
!82 = !{!83, !86, i64 16}
!83 = !{!"_ZTSSt15_Rb_tree_header", !84, i64 0, !23, i64 32}
!84 = !{!"_ZTSSt18_Rb_tree_node_base", !85, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!85 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!86 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!87 = !{!83, !86, i64 24}
!88 = !{!83, !23, i64 32}
!89 = !{!83, !86, i64 8}
!90 = !{!81, !79, i64 0}
!91 = !{!92, !61, i64 36}
!92 = !{!"_ZTS10ShaderInfo", !81, i64 0, !61, i64 32, !61, i64 36, !93, i64 40, !98, i64 88}
!93 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !94, i64 0}
!94 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !95, i64 0}
!95 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !96, i64 0, !83, i64 8}
!96 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !97, i64 0}
!97 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!98 = !{!"_ZTS7irr_ptrI22IShaderUniformSetterRCE", !99, i64 0}
!99 = !{!"p1 _ZTS22IShaderUniformSetterRC", !19, i64 0}
!100 = !{!59, !61, i64 320}
!101 = !{!6, !6, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 _ZTS8Settings", !19, i64 0}
!104 = !{!23, !23, i64 0}
!105 = !{!59, !15, i64 472}
!106 = !{!59, !15, i64 468}
!107 = !{!42, !42, i64 0}
!108 = !{!68, !69, i64 0}
!109 = !{!110, !6, i64 8}
!110 = !{!"_ZTS17IReferenceCounted", !6, i64 8}
!111 = distinct !{null, null}
!112 = distinct !{null}
!113 = !{!114, !115, i64 8}
!114 = !{!"_ZTSN5scene8HWBufferE", !115, i64 8, !19, i64 16, !6, i64 24}
!115 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !7, i64 0}
!116 = distinct !{null, null, null}
!117 = !{!59, !13, i64 435}
!118 = !{i8 0, i8 2}
!119 = !{!59, !42, i64 408}
!120 = !{!59, !13, i64 372}
!121 = !{!122, !126, i64 176}
!122 = !{!"_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !123, i64 0, !60, i64 8, !124, i64 136, !125, i64 144, !72, i64 152, !126, i64 176}
!123 = !{!"_ZTSN5scene11IMeshBufferE"}
!124 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !19, i64 0}
!125 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !19, i64 0}
!126 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !7, i64 0}
!127 = !{!114, !19, i64 16}
!128 = !{!114, !6, i64 24}
!129 = !{!122, !124, i64 136}
!130 = !{!122, !125, i64 144}
!131 = !{!52, !56, i64 16}
!132 = !{}
!133 = !{ptr @_ZN6CloudsD1Ev}
!134 = !{ptr @_ZN6CloudsD0Ev, ptr @_ZN6CloudsD1Ev}
!135 = !{ptr @_ZN6CloudsD0Ev}
!136 = !{!40, !40, i64 0}
!137 = !{ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!138 = distinct !{!138, !50}
!139 = !{!59, !15, i64 424}
!140 = !{!70, !15, i64 0}
!141 = !{!70, !15, i64 4}
!142 = !{!143, !144, i64 16}
!143 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!144 = !{!"p1 _ZTSN5video9S3DVertexE", !19, i64 0}
!145 = !{!143, !144, i64 0}
!146 = !{!143, !144, i64 8}
!147 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 4, !101, i64 28, i64 4, !14, i64 32, i64 4, !14, i64 36, i64 2, !107}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!150 = distinct !{!150, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!151 = distinct !{!151, !150, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = !{!59, !15, i64 452}
!155 = distinct !{!155, !50}
!156 = !{!157, !158, i64 16}
!157 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!158 = !{!"p1 short", !19, i64 0}
!159 = !{!157, !158, i64 0}
!160 = !{!157, !158, i64 8}
!161 = distinct !{null}
!162 = distinct !{!162, !50}
end_hunk_2
