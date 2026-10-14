Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15255
inline.NumDeleted: 8449
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4pushEv:bb.a
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 72057594037927935)
  %i.r = select i1 %i.p, i64 72057594037927935, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 7
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false), !tbaa.struct !169
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(128) %.0911.i.i.i.i.i.i, i64 128, i1 false), !tbaa.struct !169, !alias.scope !403
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !402

_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 128
  %.not.i33.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i.i.i, label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  %i.y = load ptr, ptr %i.e, align 16, !tbaa !134
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  store ptr %i.t, ptr %i.a, align 16, !tbaa !133
  store ptr %i.x, ptr %i.c, align 8, !tbaa !168
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 16, !tbaa !134
  br label %_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5stackIN5Eigen9TransformIdLi3ELi1ELi0EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5Eigen9TransformIdLi3ELi1ELi0EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE3popEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load <2 x double>, ptr %i.c, align 16, !tbaa !20
  store <2 x double> %i.e, ptr %i.d, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -112
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !20
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -96
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !20
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !20
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !20
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !20
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !20
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !20
  store <2 x double> %i.z, ptr %i.x, align 16, !tbaa !20
  store ptr %i.c, ptr %i.a, align 8, !tbaa !168
  %i.aa = load ptr, ptr %0, align 16, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128
  store ptr %i.c, ptr %i.a, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !133
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 7
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10VertexSCam9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(760) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.11.i.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  tail call void @_ZN3g2o9VertexSE39oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load double, ptr %i.c, align 16, !tbaa !32, !noalias !407
  %.sroa.0.8.vec.insert.i.i = insertelement <2 x double> %i.b, double %i.d, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load double, ptr %i.e, align 16, !tbaa !32, !noalias !407 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load <2 x double>, ptr %i.g, align 8     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load double, ptr %i.i, align 8, !tbaa !32, !noalias !407
  %.sroa.10.40.vec.insert.i.i = insertelement <2 x double> %i.h, double %i.j, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load double, ptr %i.k, align 8, !tbaa !32, !noalias !407 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load <2 x double>, ptr %i.m, align 16    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load double, ptr %i.o, align 16, !tbaa !32, !noalias !407
  %.sroa.18.72.vec.insert.i.i = insertelement <2 x double> %i.n, double %i.p, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load double, ptr %i.q, align 16, !tbaa !32, !noalias !407 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = fneg <2 x double> %.sroa.0.8.vec.insert.i.i
  %i.u = load double, ptr %i.s, align 16, !tbaa !32, !noalias !407 ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = load double, ptr %i.y, align 8, !tbaa !32, !noalias !407 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x double> %.sroa.10.40.vec.insert.i.i, %i.ab
  %i.ad = fsub <2 x double> %i.x, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = load double, ptr %i.ae, align 16, !tbaa !32, !noalias !407 ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %.sroa.18.72.vec.insert.i.i, %i.ah
  %i.aj = fsub <2 x double> %i.ad, %i.ai          ; 3 uses
  %i.ak = fneg double %i.r
  %i.al = fmul double %i.af, %i.ak
  %i.am = fmul double %i.l, %i.z
  %i.an = fsub double %i.al, %i.am
  %i.ao = fmul double %i.f, %i.u
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x double> %.sroa.0.8.vec.insert.i.i, ptr %i.aq, align 16, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store double %i.f, ptr %i.ar, align 16, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x double> %.sroa.10.40.vec.insert.i.i, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store double %i.l, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x double> %.sroa.18.72.vec.insert.i.i, ptr %i.au, align 16, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store double %i.r, ptr %i.av, align 16, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <2 x double> %i.aj, ptr %i.aw, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.ap, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i)
  %i.az = load <2 x double>, ptr @_ZN3g2o10VertexSCam4KcamE, align 8, !tbaa !20 ; 4 uses
  %i.ba = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ba, %i.az
  %i.bc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 24), align 8, !tbaa !20 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.be = load <2 x double>, ptr %i.bd, align 8   ; 2 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.bc, %i.bf
  %i.bh = fadd <2 x double> %i.bb, %i.bg
  %i.bi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 48), align 8, !tbaa !20 ; 4 uses
  %i.bj = load <2 x double>, ptr %i.ar, align 16  ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.bi, %i.bk
  %i.bm = fadd <2 x double> %i.bh, %i.bl
  %2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 16), align 8
  %3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 40), align 8
  %i.bn = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 64), align 8, !tbaa !32
  %i.bo = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.br = load <2 x double>, ptr %i.bq, align 16  ; 2 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bc, %i.bs
  %i.bu = fadd <2 x double> %i.bp, %i.bt
  %i.bv = load <2 x double>, ptr %i.at, align 8   ; 2 uses
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bi, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %.sroa.4.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i, i64 8
  store <2 x double> %i.by, ptr %.sroa.4.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !20
  %i.bz = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %i.bz, %i.az
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cc = load <2 x double>, ptr %i.cb, align 8   ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.bc, %i.cd
  %i.cf = fadd <2 x double> %i.ca, %i.ce
  %i.cg = load <2 x double>, ptr %i.av, align 16  ; 2 uses
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.bi, %i.ch
  %i.cj = fadd <2 x double> %i.cf, %i.ci
  %i.ck = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ck, %i.az
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cn = load <2 x double>, ptr %i.cm, align 16  ; 4 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.bc, %i.co
  %i.cq = fadd <2 x double> %i.cl, %i.cp
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x double> %i.bi, %i.cr
  %i.ct = fadd <2 x double> %i.cs, %i.cq
  %.sroa.11.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i.i, i64 8
  store <2 x double> %i.ct, ptr %.sroa.11.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !20
  %i.cu = shufflevector <2 x double> %i.b, <2 x double> %i.h, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <2 x double> %i.n, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cx = shufflevector <2 x double> %2, <2 x double> poison, <4 x i32> zeroinitializer
  %i.cy = fmul <4 x double> %i.cw, %i.cx
  %i.cz = shufflevector <2 x double> %i.be, <2 x double> %i.br, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x double> %i.cc, <2 x double> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.db = shufflevector <2 x double> %i.cz, <2 x double> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dd = fmul <4 x double> %i.db, %i.dc
  %i.de = shufflevector <2 x double> %i.bj, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x double> %i.cg, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.dg = shufflevector <2 x double> %i.de, <2 x double> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dh = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.di = shufflevector <4 x double> %i.dh, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dj = fmul <4 x double> %i.dg, %i.di
  %i.dk = fadd <4 x double> %i.dd, %i.dj
  %i.dl = fadd <4 x double> %i.cy, %i.dk          ; 4 uses
  %i.dm = extractelement <4 x double> %i.dl, i64 0
  store double %i.dm, ptr %.sroa.4.i.i.i.i.i.i, align 16, !tbaa !32
  %i.dn = extractelement <4 x double> %i.dl, i64 1
  %.sroa.4.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i, i64 24
  store double %i.dn, ptr %.sroa.4.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !32
  %i.do = extractelement <4 x double> %i.dl, i64 2
  store double %i.do, ptr %.sroa.11.i.i.i.i.i.i, align 16, !tbaa !32
  %i.dp = extractelement <4 x double> %i.dl, i64 3
  %.sroa.11.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i.i, i64 24
  store double %i.dp, ptr %.sroa.11.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !32
  store <2 x double> %i.bm, ptr %i.ay, align 16, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.i, align 16, !tbaa !20
  store <2 x double> %.sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i.i, ptr %i.dq, align 16, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.4.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !20
  store <2 x double> %.sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i.i, ptr %i.dr, align 16, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <2 x double> %i.cj, ptr %i.ds, align 16, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.i, align 16, !tbaa !20
  store <2 x double> %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i.i, ptr %i.dt, align 16, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.sroa.11.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i.i, i64 16
  %.sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !20
  store <2 x double> %.sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i.i, ptr %i.du, align 16, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i)
  tail call void @_ZN3g2o10VertexSCam5setDrEv(ptr noundef nonnull align 16 dereferenceable(760) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE315setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(348) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.a, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> zeroinitializer, ptr %i.b, align 16, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.e, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> zeroinitializer, ptr %i.f, align 16, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.g, align 16, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE319setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.560", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !20
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !20
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !20
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !32
  store double %i.j, ptr %i.h, align 16, !tbaa !32
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE326setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.75", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !20
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !20
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !20
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !20
  call void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 16 dereferenceable(48) %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 true
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10VertexSCamD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !134
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !135
  br label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(760) %i.a) #27, !inline_history !135
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10VertexSCamD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o10VertexSCamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !134
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !135
  br label %_ZN3g2o10VertexSCamD0Ev.exit

_ZN3g2o10VertexSCamD0Ev.exit:                     ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(760) %i.a) #27, !inline_history !135
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(760) %i.a, i64 noundef 768) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o12Edge_XYZ_VSCD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE16allVerticesFixedEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !118, !range !102, !noundef !103
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !118, !range !102, !noundef !103
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit
end_hunk_0
