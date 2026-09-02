Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaLoader?download=true
inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp13ColladaLoader14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ult i64 %i.dm, %i.de
  br i1 %i.dn, label %_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP8aiCameraSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.do = load ptr, ptr %i.al, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dk
  %i.dr = shl nuw nsw i64 %i.de, 3
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #30
          to label %.noexc46 unwind label %bb.g   ; 4 uses

.noexc46:                                         ; preds = %_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE11_M_allocateEm.exit.i
  %i.dt = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.du = load ptr, ptr %i.al, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %bb.o, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.o:                                             ; preds = %.noexc46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %i.dt, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.o, %.noexc46
  %.not.i8.i44 = icmp eq ptr %i.dt, null
  br i1 %.not.i8.i44, label %_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.dz = load ptr, ptr %i.dg, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.eb) #27
  br label %_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.p, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ds, ptr %i.aj, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store ptr %i.ec, ptr %i.al, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.de
  store ptr %i.ed, ptr %i.dg, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE7reserveEm.exit:   ; preds = %_ZNSt12_Vector_baseIP8aiCameraSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.n
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.ef = load i64, ptr %i.ee, align 8            ; 4 uses
  %i.eg = icmp ugt i64 %i.ef, 1152921504606846975
  br i1 %i.eg, label %.invoke, label %bb.q

.invoke:                                          ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, %_ZNSt6vectorISt4pairIPN6Assimp7Collada6EffectEP10aiMaterialESaIS7_EE7reserveEm.exit, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE7reserveEm.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.af, align 8
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3
  %i.eo = icmp ult i64 %i.en, %i.ef
  br i1 %i.eo, label %_ZNSt12_Vector_baseIP7aiLightSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP7aiLightSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP7aiLightSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.ep = load ptr, ptr %i.ah, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.el
  %i.es = shl nuw nsw i64 %i.ef, 3
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #30
          to label %.noexc49 unwind label %bb.g   ; 4 uses

.noexc49:                                         ; preds = %_ZNSt12_Vector_baseIP7aiLightSaIS1_EE11_M_allocateEm.exit.i
  %i.eu = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ev = load ptr, ptr %i.ah, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %bb.r, label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.r:                                             ; preds = %.noexc49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr align 8 %i.eu, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.r, %.noexc49
  %.not.i8.i47 = icmp eq ptr %i.eu, null
  br i1 %.not.i8.i47, label %_ZNSt12_Vector_baseIP7aiLightSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.fa = load ptr, ptr %i.eh, align 8
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fc) #27
  br label %_ZNSt12_Vector_baseIP7aiLightSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP7aiLightSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.et, ptr %i.af, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store ptr %i.fd, ptr %i.ah, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ef
  store ptr %i.fe, ptr %i.eh, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP7aiLightSaIS1_EE7reserveEm.exit:    ; preds = %_ZNSt12_Vector_baseIP7aiLightSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.q
  invoke void @_ZN6Assimp13ColladaLoader14BuildMaterialsERNS_13ColladaParserEP7aiScene(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %4, ptr poison)
          to label %bb.t unwind label %bb.g

bb.t:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE7reserveEm.exit
  %i.ff = load ptr, ptr %i.av, align 8
  %i.fg = invoke noundef ptr @_ZN6Assimp13ColladaLoader14BuildHierarchyERKNS_13ColladaParserEPKNS_7Collada4NodeE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %4, ptr noundef %i.ff)
          to label %bb.u unwind label %bb.g

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.fg, ptr %i.fh, align 8
  invoke void @_ZN6Assimp13ColladaLoader13FillMaterialsERKNS_13ColladaParserEP7aiScene(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %4, ptr nonnull poison)
          to label %bb.v unwind label %bb.g

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 371
  %i.fj = load i8, ptr %i.fi, align 1, !range !15, !noundef !16
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.fm = load float, ptr %i.fl, align 8          ; 3 uses
  %i.fn = load ptr, ptr %i.fh, align 8            ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1028 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 1044 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1060 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1076 ; 2 uses
  %i.fs = load <4 x float>, ptr %i.fo, align 4    ; 4 uses
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fu = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.fm, i64 1 ; 4 uses
  %i.fv = fmul <4 x float> %i.ft, %i.fu
  %i.fw = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fm, i64 0 ; 4 uses
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fx, <4 x float> %i.fv)
  %i.fz = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ga = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.fm, i64 2 ; 4 uses
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.ga, <4 x float> %i.fy)
  %i.gc = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gb)
  store <4 x float> %i.gd, ptr %i.fo, align 4
  %i.ge = load <4 x float>, ptr %i.fp, align 4    ; 4 uses
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gg = fmul <4 x float> %i.gf, %i.fu
  %i.gh = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %i.fx, <4 x float> %i.gg)
  %i.gj = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.ga, <4 x float> %i.gi)
  %i.gl = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gk)
  store <4 x float> %i.gm, ptr %i.fp, align 4
  %i.gn = load <4 x float>, ptr %i.fq, align 4    ; 4 uses
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gp = fmul <4 x float> %i.go, %i.fu
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.fx, <4 x float> %i.gp)
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.ga, <4 x float> %i.gr)
  %i.gu = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gt)
  store <4 x float> %i.gv, ptr %i.fq, align 4
  %i.gw = load <4 x float>, ptr %i.fr, align 4    ; 4 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gy = fmul <4 x float> %i.gx, %i.fu
  %i.gz = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.fx, <4 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.ga, <4 x float> %i.ha)
  %i.hd = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hc)
  store <4 x float> %i.he, ptr %i.fr, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.hg = load i8, ptr %i.hf, align 2, !range !15, !noundef !16
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 716
  %i.hj = load i32, ptr %i.hi, align 4
  switch i32 %i.hj, label %bb.ab [
    i32 0, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.hk = load ptr, ptr %i.fh, align 8            ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1028 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 1032
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 1044 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 1048
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 1060 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 1064
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 1076 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 1080
  %6 = load <3 x float>, ptr %i.hn, align 4       ; 3 uses
  %i.hx = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> zeroinitializer
  %i.hy = fmul <4 x float> %i.hx, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hz = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hm, i64 1 ; 2 uses
  %i.ia = fsub <4 x float> %i.hy, %i.hz
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> zeroinitializer, <4 x float> %i.ia)
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.id = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.ic)
  %8 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.id)
  store <4 x float> %i.ie, ptr %i.hl, align 4
  %9 = load <3 x float>, ptr %i.hq, align 4       ; 3 uses
  %i.if = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fmul <4 x float> %i.if, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ih = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hp, i64 1 ; 2 uses
  %i.ii = fsub <4 x float> %i.ig, %i.ih
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> zeroinitializer, <4 x float> %i.ii)
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.ik)
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.il)
  store <4 x float> %i.im, ptr %i.ho, align 4
  %12 = load <3 x float>, ptr %i.ht, align 4      ; 3 uses
  %i.in = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul <4 x float> %i.in, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ip = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hs, i64 1 ; 2 uses
  %i.iq = fsub <4 x float> %i.io, %i.ip
  %i.ir = shufflevector <4 x float> %i.ip, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.is = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> zeroinitializer, <4 x float> %i.iq)
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.is)
  %14 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.it)
  store <4 x float> %i.iu, ptr %i.hr, align 4
  %15 = load <3 x float>, ptr %i.hw, align 4      ; 3 uses
  %i.iv = shufflevector <3 x float> %15, <3 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul <4 x float> %i.iv, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ix = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hv, i64 1 ; 2 uses
  %i.iy = fsub <4 x float> %i.iw, %i.ix
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.ja = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> zeroinitializer, <4 x float> %i.iy)
  %16 = shufflevector <3 x float> %15, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.ja)
  %17 = shufflevector <3 x float> %15, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jb)
  store <4 x float> %i.jc, ptr %i.hu, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.jd = load ptr, ptr %i.fh, align 8            ; 12 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1028 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 1036
  %i.jg = load float, ptr %i.jf, align 4          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 1040
  %i.ji = load float, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 1044 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 1052
  %i.jl = load float, ptr %i.jk, align 4          ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 1056
  %i.jn = load float, ptr %i.jm, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 1060 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jd, i64 1068
  %i.jq = load float, ptr %i.jp, align 4          ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 1072
  %i.js = load float, ptr %i.jr, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 1076 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 1084
  %i.jv = load float, ptr %i.ju, align 4          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jd, i64 1088
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = load <2 x float>, ptr %i.je, align 4    ; 4 uses
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = fmul <2 x float> %i.jz, <float 1.000000e+00, float 0.000000e+00>
  %i.kb = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> zeroinitializer, <2 x float> %i.ka) ; 2 uses
  %i.kd = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jg, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.kf = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kg = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = load <2 x float>, ptr %i.jj, align 4    ; 4 uses
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kk = fmul <2 x float> %i.kj, <float 1.000000e+00, float 0.000000e+00>
  %i.kl = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> zeroinitializer, <2 x float> %i.kk) ; 2 uses
  %i.kn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jl, i64 0
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.kp = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kq = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = load <2 x float>, ptr %i.jo, align 4    ; 3 uses
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ku = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kv = fmul <2 x float> %i.ku, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.kw = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> zeroinitializer, <2 x float> %i.kv) ; 2 uses
  %i.ky = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jq, i64 0
  %i.kz = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lb = insertelement <4 x float> poison, float %i.js, i64 0
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ld = load <2 x float>, ptr %i.jt, align 4    ; 3 uses
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lf = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lg = fmul <2 x float> %i.lf, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.lh = shufflevector <2 x float> %i.jy, <2 x float> %i.ki, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> %i.kt, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lk = shufflevector <2 x float> %i.jy, <2 x float> %i.ki, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ll = fmul <4 x float> %i.lk, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.lm = shufflevector <2 x float> %i.kv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ln = shufflevector <4 x float> %i.ll, <4 x float> %i.lm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.lo = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lp = shufflevector <4 x float> %i.ln, <4 x float> %i.lo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lq = fadd <4 x float> %i.lj, %i.lp           ; 4 uses
  %i.lr = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> zeroinitializer, <2 x float> %i.lg) ; 2 uses
  %i.lt = shufflevector <2 x float> %i.kc, <2 x float> %i.km, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.lu = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lv = shufflevector <4 x float> %i.lt, <4 x float> %i.lu, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.lw = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ly = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.lz = insertelement <4 x float> %i.ly, float %i.jl, i64 1
  %i.ma = insertelement <4 x float> %i.lz, float %i.jq, i64 2
  %i.mb = insertelement <4 x float> %i.ma, float %i.jv, i64 3
  %i.mc = fsub <4 x float> %i.lx, %i.mb           ; 4 uses
  %i.md = shufflevector <4 x float> %i.lq, <4 x float> %i.mc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> %i.kf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> zeroinitializer, <4 x float> %i.me)
  %i.mg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.mf)
  store <4 x float> %i.mg, ptr %i.je, align 4
  %i.mh = shufflevector <4 x float> %i.lq, <4 x float> %i.mc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> %i.kp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ko, <4 x float> zeroinitializer, <4 x float> %i.mi)
  %i.mk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.mj)
  store <4 x float> %i.mk, ptr %i.jj, align 4
  %i.ml = shufflevector <4 x float> %i.lq, <4 x float> %i.mc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kz, <4 x float> zeroinitializer, <4 x float> %i.mm)
  %i.mo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.mn)
  store <4 x float> %i.mo, ptr %i.jo, align 4
  %i.mp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jv, i64 0
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.mr = shufflevector <4 x float> %i.lq, <4 x float> %i.mc, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ms = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.mr, <4 x float> %i.ms, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> zeroinitializer, <4 x float> %i.mt)
  %i.mv = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.mu)
  store <4 x float> %i.mx, ptr %i.jt, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.x
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 760
  %i.mz = load i64, ptr %i.my, align 8            ; 4 uses
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nb = trunc i64 %i.mz to i32                  ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %_ZN10aiMetadata5AllocEj.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc50 unwind label %bb.ae  ; 4 uses

.noexc50:                                         ; preds = %bb.ad
  store i32 %i.nb, ptr %i.nd, align 8
  %i.ne = and i64 %i.mz, 4294967295               ; 4 uses
  %i.nf = mul nuw nsw i64 %i.ne, 1028             ; 3 uses
  %i.ng = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nf) #30
          to label %.noexc51 unwind label %bb.ae  ; 2 uses

.noexc51:                                         ; preds = %.noexc50
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ni = add nsw i64 %i.nf, -1028
  %i.nj = urem i64 %i.ni, 1028
  %i.nk = sub nsw i64 %i.nf, %i.nj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ng, i8 0, i64 %i.nk, i1 false)
  store ptr %i.ng, ptr %i.nh, align 8
  %i.nl = shl nuw nsw i64 %i.ne, 4
  %i.nm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nl) #30
          to label %.noexc52 unwind label %bb.ae  ; 4 uses

.noexc52:                                         ; preds = %.noexc51
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %i.ne
  %i.no = add nuw nsw i64 %i.ne, 1152921504606846975
  %i.np = and i64 %i.no, 1152921504606846975
  %xtraiter = and i64 %i.mz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.noexc52, %.prol.preheader
  %i.nq = phi ptr [ %i.ns, %.prol.preheader ], [ %i.nm, %.noexc52 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.noexc52 ]
  store i32 10, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr null, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc52
  %.unr = phi ptr [ %i.nm, %.noexc52 ], [ %i.ns, %.prol.preheader ]
  %i.nt = icmp samesign ult i64 %i.np, 7
  br i1 %i.nt, label %.unr-lcssa, label %.noexc52.new

.noexc52.new:                                     ; preds = %.prol.loopexit, %.noexc52.new
  %i.nu = phi ptr [ %i.ok, %.noexc52.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr null, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store i32 10, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  store ptr null, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store i32 10, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  store ptr null, ptr %i.nz, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  store i32 10, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  store ptr null, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 64
  store i32 10, ptr %i.oc, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 72
  store ptr null, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 80
  store i32 10, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  store ptr null, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.nu, i64 96
  store i32 10, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nu, i64 104
  store ptr null, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 112
  store i32 10, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nu, i64 120
  store ptr null, ptr %i.oj, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nu, i64 128 ; 2 uses
end_hunk_0
