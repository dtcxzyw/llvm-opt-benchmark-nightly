inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv:bb.a
  %i.z = fmul <4 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.j, <4 x float> %i.aa, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ad = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x float> %i.ad, %i.x            ; 2 uses
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ag = fcmp olt <4 x float> %i.z, %i.ae        ; 2 uses
  %i.ah = load <3 x float>, ptr %i.i, align 8, !tbaa !13
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.aj = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ak = fmul <4 x float> %i.aj, %i.ai           ; 2 uses
  %i.al = shufflevector <4 x float> %i.j, <4 x float> %i.aa, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.an = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = fmul <4 x float> %i.an, %i.ai           ; 2 uses
  %i.ap = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.aq = fcmp olt <4 x float> %i.ak, %i.ao       ; 2 uses
  %.v = select <4 x i1> %i.v, <4 x float> %i.r, <4 x float> %i.u
  %i.ar = fmul <4 x float> %.v, %i.o
  %.v1 = select <4 x i1> %i.ag, <4 x float> %i.ac, <4 x float> %i.af
  %i.as = fmul <4 x float> %.v1, %i.x
  %.v2 = select <4 x i1> %i.aq, <4 x float> %i.am, <4 x float> %i.ap
  %i.at = fmul <4 x float> %.v2, %i.ai
  %i.au = fadd <4 x float> %i.m, %i.ar
  %i.av = fadd <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.at, %i.av
  store <4 x float> %i.aw, ptr %0, align 4, !tbaa !13
  %i.ax = shufflevector <4 x i1> %i.v, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.az = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = select <2 x i1> %i.ax, <2 x float> %i.ay, <2 x float> %i.az
  %i.bb = shufflevector <4 x i1> %i.ag, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.bc = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bd = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.be = select <2 x i1> %i.bb, <2 x float> %i.bc, <2 x float> %i.bd
  %i.bf = shufflevector <4 x i1> %i.aq, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bh = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bi = select <2 x i1> %i.bf, <2 x float> %i.bg, <2 x float> %i.bh
  %i.bj = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bk = fadd <2 x float> %i.bj, %i.ba
  %i.bl = fadd <2 x float> %i.be, %i.bk
  %i.bm = fadd <2 x float> %i.bi, %i.bl
  store <2 x float> %i.bm, ptr %i.f, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !233    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 8, %i.g
  tail call void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.i)
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 96
  br i1 %.not, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i.i, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !230
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !234    ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = load <3 x float>, ptr %i.n, align 4, !tbaa !13
  %i.r = shufflevector <3 x float> %i.q, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.s = load <3 x float>, ptr %i.p, align 4, !tbaa !13
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.u = fadd <4 x float> %i.r, %i.t
  %i.v = fmul <4 x float> %i.u, splat (float 5.000000e-01) ; 5 uses
  %i.w = fsub <4 x float> %i.v, %i.t              ; 4 uses
  %i.x = fadd <4 x float> %i.v, %i.w              ; 2 uses
  %i.y = fsub <4 x float> %i.v, %i.w              ; 2 uses
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 7, i32 2, i32 0, i32 1> ; 2 uses
  %foldExtExtBinop = fsub <4 x float> %i.v, %i.w
  %i.aa = extractelement <4 x float> %foldExtExtBinop, i64 2 ; 4 uses
  store <8 x float> %i.z, ptr %i.o, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store float %i.aa, ptr %i.ab, align 4, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ad = extractelement <4 x float> %i.x, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = extractelement <4 x float> %i.y, i64 3  ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store float %i.aa, ptr %i.ag, align 4, !tbaa !148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %foldExtExtBinop10 = fsub <4 x float> %i.v, %i.w ; 2 uses
  %i.ai = extractelement <4 x float> %foldExtExtBinop10, i64 0
  %i.aj = shufflevector <4 x float> %foldExtExtBinop10, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.z, <8 x i32> <i32 0, i32 9, i32 10, i32 0, i32 12, i32 10, i32 0, i32 9>
  store <8 x float> %i.ak, ptr %i.ah, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.aa, ptr %i.al, align 4, !tbaa !148
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !146
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.af, ptr %i.an, align 4, !tbaa !147
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.aa, ptr %i.ao, align 4, !tbaa !148
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.e:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  ret void

bb.f:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %indvars.iv = phi i64 [ 0, %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit ], [ %indvars.iv.next, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !230
  %i.ay = load ptr, ptr %1, align 8, !tbaa !233   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv
  br i1 %i.bd, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #36
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !146 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !147 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !148 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.ap, align 8, !tbaa !13
  %i.bl = load <2 x float>, ptr %i.aq, align 8, !tbaa !13
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bk, <2 x float> %i.bo)
  %i.bs = load <2 x float>, ptr %i.ar, align 8, !tbaa !13
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bs, <2 x float> %i.br)
  %i.bw = load <2 x float>, ptr %i.as, align 8, !tbaa !13
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = load float, ptr %i.at, align 8, !tbaa !13
  %i.bz = load float, ptr %i.au, align 8, !tbaa !13
  %i.ca = fmul float %i.bh, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.by, float %i.ca)
  %i.cc = load float, ptr %i.av, align 8, !tbaa !13
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cc, float %i.cb)
  %i.ce = load float, ptr %i.aw, align 8, !tbaa !13
  %i.cf = fadd float %i.ce, %i.cd
  store <2 x float> %i.bx, ptr %i.be, align 4
  store float %i.cf, ptr %i.bi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !235
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %2, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = load float, ptr %i.d, align 4, !tbaa !146
  %i.f = fmul float %i.e, f0x3C8EFA35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = fpext float %i.f to double               ; 2 uses
  %i.i = tail call double @cos(double noundef %i.h) #33 ; 3 uses
  %i.j = tail call double @sin(double noundef %i.h) #33 ; 3 uses
  %i.k = load <2 x float>, ptr %i.g, align 8, !tbaa !13
  %i.l = fmul <2 x float> %i.k, splat (float f0x3C8EFA35)
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 2 uses
  %i.o = tail call double @cos(double noundef %i.n) #33 ; 4 uses
  %i.p = tail call double @sin(double noundef %i.n) #33 ; 3 uses
  %i.q = extractelement <2 x double> %i.m, i64 1  ; 2 uses
  %i.r = tail call double @cos(double noundef %i.q) #33 ; 5 uses
  %i.s = tail call double @sin(double noundef %i.q) #33 ; 5 uses
  %i.t = fmul double %i.o, %i.r
  %i.u = fptrunc double %i.t to float             ; 3 uses
  store float %i.u, ptr %0, align 4, !tbaa !13
  %i.v = fmul double %i.o, %i.s
  %i.w = fptrunc double %i.v to float             ; 3 uses
  store float %i.w, ptr %i.a, align 4, !tbaa !13
  %i.x = fptrunc double %i.p to float
  %i.y = fneg float %i.x                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.y, ptr %i.z, align 4, !tbaa !13
  %i.aa = fmul double %i.j, %i.p
  %i.ab = fmul double %i.i, %i.p
  %i.ac = fneg double %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.i, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.r, i64 1
  %i.ai = fmul <2 x double> %i.af, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x double> poison, double %i.r, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.s, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.am, <2 x double> %i.ai)
  %i.ao = fptrunc <2 x double> %i.an to <2 x float> ; 2 uses
  store <2 x float> %i.ao, ptr %i.ad, align 4, !tbaa !13
  %i.ap = fmul double %i.j, %i.o
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.aq, ptr %i.ar, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = fneg double %i.r
  %i.au = insertelement <2 x double> poison, double %i.j, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.at, i64 1
  %i.ay = fmul <2 x double> %i.av, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.s, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> %i.ay)
  %i.be = fptrunc <2 x double> %i.bd to <2 x float> ; 2 uses
  store <2 x float> %i.be, ptr %i.as, align 4, !tbaa !13
  %i.bf = fmul double %i.i, %i.o
  %i.bg = fptrunc double %i.bf to float           ; 4 uses
  store float %i.bg, ptr %i.c, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bk = load <2 x float>, ptr %i.bh, align 8, !tbaa !13 ; 3 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  store float %i.bl, ptr %i.bi, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bo = load <2 x float>, ptr %i.bj, align 4, !tbaa !13 ; 3 uses
  %i.bp = load float, ptr %i.bn, align 8, !tbaa !148 ; 3 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  store float %i.bq, ptr %i.bm, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bp, ptr %i.br, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !146 ; 3 uses
  %i.bu = fcmp oeq float %i.bt, 1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.bx = fcmp oeq float %i.bw, 1.000000e+00
  %or.cond = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bz = load float, ptr %i.by, align 8, !tbaa !148
  %i.ca = fcmp une float %i.bz, 1.000000e+00
  br i1 %i.ca, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.cb = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bw, %bb.a ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !148
  %i.ce = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float 1.000000e+00, i64 3
  %i.cg = insertelement <4 x float> %i.cf, float %i.aq, i64 2 ; 2 uses
  %i.ch = fmul <4 x float> %i.cg, zeroinitializer ; 2 uses
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.u, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.w, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.y, i64 2
  %i.cl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bt, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.ch)
  %i.co = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cp = insertelement <4 x float> %i.co, float %i.bg, i64 2 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bt, i64 3
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer, <4 x float> %i.cn)
  %i.cs = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 0.000000e+00, i64 3
  %i.cu = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cr)
  store <4 x float> %i.cw, ptr %0, align 4, !tbaa !13
  %i.cx = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cb, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cz = fmul <4 x float> %i.cy, %i.cg
  %i.da = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.u, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.w, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.y, i64 2 ; 2 uses
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.cz)
  %i.de = insertelement <4 x float> %i.cp, float %i.cb, i64 3
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> zeroinitializer, <4 x float> %i.dd)
  %i.dg = shufflevector <2 x float> %i.bk, <2 x float> %i.bo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.df)
  store <4 x float> %i.di, ptr %i.ad, align 4, !tbaa !13
  %i.dj = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 3
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.dj) ; 2 uses
  %i.dl = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3
  %i.do = insertelement <4 x float> %i.dn, float %i.bg, i64 2
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.do, <4 x float> %i.dk)
  %i.dq = insertelement <4 x float> %i.dh, float %i.bp, i64 2
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dp)
  store <4 x float> %i.dr, ptr %i.as, align 4, !tbaa !13
  %i.ds = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3
  %i.dt = insertelement <4 x float> %i.ds, float %i.bg, i64 2
  %i.du = insertelement <4 x float> %i.dk, float 1.000000e+00, i64 3
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> zeroinitializer, <4 x float> %i.du)
  %i.dw = insertelement <4 x float> %i.dg, float -0.000000e+00, i64 3
  %i.dx = insertelement <4 x float> %i.dw, float %i.bp, i64 2
  %i.dy = fadd <4 x float> %i.dv, %i.dx
  store <4 x float> %i.dy, ptr %i.bi, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !102, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !102, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !111
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !236
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !236
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !23, !range !102, !noundef !103
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !23
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !237
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !117
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
