begin_hunk_0_@_ZThn64_N3g2o12VertexLine3DD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(272) %i.a, i64 noundef 272) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEED0Ev(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %i.a, align 16, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %0, align 16, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !48  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !52
  br label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit

_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(248) %i.a) #19, !inline_history !52
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi4ENS_6Line3DEED0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !69     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !13
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !67
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !13
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !13
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
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o6Line3D5oplusERKN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEE(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit:
  %.sroa.4.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.18.sroa.0 = alloca [3 x double], align 16 ; 6 uses
  %.sroa.12 = alloca [4 x double], align 16       ; 9 uses
  %.sroa.4 = alloca [4 x double], align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !37, !noalias !83 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !13, !noalias !83 ; 4 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %i.f = load <2 x double>, ptr %0, align 16, !tbaa !37, !noalias !86 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load double, ptr %i.g, align 16, !tbaa !13, !noalias !86 ; 4 uses
  %i.i = fmul <2 x double> %i.f, %i.f             ; 2 uses
  %.sroa.0159.8.vec.extract.i = extractelement <2 x double> %i.f, i64 1 ; 2 uses
  %.sroa.0157.8.vec.extract.i = extractelement <2 x double> %i.b, i64 1 ; 3 uses
  %i.j = fneg double %.sroa.0157.8.vec.extract.i
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %.sroa.0159.8.vec.extract.i, double %i.d, double %i.k) ; 2 uses
  %.sroa.0157.0.vec.extract.i = extractelement <2 x double> %i.b, i64 0 ; 2 uses
  %.sroa.0159.0.vec.extract.i = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.m = fneg double %i.d
  %i.n = fmul double %.sroa.0159.0.vec.extract.i, %i.m
  %2 = tail call double @llvm.fmuladd.f64(double %i.h, double %.sroa.0157.0.vec.extract.i, double %i.n) ; 2 uses
  %i.o = fneg double %.sroa.0157.0.vec.extract.i
  %i.p = fmul double %.sroa.0159.8.vec.extract.i, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %.sroa.0159.0.vec.extract.i, double %.sroa.0157.8.vec.extract.i, double %i.p) ; 3 uses
  %.sroa.0164.0.vec.insert.i = insertelement <2 x double> poison, double %i.l, i64 0
  %.sroa.0164.8.vec.insert.i.a = insertelement <2 x double> %.sroa.0164.0.vec.insert.i, double %2, i64 1 ; 2 uses
  %3 = fmul <2 x double> %.sroa.0164.8.vec.insert.i.a, %.sroa.0164.8.vec.insert.i.a ; 2 uses
  %shift = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %3, %shift
  %i.r = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.s = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = insertelement <2 x double> poison, double %i.h, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.d, i64 1 ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = fadd <2 x double> %i.w, %i.t
  %i.y = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.x) ; 7 uses
  %i.z = fmul <2 x double> %i.y, %i.y
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x double> %i.y, double %i.q, i64 0
  %i.ac = insertelement <2 x double> %i.y, double %i.q, i64 0
  %i.ad = fmul <2 x double> %i.ab, %i.ac
  %i.ae = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.af)
  %i.ah = fdiv <2 x double> splat (double 1.000000e+00), %i.ag ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 3 uses
  %i.aj = fmul double %i.l, %i.ai
  %.sroa.31.80.vec.insert = insertelement <2 x double> poison, double %i.aj, i64 0
  %4 = fmul double %2, %i.ai
  %.sroa.31.88.vec.insert = insertelement <2 x double> %.sroa.31.80.vec.insert, double %4, i64 1 ; 2 uses
  %5 = extractelement <2 x double> %i.y, i64 1
  %6 = fneg double %5
  %7 = extractelement <2 x double> %i.ah, i64 1
  %8 = fmul double %7, %6
  %.sroa.8.16.vec.insert = insertelement <2 x double> poison, double %8, i64 0
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.y, %i.ak           ; 2 uses
  %9 = shufflevector <2 x double> %.sroa.8.16.vec.insert, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.am = fdiv <2 x double> splat (double 1.000000e+00), %i.y ; 3 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.f, %i.an           ; 2 uses
  %i.ap = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.aq = fmul double %.sroa.0157.8.vec.extract.i, %i.ap
  %.sroa.18.sroa.0.16..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 16
  store double %i.aq, ptr %.sroa.18.sroa.0.16..sroa_idx146, align 16, !tbaa !13, !alias.scope !80
  %i.ar = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x double> %i.ar, double %i.h, i64 0
  %i.at = fmul <2 x double> %i.as, %i.am
  store <2 x double> %i.at, ptr %.sroa.18.sroa.0, align 16, !tbaa !13, !alias.scope !80
  %i.au = fmul double %i.d, %i.ap                 ; 2 uses
  %i.av = fmul double %i.q, %i.ai                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 3 uses
  %i.ay = tail call double @cos(double noundef %i.ax) #19
  %i.az = tail call double @sin(double noundef %i.ax) #19
  %i.ba = tail call double @cos(double noundef %i.ax) #19 ; 0 uses
  %i.bb = load <2 x double>, ptr %1, align 16     ; 6 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 2 uses
  %shift124 = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x double> %i.bc, %shift124
  %i.bd = extractelement <2 x double> %foldExtExtBinop125, i64 0
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load double, ptr %i.be, align 16, !tbaa !13 ; 3 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fadd double %i.bg, %i.bd
  %i.bi = fsub double 1.000000e+00, %i.bh
  %i.bj = tail call double @sqrt(double noundef %i.bi) #19
  %.sroa.849.16.vec.insert = insertelement <2 x double> poison, double %i.bf, i64 0
  %.sroa.849.24.vec.insert = insertelement <2 x double> %.sroa.849.16.vec.insert, double %i.bj, i64 1 ; 4 uses
  %i.bk = fmul <2 x double> %i.bb, %i.bb
  %i.bl = fmul <2 x double> %.sroa.849.24.vec.insert, %.sroa.849.24.vec.insert
  %i.bm = fadd <2 x double> %i.bl, %i.bk          ; 2 uses
  %shift127 = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop128 = fadd <2 x double> %i.bm, %shift127
  %i.bn = extractelement <2 x double> %foldExtExtBinop128, i64 0 ; 2 uses
  %i.bo = fcmp ogt double %i.bn, 0.000000e+00     ; 2 uses
  %.scalar.i.i24 = tail call double @llvm.sqrt.f64(double %i.bn)
  %i.bp = insertelement <2 x double> poison, double %.scalar.i.i24, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fdiv <2 x double> %i.bb, %i.bq
  %i.bs = fdiv <2 x double> %.sroa.849.24.vec.insert, %i.bq
  %.sroa.045.0 = select i1 %i.bo, <2 x double> %i.br, <2 x double> %i.bb ; 2 uses
  %.sroa.849.0 = select i1 %i.bo, <2 x double> %i.bs, <2 x double> %.sroa.849.24.vec.insert ; 2 uses
  %.sroa.045.0.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 0 ; 4 uses
  %i.bt = fmul double %.sroa.045.0.vec.extract, 2.000000e+00 ; 2 uses
  %.sroa.045.8.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 1 ; 3 uses
  %i.bu = fmul double %.sroa.045.8.vec.extract, 2.000000e+00 ; 3 uses
  %.sroa.849.16.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 0 ; 2 uses
  %i.bv = fmul double %.sroa.849.16.vec.extract, 2.000000e+00 ; 4 uses
  %.sroa.849.24.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 1 ; 3 uses
  %i.bw = fmul double %.sroa.849.24.vec.extract, %i.bt
  %i.bx = fmul double %.sroa.849.24.vec.extract, %i.bu
  %i.by = fmul double %.sroa.849.24.vec.extract, %i.bv ; 2 uses
  %i.bz = fmul double %.sroa.045.0.vec.extract, %i.bt
  %i.ca = fmul double %.sroa.045.0.vec.extract, %i.bu ; 2 uses
  %i.cb = fmul double %.sroa.045.0.vec.extract, %i.bv
  %i.cc = fmul double %.sroa.045.8.vec.extract, %i.bu
  %i.cd = fmul double %.sroa.045.8.vec.extract, %i.bv
  %i.ce = fmul double %.sroa.849.16.vec.extract, %i.bv ; 2 uses
  %i.cf = fadd double %i.cc, %i.ce
  %i.cg = fsub double 1.000000e+00, %i.cf
  %i.ch = fsub double %i.ca, %i.by
  %i.ci = fadd double %i.ca, %i.by
  %i.cj = fadd double %i.bz, %i.ce
  %i.ck = fsub double 1.000000e+00, %i.cj         ; 2 uses
  %i.cl = fsub double %i.cb, %i.bx
  %i.cm = fadd double %i.cd, %i.bw                ; 2 uses
  store double %i.cg, ptr %.sroa.12, align 16
  %.sroa.12.8..sroa_idx142 = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 8
  store double %i.ci, ptr %.sroa.12.8..sroa_idx142, align 8
  %.sroa.12.16..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 16
  store double %i.cl, ptr %.sroa.12.16..sroa_idx143, align 16
  %.sroa.12.24..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 24
  store double %i.ch, ptr %.sroa.12.24..sroa_idx144, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %.sroa.12.0..sroa.12.0..sroa.12.32. = load <2 x double>, ptr %.sroa.12, align 16 ; 2 uses
  %i.cn = shufflevector <2 x double> %.sroa.12.0..sroa.12.0..sroa.12.32., <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x double> %i.ao, %i.cn
  %.sroa.18.sroa.0.8..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 8
  %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56. = load <2 x double>, ptr %.sroa.18.sroa.0.8..sroa_idx145, align 8, !tbaa !37 ; 2 uses
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 8
  %.sroa.12.8..sroa.12.8..sroa.12.40. = load <2 x double>, ptr %.sroa.12.8..sroa_idx, align 8 ; 2 uses
  %i.cp = shufflevector <2 x double> %.sroa.12.8..sroa.12.8..sroa.12.40., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.cp
  %i.cr = fadd <2 x double> %i.co, %i.cq
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 16
  %.sroa.12.16..sroa.12.16..sroa.12.48. = load <2 x double>, ptr %.sroa.12.16..sroa_idx, align 16 ; 4 uses
  %i.cs = shufflevector <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %.sroa.31.88.vec.insert, %i.cs
  %i.cu = fadd <2 x double> %i.cr, %i.ct
  %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99 = load double, ptr %.sroa.18.sroa.0, align 16, !tbaa !13 ; 2 uses
  %i.cv = extractelement <2 x double> %.sroa.12.0..sroa.12.0..sroa.12.32., i64 0
  %i.cw = fmul double %i.cv, %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99
  %i.cx = extractelement <2 x double> %.sroa.12.8..sroa.12.8..sroa.12.40., i64 0
  %i.cy = fmul double %i.cx, %i.au
  %i.cz = extractelement <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., i64 0
  %i.da = fmul double %i.cz, %i.av
  %i.db = fadd double %i.cy, %i.da
  %i.dc = fadd double %i.cw, %i.db
  store double %i.dc, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !13
  %i.dd = extractelement <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., i64 1
  %i.de = shufflevector <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fmul <2 x double> %i.ao, %i.de
  %i.dg = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.dh
  %i.dj = fadd <2 x double> %i.df, %i.di
  %i.dk = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %.sroa.31.88.vec.insert, %i.dl
  %i.dn = fadd <2 x double> %i.dm, %i.dj
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  store <2 x double> %i.dn, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %i.do = fmul double %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99, %i.dd
  %i.dp = fmul double %i.ck, %i.au
  %i.dq = fmul double %i.cm, %i.av
  %i.dr = fadd double %i.dp, %i.dq
  %i.ds = fadd double %i.do, %i.dr
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  store double %i.ds, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !13
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !37 ; 2 uses
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.dt = bitcast double %i.ay to <1 x double>
  %i.du = shufflevector <1 x double> %i.dt, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.al, %i.du
  %i.dw = bitcast double %i.az to <1 x double>
  %i.dx = shufflevector <1 x double> %i.dw, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %9, %i.dx
  %i.dz = fadd <2 x double> %i.dv, %i.dy          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, %i.cu
  %foldExtExtBinop130 = fmul <2 x double> %i.dz, %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i
  %i.ec = extractelement <2 x double> %foldExtExtBinop130, i64 0
  %i.ed = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = shufflevector <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.ef = fmul <2 x double> %i.ed, %i.ee          ; 3 uses
  %foldExtExtBinop132 = fmul <2 x double> %i.dz, %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i
  %i.eg = extractelement <2 x double> %foldExtExtBinop132, i64 1 ; 3 uses
  store double %i.ec, ptr %.sroa.4, align 16, !tbaa !13, !alias.scope !89
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8
  store <2 x double> %i.ef, ptr %.sroa.4.8..sroa_idx, align 8, !tbaa !37, !alias.scope !89
  %.sroa.4.24..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  store double %i.eg, ptr %.sroa.4.24..sroa_idx141, align 8, !tbaa !13, !alias.scope !89
  %i.eh = fmul <2 x double> %i.ef, %i.ef          ; 2 uses
  %shift134 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop135 = fadd <2 x double> %i.eh, %shift134
  %i.ei = extractelement <2 x double> %foldExtExtBinop135, i64 0
  %i.ej = fmul double %i.eg, %i.eg
  %i.ek = fadd double %i.ej, %i.ei
  %.scalar.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ek)
  %i.el = fdiv double 1.000000e+00, %.scalar.i.i.i
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eo = fmul <2 x double> %i.eb, %i.en
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16. = load <2 x double>, ptr %.sroa.4, align 16, !tbaa !37, !alias.scope !89
  %i.ep = fmul <2 x double> %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16., %i.en
  store <2 x double> %i.ep, ptr %.sroa.4, align 16, !tbaa !37, !alias.scope !89
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32. = load <2 x double>, ptr %.sroa.4.16..sroa_idx, align 16, !tbaa !37, !alias.scope !89
  %i.eq = fmul <2 x double> %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32., %i.en
  %.sroa.4.16..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  store <2 x double> %i.eq, ptr %.sroa.4.16..sroa_idx140, align 16, !tbaa !37, !alias.scope !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4, i64 32, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.er = load <2 x double>, ptr %i.a, align 8, !tbaa !37, !noalias !93 ; 2 uses
  %i.es = load double, ptr %i.c, align 8, !tbaa !13, !noalias !93 ; 2 uses
  %i.et = fmul <2 x double> %i.er, %i.er          ; 2 uses
  %shift137 = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop138 = fadd <2 x double> %i.et, %shift137
  %i.eu = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.ev = fmul double %i.es, %i.es
  %i.ew = fadd double %i.ev, %i.eu
  %.scalar.i.i29 = tail call noundef double @llvm.sqrt.f64(double %i.ew)
  %i.ex = fdiv double 1.000000e+00, %.scalar.i.i29
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fa = fmul <2 x double> %i.eo, %i.ez
  store <2 x double> %i.fa, ptr %0, align 16, !tbaa !37
  %i.fb = load <2 x double>, ptr %i.g, align 16, !tbaa !37
  %i.fc = fmul <2 x double> %i.fb, %i.ez
  store <2 x double> %i.fc, ptr %i.g, align 16, !tbaa !37
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 16, !tbaa !37
  %i.ff = fmul <2 x double> %i.fe, %i.ez
  store <2 x double> %i.ff, ptr %i.fd, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN3g2o16OptimizableGraph6VertexC2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(128) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.652", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.668", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.676", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.585", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03455 = phi i64 [ 0, %bb.a ], [ %i.p, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 15 uses
  %i.m = add nsw i64 %.03455, -1                  ; 2 uses
  %i.n = add nsw i64 %.03455, -2
  %i.o = sub nuw nsw i64 3, %.03455               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = add nuw nsw i64 %.03455, 1               ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %.03455, 5        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !96
  store i64 %i.o, ptr %i.a, align 8, !tbaa !100
  store ptr %0, ptr %i.b, align 8, !tbaa !101
  store i64 %i.p, ptr %i.c, align 8, !tbaa !100
  store i64 %.03455, ptr %i.d, align 8, !tbaa !100
  store i64 4, ptr %i.e, align 8, !tbaa !103
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.03455 ; 9 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %.not56 = icmp eq i64 %.03455, 0
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 3 uses
  %.not53 = icmp eq i64 %.03455, 1
  br i1 %.not53, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.n, 3
  br i1 %i.x, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01725.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02324.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i, 5
  %i.y = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !13 ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = fadd double %.02324.i.i.i.i, %i.aa
  %i.ac = shl i64 %.01725.i.i.i.i, 5
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = fadd double %i.ab, %i.ag
  %i.ai = shl i64 %.01725.i.i.i.i, 5
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fadd double %i.ah, %i.am
  %i.ao = shl i64 %.01725.i.i.i.i, 5
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 96
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.an, %i.as                ; 3 uses
  %i.au = add nuw nsw i64 %.01725.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !106

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01725.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
end_hunk_0
