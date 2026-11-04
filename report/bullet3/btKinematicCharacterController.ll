Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btKinematicCharacterController?download=true
inline.NumInlined: 552
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN30btKinematicCharacterController11setUpVectorERK9btVector3:bb.a
  %.sroa.022.4.vec.insert.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i.i, float %.sroa.618.0.i.i, i64 1
  %.sroa.528.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i.i, i64 0
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

bb.l:                                             ; preds = %bb.h
  %i.cc = fneg float %i.bh
  %i.cd = fmul float %i.be, %i.cc
  %i.ce = fneg float %i.bi
  %i.cf = fmul float %i.ba, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.cf)
  %i.ch = fneg float %i.bj
  %i.ci = fmul float %i.bf, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bi, float %i.ci)
  %i.ck = fadd float %i.bm, 1.000000e+00
  %i.cl = fmul float %i.ck, 2.000000e+00
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bj, float %i.cd)
  %i.cn = tail call noundef float @sqrtf(float noundef %i.cl) #24 ; 2 uses
  %i.co = fdiv float 1.000000e+00, %i.cn          ; 3 uses
  %i.cp = fmul float %i.cj, %i.co
  %i.cq = fmul float %i.cg, %i.co
  %i.cr = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cn, i64 1
  %i.ct = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.co, i64 0
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %.sroa.022.0.vec.insert25.i.i = insertelement <2 x float> poison, float %i.cp, i64 0
  %.sroa.022.4.vec.insert27.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i.i, float %i.cq, i64 1
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit: ; preds = %bb.l, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i, %bb.f, %bb.g
  %.sroa.2.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.528.12.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %i.cu, %bb.l ] ; 4 uses
  %.sroa.0.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.022.4.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %.sroa.022.4.vec.insert27.i.i, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.cv, i64 16, i1 false), !tbaa.struct !65
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !65
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !65
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.db, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.de = fneg <2 x float> %i.dd                  ; 2 uses
  %i.df = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.2.0.i, <2 x i32> <i32 1, i32 2>
  %i.dg = fneg <2 x float> %i.df                  ; 2 uses
  %i.dh = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.dh, %i.dg
  %i.dj = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dk = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %.fca.0.load.i, <2 x float> %i.dl)
  %i.dn = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.i, <2 x float> %i.dn, <2 x float> %i.dm) ; 6 uses
  %i.dp = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 1, i32 2>
  %i.dq = shufflevector <2 x float> %i.de, <2 x float> %.fca.0.load.i, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.ds, <2 x float> %i.dr)
  %i.du = shufflevector <2 x float> %i.dg, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 3>
  %i.dv = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.dt)
  %i.dx = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dk, <2 x float> %i.dw) ; 4 uses
  %i.dz = extractelement <2 x float> %i.do, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.do, %i.do
  %i.ea = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.eb = extractelement <2 x float> %i.dy, i64 0 ; 4 uses
  %i.ec = call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %i.ea)
  %i.ed = extractelement <2 x float> %i.do, i64 1 ; 3 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ec)
  %i.ef = extractelement <2 x float> %i.dy, i64 1 ; 3 uses
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = fdiv float 2.000000e+00, %i.eg          ; 2 uses
  %i.ei = fmul float %i.eb, %i.eh                 ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.do, %i.ek           ; 4 uses
  %i.em = fmul float %i.ef, %i.ei                 ; 2 uses
  %i.en = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ep = fmul <2 x float> %i.en, %i.eo           ; 4 uses
  %i.eq = fmul float %i.eb, %i.ei                 ; 2 uses
  %i.er = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.er, %i.el           ; 4 uses
  %foldExtExtBinop44 = fmul <2 x float> %i.do, %i.el
  %i.et = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %i.eu = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.ev = fmul float %i.dz, %i.eu                 ; 2 uses
  %i.ew = fmul float %i.ed, %i.eu                 ; 2 uses
  %i.ex = fadd float %i.et, %i.ew
  %i.ey = fsub float 1.000000e+00, %i.ex
  %i.ez = fsub <2 x float> %i.es, %i.ep
  %i.fa = fadd <2 x float> %i.es, %i.ep
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop46 = fadd <2 x float> %i.es, %i.ep
  %i.fc = extractelement <2 x float> %foldExtExtBinop46, i64 0
  %i.fd = fadd float %i.eq, %i.ew
  %i.fe = fsub float 1.000000e+00, %i.fd
  %i.ff = fsub float %i.ev, %i.em
  %foldExtExtBinop48 = fsub <2 x float> %i.es, %i.ep
  %i.fg = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.fh = fadd float %i.ev, %i.em
  %i.fi = fadd float %i.eq, %i.et
  %i.fj = fsub float 1.000000e+00, %i.fi
  store float %i.ey, ptr %3, align 4, !tbaa !10
  store <2 x float> %i.fb, ptr %i.dc, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.fk, align 4, !tbaa !10
  store float %i.fc, ptr %i.cx, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.fe, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.ff, ptr %i.fm, align 4, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.fn, align 4, !tbaa !10
  store float %i.fg, ptr %i.cz, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.fh, ptr %i.fo, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.fj, ptr %i.fp, align 4, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.fq, align 4, !tbaa !10
  %i.fr = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 352 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !66
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !66
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !65
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !65
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 4 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, %bb.e, %_ZNK9btVector3eqERKS_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController10getGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load float, ptr %i.a, align 4, !tbaa !38
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = fmul float %i.j, %i.c
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController11getMaxSlopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load float, ptr %i.a, align 4, !tbaa !40
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController22setMaxPenetrationDepthEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((32, 36)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController22getMaxPenetrationDepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !79
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController8onGroundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load <2 x float>, ptr %i.a, align 4
  %.fr1 = freeze <2 x float> %i.b
  %1 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr1)
  %2 = fcmp uge <2 x float> %1, splat (float f0x34000000)
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN30btKinematicCharacterController19getUpAxisDirectionsEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, align 16, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 20), align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 40), align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setUpInterpolateEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((316, 317)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 %i.a, ptr %i.b, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.2.0 = phi <2 x float> [ %i.u, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi <2 x float> [ %i.t, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.j = fmul float %i.a, %i.i
  store float %i.j, ptr %0, align 4, !tbaa !10
  %i.k = fmul float %i.c, %i.i
  store float %i.k, ptr %i.b, align 4, !tbaa !10
  %i.l = fmul float %i.g, %i.i
  store float %i.l, ptr %i.f, align 4, !tbaa !10
  %i.m = load float, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !10 ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.q)
  %i.s = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %sqrt.i.i4 = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fdiv float 1.000000e+00, %sqrt.i.i4
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.m, i64 1
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.w, %i.y              ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !10
  %i.ab = fmul <2 x float> %i.p, %i.y             ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  store float %i.ac, ptr %i.n, align 4, !tbaa !10
  %i.ad = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  store float %i.ad, ptr %i.o, align 4, !tbaa !10
  %i.ae = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 7 uses
  %i.af = load float, ptr %0, align 4, !tbaa !10  ; 6 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0 ; 5 uses
  %foldExtExtBinop7 = fmul <2 x float> %i.ae, %i.ab
  %i.ah = extractelement <2 x float> %foldExtExtBinop7, i64 0
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aa, float %i.ah)
  %i.aj = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.ai) ; 2 uses
  %i.al = fcmp olt float %i.ak, f0xBF7FFFFE
  br i1 %i.al, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.an = fcmp ogt float %i.am, f0x3F3504F3
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = fmul nnan float %i.aj, %i.aj
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ao)
  %sqrt.i.i5 = tail call float @llvm.sqrt.f32(float %i.ap)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i5     ; 2 uses
  %i.ar = fneg float %i.aj
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fmul float %i.ag, %i.aq
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop9 = fmul <2 x float> %i.ae, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop9, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.au)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.ax = fneg float %i.ag
  %i.ay = fmul float %i.aw, %i.ax
  %i.az = fmul float %i.af, %i.aw
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ay, %bb.d ]
  %.sroa.618.0.i = phi float [ %i.as, %bb.c ], [ %i.az, %bb.d ]
  %.sroa.10.0.i = phi float [ %i.at, %bb.c ], [ 0.000000e+00, %bb.d ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

bb.e:                                             ; preds = %bb.a
  %i.ba = fneg float %i.aa
  %i.bb = fmul float %i.ag, %i.ba
  %i.bc = fneg <2 x float> %i.ab
  %i.bd = fadd float %i.ak, 1.000000e+00
  %i.be = fmul float %i.bd, 2.000000e+00
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ac, float %i.bb)
  %i.bg = tail call noundef float @sqrtf(float noundef %i.be) #24 ; 2 uses
  %i.bh = fdiv float 1.000000e+00, %i.bg          ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.af, i64 1
  %i.bk = fmul <2 x float> %i.bj, %i.bc
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.z, <2 x float> %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bl, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bg, i64 1
  %i.br = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.bh, i64 0
  %i.bs = fmul <2 x float> %i.bq, %i.br
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.e
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.bo, %bb.e ]
end_hunk_0
