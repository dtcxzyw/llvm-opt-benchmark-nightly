inline.NumInlined: 3761
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp15BlenderImporter12ConvertLightERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4LampERNS1_14ConversionDataE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit37 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.m, ptr %5, align 8
  %i.n = load i64, ptr %i.a, align 8
  store i64 %i.n, ptr %i.j, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.j, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.u = load i64, ptr %i.r, align 8              ; 5 uses
  %i.v = icmp ugt i64 %i.u, 1023
  %.pre.i = load ptr, ptr %5, align 8             ; 3 uses
  br i1 %i.v, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = trunc nuw nsw i64 %i.u to i32
  store i32 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 1 %.pre.i, i64 %i.u, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store i8 0, ptr %i.y, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.e, %bb.d
  %i.z = icmp eq ptr %.pre.i, %i.j
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.aa = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.aa)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ab = load i64, ptr %i.j, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.ac) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1064
  %i.ae = load i32, ptr %i.ad, align 8
  switch i32 %i.ae, label %bb.m [
    i32 0, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.i
    i32 4, label %bb.j
  ]

_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit37: ; preds = %.noexc.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1132) #27
  resume { ptr, i32 } %i.af

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1028
  store i32 2, ptr %i.ag, align 4
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1028
  store i32 3, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1044
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.ai, align 4
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1060
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.471.0..sroa_idx, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 1100
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1104
  %i.am = load float, ptr %i.al, align 8
  %i.an = fsub float 1.000000e+00, %i.am
  %i.ao = fmul float %i.ak, %i.an
  store float %i.ao, ptr %i.e, align 4
  store float %i.ak, ptr %i.f, align 4
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1028
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1044
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.aq, align 4
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1060
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.465.0..sroa_idx, align 4
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 1028
  store i32 5, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1132
  %i.at = load i16, ptr %i.as, align 4
  %i.au = icmp eq i16 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1136
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1140
  %i.ay = load i32, ptr %i.ax, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ %i.ay, %bb.k ], [ %i.aw, %bb.j ]
  store i32 %i.aw, ptr %i.g, align 4
  store i32 %.sink, ptr %i.h, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1044
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.az, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1060
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.l, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1076
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1080
  %i.bd = load float, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1084
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1092
  %i.bh = load float, ptr %i.bg, align 4          ; 3 uses
  %i.bi = fmul float %i.bb, %i.bh                 ; 3 uses
  %i.bj = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bk = fmul float %i.bf, %i.bh                 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store float %i.bi, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1108
  store float %i.bj, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store float %i.bk, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1092
  store float %i.bi, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store float %i.bj, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1100
  store float %i.bk, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store float %i.bi, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1084
  store float %i.bj, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store float %i.bk, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 1108
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 3 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0
  %i.bx = fcmp oeq float %i.bw, 1.000000e+00
  %i.by = extractelement <2 x float> %i.bv, i64 1
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1116
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 1096
  %i.ce = load float, ptr %i.cd, align 8          ; 4 uses
  %i.cf = fcmp ogt float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 1068
  store float 1.000000e+00, ptr %i.cg, align 4
  %6 = fmul nnan float %i.ce, %i.ce
  %7 = insertelement <2 x float> poison, float %i.ce, i64 0
  %8 = insertelement <2 x float> %7, float %6, i64 1
  %9 = fdiv <2 x float> <float 2.000000e+00, float 1.000000e+00>, %8 ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  store float %10, ptr %i.c, align 4
  %11 = extractelement <2 x float> %9, i64 1
  br label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit

._crit_edge:                                      ; preds = %bb.m, %bb.o, %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 1068
  store <2 x float> %i.bv, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 1116
  %i.cj = load float, ptr %i.ci, align 4
  br label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.p, %._crit_edge
  %storemerge = phi float [ %i.cj, %._crit_edge ], [ %11, %bb.p ]
  store float %storemerge, ptr %i.d, align 4
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %i.ak
  %i.ay = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.az = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ba = load float, ptr %i.o, align 4           ; 6 uses
  %i.bb = fneg float %i.ba                        ; 4 uses
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 8 uses
  %i.bd = load float, ptr %i.p, align 4           ; 5 uses
  %i.be = fmul float %i.af, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.be, %i.ad
  %i.bg = extractelement <2 x float> %i.az, i64 0
  %i.bh = fmul float %i.a, %i.bg                  ; 2 uses
  %i.bi = fmul float %i.ab, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.w, float %i.av)
  %i.bk = fmul float %i.bh, %i.ad
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aa, float %i.bj)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.n, float %i.bl)
  %i.bn = fmul float %i.aw, %i.ba
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.e, float %i.bm)
  %foldExtExtBinop47 = fmul <2 x float> %i.az, %i.ae ; 2 uses
  %i.bp = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bq = fmul float %i.bp, %i.bb
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.w, float %i.bo)
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %foldExtExtBinop47
  %i.bs = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.n, float %i.br)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.e, float %i.bt)
  %i.bv = fmul float %i.aj, %i.be
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.w, float %i.bu)
  %i.bx = extractelement <2 x float> %i.ay, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.az, %i.ay
  %i.by = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bz = fmul float %i.ba, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aa, float %i.bw)
  %i.cb = fmul float %i.by, %i.ac
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.n, float %i.ca)
  %i.cd = fmul float %i.bd, %i.bx                 ; 2 uses
  %i.ce = fmul float %i.ab, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.e, float %i.cc)
  %i.cg = fmul float %i.cd, %i.ak
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.aa, float %i.cf)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.ay
  %i.ci = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.cj = fmul float %i.aj, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.n, float %i.ch)
  %i.cl = fmul float %i.ci, %i.bb
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.e, float %i.ck)
  %i.cn = extractelement <2 x float> %i.bc, i64 0
  %i.co = fmul float %i.bd, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.co, %i.ac
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.w, float %i.cm)
  %i.cr = fmul float %i.al, %i.co
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.cq)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.bc
  %i.ct = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ad
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.n, float %i.cs)
  %i.cw = fmul float %i.ba, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.w, float %i.cv)
  %foldExtExtBinop57 = fmul <2 x float> %i.ah, %i.bc ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cz = fmul float %i.cy, %i.bb
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aa, float %i.cx)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.db = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.n, float %i.da) ; 2 uses
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.de
  %i.dj = fneg float %i.e
  %i.dk = fneg float %i.aa
  %i.dl = fneg float %i.df                        ; 2 uses
  %i.dm = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.do = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dp, <4 x float> %i.di) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
  %i.ds = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.ak, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dw = fmul <4 x float> %i.ds, %i.dv
  %i.dx = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dr, <4 x i32> <i32 1, i32 0, i32 0, i32 4>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.dz, <4 x float> %i.dw)
  %i.eb = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.ec = fmul <4 x float> %i.eb, %i.ea
  %i.ed = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.ee = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.dq, <4 x float> %i.ec)
  %i.eg = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ac, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ej = fmul <4 x float> %i.dm, %i.ei
  %i.ek = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ek, <4 x float> %i.ej) ; 2 uses
  %i.em = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.el, <4 x float> %i.ef)
  %i.eo = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.dl, i64 1 ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.er = fmul <4 x float> %i.en, %i.eq
  %i.es = fneg float %i.n
  %i.et = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.eu = fmul <4 x float> %i.et, %i.dv
  %i.ev = insertelement <4 x float> poison, float %i.n, i64 0
  %i.ew = insertelement <4 x float> %i.do, float %i.n, i64 0
  %i.ex = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ez = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float %i.n, i64 1
  %i.fb = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fc, <4 x float> %i.eu) ; 2 uses
  %i.fe = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ff = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.a, i64 1
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fg)
  %i.fm = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fn = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.bb, i64 1
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fq = fmul <4 x float> %i.fm, %i.fp
  %i.fr = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.w, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ft, <4 x float> %i.fq)
  %i.fv = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fu, <4 x float> %i.fl)
  %i.fx = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.df, i64 1 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
end_hunk_0
