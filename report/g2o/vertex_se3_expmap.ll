Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_se3_expmap?download=true
inline.NumInlined: 7536
inline.NumDeleted: 4191
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd:bb.a
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_7SE3QuatEED1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_7SE3QuatEEE, i64 16), ptr %i.a, align 16, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_7SE3QuatEEE, i64 288), ptr %0, align 16, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !44  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !45
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22, !inline_history !46
  br label %_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(280) %i.a) #21, !inline_history !46
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_7SE3QuatEED0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !76     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !75
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !15
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !15
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !222
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !222
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o7SE3Quat3logEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 16 %0, ptr noundef nonnull align 16 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0120 = alloca [5 x double], align 16     ; 10 uses
  %.sroa.0 = alloca [5 x double], align 16        ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 16, !tbaa !15, !noalias !229 ; 2 uses
  %i.c = fmul double %i.b, 2.000000e+00           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !15, !noalias !229 ; 2 uses
  %i.f = fmul double %i.c, %i.e                   ; 2 uses
  %i.g = fmul double %i.b, %i.c                   ; 2 uses
  %i.h = load <2 x double>, ptr %1, align 16, !tbaa !15, !noalias !229 ; 4 uses
  %i.i = fmul <2 x double> %i.h, splat (double 2.000000e+00) ; 3 uses
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.i, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.h, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.n = fmul <2 x double> %i.h, %i.i             ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.c, i64 0
  %i.p = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.t = fadd double %i.s, %i.g
  %i.u = fsub double 1.000000e+00, %i.t
  %i.v = fsub double %i.m, %i.f
  %i.w = fadd double %i.m, %i.f
  %i.x = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.y = fadd double %i.x, %i.g
  %i.z = fsub double 1.000000e+00, %i.y
  %i.aa = fsub <2 x double> %i.r, %i.l
  %i.ab = fadd <2 x double> %i.r, %i.l
  %i.ac = fadd double %i.x, %i.s
  %i.ad = fsub double 1.000000e+00, %i.ac
  %i.ae = fadd double %i.u, %i.z
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = fadd double %i.af, -1.000000e+00
  %i.ah = fmul double %i.ag, 5.000000e-01         ; 4 uses
  %i.ai = fsub <2 x double> %i.ab, %i.aa          ; 2 uses
  %i.aj = fsub double %i.w, %i.v                  ; 2 uses
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.ah)
  %i.al = fcmp ogt double %i.ak, 9.999900e-01
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = fmul <2 x double> %i.ai, splat (double 5.000000e-01) ; 7 uses
  %i.an = fmul double %i.aj, 5.000000e-01         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0120)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0120, i8 0, i64 40, i1 false), !alias.scope !230
  %i.ao = fneg double %i.an
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  store double %i.ao, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx193, align 8, !tbaa !15, !alias.scope !230
  %.sroa.0164.8.vec.extract = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  store double %i.an, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx191, align 8, !tbaa !15, !alias.scope !230
  %i.aq = fneg double %.sroa.0164.8.vec.extract
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  store double %i.aq, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx192, align 16, !tbaa !15, !alias.scope !230
  %.sroa.0120.0..sroa.0120.0..sroa.0120.0. = load <2 x double>, ptr %.sroa.0120, align 16 ; 4 uses
  %i.ar = fmul <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., splat (double f0x3FB5555555555555) ; 3 uses
  %i.as = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.ar, %i.as
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  %.sroa.0120.24..sroa.0120.24..sroa.0120.24. = load <2 x double>, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 4 uses
  %i.au = fmul <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., splat (double f0x3FB5555555555555) ; 3 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  %.sroa.0120.8..sroa.0120.8..sroa.0120.8. = load <2 x double>, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 3 uses
  %i.av = shufflevector <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.au, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  %.sroa.0120.16..sroa.0120.16..sroa.0120.16. = load <2 x double>, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 16 ; 6 uses
  %i.ay = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> zeroinitializer
  %2 = extractelement <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., i64 0
  %i.az = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = fmul <2 x double> %i.ar, %i.az
  %i.bb = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.au, %i.bb
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  %i.be = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.ar, %i.ap
  %.sroa.0164.0.vec.extract = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.bg = fneg double %.sroa.0164.0.vec.extract   ; 2 uses
  %.sroa.16132.56.vec.insert = insertelement <2 x double> %i.ap, double %i.bg, i64 1
  %i.bh = fmul <2 x double> %.sroa.16132.56.vec.insert, splat (double f0x3FB5555555555555) ; 3 uses
  %i.bi = fmul <2 x double> %i.bh, %i.ay
  %i.bj = fadd <2 x double> %i.ax, %i.bi
  %i.bk = fmul <2 x double> %i.be, %i.bh
  %i.bl = fadd <2 x double> %i.bk, %i.bd
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.au
  %i.bp = fadd <2 x double> %i.bo, %i.bf
  %i.bq = fmul <2 x double> %i.bh, zeroinitializer
  %i.br = fadd <2 x double> %i.bq, %i.bp
  %i.bs = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 0, i32 2>
  %i.bt = fmul <2 x double> %i.bs, splat (double 5.000000e-01)
  %i.bu = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.bt
  %i.bv = fadd <2 x double> %i.bj, %i.bu
  %i.bw = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x i32> <i32 1, i32 3>
  %i.bx = fmul <2 x double> %i.bw, splat (double 5.000000e-01)
  %i.by = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.bx
  %i.bz = fadd <2 x double> %i.bl, %i.by
  %i.ca = fmul <2 x double> %i.am, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.cb = fsub <2 x double> <double poison, double 0.000000e+00>, %i.ca
  %i.cc = fmul <2 x double> %i.ca, <double 5.000000e-01, double poison>
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %3 = fmul double %.sroa.0164.0.vec.extract, f0x3FB5555555555555 ; 2 uses
  %4 = fmul double %2, f0x3FB5555555555555        ; 2 uses
  %i.ce = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x i32> <i32 1, i32 2>
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop182.a = fmul <2 x double> %i.ce, %6
  %7 = fmul double %4, %.sroa.0164.8.vec.extract
  %8 = insertelement <2 x double> poison, double %3, i64 0
  %i.cf = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 1, i32 2>
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %9 = shufflevector <2 x double> %i.am, <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x i32> <i32 0, i32 2> ; 2 uses
  %10 = fmul <2 x double> %9, zeroinitializer
  %i.ci = fadd <2 x double> %i.ch, %10
  %11 = fadd <2 x double> %foldExtExtBinop182.a, %i.ci
  %12 = fmul double %.sroa.0164.0.vec.extract, %3
  %i.cj = fsub double 0.000000e+00, %12
  %i.ck = fadd double %7, %i.cj
  %i.cl = fmul <2 x double> %9, splat (double 5.000000e-01)
  %i.cm = fsub <2 x double> zeroinitializer, %i.cl
  %i.cn = fadd <2 x double> %i.cm, %11
  %i.co = fadd <2 x double> %i.cd, <double -0.000000e+00, double 0.000000e+00>
  %i.cp = fadd <2 x double> %i.co, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0120)
  br label %.preheader.preheader

bb.c:                                             ; preds = %bb.a
  %i.cq = tail call double @acos(double noundef %i.ah) #21 ; 4 uses
  %i.cr = fneg double %i.ah
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.ah, double 1.000000e+00)
  %i.ct = tail call double @sqrt(double noundef %i.cs) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0, i8 0, i64 40, i1 false), !alias.scope !231
  %i.cu = fmul double %i.cq, 5.000000e-01
  %i.cv = tail call double @tan(double noundef %i.cu) #21
  %i.cw = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1
  %i.cy = fmul <2 x double> %i.cx, splat (double 2.000000e+00)
  %i.cz = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x double> %i.da, %i.cy          ; 3 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.ai, %i.dc          ; 10 uses
  %i.de = extractelement <2 x double> %i.db, i64 0
  %i.df = fmul double %i.aj, %i.de                ; 3 uses
  %i.dg = fneg double %i.df
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  store double %i.dg, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx190, align 8, !tbaa !15, !alias.scope !231
  %.sroa.0164.8.vec.extract168 = extractelement <2 x double> %i.dd, i64 1 ; 2 uses
  %i.dh = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store double %i.df, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx188, align 8, !tbaa !15, !alias.scope !231
  %i.di = fneg double %.sroa.0164.8.vec.extract168
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.di, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx189, align 16, !tbaa !15, !alias.scope !231
  %i.dj = extractelement <2 x double> %i.db, i64 1
  %i.dk = fsub double 1.000000e+00, %i.dj
  %i.dl = fmul double %i.cq, %i.cq
  %i.dm = fdiv double %i.dk, %i.dl                ; 2 uses
  %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27 = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dn = shufflevector <2 x double> %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16 ; 4 uses
  %i.do = fmul <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., %i.dn ; 3 uses
  %i.dp = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.do
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx, align 8 ; 4 uses
  %i.dr = fmul <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., %i.dn ; 3 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx, align 8 ; 3 uses
  %i.ds = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.ds, %i.dr
  %i.du = fadd <2 x double> %i.dq, %i.dt
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16..sroa.0.16. = load <2 x double>, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx, align 16 ; 7 uses
  %i.dv = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = extractelement <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., i64 0
  %i.dx = fmul double %i.dm, %i.dw                ; 2 uses
  %i.dy = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x double> %i.dy, %i.do
  %i.ea = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fmul <2 x double> %i.dr, %i.ea
  %i.ec = fadd <2 x double> %i.dz, %i.eb
  %i.ed = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.do, %i.dh
  %i.ef = fmul double %i.dx, %.sroa.0164.8.vec.extract168
  %.sroa.0164.0.vec.extract166 = extractelement <2 x double> %i.dd, i64 0
  %i.eg = fneg double %.sroa.0164.0.vec.extract166 ; 2 uses
  %.sroa.16.56.vec.insert = insertelement <2 x double> %i.dh, double %i.eg, i64 1
  %i.eh = fmul <2 x double> %.sroa.16.56.vec.insert, %i.dn ; 3 uses
  %i.ei = fmul <2 x double> %i.dv, %i.eh
  %i.ej = fadd <2 x double> %i.ei, %i.du
  %i.ek = fmul <2 x double> %i.ed, %i.eh
  %i.el = fadd <2 x double> %i.ek, %i.ec
  %i.em = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.dr
  %i.ep = fadd <2 x double> %i.eo, %i.ee
  %i.eq = fmul <2 x double> %i.eh, zeroinitializer
  %i.er = fadd <2 x double> %i.eq, %i.ep
  %i.es = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x i32> <i32 0, i32 2>
  %i.et = fmul <2 x double> %i.es, splat (double 5.000000e-01)
  %i.eu = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.et
  %i.ev = fadd <2 x double> %i.ej, %i.eu
  %i.ew = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x i32> <i32 1, i32 3>
  %i.ex = fmul <2 x double> %i.ew, splat (double 5.000000e-01)
  %i.ey = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.ex
  %i.ez = fadd <2 x double> %i.el, %i.ey
  %i.fa = fmul <2 x double> %i.dd, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.fb = fsub <2 x double> <double poison, double 0.000000e+00>, %i.fa
  %i.fc = fmul <2 x double> %i.fa, <double 5.000000e-01, double poison>
  %i.fd = shufflevector <2 x double> %i.fb, <2 x double> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fe = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x i32> <i32 1, i32 2>
  %i.ff = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fe, %i.fg
  %i.fi = insertelement <2 x double> %i.dd, double 0.000000e+00, i64 1
  %i.fj = fmul <2 x double> %i.fi, %i.dn          ; 4 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fmul ninf double %i.fk, 0.000000e+00
  %i.fm = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 1, i32 2>
  %i.fn = fmul <2 x double> %i.fm, %i.fj
  %i.fo = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> %i.dd, <2 x i32> <i32 2, i32 0>
  %i.fp = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fmul <2 x double> %i.fo, %i.fp
  %i.fr = fadd <2 x double> %i.fn, %i.fq
  %i.fs = fadd <2 x double> %i.fh, %i.fr
  %foldExtExtBinop186 = fmul <2 x double> %i.dd, %i.fj
  %i.ft = extractelement <2 x double> %foldExtExtBinop186, i64 0
  %i.fu = fsub double %i.fl, %i.ft
  %i.fv = fadd double %i.ef, %i.fu
  %i.fw = shufflevector <2 x double> %i.dd, <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 0, i32 2>
  %i.fx = fmul <2 x double> %i.fw, splat (double 5.000000e-01)
  %i.fy = fsub <2 x double> zeroinitializer, %i.fx
  %i.fz = fadd <2 x double> %i.fy, %i.fs
  %i.ga = fadd <2 x double> %i.fd, <double -0.000000e+00, double 0.000000e+00>
  %i.gb = fadd <2 x double> %i.ga, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c, %bb.b
  %.sroa.10.0 = phi <2 x double> [ %i.bz, %bb.b ], [ %i.ez, %bb.c ]
  %.sroa.0146.0 = phi <2 x double> [ %i.bv, %bb.b ], [ %i.ev, %bb.c ]
  %.sroa.18.0 = phi <2 x double> [ %i.cp, %bb.b ], [ %i.gb, %bb.c ]
  %.sroa.23.0.in = phi double [ %i.ck, %bb.b ], [ %i.fv, %bb.c ]
  %.sroa.0164.0 = phi <2 x double> [ %i.am, %bb.b ], [ %i.dd, %bb.c ]
  %.sroa.9.0 = phi double [ %i.an, %bb.b ], [ %i.df, %bb.c ]
  %i.gc = phi <2 x double> [ %i.cn, %bb.b ], [ %i.fz, %bb.c ]
  %.sroa.23.0 = fadd double %.sroa.23.0.in, 1.000000e+00
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ge = load <2 x double>, ptr %i.gd, align 16  ; 2 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %.sroa.0146.0, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = load <2 x double>, ptr %i.gh, align 8   ; 4 uses
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x double> %.sroa.10.0, %i.gj
  %i.gl = fadd <2 x double> %i.gg, %i.gk
  %i.gm = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gn = fmul <2 x double> %.sroa.18.0, %i.gm
  %i.go = fadd <2 x double> %i.gn, %i.gl
  %i.gp = shufflevector <2 x double> %i.gi, <2 x double> %i.ge, <2 x i32> <i32 0, i32 2>
  %i.gq = fmul <2 x double> %i.gp, %i.gc          ; 2 uses
  %i.gr = extractelement <2 x double> %i.gi, i64 1
  %i.gs = fmul double %i.gr, %.sroa.23.0
  %i.gt = extractelement <2 x double> %i.gq, i64 0
  %i.gu = fadd double %i.gt, %i.gs
  %i.gv = extractelement <2 x double> %i.gq, i64 1
  %i.gw = fadd double %i.gv, %i.gu
  store <2 x double> %.sroa.0164.0, ptr %0, align 16, !tbaa !15
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !15
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.go, ptr %scevgep, align 8, !tbaa !15
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.gw, ptr %.sroa.4.0.scevgep.sroa_idx, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

declare void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7computeEv(ptr noundef nonnull align 16 dereferenceable(346) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Ref", align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load <2 x double>, ptr %0, align 16, !tbaa !31
  %i.c = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !31
  %i.f = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !31
  %i.i = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %i.j = fadd <2 x double> %i.f, %i.i
  %i.k = fadd <2 x double> %i.c, %i.j             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !31
  %i.n = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !31
  %i.q = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_0
