Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBodyHelpers?download=true
inline.NumInlined: 582
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw:bb.a
  store <2 x float> %i.gm, ptr %2, align 8
  %i.gn = fadd <2 x float> %i.gj, <float 1.000000e-01, float 0.000000e+00> ; 2 uses
  %i.go = fadd float %i.fy, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.go, i64 0 ; 2 uses
  store <2 x float> %i.gn, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fi, align 8
  %i.gp = load ptr, ptr %1, align 8, !tbaa !23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.gs = extractelement <2 x float> %i.gj, i64 1 ; 2 uses
  %i.gt = fadd float %i.gs, -1.000000e-01
  %.sroa.0.4.vec.insert.i18.i = insertelement <2 x float> %i.gj, float %i.gt, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i71, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.gu = fadd float %i.gk, 0.000000e+00          ; 2 uses
  %i.gv = fadd float %i.gs, 1.000000e-01
  %.sroa.0.0.vec.insert.i22.i = insertelement <2 x float> poison, float %i.gu, i64 0
  %.sroa.0.4.vec.insert.i23.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i22.i, float %i.gv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i23.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fk, align 8
  %i.gw = load ptr, ptr %1, align 8, !tbaa !23
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.gz = fadd float %i.fy, -1.000000e-01
  %.sroa.3.12.vec.insert.i29.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gz, i64 0
  store <2 x float> %i.gj, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ha = fadd float %i.fy, 1.000000e-01
  %i.hb = insertelement <2 x float> %i.gn, float %i.gu, i64 0
  %.sroa.3.12.vec.insert.i34.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  store <2 x float> %i.hb, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i, ptr %i.fm, align 8
  %i.hc = load ptr, ptr %1, align 8, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load i32, ptr %i.fd, align 4, !tbaa !94
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.loopexit:
  %i.a = add i32 %3, 2                            ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %3, -2                      ; 2 uses
  %i.d = shl nsw i64 %i.b, 4
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nsw i64 %i.b, 2
  %i.h = select i1 %i.c, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #20 ; 3 uses
  %i.j = icmp sgt i32 %3, -2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.k = add nsw i32 %3, 1
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.o = fsub <2 x float> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !8  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !8
  %i.t = fsub float %i.s, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fdiv float %i.v, %i.l                    ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.y, <2 x float> %i.m)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.t, float %i.w, float %i.q)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.z, ptr %i.ab, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !82
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %bb.a, %.loopexit
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 6 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ae = and i32 %4, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.h

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.d
  resume { ptr, i32 } %i.af

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ag = and i32 %4, 2
  %.not36 = icmp eq i32 %i.ag, 0
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %3, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef %i.ah, float noundef 0.000000e+00)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #21
  %i.ai = icmp sgt i32 %3, -1
  br i1 %i.ai, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %bb.g
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %.138 = phi i32 [ %i.ak, %.lr.ph40 ], [ 1, %.lr.ph40.preheader ] ; 3 uses
  %i.aj = add nsw i32 %.138, -1
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef %i.aj, i32 noundef %.138, ptr noundef null, i1 noundef zeroext false)
  %i.ak = add nuw nsw i32 %.138, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.ak, %smax43
  br i1 %exitcond44.not, label %._crit_edge41, label %.lr.ph40

._crit_edge41:                                    ; preds = %.lr.ph40, %bb.g
  ret ptr %i.ad

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #19
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

declare void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496), ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, float noundef) local_unnamed_addr #4

declare void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #20 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %9 = load <4 x float>, ptr %1, align 4
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %11 = load <4 x float>, ptr %3, align 4
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.l = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.m = fsub <2 x float> %i.l, %i.k
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.o = load <2 x float>, ptr %4, align 4, !tbaa !8
  %i.p = fsub <2 x float> %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = insertelement <2 x float> %12, float %i.t, i64 1
  %i.v = insertelement <2 x float> %10, float %i.r, i64 1 ; 2 uses
  %i.w = fsub <2 x float> %i.u, %i.v
  %i.x = add nsw i32 %5, -1
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count189 = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv186 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next187, %._crit_edge ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv float %i.ab, %i.j
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ae, <2 x float> %i.k) ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.ae, <2 x float> %i.n)
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.ae, <2 x float> %i.v) ; 3 uses
  %i.ai = fsub <2 x float> %i.ag, %i.af
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ah
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = mul nuw nsw i64 %indvars.iv186, %i.z
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge176.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fdiv float %i.an, %i.y                  ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aq, <2 x float> %i.af)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ao, float %i.aj)
  %.sroa.3.12.vec.insert.i.i164 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  %i.at = add nuw nsw i64 %indvars.iv, %i.al      ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.at ; 2 uses
  store <2 x float> %i.ar, ptr %i.au, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i164, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !82
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.at
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge176.split:                             ; preds = %._crit_edge
  %i.aw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 17 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge176.split
  %i.ax = and i32 %7, 1
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge176.split
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.r

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.az = and i32 %7, 2
  %.not153 = icmp eq i32 %i.az, 0
  br i1 %.not153, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.ba, float noundef 0.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = and i32 %7, 4
  %.not154 = icmp eq i32 %i.bb, 0
  br i1 %.not154, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i32 %6, -1
  %i.bd = mul nsw i32 %i.bc, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bd, float noundef 0.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = and i32 %7, 8
  %.not155 = icmp eq i32 %i.be, 0
  br i1 %.not155, label %.preheader.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %6, -1
  %i.bg = mul nsw i32 %i.bf, %5
  %i.bh = add nsw i32 %5, -1
  %i.bi = add nuw nsw i32 %i.bh, %i.bg
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bi, float noundef 0.000000e+00)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge179
  %.1180 = phi i32 [ %i.bk, %._crit_edge179 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.bj = mul nuw nsw i32 %.1180, %5              ; 4 uses
  %i.bk = add nuw nsw i32 %.1180, 1               ; 4 uses
  %i.bl = icmp slt i32 %i.bk, %6
  %i.bm = mul nuw nsw i32 %i.bk, %5               ; 4 uses
  br i1 %i.bl, label %.lr.ph178.split.us, label %.lr.ph178.split

.lr.ph178.split.us:                               ; preds = %.preheader, %.thread.us
  %.0177.us = phi i32 [ %i.bo, %.thread.us ], [ 0, %.preheader ] ; 5 uses
  %i.bn = add nuw nsw i32 %.0177.us, %i.bj        ; 7 uses
  %i.bo = add nuw nsw i32 %.0177.us, 1            ; 6 uses
  %i.bp = icmp slt i32 %i.bo, %5
  br i1 %i.bp, label %bb.l, label %.thread.us.critedge

bb.l:                                             ; preds = %.lr.ph178.split.us
  %i.bq = add nuw nsw i32 %i.bo, %i.bj            ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.bq, ptr noundef null, i1 noundef zeroext false)
  %i.br = add nuw nsw i32 %.0177.us, %i.bm        ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.br, ptr noundef null, i1 noundef zeroext false)
  %i.bs = add nuw nsw i32 %.0177.us, %.1180
  %i.bt = and i32 %i.bs, 1
  %.not156.us = icmp eq i32 %i.bt, 0
  br i1 %.not156.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add nuw nsw i32 %i.bo, %i.bm            ; 3 uses
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.bu, ptr noundef null)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.bu, i32 noundef %i.br, ptr noundef null)
  br i1 %8, label %bb.n, label %.thread.us

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.bu, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.br, i32 noundef %i.bn, i32 noundef %i.bq, ptr noundef null)
  %i.bv = add nuw nsw i32 %i.bo, %i.bm
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.br, i32 noundef %i.bq, i32 noundef %i.bv, ptr noundef null)
  br i1 %8, label %bb.p, label %.thread.us

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bq, i32 noundef %i.br, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us.critedge:                              ; preds = %.lr.ph178.split.us
  %i.bw = add nuw nsw i32 %.0177.us, %i.bm
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bn, i32 noundef %i.bw, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.critedge, %bb.p, %bb.o, %bb.n, %bb.m
  %exitcond192.not = icmp eq i32 %i.bo, %5
  br i1 %exitcond192.not, label %._crit_edge179, label %.lr.ph178.split.us

._crit_edge179:                                   ; preds = %.thread, %.thread.us
  %exitcond193.not = icmp eq i32 %i.bk, %6
  br i1 %exitcond193.not, label %.loopexit, label %.preheader

.lr.ph178.split:                                  ; preds = %.preheader, %.thread
  %.0177 = phi i32 [ %i.bx, %.thread ], [ 0, %.preheader ] ; 2 uses
  %i.bx = add nuw nsw i32 %.0177, 1               ; 4 uses
  %i.by = icmp slt i32 %i.bx, %5
  br i1 %i.by, label %bb.q, label %.thread

bb.q:                                             ; preds = %.lr.ph178.split
  %i.bz = add nuw nsw i32 %.0177, %i.bj
  %i.ca = add nuw nsw i32 %i.bx, %i.bj
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bz, i32 noundef %i.ca, ptr noundef null, i1 noundef zeroext false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %.lr.ph178.split
  %exitcond191.not = icmp eq i32 %i.bx, %5
  br i1 %exitcond191.not, label %._crit_edge179, label %.lr.ph178.split

.loopexit:                                        ; preds = %._crit_edge179, %bb.a
  %.0143 = phi ptr [ null, %bb.a ], [ %i.aw, %._crit_edge179 ]
  ret ptr %.0143

bb.r:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #19
  unreachable
}

declare void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #20 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %10 = load <4 x float>, ptr %1, align 4
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %12 = load <4 x float>, ptr %3, align 4
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.l = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.m = fsub <2 x float> %i.l, %i.k
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.o = load <2 x float>, ptr %4, align 4, !tbaa !8
  %i.p = fsub <2 x float> %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = insertelement <2 x float> %13, float %i.t, i64 1
  %i.v = insertelement <2 x float> %11, float %i.r, i64 1 ; 2 uses
  %i.w = fsub <2 x float> %i.u, %i.v
  %i.x = add nsw i32 %5, -1
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count251 = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv248 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next249, %._crit_edge ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv248 to i32
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv float %i.ab, %i.j
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ae, <2 x float> %i.k) ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.ae, <2 x float> %i.n)
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.ae, <2 x float> %i.v) ; 3 uses
  %i.ai = fsub <2 x float> %i.ag, %i.af
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ah
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = mul nuw nsw i64 %indvars.iv248, %i.z
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %._crit_edge238.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fdiv float %i.an, %i.y                  ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aq, <2 x float> %i.af)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ao, float %i.aj)
  %.sroa.3.12.vec.insert.i.i226 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  %i.at = add nuw nsw i64 %indvars.iv, %i.al      ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.at ; 2 uses
  store <2 x float> %i.ar, ptr %i.au, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i226, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !82
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.at
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge238.split:                             ; preds = %._crit_edge
  %i.aw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 20 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge238.split
  %i.ax = and i32 %7, 1
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge238.split
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.ab

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.az = and i32 %7, 2
  %.not210 = icmp eq i32 %i.az, 0
  br i1 %.not210, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.ba, float noundef 0.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = and i32 %7, 4
  %.not211 = icmp eq i32 %i.bb, 0
  br i1 %.not211, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i32 %6, -1
  %i.bd = mul nsw i32 %i.bc, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bd, float noundef 0.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = and i32 %7, 8
  %.not212 = icmp eq i32 %i.be, 0
  br i1 %.not212, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %6, -1
  %i.bg = mul nsw i32 %i.bf, %5
  %i.bh = add nsw i32 %5, -1
  %i.bi = add nuw nsw i32 %i.bh, %i.bg
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bi, float noundef 0.000000e+00)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = and i32 %7, 16
  %.not213 = icmp eq i32 %i.bj, 0
  br i1 %.not213, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nsw i32 %5, -1
  %i.bl = lshr i32 %i.bk, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bl, float noundef 0.000000e+00)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = and i32 %7, 32
  %.not214 = icmp eq i32 %i.bm, 0
  br i1 %.not214, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = add nsw i32 %6, -1
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = mul nuw nsw i32 %i.bo, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bp, float noundef 0.000000e+00)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bq = and i32 %7, 64
  %.not215 = icmp eq i32 %i.bq, 0
  br i1 %.not215, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %6, -1
  %i.bs = lshr i32 %i.br, 1
  %i.bt = mul nuw nsw i32 %i.bs, %5
  %i.bu = add nsw i32 %5, -1
  %i.bv = add nuw nsw i32 %i.bu, %i.bt
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.bv, float noundef 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = and i32 %7, 128
  %.not216 = icmp eq i32 %i.bw, 0
  br i1 %.not216, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %6, -1
  %i.by = mul nsw i32 %i.bx, %5
  %i.bz = add nsw i32 %5, -1
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = add nuw nsw i32 %i.by, %i.ca
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.cb, float noundef 0.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = and i32 %7, 256
  %.not217 = icmp eq i32 %i.cc, 0
  br i1 %.not217, label %.preheader.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add nsw i32 %6, -1
  %i.ce = lshr i32 %i.cd, 1
  %i.cf = mul nuw nsw i32 %i.ce, %5
  %i.cg = add nsw i32 %5, -1
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add nuw nsw i32 %i.cf, %i.ch
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.aw, i32 noundef %i.ci, float noundef 0.000000e+00)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.t, %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  %.not218 = icmp eq ptr %9, null
  %i.cj = add nsw i32 %5, -1
  %i.ck = add nsw i32 %6, -1                      ; 3 uses
  %i.cl = uitofp nneg i32 %i.ck to float
  %i.cm = uitofp nneg i32 %i.cj to float
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cl, i64 1
  %i.cp = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.co ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cr = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge242
  %.0200244 = phi i32 [ %.us-phi, %._crit_edge242 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.1204243 = phi i32 [ %i.cs, %._crit_edge242 ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.cs = add nuw nsw i32 %.1204243, 1            ; 4 uses
  %i.ct = icmp slt i32 %i.cs, %6
  %i.cu = mul nuw nsw i32 %.1204243, %5           ; 4 uses
  %i.cv = mul nuw nsw i32 %i.cs, %5               ; 2 uses
  %i.cw = sub nsw i32 %i.ck, %.1204243
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = fmul float %i.cq, %i.cx                 ; 3 uses
  %i.cz = xor i32 %.1204243, -1
  %i.da = add i32 %i.ck, %i.cz
end_hunk_0
