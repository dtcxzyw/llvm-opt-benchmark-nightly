Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle16updateSuspensionEf:bb.a
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.b = load float, ptr %i.a, align 4, !tbaa !79 ; 3 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.h = load float, ptr %i.g, align 8, !tbaa !51 ; 2 uses
  %i.i = fmul float %i.f, %i.h
  %i.j = fmul float %i.b, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !51
  %i.m = load <2 x float>, ptr %i.d, align 8, !tbaa !51 ; 2 uses
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = insertelement <2 x float> poison, float %i.b, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !51
  %i.s = fadd <2 x float> %i.q, %i.r
  store <2 x float> %i.s, ptr %i.k, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
  %i.v = fadd float %i.j, %i.u
  store float %i.v, ptr %i.t, align 4, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.z = load <4 x float>, ptr %i.y, align 4
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.af = load float, ptr %i.ae, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.al = load float, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.an = load <3 x float>, ptr %1, align 4, !tbaa !51
  %i.ao = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ap = insertelement <3 x float> %i.ao, float %i.h, i64 2
  %i.aq = fmul <3 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = load <3 x float>, ptr %2, align 4, !tbaa !51 ; 2 uses
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.at = fneg <3 x float> %i.aq
  %i.au = shufflevector <3 x float> %i.at, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.av = fmul <3 x float> %i.ar, %i.au
  %i.aw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.as, <3 x float> %i.aq, <3 x float> %i.av) ; 6 uses
  %i.ax = load <2 x float>, ptr %i.x, align 4, !tbaa !51 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ab, align 4, !tbaa !51 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.ba = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.bb)
  %i.bf = insertelement <2 x float> %i.aa, float %i.ad, i64 1
  %i.bg = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = extractelement <3 x float> %i.aw, i64 0
  %i.bj = fmul float %i.bi, %i.ah
  %i.bk = extractelement <3 x float> %i.aw, i64 2
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bk, float %i.bj)
  %i.bm = extractelement <3 x float> %i.aw, i64 1
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bm, float %i.bl)
  %i.bo = load <2 x float>, ptr %i.w, align 8, !tbaa !51
  %i.bp = fmul <2 x float> %i.bh, %i.bo
  %i.bq = fmul float %i.bn, %i.al
  %i.br = load <2 x float>, ptr %i.am, align 4, !tbaa !51
  %i.bs = fadd <2 x float> %i.bp, %i.br
  store <2 x float> %i.bs, ptr %i.am, align 4, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !51
  %i.bv = fadd float %i.bq, %i.bu
  store float %i.bv, ptr %i.bt, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btRaycastVehicle16setSteeringValueEfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store float %1, ptr %i.e, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(296) ptr @_ZN16btRaycastVehicle12getWheelInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK16btRaycastVehicle16getSteeringValueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.f = load float, ptr %i.e, align 4, !tbaa !70
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(296) ptr @_ZNK16btRaycastVehicle12getWheelInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btRaycastVehicle16applyEngineForceEfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store float %1, ptr %i.e, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btRaycastVehicle8setBrakeEfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 260
  store float %1, ptr %i.e, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_Z19calcRollingFrictionR19btWheelContactPointi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 {
_Z8btSetMinIfEvRT_RKS0_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %0, align 8, !tbaa !85     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <4 x float>, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.l = load float, ptr %i.k, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load float, ptr %i.m, align 4, !tbaa !87 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 444
  %i.s = load float, ptr %i.o, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.w = load float, ptr %i.v, align 4, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 420
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 436
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 440
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 444
  %i.ab = load float, ptr %i.x, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 428
  %i.af = load float, ptr %i.ae, align 4, !tbaa !51
  %i.ag = load <2 x float>, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.c, align 4, !tbaa !51 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.j, align 4, !tbaa !51 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.al = fsub <2 x float> %i.aj, %i.ak           ; 2 uses
  %i.am = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.ao = fsub <2 x float> %i.am, %i.an           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.p, align 4, !tbaa !51 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.y, align 4, !tbaa !51 ; 2 uses
  %i.ar = fneg <2 x float> %i.al
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.at = fmul <2 x float> %i.as, %i.ar
  %i.au = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ao, <2 x float> %i.at)
  %i.aw = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.l, i64 1
  %i.az = fsub <2 x float> %i.aw, %i.ay           ; 2 uses
  %i.ba = load <2 x float>, ptr %i.q, align 4, !tbaa !51 ; 2 uses
  %i.bb = load float, ptr %i.r, align 4, !tbaa !51
  %i.bc = fneg <2 x float> %i.ao
  %i.bd = load <2 x float>, ptr %i.z, align 4, !tbaa !51 ; 2 uses
  %i.be = load float, ptr %i.aa, align 4, !tbaa !51
  %i.bf = shufflevector <2 x float> %i.ba, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bg = fmul <2 x float> %i.bf, %i.bc
  %i.bh = shufflevector <2 x float> %i.ba, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.az, <2 x float> %i.bg)
  %i.bj = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.ab, i64 1
  %i.bl = fadd <2 x float> %i.bi, %i.bk           ; 2 uses
  %i.bm = fneg <2 x float> %i.az
  %i.bn = fmul <2 x float> %i.au, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.be, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.al, <2 x float> %i.bn)
  %i.br = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.ad, i64 1
  %i.bt = fadd <2 x float> %i.bs, %i.bq           ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.af, i64 1
  %i.bw = fadd <2 x float> %i.av, %i.bv           ; 2 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bl, %shift
  %i.bx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift40 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop41 = fsub <2 x float> %i.bt, %shift40
  %i.by = extractelement <2 x float> %foldExtExtBinop41, i64 0
  %shift43 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop44 = fsub <2 x float> %i.bw, %shift43
  %i.bz = extractelement <2 x float> %foldExtExtBinop44, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !51
  %i.ce = fmul float %i.by, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bx, float %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !51
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.bz, float %i.cf)
  %i.cj = fneg float %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !88
  %i.cm = fmul float %i.cl, %i.cj
  %i.cn = sitofp i32 %1 to float
  %i.co = fdiv float %i.cm, %i.cn                 ; 2 uses
  %i.cp = fcmp olt float %i.n, %i.co
  %.0 = select i1 %i.cp, float %i.n, float %i.co  ; 2 uses
  %i.cq = fneg float %i.n                         ; 2 uses
  %i.cr = fcmp olt float %.0, %i.cq
  %.1 = select i1 %i.cr, float %i.cq, float %.0
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle14updateFrictionEf(ptr nofree noundef nonnull align 8 dereferenceable(224) %0, float noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %3 = alloca %struct.btWheelContactPoint, align 8 ; 12 uses
  %4 = alloca %class.btVector3, align 8           ; 9 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 23 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 4 uses
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !24 ; 4 uses
  %i.l = icmp sgt i32 %.pre.i, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.n = icmp eq i32 %.pre.i, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !116

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod354 = trunc i32 %.pre.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod354)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !53
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !22, !range !18, !noundef !55
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !22
  store ptr %i.k, ptr %i.x, align 8, !tbaa !23
  store i32 %i.b, ptr %i.f, align 8, !tbaa !25
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.c, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %bb.b
  store i32 %i.b, ptr %i.c, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = icmp sgt i32 %i.b, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit141

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ai = icmp slt i32 %i.ah, %i.b
  br i1 %i.ai, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i131, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit141

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i131: ; preds = %bb.g
  %i.aj = sext i32 %i.b to i64
  %i.ak = shl nsw i64 %i.aj, 4
  %i.al = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ak, i32 noundef 16) ; 4 uses
  %.pre.i130 = load i32, ptr %i.ad, align 4, !tbaa !24 ; 4 uses
  %i.am = icmp sgt i32 %.pre.i130, 0
  br i1 %i.am, label %.lr.ph.i.i.i136, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133

.lr.ph.i.i.i136:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i131
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %wide.trip.count.i.i.i137 = zext nneg i32 %.pre.i130 to i64 ; 2 uses
  %xtraiter356 = and i64 %wide.trip.count.i.i.i137, 1
  %i.ao = icmp eq i32 %.pre.i130, 1
  br i1 %i.ao, label %.epil.preheader355, label %.lr.ph.i.i.i136.new

.lr.ph.i.i.i136.new:                              ; preds = %.lr.ph.i.i.i136
  %unroll_iter359 = and i64 %wide.trip.count.i.i.i137, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i136.new
  %indvars.iv.i.i.i138 = phi i64 [ 0, %.lr.ph.i.i.i136.new ], [ %indvars.iv.next.i.i.i139.1, %bb.h ] ; 4 uses
  %niter360 = phi i64 [ 0, %.lr.ph.i.i.i136.new ], [ %niter360.next.1, %bb.h ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i.i.i138
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i138
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i139 = or disjoint i64 %indvars.iv.i.i.i138, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i139
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i139.1 = add nuw nsw i64 %indvars.iv.i.i.i138, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133.loopexit.unr-lcssa, label %bb.h, !llvm.loop !116

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133, label %.epil.preheader355

.epil.preheader355:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133.loopexit.unr-lcssa, %.lr.ph.i.i.i136
  %indvars.iv.i.i.i138.epil.init = phi i64 [ 0, %.lr.ph.i.i.i136 ], [ %indvars.iv.next.i.i.i139.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod358 = trunc i32 %.pre.i130 to i1
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i.i.i138.epil.init
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i138.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !53
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133: ; preds = %.epil.preheader355, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i131
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %.not.i5.i.i134 = icmp eq ptr %i.az, null
  br i1 %.not.i5.i.i134, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i135, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i133
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !22, !range !18, !noundef !55
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i135

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.hz, i64 16, i1 false), !tbaa.struct !53
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false), !tbaa.struct !53
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false), !tbaa.struct !53
  %i.ic = load i32, ptr %i.gp, align 8, !tbaa !47
  %i.id = sext i32 %i.ic to i64                   ; 3 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %2, i64 %i.id
  %i.if = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.id
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.id
  %i.ih = load float, ptr %i.ie, align 4, !tbaa !51
  %i.ii = load float, ptr %i.if, align 4, !tbaa !51
  %i.ij = load float, ptr %i.ig, align 4, !tbaa !51
  %i.ik = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ii, i64 1
  %i.im = fneg <2 x float> %i.il
  %i.in = fneg float %i.ij
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.in, i64 0
  %i.io = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv255 ; 2 uses
  store <2 x float> %i.im, ptr %i.ip, align 4
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.466.0..sroa_idx, align 4, !tbaa !52
  %i.iq = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv255 ; 4 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !51 ; 2 uses
  %i.it = load float, ptr %i.hw, align 8, !tbaa !51 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = load <2 x float>, ptr %i.iu, align 4, !tbaa !51 ; 4 uses
  %i.iy = load <2 x float>, ptr %i.iv, align 4, !tbaa !51 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ix, %i.iy
  %i.iz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.is, float %i.it, float %i.iz)
  %i.jb = extractelement <2 x float> %i.ix, i64 1
  %i.jc = extractelement <2 x float> %i.iy, i64 1
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.jc, float %i.ja)
  %i.je = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jf = insertelement <2 x float> %i.je, float %i.it, i64 1
  %i.jg = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = fmul <2 x float> %i.jf, %i.jh
  %i.jj = fmul <2 x float> %i.iy, %i.jh
  %i.jk = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jl = insertelement <2 x float> %i.jk, float %i.is, i64 1
  %i.jm = fsub <2 x float> %i.jl, %i.ji           ; 3 uses
  %i.jn = fsub <2 x float> %i.ix, %i.jj           ; 3 uses
  %foldExtExtBinop336 = fmul <2 x float> %i.jn, %i.jn
  %i.jo = extractelement <2 x float> %foldExtExtBinop336, i64 0
  %i.jp = extractelement <2 x float> %i.jm, i64 1 ; 2 uses
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jo)
  %i.jr = extractelement <2 x float> %i.jm, i64 0 ; 2 uses
  %i.js = tail call noundef float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.jq)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.js)
  %i.jt = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ju = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jw = fmul <2 x float> %i.jm, %i.jv           ; 3 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 1 ; 2 uses
  store float %i.jx, ptr %i.ir, align 4, !tbaa !51
  %i.jy = fmul <2 x float> %i.jn, %i.jv           ; 2 uses
  %i.jz = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  store float %i.jz, ptr %i.iu, align 4, !tbaa !51
  %i.ka = extractelement <2 x float> %i.jw, i64 0
  store float %i.ka, ptr %i.iw, align 4, !tbaa !51
  %i.kb = load <2 x float>, ptr %i.iv, align 4, !tbaa !51 ; 3 uses
  %i.kc = load float, ptr %i.hw, align 8, !tbaa !51 ; 2 uses
  %i.kd = fneg <2 x float> %i.jy
  %i.ke = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kf = insertelement <2 x float> %i.ke, float %i.kc, i64 1
  %i.kg = fmul <2 x float> %i.kf, %i.kd
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.jw, <2 x float> %i.kg)
  %i.ki = fneg float %i.jx
  %i.kj = extractelement <2 x float> %i.kb, i64 0
  %i.kk = fmul float %i.kj, %i.ki
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.jz, float %i.kk)
  %.sroa.3.12.vec.insert.i183 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kl, i64 0
  %i.km = load ptr, ptr %i.gr, align 8, !tbaa !23
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %indvars.iv255 ; 2 uses
  store <2 x float> %i.kh, ptr %i.kn, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i183, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  %i.ko = load ptr, ptr %i.gr, align 8, !tbaa !23
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %indvars.iv255 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !51 ; 3 uses
  %i.ks = load <2 x float>, ptr %i.kp, align 4, !tbaa !51 ; 4 uses
  %foldExtExtBinop338 = fmul <2 x float> %i.ks, %i.ks
  %i.kt = extractelement <2 x float> %foldExtExtBinop338, i64 1
  %i.ku = extractelement <2 x float> %i.ks, i64 0 ; 2 uses
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.ku, float %i.kt)
  %i.kw = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.kr, float %i.kv)
  %sqrt.i.i186 = tail call noundef float @llvm.sqrt.f32(float %i.kw)
  %i.kx = fdiv float 1.000000e+00, %sqrt.i.i186   ; 2 uses
  %i.ky = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.ks, %i.kz
  store <2 x float> %i.la, ptr %i.kp, align 4, !tbaa !51
  %i.lb = fmul float %i.kr, %i.kx
  store float %i.lb, ptr %i.kq, align 4, !tbaa !51
  %i.lc = load ptr, ptr %i.gs, align 8, !tbaa !46
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv255
  %i.lg = load ptr, ptr %i.gt, align 8, !tbaa !30
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv255
  tail call void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(744) %i.lc, ptr noundef nonnull align 4 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(744) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.ld, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %i.lf, ptr noundef nonnull align 4 dereferenceable(4) %i.lh, float noundef %1)
  %i.li = load float, ptr @sideFrictionStiffness2, align 4, !tbaa !51
  %i.lj = load ptr, ptr %i.gt, align 8, !tbaa !30
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv255 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !51
  %i.lm = fmul float %i.li, %i.ll
  store float %i.lm, ptr %i.lk, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre271 = load i32, ptr %i.a, align 4, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ln = phi i32 [ %.pre271, %bb.p ], [ %i.hu, %bb.o ] ; 3 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.lo = sext i32 %i.ln to i64
  %i.lp = icmp slt i64 %indvars.iv.next256, %i.lo
  br i1 %i.lp, label %bb.o, label %.preheader236, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.x
  %i.lq = icmp sgt i32 %i.qs, 0
  %or.cond = and i1 %.2, %i.lq
  br i1 %or.cond, label %.lr.ph248, label %.loopexit235

.lr.ph248:                                        ; preds = %._crit_edge
  %i.lr = load ptr, ptr %i.ht, align 8, !tbaa !30
  %wide.trip.count264 = zext nneg i32 %i.qs to i64
  br label %bb.y

bb.r:                                             ; preds = %.lr.ph244, %bb.x
  %i.ls = phi ptr [ %.pre272, %.lr.ph244 ], [ %i.qq, %bb.x ] ; 2 uses
  %i.lt = phi ptr [ %.pre272, %.lr.ph244 ], [ %i.qr, %bb.x ] ; 2 uses
  %indvars.iv258 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next259, %bb.x ] ; 7 uses
  %.0110242 = phi i1 [ false, %.lr.ph244 ], [ %.2, %bb.x ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [296 x i8], ptr %i.lt, i64 %indvars.iv258 ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 88
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !76 ; 2 uses
  %.not121 = icmp eq ptr %i.lw, null
  br i1 %.not121, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 256
  %i.ly = load float, ptr %i.lx, align 8, !tbaa !82 ; 2 uses
  %i.lz = fcmp une float %i.ly, 0.000000e+00
  br i1 %i.lz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ma = fmul float %1, %i.ly
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 260
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !83 ; 2 uses
  %.inv = fcmp oeq float %i.mc, 0.000000e+00
  %. = select i1 %.inv, float 0.000000e+00, float %i.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.md = load ptr, ptr %i.hi, align 8, !tbaa !46
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mf = load ptr, ptr %i.hj, align 8, !tbaa !23
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %indvars.iv258
  call void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.md, ptr noundef nonnull %i.lw, ptr noundef nonnull align 4 dereferenceable(16) %i.me, ptr noundef nonnull align 4 dereferenceable(16) %i.mg, float noundef %.)
  %i.mh = load ptr, ptr %3, align 8, !tbaa !85    ; 8 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  %i.mj = load <4 x float>, ptr %i.hl, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !51
  %i.mm = load ptr, ptr %i.hm, align 8, !tbaa !86 ; 8 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 64
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !51
  %i.mq = load float, ptr %i.hn, align 4, !tbaa !87 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 420
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 436
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 440
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mh, i64 444
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !51
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mh, i64 424
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !51
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 428
  %i.mz = load float, ptr %i.my, align 4, !tbaa !51
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 420
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 436
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mm, i64 440
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mm, i64 444
  %i.ne = load float, ptr %i.na, align 4, !tbaa !51
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mm, i64 424
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mm, i64 428
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !51
  %i.nj = load <2 x float>, ptr %i.hk, align 8, !tbaa !51 ; 2 uses
  %i.nk = load <2 x float>, ptr %i.mi, align 4, !tbaa !51 ; 2 uses
  %i.nl = load <2 x float>, ptr %i.mn, align 4, !tbaa !51 ; 2 uses
  %i.nm = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nn = shufflevector <2 x float> %i.nk, <2 x float> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.no = fsub <2 x float> %i.nm, %i.nn           ; 2 uses
  %i.np = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nq = shufflevector <2 x float> %i.nk, <2 x float> %i.nl, <2 x i32> <i32 1, i32 3>
  %i.nr = fsub <2 x float> %i.np, %i.nq           ; 2 uses
  %i.ns = load <2 x float>, ptr %i.ms, align 4, !tbaa !51 ; 2 uses
  %i.nt = load <2 x float>, ptr %i.nb, align 4, !tbaa !51 ; 2 uses
  %i.nu = fneg <2 x float> %i.no
  %i.nv = shufflevector <2 x float> %i.ns, <2 x float> %i.nt, <2 x i32> <i32 1, i32 3>
  %i.nw = fmul <2 x float> %i.nv, %i.nu
  %i.nx = shufflevector <2 x float> %i.ns, <2 x float> %i.nt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ny = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> %i.nr, <2 x float> %i.nw)
  %i.nz = shufflevector <4 x float> %i.mj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.oa = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.mp, i64 1
  %i.oc = fsub <2 x float> %i.nz, %i.ob           ; 2 uses
  %i.od = load <2 x float>, ptr %i.mt, align 4, !tbaa !51 ; 2 uses
  %i.oe = load float, ptr %i.mu, align 4, !tbaa !51
  %i.of = fneg <2 x float> %i.nr
  %i.og = load <2 x float>, ptr %i.nc, align 4, !tbaa !51 ; 2 uses
  %i.oh = load float, ptr %i.nd, align 4, !tbaa !51
  %i.oi = shufflevector <2 x float> %i.od, <2 x float> %i.og, <2 x i32> <i32 1, i32 3>
  %i.oj = fmul <2 x float> %i.oi, %i.of
  %i.ok = shufflevector <2 x float> %i.od, <2 x float> %i.og, <2 x i32> <i32 0, i32 2>
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ok, <2 x float> %i.oc, <2 x float> %i.oj)
  %i.om = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.ne, i64 1
  %i.oo = fadd <2 x float> %i.ol, %i.on           ; 2 uses
  %i.op = fneg <2 x float> %i.oc
  %i.oq = fmul <2 x float> %i.nx, %i.op
  %i.or = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.oh, i64 1
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.os, <2 x float> %i.no, <2 x float> %i.oq)
  %i.ou = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.ng, i64 1
  %i.ow = fadd <2 x float> %i.ov, %i.ot           ; 2 uses
  %i.ox = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.ni, i64 1
  %i.oz = fadd <2 x float> %i.ny, %i.oy           ; 2 uses
  %shift = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop340 = fsub <2 x float> %i.oo, %shift
  %i.pa = extractelement <2 x float> %foldExtExtBinop340, i64 0
  %shift342 = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop343 = fsub <2 x float> %i.ow, %shift342
  %i.pb = extractelement <2 x float> %foldExtExtBinop343, i64 0
  %shift345 = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop346 = fsub <2 x float> %i.oz, %shift345
  %i.pc = extractelement <2 x float> %foldExtExtBinop346, i64 0
  %i.pd = load float, ptr %i.ho, align 8, !tbaa !51
  %i.pe = load float, ptr %i.hp, align 4, !tbaa !51
  %i.pf = fmul float %i.pb, %i.pe
  %i.pg = call float @llvm.fmuladd.f32(float %i.pd, float %i.pa, float %i.pf)
  %i.ph = load float, ptr %i.hq, align 8, !tbaa !51
  %i.pi = call noundef float @llvm.fmuladd.f32(float %i.ph, float %i.pc, float %i.pg)
  %i.pj = fneg float %i.pi
  %i.pk = load float, ptr %i.hr, align 8, !tbaa !88
  %i.pl = fmul float %i.pk, %i.pj
  %i.pm = fdiv float %i.pl, %i.gl                 ; 2 uses
  %i.pn = fcmp olt float %i.mq, %i.pm
  %.0.i = select i1 %i.pn, float %i.mq, float %i.pm ; 2 uses
  %i.po = fneg float %i.mq                        ; 2 uses
  %i.pp = fcmp olt float %.0.i, %i.po
  %.1.i = select i1 %i.pp, float %i.po, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre273 = load ptr, ptr %i.hh, align 8, !tbaa !43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.pq = phi ptr [ %i.ls, %bb.t ], [ %.pre273, %bb.u ] ; 5 uses
  %.0108 = phi float [ %i.ma, %bb.t ], [ %.1.i, %bb.u ] ; 2 uses
  %i.pr = load ptr, ptr %i.hs, align 8, !tbaa !30 ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv258 ; 2 uses
  store float 0.000000e+00, ptr %i.ps, align 4, !tbaa !51
  %i.pt = getelementptr inbounds nuw [296 x i8], ptr %i.pq, i64 %indvars.iv258
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 292 ; 3 uses
  store float 1.000000e+00, ptr %i.pu, align 4, !tbaa !132
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lu, i64 288
  %i.pw = load float, ptr %i.pv, align 8, !tbaa !81
  %i.px = fmul float %1, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.lu, i64 232
  %i.pz = load float, ptr %i.py, align 8, !tbaa !133
  %i.qa = fmul float %i.px, %i.pz                 ; 3 uses
  %i.qb = fmul float %i.qa, %i.qa
  store float %.0108, ptr %i.ps, align 4, !tbaa !51
  %i.qc = fmul float %.0108, 5.000000e-01         ; 2 uses
  %i.qd = load ptr, ptr %i.ht, align 8, !tbaa !30
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv258
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !51 ; 2 uses
  %i.qg = fmul float %i.qf, %i.qf
  %i.qh = call float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %i.qg) ; 2 uses
  %i.qi = fcmp ogt float %i.qh, %i.qb
  br i1 %i.qi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %sqrt = call float @llvm.sqrt.f32(float %i.qh)
  %i.qj = fdiv float %i.qa, %sqrt
  %i.qk = load float, ptr %i.pu, align 4, !tbaa !132
  %i.ql = fmul float %i.qj, %i.qk
  store float %i.ql, ptr %i.pu, align 4, !tbaa !132
  br label %bb.x

.critedge:                                        ; preds = %bb.r
  %i.qm = load ptr, ptr %i.hs, align 8, !tbaa !30 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv258
  store float 0.000000e+00, ptr %i.qn, align 4, !tbaa !51
  %i.qo = getelementptr inbounds nuw i8, ptr %i.lu, i64 292
  store float 1.000000e+00, ptr %i.qo, align 4, !tbaa !132
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge
  %i.qp = phi ptr [ %i.qm, %.critedge ], [ %i.pr, %bb.v ], [ %i.pr, %bb.w ]
  %i.qq = phi ptr [ %i.ls, %.critedge ], [ %i.pq, %bb.v ], [ %i.pq, %bb.w ] ; 2 uses
  %i.qr = phi ptr [ %i.lt, %.critedge ], [ %i.pq, %bb.v ], [ %i.pq, %bb.w ]
  %.2 = phi i1 [ %.0110242, %.critedge ], [ %.0110242, %bb.v ], [ true, %bb.w ] ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.qs = load i32, ptr %i.a, align 4, !tbaa !44  ; 4 uses
  %i.qt = sext i32 %i.qs to i64
  %i.qu = icmp slt i64 %indvars.iv.next259, %i.qt
  br i1 %i.qu, label %bb.r, label %._crit_edge, !llvm.loop !126

bb.y:                                             ; preds = %.lr.ph248, %bb.ab
  %indvars.iv260 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next261, %bb.ab ] ; 4 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv260 ; 3 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !51
  %i.qx = fcmp une float %i.qw, 0.000000e+00
  br i1 %i.qx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.qy = getelementptr inbounds nuw [296 x i8], ptr %i.qq, i64 %indvars.iv260
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 292 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !132 ; 2 uses
  %i.rb = fcmp olt float %i.ra, 1.000000e+00
  br i1 %i.rb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv260 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !51
  %i.re = fmul float %i.ra, %i.rd
  store float %i.re, ptr %i.rc, align 4, !tbaa !51
  %i.rf = load float, ptr %i.qz, align 4, !tbaa !132
  %i.rg = load float, ptr %i.qv, align 4, !tbaa !51
  %i.rh = fmul float %i.rf, %i.rg
  store float %i.rh, ptr %i.qv, align 4, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit235, label %bb.y, !llvm.loop !127

.loopexit235:                                     ; preds = %bb.ab, %._crit_edge
  %i.ri = icmp sgt i32 %i.qs, 0
  br i1 %i.ri, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.loopexit235
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph251, %bb.ag
  %indvars.iv266 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next267, %bb.ag ] ; 7 uses
  %i.rw = load ptr, ptr %i.rj, align 8, !tbaa !43
  %i.rx = getelementptr inbounds nuw [296 x i8], ptr %i.rw, i64 %indvars.iv266 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %i.rz = load ptr, ptr %i.rk, align 8, !tbaa !46 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  %i.sb = load <2 x float>, ptr %i.ry, align 4, !tbaa !51
  %i.sc = load <2 x float>, ptr %i.sa, align 4, !tbaa !51
  %i.sd = fsub <2 x float> %i.sb, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 24 ; 2 uses
  %i.sf = load float, ptr %i.se, align 4, !tbaa !51
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 64
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !51
  %i.si = fsub float %i.sf, %i.sh
  %.sroa.3.12.vec.insert.i189 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.si, i64 0
  store <2 x float> %i.sd, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i189, ptr %i.rl, align 8
  %i.sj = load ptr, ptr %i.rm, align 8, !tbaa !30
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv266 ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !51
  %i.sm = fcmp une float %i.sl, 0.000000e+00
  br i1 %i.sm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.sn = load ptr, ptr %i.rn, align 8, !tbaa !23
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %indvars.iv266 ; 2 uses
  %i.sp = load float, ptr %i.sk, align 4, !tbaa !51 ; 2 uses
  %i.sq = load <2 x float>, ptr %i.so, align 4, !tbaa !51
  %i.sr = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.ss, %i.sq
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sv = load float, ptr %i.su, align 4, !tbaa !51
  %i.sw = fmul float %i.sp, %i.sv
  %.sroa.3.12.vec.insert.i194 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sw, i64 0
  store <2 x float> %i.st, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i194, ptr %i.ro, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.rz, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.sx = load ptr, ptr %i.rp, align 8, !tbaa !30
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv266 ; 2 uses
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !51
  %i.ta = fcmp une float %i.sz, 0.000000e+00
  br i1 %i.ta, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.tb = load ptr, ptr %i.rj, align 8, !tbaa !43
  %i.tc = getelementptr inbounds nuw [296 x i8], ptr %i.tb, i64 %indvars.iv266
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 88
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 56
  %i.tg = load <2 x float>, ptr %i.ry, align 4, !tbaa !51
  %i.th = load <2 x float>, ptr %i.tf, align 4, !tbaa !51
  %i.ti = fsub <2 x float> %i.tg, %i.th
  %i.tj = load float, ptr %i.se, align 4, !tbaa !51
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !51
  %i.tm = fsub float %i.tj, %i.tl
  %.sroa.3.12.vec.insert.i199 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tm, i64 0
  store <2 x float> %i.ti, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i199, ptr %i.rq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.tn = load ptr, ptr %i.rr, align 8, !tbaa !23
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv266 ; 2 uses
  %i.tp = load float, ptr %i.sy, align 4, !tbaa !51 ; 2 uses
  %i.tq = load <2 x float>, ptr %i.to, align 4, !tbaa !51
  %i.tr = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x float> %i.ts, %i.tq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 8
end_hunk_1
