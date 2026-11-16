Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_line3d?download=true
inline.NumInlined: 5025
inline.NumDeleted: 2785
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3g2o12VertexLine3DD0Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit

_ZN3g2o10BaseVertexILi4ENS_6Line3DEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(272) %0) #19, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph6Vertex5setIdEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 5
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = shl nsw i64 %i.c, 5
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12  ; 16 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 32
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !14
  %i.j = fneg double %i.i                         ; 3 uses
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.f, double %i.k) ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 3 uses
  %i.o = getelementptr i8, ptr %i.b, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.q = fmul double %i.p, %i.j
  %i.r = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.n, double %i.q) ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 56
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 3 uses
  %i.w = fmul double %i.v, %i.j
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.t, double %i.w) ; 2 uses
  %i.y = fneg double %i.f                         ; 2 uses
  %i.z = fmul double %i.p, %i.y
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.n, double %i.z) ; 2 uses
  %i.ab = fmul double %i.v, %i.y
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.t, double %i.ab) ; 2 uses
  %i.ad = fneg double %i.n
  %i.ae = fmul double %i.v, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.t, double %i.ae) ; 2 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 64
  %i.ah = getelementptr i8, ptr %i.b, i64 72
  %i.ai = getelementptr i8, ptr %i.b, i64 80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 88
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.am = fmul double %i.aa, %i.al
  %i.an = fmul double %i.aj, %i.ac
  %i.ao = fsub double %i.am, %i.an
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aq = fmul double %i.af, %i.ap
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fmul double %i.r, %i.al
  %i.at = fmul double %i.aj, %i.x
  %i.au = fsub double %i.as, %i.at
  %i.av = load double, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %i.aw = fmul double %i.af, %i.av
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fmul double %i.l, %i.al
  %i.az = fmul double %i.x, %i.ap
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = fmul double %i.ac, %i.av
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.l, %i.aj
  %i.be = fmul double %i.r, %i.ap
  %i.bf = fsub double %i.bd, %i.be
  %i.bg = fmul double %i.aa, %i.av
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = getelementptr i8, ptr %i.b, i64 96
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14
  %i.bk = getelementptr i8, ptr %i.b, i64 104
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = fmul double %i.bl, %i.ax
  %i.bn = fmul double %i.bj, %i.ar
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = getelementptr i8, ptr %i.b, i64 112
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = getelementptr i8, ptr %i.b, i64 120
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14
  %i.bt = fmul double %i.bh, %i.bs
  %i.bu = fmul double %i.bc, %i.bq
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = fadd double %i.bo, %i.bv
  ret double %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11hessianDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE5bDataEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi4ENS_6Line3DEE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(248) %0, double noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %3 = alloca %"class.Eigen::LLT", align 16       ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 11 uses
  %4 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 8
  %i.b = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %5 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 40
  %i.e = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %.sroa.09.0.copyload, i64 80
  %i.j = getelementptr i8, ptr %.sroa.09.0.copyload, i64 96
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %.sroa.09.0.copyload, i64 112
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %.sroa.09.0.copyload, i64 120
  %6 = load double, ptr %i.n, align 8, !tbaa !14
  %7 = fadd double %1, %6                         ; 3 uses
  %i.o = load double, ptr %.sroa.09.0.copyload, align 8, !tbaa !14
  %i.p = fadd double %1, %i.o
  %i.q = fmul double %1, 0.000000e+00             ; 3 uses
  %i.r = insertelement <2 x double> poison, double %1, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.s, <double 1.000000e+00, double 0.000000e+00>
  %8 = load double, ptr %4, align 8, !tbaa !14
  %9 = fadd double %i.q, %8                       ; 3 uses
  %.scalar = fmul double %1, 0.000000e+00
  %10 = insertelement <2 x double> poison, double %.scalar, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.u = fadd <2 x double> %11, %i.c              ; 8 uses
  %12 = load double, ptr %5, align 8, !tbaa !14
  %13 = fadd double %i.q, %12                     ; 2 uses
  %14 = load double, ptr %i.d, align 8, !tbaa !14
  %15 = fadd double %1, %14                       ; 2 uses
  %i.v = fadd <2 x double> %11, %i.f              ; 6 uses
  %i.w = fadd <2 x double> %11, %i.h              ; 5 uses
  %i.x = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  %i.y = fadd <2 x double> %i.t, %i.x             ; 7 uses
  %i.z = fadd <2 x double> %11, %i.k              ; 3 uses
  %i.aa = fadd double %i.q, %i.m                  ; 2 uses
  %16 = fneg double %13
  %17 = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %18 = insertelement <2 x double> %17, double %9, i64 0 ; 3 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %i.ab = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <2 x double> %18, %i.ab
  %i.ad = fmul <2 x double> %i.u, %i.ab
  %20 = insertelement <2 x double> poison, double %i.p, i64 0 ; 2 uses
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %22 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %23 = insertelement <2 x double> %22, double %15, i64 0 ; 2 uses
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %23, <2 x double> %i.ac) ; 2 uses
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.v, <2 x double> %i.ad) ; 2 uses
  %25 = fneg <2 x double> %23                     ; 2 uses
  %i.af = fmul <2 x double> %i.u, %25
  %26 = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x double> %26, %25
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.v, <2 x double> %i.af) ; 2 uses
  %i.ai = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %27 = shufflevector <2 x double> %24, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %28 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %29 = fmul <2 x double> %27, %28
  %30 = shufflevector <2 x double> %i.ae, <2 x double> %i.aj, <2 x i32> <i32 1, i32 2>
  %i.ak = shufflevector <2 x double> %i.w, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.al = fmul <2 x double> %30, %i.ak
  %i.am = fsub <2 x double> %29, %i.al
  %i.an = fmul <2 x double> %i.aj, %i.w
  %i.ao = fadd <2 x double> %i.an, %i.am
  %i.ap = fmul <2 x double> %24, %i.y
  %31 = shufflevector <2 x double> %i.w, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.aq = fmul <2 x double> %i.ae, %31
  %i.ar = fsub <2 x double> %i.ap, %i.aq
  %i.as = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.ah, %i.as
  %i.au = fadd <2 x double> %i.at, %i.ar
  %i.av = insertelement <2 x double> %i.z, double %7, i64 0
  %i.aw = fmul <2 x double> %i.av, %i.au
  %i.ax = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x double> %i.ax, double %i.aa, i64 0
  %i.az = fmul <2 x double> %i.ay, %i.ao
  %i.ba = fsub <2 x double> %i.aw, %i.az          ; 2 uses
  %shift = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ba
  %i.bb = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bc = fcmp uno double %i.bb, 0.000000e+00
  %i.bd = fcmp olt double %i.bb, f0x3CB0000000000000
  %or.cond = or i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.d, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i: ; preds = %bb.a
  %.sroa.38.112.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %.sroa.38.120.vec.insert = insertelement <2 x double> %.sroa.38.112.vec.insert, double %7, i64 1
  %.sroa.13.32.vec.insert = insertelement <2 x double> poison, double %13, i64 0
  %.sroa.13.40.vec.insert = insertelement <2 x double> %.sroa.13.32.vec.insert, double %15, i64 1
  %.sroa.38.120.vec.insert.a = insertelement <2 x double> %20, double %9, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store <2 x double> %.sroa.38.120.vec.insert.a, ptr %3, align 16, !tbaa !30, !alias.scope !101
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %i.u, ptr %i.be, align 16, !tbaa !30, !alias.scope !101
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> %.sroa.13.40.vec.insert, ptr %i.bf, align 16, !tbaa !30, !alias.scope !101
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store <2 x double> %i.v, ptr %i.bg, align 16, !tbaa !30, !alias.scope !101
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x double> %i.w, ptr %i.bh, align 16, !tbaa !30, !alias.scope !101
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store <2 x double> %i.y, ptr %i.bi, align 16, !tbaa !30, !alias.scope !101
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x double> %i.z, ptr %i.bj, align 16, !tbaa !30, !alias.scope !101
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x double> %.sroa.38.120.vec.insert, ptr %i.bk, align 16, !tbaa !30, !alias.scope !101
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.bm = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.38.120.vec.insert.a)
  %i.bn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u)
  %i.bo = fadd <2 x double> %i.bm, %i.bn          ; 2 uses
  %shift38 = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop39 = fadd <2 x double> %i.bo, %shift38
  %i.bp = extractelement <2 x double> %foldExtExtBinop39, i64 0 ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, double %i.bp, double 0.000000e+00 ; 3 uses
  store double %i.br, ptr %i.bl, align 16, !tbaa !108, !alias.scope !101
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !alias.scope !101 ; 2 uses
  %i.bu = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bt) ; 2 uses
  %shift41 = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop42 = fadd <2 x double> %i.bu, %shift41
  %i.bv = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.bw = tail call noundef double @llvm.fabs.f64(double %9)
  %i.bx = extractelement <2 x double> %i.bt, i64 1
  %i.by = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.y) ; 2 uses
  %shift44 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop45 = fadd <2 x double> %i.by, %shift44
  %i.bz = extractelement <2 x double> %foldExtExtBinop45, i64 0
  %i.ca = extractelement <2 x double> %i.u, i64 0
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.cd = fadd double %i.cb, %i.cc
  %i.ce = fadd double %i.bz, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.cg = shufflevector <2 x double> %i.u, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> %i.y, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.ci = insertelement <4 x double> %i.ch, double %7, i64 3
  %i.cj = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ci) ; 4 uses
  %i.ck = extractelement <4 x double> %i.cj, i64 1 ; 2 uses
  %i.cl = fadd double %i.ck, %i.bv
  %i.cm = fadd double %i.bw, %i.cl                ; 2 uses
  %i.cn = fcmp ogt double %i.cm, %i.br            ; 2 uses
  %i.co = select i1 %i.cn, double %i.cm, double %i.br ; 2 uses
  %i.cp = fcmp ogt double %i.ce, %i.co            ; 2 uses
  %i.cq = select i1 %i.cp, double %i.ce, double %i.co ; 2 uses
  %i.cr = or i1 %i.cn, %i.cp
  %i.cs = extractelement <4 x double> %i.cj, i64 0
  %i.ct = fadd double %i.cs, %i.ck
  %i.cu = extractelement <4 x double> %i.cj, i64 2
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = extractelement <4 x double> %i.cj, i64 3
  %i.cx = fadd double %i.cv, %i.cw                ; 2 uses
  %i.cy = fcmp ogt double %i.cx, %i.cq            ; 2 uses
  %i.cz = or i1 %i.cr, %i.cy
  br i1 %i.cz, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i
  %spec.select = select i1 %i.cy, double %i.cx, double %i.cq
  store double %spec.select, ptr %i.bl, align 16, !tbaa !108, !alias.scope !101
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i.i, %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i8 1, ptr %i.da, align 8, !tbaa !109, !alias.scope !101
  %i.db = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(144) %3)
  %i.dc = icmp ne i64 %i.db, -1
  %i.dd = zext i1 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !110, !alias.scope !101
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !30 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dj = load <2 x double>, ptr %i.di, align 16, !tbaa !30 ; 2 uses
  %i.dk = load double, ptr %3, align 16, !tbaa !14 ; 2 uses
  %i.dl = extractelement <2 x double> %i.dg, i64 0
  %i.dm = fdiv double %i.dl, %i.dk                ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !14
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dr = extractelement <2 x double> %i.dg, i64 1
  %i.ds = fsub double %i.dr, %i.dp
  %i.dt = load double, ptr %i.bs, align 8, !tbaa !14 ; 2 uses
  %i.du = fdiv double %i.ds, %i.dt                ; 3 uses
  %i.dv = load double, ptr %i.be, align 16, !tbaa !14
  %i.dw = fmul double %i.dm, %i.dv
  %i.dx = load double, ptr %i.bg, align 16, !tbaa !14
  %i.dy = fmul double %i.du, %i.dx
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = extractelement <2 x double> %i.dj, i64 0
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = load double, ptr %i.bi, align 16, !tbaa !14 ; 2 uses
  %i.ed = fdiv double %i.eb, %i.ec                ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %i.eg = fmul double %i.dm, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14
  %i.ej = fmul double %i.du, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14 ; 2 uses
  %i.em = fmul double %i.ed, %i.el
  %i.en = fadd double %i.ej, %i.em
  %i.eo = fadd double %i.eg, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = extractelement <2 x double> %i.dj, i64 1
  %i.er = fsub double %i.eq, %i.eo
  %i.es = load double, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fdiv double %i.et, %i.es                ; 2 uses
  store double %i.eu, ptr %i.ep, align 8, !tbaa !14
  %i.ev = fmul double %i.el, %i.eu
  %i.ew = fsub double %i.ed, %i.ev
  %i.ex = fdiv double %i.ew, %i.ec
  store double %i.ex, ptr %i.dh, align 16, !tbaa !14
  %i.ey = load <2 x double>, ptr %i.bg, align 16, !tbaa !30
  %i.ez = load <2 x double>, ptr %i.dh, align 16  ; 2 uses
  %i.fa = fmul <2 x double> %i.ey, %i.ez          ; 2 uses
  %shift47 = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop48 = fadd <2 x double> %i.fa, %shift47
  %i.fb = extractelement <2 x double> %foldExtExtBinop48, i64 0
  %i.fc = fsub double %i.du, %i.fb
  %i.fd = fdiv double %i.fc, %i.dt
  store double %i.fd, ptr %i.dq, align 8, !tbaa !14
  %i.fe = load <2 x double>, ptr %i.dn, align 8, !tbaa !30
  %i.ff = load <2 x double>, ptr %i.dq, align 8, !tbaa !30
  %i.fg = fmul <2 x double> %i.fe, %i.ff          ; 2 uses
  %shift50 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fadd <2 x double> %i.fg, %shift50
  %i.fh = extractelement <2 x double> %foldExtExtBinop51, i64 0
  %i.fi = extractelement <2 x double> %i.ez, i64 1
  %i.fj = fmul double %i.ef, %i.fi
  %i.fk = fadd double %i.fj, %i.fh
  %i.fl = fsub double %i.dm, %i.fk
  %i.fm = fdiv double %i.fl, %i.dk
  store double %i.fm, ptr %2, align 16, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.fn = load ptr, ptr %0, align 16, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 224
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !100
  %i.fq = load ptr, ptr %0, align 16, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 216
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret double %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12VertexLine3D15getEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !30
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !30
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !30
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !30
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !30
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !30
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12VertexLine3D17estimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 6
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
end_hunk_0
