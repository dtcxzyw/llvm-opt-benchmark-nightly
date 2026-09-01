Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15254
inline.NumDeleted: 8448
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZThn40_N3g2o12Edge_XYZ_VSCD1Ev
define linkonce_odr void @_ZThn40_N3g2o12Edge_XYZ_VSCD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.a) #27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12Edge_XYZ_VSCD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.a) #27
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(384) %i.a, i64 noundef 384) #29
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !307
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !307
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #8

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #8

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !214
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !215
  br label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(344) %i.a) #27, !inline_history !215
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS9_IS3_S3_Li0EEENS_9TransposeIS8_EELi0EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSG_RKSI_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8 = alloca [4 x double], align 16        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = load ptr, ptr %1, align 8, !tbaa !308, !nonnull !101, !align !133 ; 5 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !17
  store <2 x double> %i.d, ptr %.sroa.8, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !17
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 16
  store <2 x double> %i.f, ptr %.sroa.8.16..sroa_idx, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8 ; 8 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !314
  %i.n = load <2 x double>, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, align 1, !tbaa !17 ; 3 uses
  %i.o = load <2 x double>, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 24
  %i.s = load <2 x double>, ptr %i.r, align 1, !tbaa !17 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %i.u = load <2 x double>, ptr %i.t, align 8     ; 2 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.s, %i.v
  %i.x = fadd <2 x double> %i.q, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !17 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ab = load <2 x double>, ptr %i.aa, align 8   ; 4 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.z, %i.ac
  %i.ae = fadd <2 x double> %i.x, %i.ad           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !29 ; 3 uses
  %i.ah = extractelement <2 x double> %i.o, i64 0
  %i.ai = fmul double %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %i.al = extractelement <2 x double> %i.u, i64 0
  %i.am = fmul double %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, i64 64
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29 ; 3 uses
  %i.ap = extractelement <2 x double> %i.ab, i64 0
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = fadd double %i.am, %i.aq
  %i.as = extractelement <2 x double> %i.ab, i64 1
  %i.at = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x double> %i.n, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.s, %i.ay
  %i.ba = fadd <2 x double> %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.z, %i.be
  %i.bg = fadd <2 x double> %i.ba, %i.bf          ; 3 uses
  %i.bh = fmul double %i.ag, %i.as
  %i.bi = fmul double %i.ak, %i.aw
  %i.bj = fmul double %i.ao, %i.bc
  %i.bk = fadd double %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 48
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.n, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !29 ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %i.s, %i.bt
  %i.bv = fadd <2 x double> %i.bp, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 64
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !29 ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %i.z, %i.bz
  %i.cb = fadd <2 x double> %i.bv, %i.ca          ; 3 uses
  %i.cc = fmul double %i.ag, %i.bm
  %i.cd = fmul double %i.ak, %i.br
  %i.ce = fmul double %i.ao, %i.bx
  %i.cf = fadd double %i.cd, %i.ce
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = inttoptr i64 %i.m to ptr ; 6 uses
  %i.cg = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ch = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.sroa.8.0. = load <2 x double>, ptr %.sroa.8, align 16
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8
  %.sroa.8.8..sroa.8.8..sroa.8.8..sroa.8.24. = load <2 x double>, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !17
  %.sroa.8.24..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 24
  %.sroa.8.24..sroa.8.24..sroa.8.24..sroa.8.40. = load double, ptr %.sroa.8.24..sroa_idx54, align 8, !tbaa !29
  %i.ci = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !29 ; 2 uses
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.ae, %i.cl
  %i.cn = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.bg, %i.cq
  %i.cs = fadd <2 x double> %i.cm, %i.cr
  %i.ct = getelementptr i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !29 ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cb, %i.cw
  %i.cy = fadd <2 x double> %i.cs, %i.cx
  %i.cz = fadd <2 x double> %i.h, %i.cy           ; 6 uses
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.25.48.vec.extract = extractelement <2 x double> %i.cz, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = fadd double %i.ai, %i.ar                   ; 2 uses
  %4 = fadd double %i.bh, %i.bk                   ; 2 uses
  %5 = fadd double %i.cc, %i.cf                   ; 2 uses
  %i.de = load <2 x double>, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %i.ae, %i.df
  %i.dh = load <2 x double>, ptr %i.cg, align 8, !tbaa !29 ; 3 uses
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.bg, %i.di
  %i.dk = fadd <2 x double> %i.dg, %i.dj
  %i.dl = load <2 x double>, ptr %i.ch, align 8, !tbaa !29 ; 3 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.cb, %i.dm
  %i.do = fadd <2 x double> %i.dk, %i.dn
  %i.dp = fadd <2 x double> %i.b, %i.do           ; 8 uses
  %i.dq = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = fmul <2 x double> %i.ae, %i.dq
  %i.ds = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fmul <2 x double> %i.bg, %i.ds
  %i.du = fadd <2 x double> %i.dr, %i.dt
  %i.dv = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dw = fmul <2 x double> %i.cb, %i.dv
  %i.dx = fadd <2 x double> %i.du, %i.dw
  %i.dy = fadd <2 x double> %.sroa.8.8..sroa.8.8..sroa.8.8..sroa.8.24., %i.dx ; 7 uses
  %i.dz = insertelement <2 x double> poison, double %3, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, %i.de
  %i.ec = insertelement <2 x double> poison, double %4, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, %i.dh
  %i.ef = insertelement <2 x double> poison, double %5, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.eg, %i.dl
  %i.ei = fadd <2 x double> %i.ee, %i.eh
  %i.ej = fmul double %3, %i.cj
  %i.ek = fmul double %4, %i.co
  %i.el = fmul double %5, %i.cu
  %i.em = fadd double %i.ek, %i.el
  %i.en = fadd <2 x double> %i.eb, %i.ei
  %i.eo = fadd double %i.ej, %i.em
  %i.ep = insertelement <2 x double> %.sroa.8.0., double %.sroa.8.24..sroa.8.24..sroa.8.24..sroa.8.40., i64 1
  %i.eq = fadd <2 x double> %i.ep, %i.en          ; 6 uses
  %i.er = extractelement <2 x double> %i.eq, i64 1
  %i.es = extractelement <2 x double> %i.dy, i64 0
  %i.et = fneg double %i.es
  %i.eu = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ev = shufflevector <2 x double> %i.dp, <2 x double> %i.dy, <2 x i32> <i32 1, i32 3>
  %i.ew = shufflevector <2 x double> %i.cz, <2 x double> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.ex = fadd double %i.j, %i.eo                 ; 3 uses
  %i.ey = fmul double %i.ex, %i.et
  %i.ez = tail call noundef double @llvm.fmuladd.f64(double %i.er, double %.sroa.25.48.vec.extract, double %i.ey) ; 2 uses
  %i.fa = insertelement <2 x double> %i.eu, double %i.ex, i64 0 ; 2 uses
  %i.fb = fneg <2 x double> %i.fa
  %i.fc = fmul <2 x double> %i.ev, %i.fb
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.eq, <2 x double> %i.fc)
  %i.fe = shufflevector <2 x double> %i.cz, <2 x double> %i.dp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ff = fneg <2 x double> %i.fe
  %i.fg = fmul <2 x double> %i.eq, %i.ff
  %i.fh = shufflevector <2 x double> %i.dp, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fh, <2 x double> %i.fg)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fl = shufflevector <2 x double> %i.dy, <2 x double> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.fm = fneg <2 x double> %i.fl
  %i.fn = fmul <2 x double> %i.fe, %i.fm
  %i.fo = shufflevector <2 x double> %i.dy, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.fo, <2 x double> %i.fn) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.eq, %i.fp
  %i.fq = shufflevector <2 x double> %i.dp, <2 x double> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.fr = fneg <2 x double> %i.fq
  %i.fs = shufflevector <2 x double> %i.dy, <2 x double> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.ft = fmul <2 x double> %i.fs, %i.fr
  %i.fu = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = insertelement <2 x double> %i.dp, double %i.ex, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fv, <2 x double> %i.ft) ; 2 uses
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %i.fx, double %i.ez, i64 1
  %i.fy = fmul <2 x double> %i.dp, %.sroa.0.8.vec.insert.i ; 2 uses
  %shift = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fadd <2 x double> %i.fy, %shift
  %foldExtExtBinop52 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop50
  %i.fz = extractelement <2 x double> %foldExtExtBinop52, i64 0
  %i.ga = fdiv double 1.000000e+00, %i.fz         ; 2 uses
  %i.gb = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gd = fmul <2 x double> %i.fd, %i.gc
  %i.ge = fmul <2 x double> %i.fi, %i.gc
  %i.gf = fmul <2 x double> %i.fw, %i.gc          ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  store double %i.gg, ptr %i.dc, align 8, !tbaa !29
  store <2 x double> %i.ge, ptr %i.dd, align 8, !tbaa !29
  store <2 x double> %i.gd, ptr %i.db, align 8, !tbaa !29
  %i.gh = extractelement <2 x double> %i.gf, i64 1
  store double %i.gh, ptr %0, align 8, !tbaa !29
  %i.gi = fmul double %i.ez, %i.ga
  store double %i.gi, ptr %i.fj, align 8, !tbaa !29
  %i.gj = fmul <2 x double> %i.fp, %i.gc
  store <2 x double> %i.gj, ptr %i.fk, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.560") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !273    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !317
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
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !271
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !29
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !29
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !317
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !273
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !271
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !317
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.75") align 16, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE39oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [4 x double], align 16      ; 9 uses
  %2 = alloca %"class.Eigen::Transform", align 16 ; 15 uses
  %3 = alloca %"class.Eigen::Matrix.75", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
