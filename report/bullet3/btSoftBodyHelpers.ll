Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.gs = extractelement <2 x float> %i.gj, i64 1 ; 2 uses
  %i.gt = fadd float %i.gs, -1.000000e-01
  %.sroa.0.4.vec.insert.i18.i = insertelement <2 x float> %i.gj, float %i.gt, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i87, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gu = fadd float %i.gk, 0.000000e+00          ; 2 uses
  %i.gv = fadd float %i.gs, 1.000000e-01
  %.sroa.0.0.vec.insert.i22.i = insertelement <2 x float> poison, float %i.gu, i64 0
  %.sroa.0.4.vec.insert.i23.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i22.i, float %i.gv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i23.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fk, align 8
  %i.gw = load ptr, ptr %1, align 8, !tbaa !69
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.gz = fadd float %i.fy, -1.000000e-01
  %.sroa.3.12.vec.insert.i29.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gz, i64 0
  store <2 x float> %i.gj, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ha = fadd float %i.fy, 1.000000e-01
  %i.hb = insertelement <2 x float> %i.gn, float %i.gu, i64 0
  %.sroa.3.12.vec.insert.i34.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  store <2 x float> %i.hb, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i, ptr %i.fm, align 8
  %i.hc = load ptr, ptr %1, align 8, !tbaa !69
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load i32, ptr %i.fd, align 4, !tbaa !41
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %bb.c, label %._crit_edge, !llvm.loop !233

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.loopexit:
  %i.a = add i32 %3, 2                            ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %3, -2                      ; 2 uses
  %i.d = shl nsw i64 %i.b, 4
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 4 uses
  %i.g = shl nsw i64 %i.b, 2
  %i.h = select i1 %i.c, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #27 ; 3 uses
  %i.j = icmp sgt i32 %3, -2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.k = add nsw i32 %3, 1
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 4 uses
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = fdiv float %i.p, %i.l                    ; 2 uses
  %i.r = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.t = fsub <2 x float> %i.s, %i.r
  %i.u = insertelement <2 x float> poison, float %i.q, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.r)
  %i.x = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  %i.y = load float, ptr %i.n, align 4, !tbaa !9
  %i.z = fsub float %i.y, %i.x
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.q, float %i.x)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.w, ptr %i.ab, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.a, %.loopexit
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16) ; 6 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.ad, ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef %i.f, ptr noundef nonnull %i.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ae = and i32 %4, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.ad, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.d
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ai = and i32 %4, 2
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %3, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.ad, i32 noundef %i.aj, float noundef 0.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = icmp eq ptr %i.f, null
  br i1 %i.ak, label %_ZN9btVector3daEPv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %_ZN9btVector3daEPv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #26
  unreachable

_ZN9btVector3daEPv.exit:                          ; preds = %bb.i, %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #28
  %i.an = icmp sgt i32 %3, -1
  br i1 %i.an, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %_ZN9btVector3daEPv.exit
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %.139 = phi i32 [ %i.ap, %.lr.ph40 ], [ 1, %.lr.ph40.preheader ] ; 3 uses
  %i.ao = add nsw i32 %.139, -1
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.ad, i32 noundef %i.ao, i32 noundef %.139, ptr noundef null, i1 noundef zeroext false)
  %i.ap = add nuw nsw i32 %.139, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.ap, %smax43
  br i1 %exitcond44.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !235

._crit_edge41:                                    ; preds = %.lr.ph40, %_ZN9btVector3daEPv.exit
  ret ptr %i.ad
}

declare void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #13

declare void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064), i32 noundef, float noundef) local_unnamed_addr #13

declare void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibf(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, float noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #27 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = add nsw i32 %5, -1
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count205 = zext nneg i32 %6 to i64
  %i.t = insertelement <2 x float> poison, float %9, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv202 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next203, %._crit_edge ] ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv202 to i32
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fdiv float %i.w, %i.j                    ; 2 uses
  %10 = load <4 x float>, ptr %1, align 4
  %11 = load <4 x float>, ptr %3, align 4
  %i.y = load float, ptr %i.k, align 4, !tbaa !9
  %i.z = load float, ptr %i.l, align 4, !tbaa !9
  %i.aa = load float, ptr %i.m, align 4, !tbaa !9
  %i.ab = load float, ptr %i.n, align 4, !tbaa !9
  %i.ac = load float, ptr %2, align 4, !tbaa !9
  %i.ad = load float, ptr %4, align 4, !tbaa !9
  %12 = load <4 x float>, ptr %2, align 4
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %14 = load <4 x float>, ptr %4, align 4
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x float> %15, float %i.z, i64 1
  %i.af = insertelement <2 x float> %13, float %i.y, i64 1 ; 2 uses
  %i.ag = fsub <2 x float> %i.ae, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.af)
  %i.ak = load float, ptr %i.o, align 4, !tbaa !9
  %i.al = load float, ptr %i.p, align 4, !tbaa !9
  %i.am = insertelement <4 x float> %11, float %i.ab, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.ad, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.al, i64 3
  %i.ap = insertelement <4 x float> %10, float %i.aa, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ac, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 3 ; 2 uses
  %i.as = fsub <4 x float> %i.ao, %i.ar
  %i.at = insertelement <4 x float> poison, float %i.x, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.au, <4 x float> %i.ar) ; 3 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ay = fsub <2 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv202, %i.s
  %i.ba = extractelement <4 x float> %i.av, i64 1
  %i.bb = extractelement <2 x float> %i.ay, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge192.split, label %.lr.ph, !llvm.loop !236

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fdiv float %i.bd, %i.r                  ; 2 uses
  %i.bf = tail call i32 @rand() #25
  %i.bg = tail call i32 @rand() #25
  %i.bh = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = sitofp <2 x i32> %i.bi to <2 x float>
  %i.bk = fmul <2 x float> %i.u, %i.bj
  %i.bl = fmul <2 x float> %i.bk, splat (float f0x30000000)
  %i.bm = fadd <2 x float> %i.aj, %i.bl           ; 3 uses
  %shift = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bm, %shift
  %i.bn = shufflevector <2 x float> %i.ay, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ax, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bq)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.be, float %i.ba)
  %.sroa.3.12.vec.insert.i.i169 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bs, i64 0
  %i.bt = add nuw nsw i64 %indvars.iv, %i.az      ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.bt ; 2 uses
  store <2 x float> %i.br, ptr %i.bu, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i169, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bt
  store float 1.000000e+00, ptr %i.bv, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !237

._crit_edge192.split:                             ; preds = %._crit_edge
  %i.bw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16) ; 17 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge192.split
  %i.bx = and i32 %7, 1
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge192.split
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bw)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.by

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.cb = and i32 %7, 2
  %.not158 = icmp eq i32 %i.cb, 0
  br i1 %.not158, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cc, float noundef 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cd = and i32 %7, 4
  %.not159 = icmp eq i32 %i.cd, 0
  br i1 %.not159, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = add nsw i32 %6, -1
  %i.cf = mul nsw i32 %i.ce, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cf, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cg = and i32 %7, 8
  %.not160 = icmp eq i32 %i.cg, 0
  br i1 %.not160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %6, -1
  %i.ci = mul nsw i32 %i.ch, %5
  %i.cj = add nsw i32 %5, -1
  %i.ck = add nuw nsw i32 %i.cj, %i.ci
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.ck, float noundef 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %.preheader.preheader unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #26
  unreachable

.preheader.preheader:                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge195
  %.1196 = phi i32 [ %i.co, %._crit_edge195 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cn = mul nuw nsw i32 %.1196, %5              ; 4 uses
  %i.co = add nuw nsw i32 %.1196, 1               ; 4 uses
  %i.cp = icmp slt i32 %i.co, %6
  %i.cq = mul nuw nsw i32 %i.co, %5               ; 4 uses
  br i1 %i.cp, label %.lr.ph194.split.us, label %.lr.ph194.split

.lr.ph194.split.us:                               ; preds = %.preheader, %.thread.us
  %.0193.us = phi i32 [ %i.cs, %.thread.us ], [ 0, %.preheader ] ; 5 uses
  %i.cr = add nuw nsw i32 %.0193.us, %i.cn        ; 7 uses
  %i.cs = add nuw nsw i32 %.0193.us, 1            ; 6 uses
  %i.ct = icmp slt i32 %i.cs, %5
  br i1 %i.ct, label %bb.o, label %.thread.us.critedge

bb.o:                                             ; preds = %.lr.ph194.split.us
  %i.cu = add nuw nsw i32 %i.cs, %i.cn            ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.cu, ptr noundef null, i1 noundef zeroext false)
  %i.cv = add nuw nsw i32 %.0193.us, %i.cq        ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.cv, ptr noundef null, i1 noundef zeroext false)
  %i.cw = add nuw nsw i32 %.0193.us, %.1196
  %i.cx = and i32 %i.cw, 1
  %.not161.us = icmp eq i32 %i.cx, 0
  br i1 %.not161.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = add nuw nsw i32 %i.cs, %i.cq            ; 3 uses
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.cu, i32 noundef %i.cy, ptr noundef null)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.cy, i32 noundef %i.cv, ptr noundef null)
  br i1 %8, label %bb.q, label %.thread.us

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.cy, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cv, i32 noundef %i.cr, i32 noundef %i.cu, ptr noundef null)
  %i.cz = add nuw nsw i32 %i.cs, %i.cq
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef %i.cz, ptr noundef null)
  br i1 %8, label %bb.s, label %.thread.us

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us.critedge:                              ; preds = %.lr.ph194.split.us
  %i.da = add nuw nsw i32 %.0193.us, %i.cq
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.cr, i32 noundef %i.da, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.critedge, %bb.s, %bb.r, %bb.q, %bb.p
  %exitcond208.not = icmp eq i32 %i.cs, %5
  br i1 %exitcond208.not, label %._crit_edge195, label %.lr.ph194.split.us, !llvm.loop !238

._crit_edge195:                                   ; preds = %.thread, %.thread.us
  %exitcond209.not = icmp eq i32 %i.co, %6
  br i1 %exitcond209.not, label %.loopexit, label %.preheader, !llvm.loop !239

.lr.ph194.split:                                  ; preds = %.preheader, %.thread
  %.0193 = phi i32 [ %i.db, %.thread ], [ 0, %.preheader ] ; 2 uses
  %i.db = add nuw nsw i32 %.0193, 1               ; 4 uses
  %i.dc = icmp slt i32 %i.db, %5
  br i1 %i.dc, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph194.split
  %i.dd = add nuw nsw i32 %.0193, %i.cn
  %i.de = add nuw nsw i32 %i.db, %i.cn
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bw, i32 noundef %i.dd, i32 noundef %i.de, ptr noundef null, i1 noundef zeroext false)
  br label %.thread

.thread:                                          ; preds = %bb.t, %.lr.ph194.split
  %exitcond207.not = icmp eq i32 %i.db, %5
  br i1 %exitcond207.not, label %._crit_edge195, label %.lr.ph194.split, !llvm.loop !238

.loopexit:                                        ; preds = %._crit_edge195, %bb.a
  %.0147 = phi ptr [ null, %bb.a ], [ %i.bw, %._crit_edge195 ]
  ret ptr %.0147
}

declare void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #27 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = add nsw i32 %5, -1
  %i.n = uitofp nneg i32 %i.m to float
  %i.o = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count252 = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv249 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next250, %._crit_edge ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv249 to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv float %i.q, %i.j
  %10 = load <4 x float>, ptr %1, align 4
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %12 = load <4 x float>, ptr %3, align 4
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.s = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.t = load <2 x float>, ptr %3, align 4, !tbaa !9
  %i.u = fsub <2 x float> %i.t, %i.s
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.s) ; 2 uses
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !9 ; 2 uses
  %i.z = load <2 x float>, ptr %4, align 4, !tbaa !9
  %i.aa = fsub <2 x float> %i.z, %i.y
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.w, <2 x float> %i.y)
  %i.ac = load float, ptr %i.k, align 4, !tbaa !9
  %i.ad = load float, ptr %i.l, align 4, !tbaa !9
  %i.ae = insertelement <2 x float> %13, float %i.ad, i64 1
  %i.af = insertelement <2 x float> %11, float %i.ac, i64 1 ; 2 uses
  %i.ag = fsub <2 x float> %i.ae, %i.af
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.w, <2 x float> %i.af) ; 3 uses
  %i.ai = fsub <2 x float> %i.ab, %i.x
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ah
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = mul nuw nsw i64 %indvars.iv249, %i.o
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge239.split, label %.lr.ph, !llvm.loop !240

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fdiv float %i.an, %i.n                  ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aq, <2 x float> %i.x)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ao, float %i.aj)
  %.sroa.3.12.vec.insert.i.i227 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  %i.at = add nuw nsw i64 %indvars.iv, %i.al      ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.at ; 2 uses
  store <2 x float> %i.ar, ptr %i.au, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i227, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.at
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !241

._crit_edge239.split:                             ; preds = %._crit_edge
  %i.aw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16) ; 20 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge239.split
  %i.ax = and i32 %7, 1
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge239.split
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #26
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.ay

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.bb = and i32 %7, 2
  %.not211 = icmp eq i32 %i.bb, 0
  br i1 %.not211, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.bc, float noundef 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = and i32 %7, 4
  %.not212 = icmp eq i32 %i.bd, 0
  br i1 %.not212, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %6, -1
  %i.bf = mul nsw i32 %i.be, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.bf, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bg = and i32 %7, 8
  %.not213 = icmp eq i32 %i.bg, 0
  br i1 %.not213, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add nsw i32 %6, -1
  %i.bi = mul nsw i32 %i.bh, %5
  %i.bj = add nsw i32 %5, -1
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.bk, float noundef 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = and i32 %7, 16
  %.not214 = icmp eq i32 %i.bl, 0
  br i1 %.not214, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %5, -1
  %i.bn = lshr i32 %i.bm, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.bn, float noundef 0.000000e+00)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = and i32 %7, 32
  %.not215 = icmp eq i32 %i.bo, 0
  br i1 %.not215, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %6, -1
  %i.bq = lshr i32 %i.bp, 1
  %i.br = mul nuw nsw i32 %i.bq, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.br, float noundef 0.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = and i32 %7, 64
  %.not216 = icmp eq i32 %i.bs, 0
  br i1 %.not216, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i32 %6, -1
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = mul nuw nsw i32 %i.bu, %5
  %i.bw = add nsw i32 %5, -1
  %i.bx = add nuw nsw i32 %i.bw, %i.bv
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.bx, float noundef 0.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = and i32 %7, 128
  %.not217 = icmp eq i32 %i.by, 0
  br i1 %.not217, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = add nsw i32 %6, -1
  %i.ca = mul nsw i32 %i.bz, %5
  %i.cb = add nsw i32 %5, -1
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = add nuw nsw i32 %i.ca, %i.cc
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.cd, float noundef 0.000000e+00)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = and i32 %7, 256
  %.not218 = icmp eq i32 %i.ce, 0
  br i1 %.not218, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i32 %6, -1
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = mul nuw nsw i32 %i.cg, %5
  %i.ci = add nsw i32 %5, -1
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = add nuw nsw i32 %i.ch, %i.cj
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.aw, i32 noundef %i.ck, float noundef 0.000000e+00)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %.preheader.preheader unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #26
  unreachable

.preheader.preheader:                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  %.not219 = icmp eq ptr %9, null
  %i.cn = add nsw i32 %5, -1
  %i.co = add nsw i32 %6, -1                      ; 3 uses
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = uitofp nneg i32 %i.cn to float
  %i.cr = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cp, i64 1
  %i.ct = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.cs ; 2 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge243
  %.0200245 = phi i32 [ %.us-phi, %._crit_edge243 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.1204244 = phi i32 [ %i.cw, %._crit_edge243 ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.cw = add nuw nsw i32 %.1204244, 1            ; 4 uses
  %i.cx = icmp slt i32 %i.cw, %6
  %i.cy = mul nuw nsw i32 %.1204244, %5           ; 4 uses
  %i.cz = mul nuw nsw i32 %i.cw, %5               ; 2 uses
  %i.da = sub nsw i32 %i.co, %.1204244
  %i.db = sitofp i32 %i.da to float
  %i.dc = fmul float %i.cu, %i.db                 ; 3 uses
end_hunk_0
