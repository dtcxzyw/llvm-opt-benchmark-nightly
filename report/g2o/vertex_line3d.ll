Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_line3d?download=true
inline.NumInlined: 5025
inline.NumDeleted: 2785
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZThn64_N3g2o12VertexLine3DD0Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 16), ptr %i.a, align 16, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi4ENS_6Line3DEEE, i64 288), ptr %0, align 16, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !48  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o12VertexLine3DD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !52
  br label %_ZN3g2o12VertexLine3DD0Ev.exit

_ZN3g2o12VertexLine3DD0Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(272) %i.a) #19, !inline_history !52
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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !79
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
  %.sroa.12.sroa.0 = alloca [7 x double], align 16 ; 15 uses
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
  %i.o = tail call double @llvm.fmuladd.f64(double %i.h, double %.sroa.0157.0.vec.extract.i, double %i.n) ; 2 uses
  %i.p = fneg double %.sroa.0157.0.vec.extract.i
  %i.q = fmul double %.sroa.0159.8.vec.extract.i, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %.sroa.0159.0.vec.extract.i, double %.sroa.0157.8.vec.extract.i, double %i.q) ; 3 uses
  %.sroa.0164.0.vec.insert.i = insertelement <2 x double> poison, double %i.l, i64 0
  %.sroa.0164.8.vec.insert.i = insertelement <2 x double> %.sroa.0164.0.vec.insert.i, double %i.o, i64 1 ; 2 uses
  %i.s = fmul <2 x double> %.sroa.0164.8.vec.insert.i, %.sroa.0164.8.vec.insert.i ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.s, %shift
  %i.t = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x double> %i.i, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> poison, double %i.h, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.d, i64 1 ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.x
  %i.z = fadd <2 x double> %i.y, %i.v
  %i.aa = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.z) ; 7 uses
  %i.ab = fmul <2 x double> %i.aa, %i.aa
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ad = insertelement <2 x double> %i.aa, double %i.r, i64 0
  %i.ae = insertelement <2 x double> %i.aa, double %i.r, i64 0
  %i.af = fmul <2 x double> %i.ad, %i.ae
  %i.ag = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.ah = fadd <2 x double> %i.af, %i.ag
  %i.ai = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ah)
  %i.aj = fdiv <2 x double> splat (double 1.000000e+00), %i.ai ; 3 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 3 uses
  %i.al = fmul double %i.l, %i.ak
  %.sroa.31.80.vec.insert = insertelement <2 x double> poison, double %i.al, i64 0
  %i.am = fmul double %i.o, %i.ak
  %.sroa.31.88.vec.insert = insertelement <2 x double> %.sroa.31.80.vec.insert, double %i.am, i64 1 ; 2 uses
  %i.an = extractelement <2 x double> %i.aa, i64 1
  %i.ao = fneg double %i.an
  %i.ap = extractelement <2 x double> %i.aj, i64 1
  %i.aq = fmul double %i.ap, %i.ao
  %.sroa.8.16.vec.insert = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ar = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x double> %i.aa, %i.ar          ; 2 uses
  %i.at = shufflevector <2 x double> %.sroa.8.16.vec.insert, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.au = fdiv <2 x double> splat (double 1.000000e+00), %i.aa ; 3 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.f, %i.av           ; 2 uses
  %i.ax = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.ay = fmul double %.sroa.0157.8.vec.extract.i, %i.ax
  %.sroa.18.sroa.0.16..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 16
  store double %i.ay, ptr %.sroa.18.sroa.0.16..sroa_idx146, align 16, !tbaa !13, !alias.scope !80
  %i.az = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x double> %i.az, double %i.h, i64 0
  %i.bb = fmul <2 x double> %i.ba, %i.au
  store <2 x double> %i.bb, ptr %.sroa.18.sroa.0, align 16, !tbaa !13, !alias.scope !80
  %i.bc = fmul double %i.d, %i.ax                 ; 2 uses
  %i.bd = fmul double %i.r, %i.ak                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.0)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 3 uses
  %i.bg = tail call double @cos(double noundef %i.bf) #19
  %i.bh = tail call double @sin(double noundef %i.bf) #19
  %i.bi = tail call double @cos(double noundef %i.bf) #19 ; 0 uses
  %i.bj = load <2 x double>, ptr %1, align 16     ; 6 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bj          ; 2 uses
  %shift124 = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x double> %i.bk, %shift124
  %i.bl = extractelement <2 x double> %foldExtExtBinop125, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !13 ; 3 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = fadd double %i.bo, %i.bl
  %i.bq = fsub double 1.000000e+00, %i.bp
  %i.br = tail call double @sqrt(double noundef %i.bq) #19
  %.sroa.849.16.vec.insert = insertelement <2 x double> poison, double %i.bn, i64 0
  %.sroa.849.24.vec.insert = insertelement <2 x double> %.sroa.849.16.vec.insert, double %i.br, i64 1 ; 4 uses
  %i.bs = fmul <2 x double> %i.bj, %i.bj
  %i.bt = fmul <2 x double> %.sroa.849.24.vec.insert, %.sroa.849.24.vec.insert
  %i.bu = fadd <2 x double> %i.bt, %i.bs          ; 2 uses
  %shift127 = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop128 = fadd <2 x double> %i.bu, %shift127
  %i.bv = extractelement <2 x double> %foldExtExtBinop128, i64 0 ; 2 uses
  %i.bw = fcmp ogt double %i.bv, 0.000000e+00     ; 2 uses
  %.scalar.i.i24 = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bx = insertelement <2 x double> poison, double %.scalar.i.i24, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = fdiv <2 x double> %i.bj, %i.by
  %i.ca = fdiv <2 x double> %.sroa.849.24.vec.insert, %i.by
  %.sroa.045.0 = select i1 %i.bw, <2 x double> %i.bz, <2 x double> %i.bj ; 2 uses
  %.sroa.849.0 = select i1 %i.bw, <2 x double> %i.ca, <2 x double> %.sroa.849.24.vec.insert ; 2 uses
  %.sroa.045.0.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 0 ; 4 uses
  %i.cb = fmul double %.sroa.045.0.vec.extract, 2.000000e+00 ; 2 uses
  %.sroa.045.8.vec.extract = extractelement <2 x double> %.sroa.045.0, i64 1 ; 3 uses
  %i.cc = fmul double %.sroa.045.8.vec.extract, 2.000000e+00 ; 3 uses
  %.sroa.849.16.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 0 ; 2 uses
  %i.cd = fmul double %.sroa.849.16.vec.extract, 2.000000e+00 ; 4 uses
  %.sroa.849.24.vec.extract = extractelement <2 x double> %.sroa.849.0, i64 1 ; 3 uses
  %i.ce = fmul double %.sroa.849.24.vec.extract, %i.cb
  %i.cf = fmul double %.sroa.849.24.vec.extract, %i.cc ; 2 uses
  %i.cg = fmul double %.sroa.849.24.vec.extract, %i.cd ; 2 uses
  %i.ch = fmul double %.sroa.045.0.vec.extract, %i.cb
  %i.ci = fmul double %.sroa.045.0.vec.extract, %i.cc ; 2 uses
  %i.cj = fmul double %.sroa.045.0.vec.extract, %i.cd ; 2 uses
  %i.ck = fmul double %.sroa.045.8.vec.extract, %i.cc
  %i.cl = fmul double %.sroa.045.8.vec.extract, %i.cd
  %i.cm = fmul double %.sroa.849.16.vec.extract, %i.cd ; 2 uses
  %i.cn = fadd double %i.ck, %i.cm
  %i.co = fsub double 1.000000e+00, %i.cn
  %i.cp = fsub double %i.ci, %i.cg
  %2 = fadd double %i.cj, %i.cf
  %i.cq = fadd double %i.ci, %i.cg
  %i.cr = fadd double %i.ch, %i.cm
  %i.cs = fsub double 1.000000e+00, %i.cr
  %i.ct = fsub double %i.cj, %i.cf
  %i.cu = fadd double %i.cl, %i.ce
  store double %i.co, ptr %.sroa.12.sroa.0, align 16
  %.sroa.12.sroa.0.8..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 8
  store double %i.cq, ptr %.sroa.12.sroa.0.8..sroa_idx167, align 8
  %.sroa.12.sroa.0.16..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 16
  store double %i.ct, ptr %.sroa.12.sroa.0.16..sroa_idx169, align 16
  %.sroa.12.sroa.0.24..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 24
  store double %i.cp, ptr %.sroa.12.sroa.0.24..sroa_idx171, align 8
  %.sroa.12.8..sroa_idx142 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 32
  store double %i.cs, ptr %.sroa.12.8..sroa_idx142, align 16
  %.sroa.12.16..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 40
  store double %i.cu, ptr %.sroa.12.16..sroa_idx143, align 8
  %.sroa.12.24..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 48
  store double %2, ptr %.sroa.12.24..sroa_idx144, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %.sroa.12.0..sroa.12.0..sroa.12.32. = load <2 x double>, ptr %.sroa.12.sroa.0, align 16 ; 2 uses
  %i.cv = shufflevector <2 x double> %.sroa.12.0..sroa.12.0..sroa.12.32., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.aw, %i.cv
  %.sroa.18.sroa.0.8..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.0, i64 8
  %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56. = load <2 x double>, ptr %.sroa.18.sroa.0.8..sroa_idx145, align 8, !tbaa !37 ; 2 uses
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 8
  %.sroa.12.8..sroa.12.8..sroa.12.40. = load <2 x double>, ptr %.sroa.12.8..sroa_idx, align 8 ; 2 uses
  %i.cx = shufflevector <2 x double> %.sroa.12.8..sroa.12.8..sroa.12.40., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.cx
  %i.cz = fadd <2 x double> %i.cw, %i.cy
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 16
  %.sroa.12.16..sroa.12.16..sroa.12.48. = load <2 x double>, ptr %.sroa.12.16..sroa_idx, align 16 ; 2 uses
  %i.da = shufflevector <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %.sroa.31.88.vec.insert, %i.da
  %i.dc = fadd <2 x double> %i.cz, %i.db
  %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99 = load double, ptr %.sroa.18.sroa.0, align 16, !tbaa !13 ; 2 uses
  %i.dd = extractelement <2 x double> %.sroa.12.0..sroa.12.0..sroa.12.32., i64 0
  %i.de = fmul double %i.dd, %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99
  %i.df = extractelement <2 x double> %.sroa.12.8..sroa.12.8..sroa.12.40., i64 0
  %i.dg = fmul double %i.df, %i.bc
  %i.dh = extractelement <2 x double> %.sroa.12.16..sroa.12.16..sroa.12.48., i64 0
  %i.di = fmul double %i.dh, %i.bd
  %i.dj = fadd double %i.dg, %i.di
  %i.dk = fadd double %i.de, %i.dj
  store double %i.dk, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !13
  %.sroa.12.sroa.0.24..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 24
  %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56. = load <2 x double>, ptr %.sroa.12.sroa.0.24..sroa_idx170, align 8 ; 2 uses
  %3 = shufflevector <2 x double> %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.aw, %3
  %.sroa.12.sroa.0.32..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 32
  %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64. = load <2 x double>, ptr %.sroa.12.sroa.0.32..sroa_idx172, align 16 ; 2 uses
  %i.dm = shufflevector <2 x double> %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %.sroa.18.sroa.0.8..sroa.18.sroa.0.8..sroa.18.8..sroa.18.56., %i.dm
  %i.do = fadd <2 x double> %i.dl, %i.dn
  %.sroa.12.sroa.0.40..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.12.sroa.0, i64 40
  %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72. = load <2 x double>, ptr %.sroa.12.sroa.0.40..sroa_idx174, align 8 ; 2 uses
  %i.dp = shufflevector <2 x double> %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %.sroa.31.88.vec.insert, %i.dp
  %i.dr = fadd <2 x double> %i.do, %i.dq
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  store <2 x double> %i.dr, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %4 = extractelement <2 x double> %.sroa.12.sroa.0.24..sroa.12.sroa.0.24..sroa.12.24..sroa.12.56., i64 0
  %i.ds = fmul double %.sroa.18.sroa.0.0..sroa.18.sroa.0.0..sroa.18.0..sroa.18.48.99, %4
  %5 = extractelement <2 x double> %.sroa.12.sroa.0.32..sroa.12.sroa.0.32..sroa.12.32..sroa.12.64., i64 0
  %i.dt = fmul double %i.bc, %5
  %6 = extractelement <2 x double> %.sroa.12.sroa.0.40..sroa.12.sroa.0.40..sroa.12.40..sroa.12.72., i64 0
  %i.du = fmul double %i.bd, %6
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = fadd double %i.ds, %i.dv
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  store double %i.dw, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !13
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !37 ; 2 uses
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.dx = bitcast double %i.bg to <1 x double>
  %i.dy = shufflevector <1 x double> %i.dx, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.as, %i.dy
  %i.ea = bitcast double %i.bh to <1 x double>
  %i.eb = shufflevector <1 x double> %i.ea, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.at, %i.eb
  %i.ed = fadd <2 x double> %i.dz, %i.ec          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.ee, %i.dc
  %foldExtExtBinop130 = fmul <2 x double> %i.ed, %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i
  %i.eg = extractelement <2 x double> %foldExtExtBinop130, i64 0
  %i.eh = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = shufflevector <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.ej = fmul <2 x double> %i.eh, %i.ei          ; 3 uses
  %foldExtExtBinop132 = fmul <2 x double> %i.ed, %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i
  %i.ek = extractelement <2 x double> %foldExtExtBinop132, i64 1 ; 3 uses
  store double %i.eg, ptr %.sroa.4, align 16, !tbaa !13, !alias.scope !89
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8
  store <2 x double> %i.ej, ptr %.sroa.4.8..sroa_idx, align 8, !tbaa !37, !alias.scope !89
  %.sroa.4.24..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  store double %i.ek, ptr %.sroa.4.24..sroa_idx141, align 8, !tbaa !13, !alias.scope !89
  %i.el = fmul <2 x double> %i.ej, %i.ej          ; 2 uses
  %shift134 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop135 = fadd <2 x double> %i.el, %shift134
  %i.em = extractelement <2 x double> %foldExtExtBinop135, i64 0
  %i.en = fmul double %i.ek, %i.ek
  %i.eo = fadd double %i.en, %i.em
  %.scalar.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.eo)
  %i.ep = fdiv double 1.000000e+00, %.scalar.i.i.i
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.es = fmul <2 x double> %i.ef, %i.er
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16. = load <2 x double>, ptr %.sroa.4, align 16, !tbaa !37, !alias.scope !89
  %i.et = fmul <2 x double> %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.16., %i.er
  store <2 x double> %i.et, ptr %.sroa.4, align 16, !tbaa !37, !alias.scope !89
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32. = load <2 x double>, ptr %.sroa.4.16..sroa_idx, align 16, !tbaa !37, !alias.scope !89
  %i.eu = fmul <2 x double> %.sroa.4.16..sroa.4.16..sroa.4.16..sroa.4.32., %i.er
  %.sroa.4.16..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  store <2 x double> %i.eu, ptr %.sroa.4.16..sroa_idx140, align 16, !tbaa !37, !alias.scope !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4, i64 32, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ev = load <2 x double>, ptr %i.a, align 8, !tbaa !37, !noalias !93 ; 2 uses
  %i.ew = load double, ptr %i.c, align 8, !tbaa !13, !noalias !93 ; 2 uses
  %i.ex = fmul <2 x double> %i.ev, %i.ev          ; 2 uses
  %shift137 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop138 = fadd <2 x double> %i.ex, %shift137
  %i.ey = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.ez = fmul double %i.ew, %i.ew
  %i.fa = fadd double %i.ez, %i.ey
  %.scalar.i.i29 = tail call noundef double @llvm.sqrt.f64(double %i.fa)
  %i.fb = fdiv double 1.000000e+00, %.scalar.i.i29
  %i.fc = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fe = fmul <2 x double> %i.es, %i.fd
  store <2 x double> %i.fe, ptr %0, align 16, !tbaa !37
  %i.ff = load <2 x double>, ptr %i.g, align 16, !tbaa !37
  %i.fg = fmul <2 x double> %i.ff, %i.fd
  store <2 x double> %i.fg, ptr %i.g, align 16, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 16, !tbaa !37
  %i.fj = fmul <2 x double> %i.fi, %i.fd
  store <2 x double> %i.fj, ptr %i.fh, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.0)
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
  %.03254 = phi i64 [ 0, %bb.a ], [ %i.p, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 15 uses
  %i.m = add nsw i64 %.03254, -1                  ; 2 uses
  %i.n = add nsw i64 %.03254, -2
  %i.o = sub nuw nsw i64 3, %.03254               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = add nuw nsw i64 %.03254, 1               ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %.03254, 5        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !96
  store i64 %i.o, ptr %i.a, align 8, !tbaa !100
  store ptr %0, ptr %i.b, align 8, !tbaa !101
  store i64 %i.p, ptr %i.c, align 8, !tbaa !100
  store i64 %.03254, ptr %i.d, align 8, !tbaa !100
  store i64 4, ptr %i.e, align 8, !tbaa !103
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.03254 ; 9 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %.not55 = icmp eq i64 %.03254, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 3 uses
  %.not52 = icmp eq i64 %.03254, 1
  br i1 %.not52, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

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
  %.02324.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01725.i.i.i.i.epil = phi i64 [ %i.az, %.lr.ph.i.i.i.i.epil ], [ %.01725.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.epil = phi double [ %i.ay, %.lr.ph.i.i.i.i.epil ], [ %.02324.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.epil = shl i64 %.01725.i.i.i.i.epil, 5
  %i.av = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fadd double %.02324.i.i.i.i.epil, %i.ax ; 2 uses
  %i.az = add nuw nsw i64 %.01725.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !107

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.0.i.i = phi double [ %i.w, %bb.c ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.i.i.i.i.epil ]
  %i.ba = fsub double %i.u, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.ba, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.u, %bb.b ] ; 2 uses
  %i.bb = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = call double @sqrt(double noundef %.0) #19 ; 6 uses
  store double %i.bc, ptr %i.t, align 8, !tbaa !13
  switch i64 %.03254, label %.thread [
    i64 3, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %i.q, ptr %1, align 8
  store i64 %i.o, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.03254, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 4, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.s, ptr %i.f, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.q, ptr %i.g, align 8, !tbaa !109
  store ptr %i.s, ptr %i.h, align 8, !tbaa !111
  store i64 %.03254, ptr %i.i, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.r, ptr %2, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
end_hunk_0
