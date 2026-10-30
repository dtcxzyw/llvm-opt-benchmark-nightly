Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_line2d?download=true
inline.NumInlined: 2961
inline.NumDeleted: 1620
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK3g2o12VertexLine2D5writeERSo:bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !72
  %i.v = icmp eq i32 %i.u, 0
  ret i1 %i.v
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi2ENS_6Line2DEED2Ev(ptr noundef nonnull align 16 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi2ENS_6Line2DEEE, i64 16), ptr %0, align 16, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi2ENS_6Line2DEEE, i64 288), ptr %i.a, align 16, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !55  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN3g2o6Line2DESt6vectorIS1_SaIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !56
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt5stackIN3g2o6Line2DESt6vectorIS1_SaIS1_EEED2Ev.exit

_ZNSt5stackIN3g2o6Line2DESt6vectorIS1_SaIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o12VertexLine2DD0Ev(ptr noundef nonnull align 16 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi2ENS_6Line2DEEE, i64 16), ptr %0, align 16, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi2ENS_6Line2DEEE, i64 288), ptr %i.a, align 16, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !55  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi2ENS_6Line2DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !56
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18, !inline_history !57
  br label %_ZN3g2o10BaseVertexILi2ENS_6Line2DEED2Ev.exit

_ZN3g2o10BaseVertexILi2ENS_6Line2DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(208) %0) #19, !inline_history !57
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph6Vertex5setIdEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi2ENS_6Line2DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi2ENS_6Line2DEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12  ; 4 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %i.e = getelementptr i8, ptr %i.b, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !54
  %i.i = load double, ptr %i.d, align 8, !tbaa !54
  %i.j = fneg double %i.i
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.f, double %i.k)
  ret double %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE11hessianDataEv(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi2ENS_6Line2DEE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi2ENS_6Line2DEE1bEi(ptr noundef nonnull align 16 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE1bEi(ptr noundef nonnull align 16 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE5bDataEv(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(200) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi2ENS_6Line2DEE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(200) %0, double noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 4 uses
  %i.b = load double, ptr %.sroa.09.0.copyload, align 8, !tbaa !54
  %i.c = fadd double %1, %i.b                     ; 4 uses
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 8
  %i.e = fmul double %1, 0.000000e+00             ; 2 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !54
  %i.g = fadd double %i.e, %i.f                   ; 3 uses
  %i.h = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !54
  %i.j = fadd double %i.e, %i.i                   ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.09.0.copyload, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !54
  %i.m = fadd double %1, %i.l                     ; 3 uses
  %i.n = fneg double %i.j
  %i.o = fmul double %i.g, %i.n
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.m, double %i.o) ; 2 uses
  %or.cond = fcmp ult double %i.p, f0x3CB0000000000000
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.16.vec.insert = insertelement <2 x double> poison, double %i.j, i64 0
  %.sroa.8.24.vec.insert = insertelement <2 x double> %.sroa.8.16.vec.insert, double %i.m, i64 1 ; 3 uses
  %.sroa.012.0.vec.insert = insertelement <2 x double> poison, double %i.c, i64 0
  %.sroa.012.8.vec.insert = insertelement <2 x double> %.sroa.012.0.vec.insert, double %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = fcmp ugt double %i.c, 0.000000e+00
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i:       ; preds = %bb.b
  %i.r = tail call double @sqrt(double noundef %i.c) #19, !noalias !77 ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = fdiv double %i.g, %i.r                   ; 3 uses
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.s, i64 1 ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fsub double %i.m, %i.t                   ; 2 uses
  %i.v = fcmp ugt double %i.u, 0.000000e+00
  br i1 %i.v, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i, label %bb.c

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i
  %i.w = tail call double @sqrt(double noundef %i.u) #19, !noalias !77
  %.sroa.7.24.vec.insert = insertelement <2 x double> %.sroa.8.24.vec.insert, double %i.w, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i, %bb.b
  %.sroa.7.0 = phi <2 x double> [ %.sroa.7.24.vec.insert, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i ], [ %.sroa.8.24.vec.insert, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %.sroa.8.24.vec.insert, %bb.b ]
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.8.vec.insert, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i ], [ %.sroa.0.8.vec.insert, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %.sroa.012.8.vec.insert, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !58 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 0
  %foldExtExtBinop = fdiv <2 x double> %i.y, %.sroa.0.0
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 1 ; 2 uses
  %i.aa = fmul double %i.z, %.sroa.0.8.vec.extract
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = extractelement <2 x double> %i.y, i64 1
  %i.ad = fsub double %i.ac, %i.aa
  %.sroa.7.24.vec.extract = extractelement <2 x double> %.sroa.7.0, i64 1 ; 2 uses
  %i.ae = fdiv double %i.ad, %.sroa.7.24.vec.extract
  %i.af = fdiv double %i.ae, %.sroa.7.24.vec.extract ; 2 uses
  store double %i.af, ptr %i.ab, align 8, !tbaa !54
  %i.ag = fmul double %.sroa.0.8.vec.extract, %i.af
  %i.ah = fsub double %i.z, %i.ag
  %i.ai = fdiv double %i.ah, %.sroa.0.0.vec.extract
  store double %i.ai, ptr %2, align 16, !tbaa !54
  %i.aj = load ptr, ptr %0, align 16, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !76
  %i.am = load ptr, ptr %0, align 16, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !76
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret double %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12VertexLine2D15getEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !58
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !58
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !61     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !60
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12VertexLine2D17estimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12VertexLine2D22getMinimalEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !61     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !60
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12VertexLine2D24minimalEstimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}
end_hunk_0
