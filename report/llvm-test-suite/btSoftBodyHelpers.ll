inline.NumInlined: 582
inline.NumDeleted: 147
begin_hunk_0_@_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf:bb.a
  br i1 %.not217, label %.preheader.us.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = add nsw i32 %6, -1
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = mul nuw nsw i32 %i.ch, %5
  %i.cj = add nsw i32 %5, -1
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = add nuw nsw i32 %i.ci, %i.ck
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.cl, float noundef 0.000000e+00)
  br label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.t, %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  %.not218 = icmp eq ptr %9, null
  %i.cm = add nsw i32 %5, -1
  %i.cn = uitofp nneg i32 %i.cm to float
  %i.co = fdiv nnan float 1.000000e+00, %i.cn     ; 2 uses
  %i.cp = add nsw i32 %6, -1                      ; 3 uses
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = fdiv nnan float 1.000000e+00, %i.cq     ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us248
  %.1242.us = phi i32 [ %i.cs, %._crit_edge.us248 ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.0202241.us = phi i32 [ %.us-phi.us, %._crit_edge.us248 ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.cs = add nuw nsw i32 %.1242.us, 1            ; 4 uses
  %i.ct = icmp slt i32 %i.cs, %6
  %i.cu = mul nuw nsw i32 %.1242.us, %5           ; 4 uses
  %i.cv = mul nuw nsw i32 %i.cs, %5               ; 2 uses
  %i.cw = sub nsw i32 %i.cp, %.1242.us
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = fmul float %i.cr, %i.cx                 ; 3 uses
  %i.cz = xor i32 %.1242.us, -1
  %i.da = add i32 %i.cp, %i.cz
  %i.db = sitofp i32 %i.da to float
  %i.dc = fmul float %i.cr, %i.db                 ; 3 uses
  br i1 %i.ct, label %.lr.ph.split.us.us, label %.lr.ph.split.us247

.lr.ph.split.us247:                               ; preds = %.preheader.us, %.thread.us244
  %.0204239.us243 = phi i32 [ %i.dd, %.thread.us244 ], [ 0, %.preheader.us ] ; 2 uses
  %i.dd = add nuw nsw i32 %.0204239.us243, 1      ; 4 uses
  %i.de = icmp slt i32 %i.dd, %5
  br i1 %i.de, label %bb.v, label %.thread.us244

bb.v:                                             ; preds = %.lr.ph.split.us247
  %i.df = add nuw nsw i32 %i.dd, %i.cu
  %i.dg = add nuw nsw i32 %.0204239.us243, %i.cu
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dg, i32 noundef %i.df, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us244

.thread.us244:                                    ; preds = %bb.v, %.lr.ph.split.us247
  %exitcond258.not = icmp eq i32 %i.dd, %5
  br i1 %exitcond258.not, label %._crit_edge.us248, label %.lr.ph.split.us247

._crit_edge.us248:                                ; preds = %.thread.us244, %.thread.us.us
  %.us-phi.us = phi i32 [ %.2.us.us, %.thread.us.us ], [ %.0202241.us, %.thread.us244 ]
  %exitcond260.not = icmp eq i32 %i.cs, %6
  br i1 %exitcond260.not, label %.loopexit, label %.preheader.us

.lr.ph.split.us.us:                               ; preds = %.preheader.us, %.thread.us.us
  %.1203240.us.us = phi i32 [ %.2.us.us, %.thread.us.us ], [ %.0202241.us, %.preheader.us ] ; 3 uses
  %.0204239.us.us = phi i32 [ %i.dh, %.thread.us.us ], [ 0, %.preheader.us ] ; 4 uses
  %i.dh = add nuw nsw i32 %.0204239.us.us, 1      ; 6 uses
  %i.di = icmp slt i32 %i.dh, %5
  %i.dj = add nuw nsw i32 %.0204239.us.us, %i.cu  ; 7 uses
  %i.dk = add nuw nsw i32 %i.dh, %i.cu            ; 3 uses
  %i.dl = add nuw nsw i32 %.0204239.us.us, %i.cv  ; 3 uses
  %i.dm = add nuw nsw i32 %i.dh, %i.cv            ; 4 uses
  br i1 %i.di, label %bb.w, label %.thread.us.us.critedge

bb.w:                                             ; preds = %.lr.ph.split.us.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dk, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dm, ptr noundef null)
  br i1 %.not218, label %.critedge.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = uitofp nneg i32 %.0204239.us.us to float
  %i.do = fmul float %i.co, %i.dn                 ; 3 uses
  %i.dp = sext i32 %.1203240.us.us to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dp ; 12 uses
  store float %i.do, ptr %i.dq, align 4, !tbaa !8
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  store float %i.cy, ptr %i.dr, align 4, !tbaa !8
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  store float %i.do, ptr %i.ds, align 4, !tbaa !8
  %i.dt = getelementptr i8, ptr %i.dq, i64 12
  store float %i.dc, ptr %i.dt, align 4, !tbaa !8
  %i.du = uitofp nneg i32 %i.dh to float
  %i.dv = fmul float %i.co, %i.du                 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dq, i64 16
  store float %i.dv, ptr %i.dw, align 4, !tbaa !8
  %i.dx = getelementptr i8, ptr %i.dq, i64 20
  store float %i.dc, ptr %i.dx, align 4, !tbaa !8
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dm, i32 noundef %i.dk, i32 noundef %i.dj, ptr noundef null)
  %i.dy = getelementptr i8, ptr %i.dq, i64 24
  store float %i.dv, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr i8, ptr %i.dq, i64 28
  store float %i.dc, ptr %i.dz, align 4, !tbaa !8
  %i.ea = getelementptr i8, ptr %i.dq, i64 32
  store float %i.dv, ptr %i.ea, align 4, !tbaa !8
  %i.eb = getelementptr i8, ptr %i.dq, i64 36
  store float %i.cy, ptr %i.eb, align 4, !tbaa !8
  %i.ec = getelementptr i8, ptr %i.dq, i64 40
  store float %i.do, ptr %i.ec, align 4, !tbaa !8
  %i.ed = getelementptr i8, ptr %i.dq, i64 44
  store float %i.cy, ptr %i.ed, align 4, !tbaa !8
  br label %bb.y

.critedge.us.us:                                  ; preds = %bb.w
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dm, i32 noundef %i.dk, i32 noundef %i.dj, ptr noundef null)
  br label %bb.y

bb.y:                                             ; preds = %.critedge.us.us, %bb.x
  br i1 %8, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dm, ptr noundef null, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ee = add nsw i32 %.1203240.us.us, 12
  br label %.thread.us.us

.thread.us.us.critedge:                           ; preds = %.lr.ph.split.us.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.thread.us.us.critedge, %bb.aa
  %.2.us.us = phi i32 [ %i.ee, %bb.aa ], [ %.1203240.us.us, %.thread.us.us.critedge ] ; 2 uses
  %exitcond259.not = icmp eq i32 %i.dh, %5
  br i1 %exitcond259.not, label %._crit_edge.us248, label %.lr.ph.split.us.us

.loopexit:                                        ; preds = %._crit_edge.us248, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.az, %._crit_edge.us248 ]
  ret ptr %.0

bb.ab:                                            ; preds = %bb.e
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN17btSoftBodyHelpers11CalculateUVEiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 align 2 {
bb.a:
  switch i32 %4, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %0, -1
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv nnan float 1.000000e+00, %i.b
  %i.d = sitofp i32 %2 to float
  %i.e = fmul float %i.c, %i.d
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %1, -1                       ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fdiv nnan float 1.000000e+00, %i.g
  %i.i = sub nsw i32 %i.f, %3
  %i.j = sitofp i32 %i.i to float
  %i.k = fmul float %i.h, %i.j
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fdiv nnan float 1.000000e+00, %i.m
  %i.o = xor i32 %3, -1
  %i.p = add i32 %i.l, %i.o
  %i.q = sitofp i32 %i.p to float
  %i.r = fmul float %i.n, %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = add nsw i32 %0, -1
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv nnan float 1.000000e+00, %i.t
  %i.v = add nsw i32 %2, 1
  %i.w = sitofp i32 %i.v to float
  %i.x = fmul float %i.u, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi float [ %i.e, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %4 = add i32 %3, 3                              ; 5 uses
  %5 = icmp sgt i32 %3, -3                        ; 2 uses
  tail call void @llvm.assume(i1 %5)
  %i.a = zext nneg i32 %4 to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.b, i32 noundef 16) ; 5 uses
  %i.d = uitofp nneg i32 %4 to float
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i
  %.030.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.q, %._crit_edge.i ] ; 5 uses
  %.01729.i = phi i32 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i ] ; 4 uses
  %.not25.i = icmp eq i32 %.01729.i, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i13
  %i.e = tail call float @llvm.fmuladd.f32(float %.1.i, float 2.000000e+00, float -1.000000e+00)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.019.lcssa.i = phi float [ -1.000000e+00, %.preheader.i ], [ %i.e, %._crit_edge.loopexit.i ] ; 3 uses
  %i.f = shl nuw nsw i32 %.01729.i, 1
  %i.g = uitofp nneg i32 %i.f to float
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float f0x40490FDB, float f0x40490FDB)
  %i.i = fdiv float %i.h, %i.d                    ; 2 uses
  %i.j = fneg float %.019.lcssa.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.019.lcssa.i, float 1.000000e+00)
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #18, !tbaa !4 ; 2 uses
  %i.m = tail call noundef float @cosf(float noundef %i.i) #18, !tbaa !4
  %i.n = fmul float %i.l, %i.m
  %i.o = tail call noundef float @sinf(float noundef %i.i) #18, !tbaa !4
  %i.p = fmul float %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  store float %i.n, ptr %.030.i, align 4
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store float %i.p, ptr %.sroa.4.0..0.sroa_idx.i, align 4
  %.sroa.5.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  store float %.019.lcssa.i, ptr %.sroa.5.0..0.sroa_idx.i, align 4
  %.sroa.6.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..0.sroa_idx.i, align 4, !tbaa !84
  %i.r = add nuw nsw i32 %.01729.i, 1             ; 2 uses
  %exitcond.not.i14 = icmp eq i32 %i.r, %4
  br i1 %exitcond.not.i14, label %_ZZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_iEN10Hammersley8GenerateEPS2_i.exit, label %.preheader.i

.lr.ph.i13:                                       ; preds = %.preheader.i, %.lr.ph.i13
  %.01828.i = phi i32 [ %i.v, %.lr.ph.i13 ], [ %.01729.i, %.preheader.i ] ; 2 uses
  %.01927.i = phi float [ %.1.i, %.lr.ph.i13 ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %.02026.i = phi float [ %i.u, %.lr.ph.i13 ], [ 5.000000e-01, %.preheader.i ] ; 2 uses
  %i.s = and i32 %.01828.i, 1
  %.not22.i = icmp eq i32 %i.s, 0
  %i.t = fadd float %.01927.i, %.02026.i
  %.1.i = select i1 %.not22.i, float %.01927.i, float %i.t ; 2 uses
  %i.u = fmul float %.02026.i, 5.000000e-01
  %i.v = lshr i32 %.01828.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i13

_ZZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_iEN10Hammersley8GenerateEPS2_i.exit: ; preds = %._crit_edge.i
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_iEN10Hammersley8GenerateEPS2_i.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %_ZZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_iEN10Hammersley8GenerateEPS2_i.exit
  %i.y = invoke noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.c, i32 noundef %4)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit25 unwind label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !8
  %i.ad = load float, ptr %i.w, align 4, !tbaa !8
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = load <2 x float>, ptr %i.aa, align 4, !tbaa !8
  %i.ag = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = load float, ptr %i.x, align 4, !tbaa !8
  %i.al = fadd float %i.ae, %i.ak
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.aj, ptr %i.aa, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %i.ab, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
  ret ptr %i.y

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit25: ; preds = %.thread
  resume { ptr, i32 } %i.z

bb.b:                                             ; preds = %.thread
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.HullDesc, align 8            ; 10 uses
  %4 = alloca %class.HullResult, align 8          ; 18 uses
  %5 = alloca %class.HullLibrary, align 8         ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 1, ptr %3, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 16, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float 1.000000e-03, ptr %i.d, align 4, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i8 1, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.l, align 4, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 0, ptr %i.m, align 8, !tbaa !104
  store i8 1, ptr %4, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.p, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i8 1, ptr %i.q, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i8 1, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.w, align 4, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !122
  store i32 %2, ptr %i.e, align 8, !tbaa !123
  %i.y = invoke noundef i32 @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.z = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %bb.e ; 8 uses

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %bb.b
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !107
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !95
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef null)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !108
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.ae = invoke noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.o unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.e:                                             ; preds = %bb.b, %bb.o, %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.f:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.ab

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !102
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.aq = icmp slt i32 %i.al, %i.an
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.al, i32 noundef %i.an, ptr noundef null, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.as = icmp slt i32 %i.an, %i.ap
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef null, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = icmp slt i32 %i.ap, %i.al
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.ap, i32 noundef %i.al, ptr noundef null, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef null)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !108
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496) %i.z)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ax, null
  %i.ay = load i8, ptr %i.u, align 8, !range !82
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %or.cond.i.i.i, label %bb.q, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ax)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i unwind label %bb.s

_ZN20btAlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.q, %bb.p
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i2.i = icmp ne ptr %i.ba, null
  %i.bb = load i8, ptr %i.q, align 8, !range !82
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i3.i = select i1 %.not.i.i.i2.i, i1 %i.bc, i1 false
  br i1 %or.cond.i.i3.i, label %bb.r, label %_ZN11HullLibraryD2Ev.exit

bb.r:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ba)
          to label %_ZN11HullLibraryD2Ev.exit unwind label %bb.c

bb.s:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i4.i = icmp ne ptr %i.be, null
  %i.bf = load i8, ptr %i.q, align 8, !range !82
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i.i5.i = select i1 %.not.i.i.i4.i, i1 %i.bg, i1 false
end_hunk_0
begin_hunk_1_@_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb:bb.a
  %i.bv = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef null)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZL8nextLinePKc.exit71
  br i1 %5, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bw = load i32, ptr %i.m, align 16, !tbaa !4
  %i.bx = load i32, ptr %i.bf, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef null, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bz = load i32, ptr %i.bg, align 8, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef null, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.cb = load i32, ptr %i.m, align 16, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.ca, i32 noundef %i.cb, ptr noundef null, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.m, align 16, !tbaa !4
  %i.cd = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.cc, i32 noundef %i.cd, ptr noundef null, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.ce, i32 noundef %i.cf, ptr noundef null, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.ch = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef null, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_ZL8nextLinePKc.exit71
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.p:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %i.cj = add nuw nsw i32 %.0105, 1               ; 2 uses
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !4
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.g, label %._crit_edge107

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge107, %bb.c, %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 820
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cn) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 852
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cq) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 884
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !57
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ct) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 916
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !124
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1181.2113)
  ret ptr %i.ab

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.e ], [ %i.ci, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i.i.i74.not = icmp eq ptr %.sroa.1181.2113, null
  br i1 %.not.i.i.i74.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77, label %bb.q

bb.q:                                             ; preds = %_ZN17btCollisionObjectdlEPv.exit.thread, %_ZN17btCollisionObjectdlEPv.exit
  %.pn.pn97 = phi { ptr, i32 } [ %i.bj, %_ZN17btCollisionObjectdlEPv.exit.thread ], [ %.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1181.2113)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77 unwind label %bb.r

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77: ; preds = %_ZN17btCollisionObjectdlEPv.exit, %bb.q
  %.pn.pn96 = phi { ptr, i32 } [ %.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ], [ %.pn.pn97, %bb.q ]
  resume { ptr, i32 } %.pn.pn96

bb.r:                                             ; preds = %bb.q, %bb.f
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv() local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11btTransform11getIdentityEvE17identityTransform

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv() local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, align 4, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 20), align 4, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 40), align 4, !tbaa !8
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #15

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !5, i64 4}
!11 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !15, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!13 = !{!"p1 _ZTSN10btSoftBody4NodeE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!11, !13, i64 16}
!17 = !{!18, !20, i64 8}
!18 = !{!"_ZTSN10btSoftBody7FeatureE", !19, i64 0, !20, i64 8}
!19 = !{!"_ZTSN10btSoftBody7ElementE", !14, i64 0}
!20 = !{!"p1 _ZTSN10btSoftBody8MaterialE", !14, i64 0}
!21 = !{!22, !5, i64 20}
!22 = !{!"_ZTSN10btSoftBody8MaterialE", !19, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 20}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !5, i64 4}
!26 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !27, i64 0, !5, i64 4, !5, i64 8, !28, i64 16, !15, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!28 = !{!"p1 _ZTSN10btSoftBody4LinkE", !14, i64 0}
!29 = !{!26, !28, i64 16}
!30 = !{!13, !13, i64 0}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !5, i64 4}
!33 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !34, i64 0, !5, i64 4, !5, i64 8, !35, i64 16, !15, i64 24}
!34 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!35 = !{!"p1 _ZTSN10btSoftBody8RContactE", !14, i64 0}
!36 = !{!33, !35, i64 16}
!37 = !{!38, !13, i64 32}
!38 = !{!"_ZTSN10btSoftBody8RContactE", !39, i64 0, !13, i64 32, !42, i64 40, !41, i64 88, !9, i64 104, !9, i64 108, !9, i64 112}
!39 = !{!"_ZTSN10btSoftBody4sCtiE", !40, i64 0, !41, i64 8, !9, i64 24}
!40 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!41 = !{!"_ZTS9btVector3", !6, i64 0}
!42 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!43 = !{!38, !9, i64 24}
!44 = !{!45, !5, i64 4}
!45 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !46, i64 0, !5, i64 4, !5, i64 8, !47, i64 16, !15, i64 24}
!46 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!47 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !14, i64 0}
!48 = !{!45, !47, i64 16}
!49 = !{!50, !51, i64 24}
!50 = !{!"_ZTSN10btSoftBody6AnchorE", !13, i64 0, !41, i64 8, !51, i64 24, !42, i64 32, !41, i64 80, !9, i64 96}
!51 = !{!"p1 _ZTS11btRigidBody", !14, i64 0}
!52 = !{!50, !13, i64 0}
!53 = distinct !{null}
!54 = !{!55, !9, i64 96}
!55 = !{!"_ZTSN10btSoftBody4NodeE", !18, i64 0, !41, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !41, i64 80, !9, i64 96, !9, i64 100, !56, i64 104, !5, i64 112}
!56 = !{!"p1 _ZTS10btDbvtNode", !14, i64 0}
!57 = !{!58, !5, i64 4}
!58 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !59, i64 0, !5, i64 4, !5, i64 8, !60, i64 16, !15, i64 24}
!59 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!60 = !{!"p1 _ZTSN10btSoftBody4FaceE", !14, i64 0}
!61 = !{!58, !60, i64 16}
!62 = !{!63, !5, i64 4}
!63 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody7ClusterEE", !64, i64 0, !5, i64 4, !5, i64 8, !65, i64 16, !15, i64 24}
!64 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!65 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !66, i64 0}
!66 = !{!"any p2 pointer", !14, i64 0}
!67 = !{!63, !65, i64 16}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN10btSoftBody7ClusterE", !14, i64 0}
!70 = !{!71, !15, i64 417}
!71 = !{!"_ZTSN10btSoftBody7ClusterE", !72, i64 0, !75, i64 32, !78, i64 64, !81, i64 96, !9, i64 160, !9, i64 164, !42, i64 168, !42, i64 216, !41, i64 264, !6, i64 280, !6, i64 312, !5, i64 344, !5, i64 348, !41, i64 352, !41, i64 368, !56, i64 384, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !9, i64 408, !9, i64 412, !15, i64 416, !15, i64 417, !5, i64 420}
!72 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody4NodeEE", !73, i64 0, !5, i64 4, !5, i64 8, !74, i64 16, !15, i64 24}
!73 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody4NodeELj16EE"}
!74 = !{!"p2 _ZTSN10btSoftBody4NodeE", !66, i64 0}
!75 = !{!"_ZTS20btAlignedObjectArrayIfE", !76, i64 0, !5, i64 4, !5, i64 8, !77, i64 16, !15, i64 24}
!76 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!77 = !{!"p1 float", !14, i64 0}
!78 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !79, i64 0, !5, i64 4, !5, i64 8, !80, i64 16, !15, i64 24}
!79 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!80 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!81 = !{!"_ZTS11btTransform", !42, i64 0, !41, i64 48}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!6, !6, i64 0}
!85 = !{!72, !5, i64 4}
!86 = !{!72, !74, i64 16}
!87 = !{i64 0, i64 16, !84}
!88 = !{!89, !5, i64 0}
!89 = !{!"_ZTS8HullDesc", !5, i64 0, !5, i64 4, !80, i64 8, !5, i64 16, !9, i64 20, !5, i64 24, !5, i64 28}
!90 = !{!89, !5, i64 4}
!91 = !{!89, !80, i64 8}
!92 = !{!89, !5, i64 16}
!93 = !{!89, !9, i64 20}
!94 = !{!78, !15, i64 24}
!95 = !{!78, !80, i64 16}
!96 = !{!78, !5, i64 4}
!97 = !{!78, !5, i64 8}
!98 = !{!99, !15, i64 24}
!99 = !{!"_ZTS20btAlignedObjectArrayIjE", !100, i64 0, !5, i64 4, !5, i64 8, !101, i64 16, !15, i64 24}
!100 = !{!"_ZTS18btAlignedAllocatorIjLj16EE"}
!101 = !{!"p1 int", !14, i64 0}
!102 = !{!99, !101, i64 16}
!103 = !{!99, !5, i64 4}
!104 = !{!99, !5, i64 8}
!105 = !{!106, !15, i64 0}
!106 = !{!"_ZTS10HullResult", !15, i64 0, !5, i64 4, !78, i64 8, !5, i64 40, !5, i64 44, !99, i64 48}
!107 = !{!106, !5, i64 4}
!108 = !{!106, !5, i64 40}
!109 = !{!106, !5, i64 44}
!110 = !{!111, !15, i64 24}
!111 = !{!"_ZTS20btAlignedObjectArrayIP14btHullTriangleE", !112, i64 0, !5, i64 4, !5, i64 8, !113, i64 16, !15, i64 24}
!112 = !{!"_ZTS18btAlignedAllocatorIP14btHullTriangleLj16EE"}
!113 = !{!"p2 _ZTS14btHullTriangle", !66, i64 0}
!114 = !{!111, !113, i64 16}
!115 = !{!111, !5, i64 4}
!116 = !{!111, !5, i64 8}
!117 = !{!118, !15, i64 24}
!118 = !{!"_ZTS20btAlignedObjectArrayIiE", !119, i64 0, !5, i64 4, !5, i64 8, !101, i64 16, !15, i64 24}
!119 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!120 = !{!118, !101, i64 16}
!121 = !{!118, !5, i64 4}
!122 = !{!118, !5, i64 8}
!123 = !{!89, !5, i64 24}
!124 = !{!125, !5, i64 4}
!125 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !126, i64 0, !5, i64 4, !5, i64 8, !127, i64 16, !15, i64 24}
!126 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!127 = !{!"p1 _ZTSN10btSoftBody5TetraE", !14, i64 0}
!128 = !{!125, !127, i64 16}
!129 = !{!130, !5, i64 4}
!130 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !131, i64 0, !5, i64 4, !5, i64 8, !132, i64 16, !15, i64 24}
!131 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!132 = !{!"p1 _ZTSN10btSoftBody4NoteE", !14, i64 0}
!133 = !{!130, !132, i64 16}
!134 = !{!135, !5, i64 32}
!135 = !{!"_ZTSN10btSoftBody4NoteE", !19, i64 0, !136, i64 8, !41, i64 16, !5, i64 32, !6, i64 40, !6, i64 72}
!136 = !{!"p1 omnipotent char", !14, i64 0}
!137 = !{!135, !136, i64 8}
!138 = !{!139, !56, i64 1144}
!139 = !{!"_ZTS10btSoftBody", !140, i64 0, !143, i64 280, !146, i64 312, !152, i64 512, !153, i64 536, !14, i64 768, !154, i64 776, !130, i64 784, !11, i64 816, !26, i64 848, !58, i64 880, !125, i64 912, !45, i64 944, !33, i64 976, !155, i64 1008, !158, i64 1040, !161, i64 1072, !9, i64 1104, !6, i64 1108, !15, i64 1140, !164, i64 1144, !164, i64 1208, !164, i64 1272, !63, i64 1336, !168, i64 1368, !81, i64 1400, !118, i64 1464}
!140 = !{!"_ZTS17btCollisionObject", !81, i64 8, !81, i64 72, !41, i64 136, !41, i64 152, !41, i64 168, !15, i64 184, !9, i64 188, !141, i64 192, !142, i64 200, !142, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !14, i64 248, !5, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !15, i64 272, !6, i64 273}
!141 = !{!"p1 _ZTS17btBroadphaseProxy", !14, i64 0}
!142 = !{!"p1 _ZTS16btCollisionShape", !14, i64 0}
!143 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !144, i64 0, !5, i64 4, !5, i64 8, !145, i64 16, !15, i64 24}
!144 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!145 = !{!"p2 _ZTS17btCollisionObject", !66, i64 0}
!146 = !{!"_ZTSN10btSoftBody6ConfigE", !147, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !148, i64 104, !150, i64 136, !150, i64 168}
!147 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !6, i64 0}
!148 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !149, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !15, i64 24}
!149 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!150 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !151, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !15, i64 24}
!151 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!152 = !{!"_ZTSN10btSoftBody11SolverStateE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!153 = !{!"_ZTSN10btSoftBody4PoseE", !15, i64 0, !15, i64 1, !9, i64 4, !78, i64 8, !75, i64 40, !41, i64 72, !42, i64 88, !42, i64 136, !42, i64 184}
!154 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !14, i64 0}
!155 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !156, i64 0, !5, i64 4, !5, i64 8, !157, i64 16, !15, i64 24}
!156 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!157 = !{!"p1 _ZTSN10btSoftBody8SContactE", !14, i64 0}
!158 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !159, i64 0, !5, i64 4, !5, i64 8, !160, i64 16, !15, i64 24}
!159 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!160 = !{!"p2 _ZTSN10btSoftBody5JointE", !66, i64 0}
!161 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !162, i64 0, !5, i64 4, !5, i64 8, !163, i64 16, !15, i64 24}
!162 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!163 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !66, i64 0}
!164 = !{!"_ZTS6btDbvt", !56, i64 0, !56, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !165, i64 32}
!165 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !166, i64 0, !5, i64 4, !5, i64 8, !167, i64 16, !15, i64 24}
!166 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!167 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !14, i64 0}
end_hunk_1
