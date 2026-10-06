Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmoL12GetScaleTypeEv:bb.a
  %foldExtExtBinop = fmul <2 x float> %i.ff, %i.ff
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fh = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fg)
  %i.fj = fadd float %i.fi, 0.000000e+00
  %sqrt.i.i.i.i80 = tail call noundef float @llvm.sqrt.f32(float %i.fj) ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %sqrt.i.i.i.i80 ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x float> %i.ff, %i.fm           ; 3 uses
  %i.fo = fmul float %i.fk, 0.000000e+00          ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 1
  %i.fq = fmul float %i.fe, %i.fp
  %i.fr = extractelement <2 x float> %i.fn, i64 0
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fc, float %i.fq)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fs) ; 4 uses
  %i.fu = fcmp olt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fv = fcmp ogt float %i.ft, %sqrt.i.i.i.i80
  br i1 %i.fv, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.fn, %i.fx
  %i.fz = fmul float %i.fo, %i.ft
  %i.ga = fadd <2 x float> %i.ev, %i.fy
  %i.gb = fadd float %i.fz, 0.000000e+00
  %.sroa.3.8.vec.insert.i.i37.i = insertelement <2 x float> poison, float %i.gb, i64 0
  %.sroa.3.12.vec.insert.i.i38.i = shufflevector <2 x float> %.sroa.3.8.vec.insert.i.i37.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit

_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.013.0.copyload.pn.i = phi <2 x float> [ %i.ga, %bb.e ], [ %i.ev, %bb.c ], [ %i.fa, %bb.d ] ; 2 uses
  %.sroa.4.0.copyload.pn.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i38.i, %bb.e ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %bb.d ]
  %.sroa.0100.0.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 0
  %i.gc = fsub float %.sroa.0100.0.vec.extract, %i.eo ; 2 uses
  %.sroa.0100.4.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 1
  %i.gd = fsub float %.sroa.0100.4.vec.extract, %i.eq ; 2 uses
  %.sroa.5101.8.vec.extract = extractelement <2 x float> %.sroa.4.0.copyload.pn.i, i64 0 ; 2 uses
  %i.ge = fmul float %i.gd, %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %.sroa.5101.8.vec.extract, float %.sroa.5101.8.vec.extract, float %i.gf)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.gg)
  %i.gh = fcmp uge float %sqrt.i, 1.200000e+01    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.gi = add nuw nsw i32 %.017118, 1
  %i.gj = icmp samesign ult i32 %.017118, 2
  %i.gk = and i1 %i.gj, %i.gh
  br i1 %i.gk, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo6EnableEb(i1 noundef zeroext %0) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN8ImGuizmo27DecomposeMatrixToComponentsEPKfPfS2_S2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3) local_unnamed_addr #7 {
bb.a:
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4 ; 2 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 2 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.33.0.copyload = load float, ptr %.sroa.33.0..sroa_idx, align 4 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.36.0.copyload = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.45.0.copyload = load float, ptr %.sroa.45.0..sroa_idx, align 4
  %i.a = load <2 x float>, ptr %0, align 4        ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %i.b = load <2 x float>, ptr %.sroa.17.0..sroa_idx, align 4 ; 2 uses
  %i.c = shufflevector <2 x float> %i.a, <2 x float> %i.b, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = shufflevector <2 x float> %i.a, <2 x float> %i.b, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.e, <2 x float> %i.d)
  %i.g = insertelement <2 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.h = insertelement <2 x float> %i.g, float %.sroa.23.0.copyload, i64 1 ; 2 uses
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.h, <2 x float> %i.f)
  %i.j = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.i) ; 3 uses
  %i.k = fmul float %.sroa.33.0.copyload, %.sroa.33.0.copyload
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %.sroa.30.0.copyload, float %i.k)
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.36.0.copyload, float %.sroa.36.0.copyload, float %i.l)
  %sqrt.i11 = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = extractelement <2 x float> %i.j, i64 1
  %i.p = fdiv float 1.000000e+00, %i.o
  %i.q = fmul float %.sroa.23.0.copyload, %i.p    ; 3 uses
  %i.r = insertelement <2 x float> %i.j, float %sqrt.i11, i64 1
  %i.s = fdiv <2 x float> splat (float 1.000000e+00), %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.u = fmul float %.sroa.7.0.copyload, %i.t
  %i.v = insertelement <2 x float> %i.a, float %.sroa.36.0.copyload, i64 1
  %i.w = fmul <2 x float> %i.v, %i.s              ; 2 uses
  %i.x = fneg float %i.t
  %i.y = fmul float %.sroa.11.0.copyload, %i.x
  %i.z = extractelement <2 x float> %i.w, i64 1   ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.aa)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %.sroa.43.0..sroa_idx, align 4
  store <2 x float> %i.j, ptr %3, align 4, !tbaa !10
  store float %sqrt.i11, ptr %i.n, align 4, !tbaa !10
  %i.ae = tail call float @atan2f(float noundef %i.q, float noundef %i.z) #19
  %i.af = tail call float @atan2f(float noundef %i.y, float noundef %sqrt) #19
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = fmul <2 x float> %i.ah, splat (float f0x42652EE0)
  store <2 x float> %i.ai, ptr %2, align 4, !tbaa !10
  %i.aj = extractelement <2 x float> %i.w, i64 0
  %i.ak = tail call float @atan2f(float noundef %i.u, float noundef %i.aj) #19
  %i.al = fmul float %i.ak, f0x42652EE0
  store float %i.al, ptr %i.ac, align 4, !tbaa !10
  store <2 x float> %i.ad, ptr %1, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.45.0.copyload, ptr %i.am, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %3) local_unnamed_addr #14 {
.preheader.preheader:
  %i.a = load float, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16, !tbaa !12 ; 3 uses
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 4), align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d) ; 2 uses
  %i.g = fcmp olt float %i.f, f0x34000000
  br i1 %i.g, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.h = load float, ptr %1, align 4, !tbaa !10
  %i.i = fmul float %i.h, f0x3C8EFA35             ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.f)
  %i.j = tail call float @sinf(float noundef %i.i) #19 ; 3 uses
  %i.k = tail call float @cosf(float noundef %i.i) #19 ; 3 uses
  %i.l = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.m = fmul float %i.a, %i.l                    ; 5 uses
  %i.n = insertelement <2 x float> poison, float %i.l, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.b, %i.o              ; 4 uses
  %i.q = fsub float 1.000000e+00, %i.k            ; 5 uses
  %i.r = fmul float %i.m, %i.m
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.q, float %i.k)
  %i.t = fmul <2 x float> %i.p, %i.p
  %i.u = insertelement <2 x float> poison, float %i.q, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x float> poison, float %i.k, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.x)
  %i.z = extractelement <2 x float> %i.p, i64 0   ; 3 uses
  %i.aa = fmul float %i.m, %i.z
  %i.ab = fmul float %i.aa, %i.q                  ; 2 uses
  %i.ac = extractelement <2 x float> %i.p, i64 1  ; 3 uses
  %i.ad = fmul float %i.z, %i.ac
  %i.ae = fmul float %i.ad, %i.q                  ; 2 uses
  %i.af = fmul float %i.ac, %i.m
  %i.ag = fmul float %i.af, %i.q                  ; 2 uses
  %i.ah = fmul float %i.m, %i.j                   ; 2 uses
  %i.ai = fmul float %i.z, %i.j                   ; 2 uses
  %i.aj = fmul float %i.ac, %i.j                  ; 2 uses
  %i.ak = fadd float %i.aj, %i.ab
  %i.al = fsub float %i.ag, %i.ai
  %i.am = fsub float %i.ab, %i.aj
  %i.an = fadd float %i.ah, %i.ae
  %i.ao = fadd float %i.ai, %i.ag
  %i.ap = fsub float %i.ae, %i.ah
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit: ; preds = %.preheader.preheader, %bb.a
  %.sroa.4.0 = phi float [ %i.ak, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sroa.7.0 = phi float [ %i.al, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sroa.15.0 = phi float [ %i.an, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sroa.20.0 = phi float [ %i.ao, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %.sroa.22.0 = phi float [ %i.ap, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %.sroa.11.0 = phi float [ %i.am, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sink60.i = phi float [ %i.s, %bb.a ], [ 1.000000e+00, %.preheader.preheader ] ; 4 uses
  %i.aq = phi <2 x float> [ %i.y, %bb.a ], [ splat (float 1.000000e+00), %.preheader.preheader ] ; 3 uses
  %i.ar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16, !tbaa !12 ; 3 uses
  %i.as = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 20), align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop84 = fmul <2 x float> %i.as, %i.as
  %i.at = extractelement <2 x float> %foldExtExtBinop84, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %i.av = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au) ; 2 uses
  %i.ax = fcmp olt float %i.aw, f0x34000000
  br i1 %i.ax, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1, label %bb.b

bb.b:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = fmul float %i.az, f0x3C8EFA35           ; 2 uses
  %sqrt.i.1 = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.bb = tail call float @sinf(float noundef %i.ba) #19 ; 2 uses
  %i.bc = tail call float @cosf(float noundef %i.ba) #19 ; 3 uses
  %i.bd = fdiv float 1.000000e+00, %sqrt.i.1      ; 2 uses
  %i.be = fmul float %i.ar, %i.bd                 ; 5 uses
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.as, %i.bg           ; 5 uses
  %i.bi = fsub float 1.000000e+00, %i.bc          ; 4 uses
  %i.bj = fmul float %i.be, %i.be
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bi, float %i.bc) ; 2 uses
  %i.bl = fmul <2 x float> %i.bh, %i.bh
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bp) ; 3 uses
  %i.br = extractelement <2 x float> %i.bh, i64 0 ; 2 uses
  %i.bs = fmul float %i.be, %i.br
  %i.bt = fmul float %i.bs, %i.bi                 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bh, i64 1 ; 3 uses
  %i.bv = fmul float %i.br, %i.bu
  %i.bw = fmul float %i.bu, %i.be
  %i.bx = fmul float %i.bu, %i.bb                 ; 2 uses
  %i.by = fadd float %i.bx, %i.bt                 ; 2 uses
  %i.bz = fsub float %i.bt, %i.bx                 ; 2 uses
  %i.ca = insertelement <4 x float> poison, float %i.be, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bw, i64 1
  %i.cc = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float %i.bv, i64 3
  %i.cf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.bi, i64 1
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ci = fmul <4 x float> %i.ce, %i.ch           ; 3 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ck = fadd <4 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = fsub <4 x float> %i.ci, %i.cj
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.cn = shufflevector <2 x float> %i.bq, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> poison, <3 x i32> <i32 1, i32 2, i32 3> ; 2 uses
  %i.cp = shufflevector <3 x float> %i.cn, <3 x float> %i.co, <3 x i32> <i32 0, i32 4, i32 5>
  %i.cq = insertelement <3 x float> %i.co, float %i.bk, i64 1
  %i.cr = insertelement <3 x float> %i.cq, float %i.by, i64 2
  %i.cs = shufflevector <4 x float> %i.ck, <4 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ct = insertelement <3 x float> %i.cs, float %i.bz, i64 1
  %i.cu = shufflevector <2 x float> %i.bq, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cv = shufflevector <3 x float> %i.ct, <3 x float> %i.cu, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cw = fmul <3 x float> %i.cv, zeroinitializer
  %i.cx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cr, <3 x float> zeroinitializer, <3 x float> %i.cw)
  %i.cy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cp, <3 x float> zeroinitializer, <3 x float> %i.cx)
  %i.cz = fadd <3 x float> %i.cy, zeroinitializer
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1: ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit, %bb.b
  %.sroa.36.0 = phi float [ %i.by, %bb.b ], [ 0.000000e+00, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 3 uses
  %.sroa.43.0 = phi float [ %i.bz, %bb.b ], [ 0.000000e+00, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 3 uses
  %.sink60.i.1 = phi float [ %i.bk, %bb.b ], [ 1.000000e+00, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 3 uses
  %i.da = phi <3 x float> [ %i.cz, %bb.b ], [ zeroinitializer, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 6 uses
  %i.db = phi <4 x float> [ %i.cm, %bb.b ], [ zeroinitializer, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 8 uses
  %i.dc = phi <2 x float> [ %i.bq, %bb.b ], [ splat (float 1.000000e+00), %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit ] ; 5 uses
  %i.dd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 32), align 16, !tbaa !12 ; 3 uses
  %i.de = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 36), align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop86 = fmul <2 x float> %i.de, %i.de
  %i.df = extractelement <2 x float> %foldExtExtBinop86, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.df)
  %i.dh = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.di = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dg) ; 2 uses
  %i.dj = fcmp olt float %i.di, f0x34000000
  br i1 %i.dj, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.2, label %bb.c

bb.c:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !10
  %i.dm = fmul float %i.dl, f0x3C8EFA35           ; 2 uses
  %sqrt.i.2 = tail call float @llvm.sqrt.f32(float %i.di)
  %i.dn = tail call float @sinf(float noundef %i.dm) #19 ; 2 uses
  %i.do = tail call float @cosf(float noundef %i.dm) #19 ; 3 uses
  %i.dp = fdiv float 1.000000e+00, %sqrt.i.2      ; 2 uses
  %i.dq = fmul float %i.dd, %i.dp                 ; 5 uses
  %i.dr = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.de, %i.ds           ; 5 uses
  %i.du = fsub float 1.000000e+00, %i.do          ; 4 uses
  %i.dv = fmul float %i.dq, %i.dq
  %i.dw = fmul <2 x float> %i.dt, %i.dt
  %i.dx = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> %i.ea)
  %i.ec = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.ed = fmul float %i.dq, %i.ec
  %i.ee = fmul float %i.ed, %i.du                 ; 2 uses
  %i.ef = extractelement <2 x float> %i.dt, i64 1 ; 3 uses
  %i.eg = fmul float %i.ec, %i.ef
  %i.eh = fmul float %i.ef, %i.dq
  %i.ei = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.eh, i64 1
  %i.ek = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float %i.eg, i64 3
  %i.en = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.du, i64 1
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eq = fmul <4 x float> %i.em, %i.ep           ; 3 uses
  %i.er = fmul float %i.ef, %i.dn                 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.du, float %i.do)
  %i.et = fadd float %i.er, %i.ee
  %i.eu = fsub float %i.ee, %i.er
  %i.ev = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ew = fadd <4 x float> %i.eq, %i.ev
  %i.ex = fsub <4 x float> %i.eq, %i.ev
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ez = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.et, i64 1
  %i.fb = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.2

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.2: ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1, %bb.c
  %.sroa.75.0 = phi float [ %i.eu, %bb.c ], [ 0.000000e+00, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1 ] ; 3 uses
  %i.fc = phi <4 x float> [ %i.ey, %bb.c ], [ zeroinitializer, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1 ] ; 10 uses
  %i.fd = phi <4 x float> [ %i.fb, %bb.c ], [ <float 1.000000e+00, float 1.000000e+00, float undef, float undef>, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1 ] ; 6 uses
  %i.fe = phi <2 x float> [ %i.fa, %bb.c ], [ <float 1.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1 ] ; 2 uses
  %i.ff = fmul float %.sroa.4.0, %.sroa.43.0
  %i.fg = tail call float @llvm.fmuladd.f32(float %.sink60.i, float %.sink60.i.1, float %i.ff)
  %i.fh = extractelement <4 x float> %i.db, i64 2 ; 2 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %.sroa.7.0, float %i.fh, float %i.fg)
  %i.fj = extractelement <2 x float> %i.dc, i64 0
  %i.fk = fmul float %.sroa.4.0, %i.fj
  %i.fl = extractelement <4 x float> %i.db, i64 0 ; 2 uses
  %i.fm = fmul float %.sroa.4.0, %i.fl
  %i.fn = fmul float %.sroa.4.0, 0.000000e+00
  %i.fo = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  %i.fp = fmul float %.sroa.43.0, %i.fo
  %i.fq = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %.sink60.i.1, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.fh, float %i.fq)
  %foldExtExtBinop88 = fmul <2 x float> %i.dc, %i.aq
  %i.fs = extractelement <2 x float> %foldExtExtBinop88, i64 0
  %i.ft = fmul float %i.fl, %i.fo
  %i.fu = fmul float %i.fo, 0.000000e+00
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.1775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.scalar = fmul float %.sroa.22.0, 0.000000e+00
  %.scalar90 = tail call float @llvm.fmuladd.f32(float %.sroa.20.0, float 0.000000e+00, float %.scalar)
  %i.fv = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.scalar90, i64 0
  %i.fw = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fx = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.fw, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> zeroinitializer, <4 x float> %i.fv)
  %i.fz = fadd <4 x float> %i.fy, zeroinitializer ; 2 uses
  %i.ga = shufflevector <3 x float> %i.da, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gb = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <2 x i32> <i32 0, i32 4>
  %i.gc = fmul <2 x float> %i.ga, %i.gb
  %i.gd = shufflevector <3 x float> %i.da, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ge = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gf = shufflevector <4 x float> %i.fc, <4 x float> %i.ge, <2 x i32> <i32 5, i32 1>
  %i.gg = shufflevector <3 x float> %i.da, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <2 x i32> <i32 3, i32 5>
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gj = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.gk = insertelement <4 x float> %i.gj, float %.sroa.43.0, i64 0
  %i.gl = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> %i.gl, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.go = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.22.0, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gq = fmul <4 x float> %i.gn, %i.gp
  %i.gr = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.20.0, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gt = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %.sink60.i.1, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %.sroa.36.0, i64 1
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gw, <4 x float> %i.gq)
  %i.gy = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.gz = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> %i.db, <4 x i32> <i32 6, i32 7, i32 2, i32 poison>
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.hb, <4 x float> %i.gx) ; 4 uses
  %i.hd = extractelement <4 x float> %i.hc, i64 2
  %i.he = fadd float %i.hd, 1.000000e+00
  store float %i.he, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !16
  %i.hf = extractelement <4 x float> %i.hc, i64 0
  %i.hg = fadd float %i.hf, 0.000000e+00          ; 2 uses
  %i.hh = extractelement <4 x float> %i.hc, i64 3
  %i.hi = fadd float %i.hh, 0.000000e+00          ; 2 uses
  %i.hj = insertelement <2 x float> %i.gd, float %i.hg, i64 0
  %i.hk = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.hl = insertelement <2 x float> %i.gg, float %i.hi, i64 0
  %i.hm = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hn = insertelement <2 x float> %i.hm, float 0.000000e+00, i64 0
  %i.ho = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.75.0, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.hr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hg, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ht = insertelement <4 x float> %i.ge, float -0.000000e+00, i64 3
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hi, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hx = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.fc, <4 x i32> <i32 6, i32 7, i32 poison, i32 3>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hz = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ia = extractelement <4 x float> %i.db, i64 3 ; 2 uses
  %.scalar91 = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float 0.000000e+00, float %i.fu)
  %.scalar92 = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float 0.000000e+00, float %.scalar91)
  %i.ib = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar92, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.id = fadd <4 x float> %i.ic, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ie = extractelement <4 x float> %i.id, i64 0
  %i.if = fadd float %i.fr, 0.000000e+00          ; 2 uses
  %i.ig = extractelement <4 x float> %i.db, i64 1
  %i.ih = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %i.ig, float %i.ft)
  %i.ii = extractelement <2 x float> %i.dc, i64 1
  %i.ij = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ii, float %i.ih)
  %i.ik = fadd float %i.ij, 0.000000e+00          ; 2 uses
  %i.il = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %i.im = insertelement <4 x float> %i.il, float %.sroa.75.0, i64 0 ; 2 uses
  %i.in = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.if, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ip = shufflevector <4 x float> %i.fc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.iq = shufflevector <4 x float> %i.ge, <4 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ir = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ik, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.it = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float -0.000000e+00, i64 3 ; 2 uses
  %i.iv = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sink60.i, i64 0
  %.scalar93 = tail call float @llvm.fmuladd.f32(float %.sink60.i, float 0.000000e+00, float %i.fn)
  %4 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.7.0, i64 0
  %.scalar94 = tail call float @llvm.fmuladd.f32(float %.sroa.7.0, float 0.000000e+00, float %.scalar93)
  %5 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar94, i64 0
  %i.iw = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ix = fadd <4 x float> %i.iw, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.iy = extractelement <4 x float> %i.ix, i64 0
  %i.iz = fadd float %i.fi, 0.000000e+00          ; 2 uses
  %i.ja = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <2 x i32> <i32 5, i32 1>
  %i.jb = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fm, i64 0
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.ja, <2 x float> %i.jb)
  %i.jd = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dc, <2 x i32> <i32 3, i32 1>
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %i.jd, <2 x float> %i.jc)
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jg = fadd <4 x float> %i.jf, zeroinitializer ; 2 uses
  %i.jh = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %.sroa.36.0, float %i.fs)
  %i.ji = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ia, float %i.jh)
  %i.jj = tail call float @llvm.fmuladd.f32(float %.sink60.i, float %.sroa.36.0, float %i.fk)
  %i.jk = tail call float @llvm.fmuladd.f32(float %.sroa.7.0, float %i.ia, float %i.jj)
  %i.jl = shufflevector <4 x float> %i.gj, <4 x float> %i.hc, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 2
  %i.jn = insertelement <4 x float> %i.jm, float %i.jk, i64 3
  %i.jo = fadd <4 x float> %i.jn, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.jp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.75.0, i64 0
  %i.jq = fmul <4 x float> %i.jo, %i.jp           ; 3 uses
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.js = shufflevector <2 x float> %i.hl, <2 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jt = shufflevector <2 x float> %i.hn, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ju = shufflevector <2 x float> %i.hj, <2 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jv = shufflevector <2 x float> %i.hk, <2 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jw = shufflevector <2 x float> %i.jr, <2 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %i.jv, <4 x float> %i.jw)
  %i.jy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.jt, <4 x float> %i.jx)
  %i.jz = fadd <4 x float> %i.fz, %i.jy           ; 2 uses
  %i.ka = shufflevector <4 x float> %i.jo, <4 x float> %i.jz, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.kb = fmul <4 x float> %i.ka, %i.hq
  %i.kc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.hu, <4 x float> %i.kb)
  %i.kd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> %i.hy, <4 x float> %i.kc)
  %i.ke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> zeroinitializer, <4 x float> %i.kd) ; 3 uses
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kf, ptr %.sroa.11.0..sroa_idx, align 4
  %i.kg = extractelement <4 x float> %i.ke, i64 2
  store float %i.kg, ptr %.sroa.13.0..sroa_idx, align 4
  store <4 x float> %i.jz, ptr %.sroa.14.0..sroa_idx, align 4
  %i.kh = extractelement <4 x float> %i.jq, i64 2
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.if, float 0.000000e+00, float %i.kh)
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ik, float 0.000000e+00, float %i.ki)
  %i.kk = fadd float %i.ie, %i.kj                 ; 2 uses
  %i.kl = shufflevector <4 x float> %i.jo, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.km = insertelement <4 x float> %i.im, float %i.kk, i64 3
  %i.kn = fmul <4 x float> %i.kl, %i.km
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.io, <4 x float> %i.iq, <4 x float> %i.kn)
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.is, <4 x float> %i.iu, <4 x float> %i.ko)
  %i.kq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> zeroinitializer, <4 x float> %i.kp) ; 3 uses
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kr, ptr %.sroa.773.0..sroa_idx, align 4
  %i.ks = extractelement <4 x float> %i.kq, i64 2
  store float %i.ks, ptr %.sroa.9.0..sroa_idx, align 4
  store float %i.kk, ptr %.sroa.10.0..sroa_idx, align 4
  %i.kt = extractelement <4 x float> %i.jq, i64 3
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.iz, float 0.000000e+00, float %i.kt)
  %i.kv = extractelement <4 x float> %i.jg, i64 0
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kv, float 0.000000e+00, float %i.ku)
  %i.kx = fadd float %i.iy, %i.kw                 ; 2 uses
  %i.ky = shufflevector <4 x float> %i.jo, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.kz = insertelement <4 x float> %i.im, float %i.kx, i64 3
  %i.la = fmul <4 x float> %i.ky, %i.kz
  %i.lb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iz, i64 0
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lc, <4 x float> %i.iq, <4 x float> %i.la)
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.iu, <4 x float> %i.ld)
  %i.lf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ix, <4 x float> zeroinitializer, <4 x float> %i.le) ; 3 uses
  %i.lg = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.lg, ptr %3, align 4
  %i.lh = extractelement <4 x float> %i.lf, i64 2
  store float %i.lh, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.kx, ptr %.sroa.6.0..sroa_idx, align 4
  %i.li = load float, ptr %2, align 4, !tbaa !10  ; 2 uses
  %i.lj = tail call float @llvm.fabs.f32(float %i.li)
  %i.lk = fcmp olt float %i.lj, f0x34000000
  %.sroa.0.0 = select i1 %i.lk, float 1.000000e-03, float %i.li
  %i.ll = load <2 x float>, ptr %i.gi, align 4, !tbaa !10 ; 2 uses
  %i.lm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ll)
  %i.ln = fcmp olt <2 x float> %i.lm, splat (float f0x34000000)
  %i.lo = select <2 x i1> %i.ln, <2 x float> splat (float 1.000000e-03), <2 x float> %i.ll ; 2 uses
  %i.lp = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = fmul <4 x float> %i.lf, %i.lq
  store <4 x float> %i.lr, ptr %3, align 4, !tbaa !10
  %i.ls = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.kq, %i.ls
  store <4 x float> %i.lt, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !10
  %i.lu = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lv = fmul <4 x float> %i.ke, %i.lu
  store <4 x float> %i.lv, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !10
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !10
  %i.ly = load <2 x float>, ptr %0, align 4, !tbaa !10
  store <2 x float> %i.ly, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10
  store float %i.lx, ptr %.sroa.1775.0..sroa_idx, align 4, !tbaa !13
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %9 = alloca %"struct.ImGuizmo::vec_t", align 4  ; 6 uses
  %10 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %11 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %12 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec2, align 8            ; 5 uses
  %14 = alloca %struct.ImVec2, align 8            ; 5 uses
  %15 = alloca %struct.ImVec2, align 8            ; 5 uses
  %16 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = alloca [7 x i32], align 16               ; 20 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %20 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %21 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 5 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca [4 x %struct.ImVec2], align 16     ; 8 uses
  %28 = alloca %struct.ImVec2, align 8            ; 5 uses
  %29 = alloca %struct.ImVec2, align 8            ; 7 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.h = alloca [512 x i8], align 16              ; 5 uses
  %32 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.i = alloca [7 x i32], align 16               ; 9 uses
  %35 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 5 uses
  %36 = alloca [64 x %struct.ImVec2], align 16    ; 7 uses
  %37 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca [65 x %struct.ImVec2], align 16    ; 8 uses
  %i.j = alloca [512 x i8], align 16              ; 5 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca [3 x %"struct.ImGuizmo::vec_t"], align 16 ; 12 uses
  %i.k = alloca [3 x i32], align 4                ; 12 uses
  %43 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 18 uses
  %44 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 14 uses
  %45 = alloca %struct.ImVec2, align 8            ; 7 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 5 uses
  %49 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %i.l = alloca [2 x i32], align 4                ; 5 uses
  %50 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 17 uses
  %i.m = alloca [512 x i8], align 16              ; 5 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 11 uses
  %i.n = alloca [3 x float], align 4              ; 6 uses
  %54 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 9 uses
  %55 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 8 uses
  %56 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 6 uses
  %57 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %58 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 16 uses
  %59 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 8 uses
  %60 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 7 uses
  %61 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %62 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %63 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %64 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 9 uses
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull readonly align 4 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull readonly align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !70
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !70
  %i.p = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !14 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = extractelement <4 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <4 x float> %i.p, i64 2   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fdiv float 1.000000e+00, %sqrt.i.i.i.i
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.y, %i.p
  store <4 x float> %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10
  %i.aa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13 ; 2 uses
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.af = insertelement <2 x float> %i.ad, float %i.ab, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.af
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ac, i64 1 ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am)
  %i.ao = fdiv <2 x float> splat (float 1.000000e+00), %i.an ; 2 uses
end_hunk_0
