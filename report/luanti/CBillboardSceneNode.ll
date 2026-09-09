Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CBillboardSceneNode?download=true
inline.NumInlined: 1222
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5scene10ISceneNode9OnAnimateEj:bb.a
.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5scene10ISceneNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv(ptr dead_on_unwind noalias writable sret(%"class.core::aabbox3d") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(218) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !122
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load <6 x float>, ptr %0, align 4, !tbaa !16 ; 12 uses
  %i.k = load <3 x float>, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.m = load <3 x float>, ptr %i.e, align 8, !tbaa !16
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.o = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul <4 x float> %i.o, %i.n              ; 2 uses
  %i.q = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.r = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.s = fmul <4 x float> %i.r, %i.n              ; 2 uses
  %i.t = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 3>
  %i.u = fcmp olt <4 x float> %i.p, %i.s          ; 2 uses
  %i.v = load <3 x float>, ptr %i.h, align 8, !tbaa !16
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.x = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul <4 x float> %i.x, %i.w              ; 2 uses
  %i.z = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 4, i32 1>
  %i.aa = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ab = fmul <4 x float> %i.aa, %i.w            ; 2 uses
  %i.ac = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 1, i32 4>
  %i.ad = fcmp olt <4 x float> %i.y, %i.ab        ; 2 uses
  %i.ae = load <3 x float>, ptr %i.i, align 8, !tbaa !16
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.ag = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = fmul <4 x float> %i.ag, %i.af           ; 2 uses
  %i.ai = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.aj = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ak = fmul <4 x float> %i.aj, %i.af           ; 2 uses
  %i.al = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 2, i32 5>
  %i.am = fcmp olt <4 x float> %i.ah, %i.ak       ; 2 uses
  %.v = select <4 x i1> %i.u, <4 x float> %i.q, <4 x float> %i.t
  %i.an = fmul <4 x float> %.v, %i.n
  %.v1 = select <4 x i1> %i.ad, <4 x float> %i.z, <4 x float> %i.ac
  %i.ao = fmul <4 x float> %.v1, %i.w
  %.v2 = select <4 x i1> %i.am, <4 x float> %i.ai, <4 x float> %i.al
  %i.ap = fmul <4 x float> %.v2, %i.af
  %i.aq = fadd <4 x float> %i.l, %i.an
  %i.ar = fadd <4 x float> %i.ao, %i.aq
  %i.as = fadd <4 x float> %i.ap, %i.ar
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %i.at, ptr %0, align 4, !tbaa !16
  %i.au = shufflevector <4 x i1> %i.u, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.av = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.av, <2 x float> %i.aw
  %i.ay = shufflevector <4 x i1> %i.ad, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.az = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ba = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bb = select <2 x i1> %i.ay, <2 x float> %i.az, <2 x float> %i.ba
  %i.bc = shufflevector <4 x i1> %i.am, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.bd = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bf = select <2 x i1> %i.bc, <2 x float> %i.bd, <2 x float> %i.be
  %i.bg = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bh = fadd <2 x float> %i.bg, %i.ax
  %i.bi = fadd <2 x float> %i.bb, %i.bh
  %i.bj = fadd <2 x float> %i.bf, %i.bi
  store <2 x float> %i.bj, ptr %i.f, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
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
  store ptr %i.j, ptr %i.a, align 8, !tbaa !125
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !157    ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = load <3 x float>, ptr %i.n, align 4, !tbaa !16
  %i.r = shufflevector <3 x float> %i.q, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.s = load <3 x float>, ptr %i.p, align 4, !tbaa !16
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.u = fadd <4 x float> %i.r, %i.t
  %i.v = fmul <4 x float> %i.u, splat (float 5.000000e-01) ; 5 uses
  %i.w = fsub <4 x float> %i.v, %i.t              ; 4 uses
  %i.x = fadd <4 x float> %i.v, %i.w              ; 2 uses
  %i.y = fsub <4 x float> %i.v, %i.w              ; 2 uses
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 7, i32 2, i32 0, i32 1> ; 2 uses
  %foldExtExtBinop = fsub <4 x float> %i.v, %i.w
  %i.aa = extractelement <4 x float> %foldExtExtBinop, i64 2 ; 4 uses
  store <8 x float> %i.z, ptr %i.o, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store float %i.aa, ptr %i.ab, align 4, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ad = extractelement <4 x float> %i.x, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = extractelement <4 x float> %i.y, i64 3  ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store float %i.aa, ptr %i.ag, align 4, !tbaa !115
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %foldExtExtBinop10 = fsub <4 x float> %i.v, %i.w ; 2 uses
  %i.ai = extractelement <4 x float> %foldExtExtBinop10, i64 0
  %i.aj = shufflevector <4 x float> %foldExtExtBinop10, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.z, <8 x i32> <i32 0, i32 9, i32 10, i32 0, i32 12, i32 10, i32 0, i32 9>
  store <8 x float> %i.ak, ptr %i.ah, align 4, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.aa, ptr %i.al, align 4, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.af, ptr %i.an, align 4, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.aa, ptr %i.ao, align 4, !tbaa !115
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
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.ay = load ptr, ptr %1, align 8, !tbaa !126   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv
  br i1 %i.bd, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #32
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %3 = load float, ptr %2, align 4, !tbaa !114    ; 2 uses
  %4 = load float, ptr %i.be, align 4, !tbaa !113 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !115 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.ap, align 8, !tbaa !16
  %i.bi = load <2 x float>, ptr %i.aq, align 8, !tbaa !16
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %6, %i.bi
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %i.bk = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bh, <2 x float> %i.bj)
  %i.bm = load <2 x float>, ptr %i.ar, align 8, !tbaa !16
  %8 = insertelement <2 x float> poison, float %i.bg, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.bm, <2 x float> %i.bl)
  %i.bo = load <2 x float>, ptr %i.as, align 8, !tbaa !16
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  %i.bq = load float, ptr %i.at, align 8, !tbaa !16
  %i.br = load float, ptr %i.au, align 8, !tbaa !16
  %i.bs = fmul float %3, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %4, float %i.bq, float %i.bs)
  %i.bu = load float, ptr %i.av, align 8, !tbaa !16
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bu, float %i.bt)
  %i.bw = load float, ptr %i.aw, align 8, !tbaa !16
  %i.bx = fadd float %i.bw, %i.bv
  store <2 x float> %i.bp, ptr %i.be, align 4
  store float %i.bx, ptr %i.bf, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !156
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !113
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #31 ; 3 uses
  %i.k = tail call double @sin(double noundef %i.i) #31 ; 3 uses
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !16
  %i.m = fmul <2 x float> %i.l, splat (float f0x3C8EFA35)
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = tail call double @cos(double noundef %i.o) #31 ; 4 uses
  %i.q = tail call double @sin(double noundef %i.o) #31 ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.s = tail call double @cos(double noundef %i.r) #31 ; 5 uses
  %i.t = tail call double @sin(double noundef %i.r) #31 ; 5 uses
  %i.u = fmul double %i.p, %i.s
  %i.v = fptrunc double %i.u to float             ; 3 uses
  store float %i.v, ptr %0, align 4, !tbaa !16
  %i.w = fmul double %i.p, %i.t
  %i.x = fptrunc double %i.w to float             ; 3 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !16
  %i.y = fptrunc double %i.q to float
  %i.z = fneg float %i.y                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !16
  %i.ab = fmul double %i.k, %i.q
  %i.ac = fmul double %i.j, %i.q
  %i.ad = fneg double %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.s, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.s, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.t, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.aj)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  store <2 x float> %i.ap, ptr %i.ae, align 4, !tbaa !16
  %i.aq = fmul double %i.k, %i.p
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ar, ptr %i.as, align 4, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = fneg double %i.s
  %i.av = insertelement <2 x double> poison, double %i.k, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.t, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.az)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  store <2 x float> %i.bf, ptr %i.at, align 4, !tbaa !16
  %i.bg = fmul double %i.j, %i.p
  %i.bh = fptrunc double %i.bg to float           ; 4 uses
  store float %i.bh, ptr %i.d, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bl = load <2 x float>, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  store float %i.bm, ptr %i.bj, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !16 ; 3 uses
  %i.bq = load float, ptr %i.bo, align 8, !tbaa !115 ; 3 uses
  %i.br = extractelement <2 x float> %i.bp, i64 0
  store float %i.br, ptr %i.bn, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bq, ptr %i.bs, align 4, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !113 ; 3 uses
  %i.bv = fcmp oeq float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !114 ; 2 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !115
  %i.cb = fcmp une float %i.ca, 1.000000e+00
  br i1 %i.cb, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.cc = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bx, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !115
  %i.cf = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cg, float %i.ar, i64 2 ; 2 uses
  %i.ci = fmul <4 x float> %i.ch, zeroinitializer ; 2 uses
  %i.cj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.x, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.z, i64 2
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bu, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cn, <4 x float> %i.ci)
  %i.cp = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bh, i64 2 ; 2 uses
  %i.cr = insertelement <4 x float> %i.cq, float %i.bu, i64 3
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> zeroinitializer, <4 x float> %i.co)
  %i.ct = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float 0.000000e+00, i64 3
  %i.cv = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cs)
  store <4 x float> %i.cx, ptr %0, align 4, !tbaa !16
  %i.cy = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cc, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.da = fmul <4 x float> %i.cz, %i.ch
  %i.db = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.v, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.x, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.z, i64 2 ; 2 uses
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.da)
  %i.df = insertelement <4 x float> %i.cq, float %i.cc, i64 3
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dh = shufflevector <2 x float> %i.bl, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.di = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 3 ; 2 uses
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %i.ae, align 4, !tbaa !16
  %i.dk = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dk) ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.dp = insertelement <4 x float> %i.do, float %i.bh, i64 2
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.dp, <4 x float> %i.dl)
  %i.dr = insertelement <4 x float> %i.di, float %i.bq, i64 2
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dq)
  store <4 x float> %i.ds, ptr %i.at, align 4, !tbaa !16
  %i.dt = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 3
  %i.du = insertelement <4 x float> %i.dt, float %i.bh, i64 2
  %i.dv = insertelement <4 x float> %i.dl, float 1.000000e+00, i64 3
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> zeroinitializer, <4 x float> %i.dv)
  %i.dx = insertelement <4 x float> %i.dh, float -0.000000e+00, i64 3
  %i.dy = insertelement <4 x float> %i.dx, float %i.bq, i64 2
  %i.dz = fadd <4 x float> %i.dw, %i.dy
  store <4 x float> %i.dz, ptr %i.bj, align 4, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c
end_hunk_0
