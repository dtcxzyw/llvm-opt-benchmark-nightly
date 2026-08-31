Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii:.loopexit
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = add nsw i32 %5, -1
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count205 = zext nneg i32 %6 to i64
  %i.v = insertelement <2 x float> poison, float %9, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv202 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next203, %._crit_edge ] ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv202 to i32
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = fdiv float %i.y, %i.j                    ; 2 uses
  %i.aa = load float, ptr %1, align 4, !tbaa !9
  %i.ab = load float, ptr %3, align 4, !tbaa !9
  %i.ac = load float, ptr %i.k, align 4, !tbaa !9
  %i.ad = load float, ptr %i.l, align 4, !tbaa !9
  %i.ae = load float, ptr %i.m, align 4, !tbaa !9
  %i.af = load float, ptr %i.n, align 4, !tbaa !9
  %i.ag = load float, ptr %2, align 4, !tbaa !9
  %i.ah = load float, ptr %4, align 4, !tbaa !9
  %i.ai = load float, ptr %i.o, align 4, !tbaa !9
  %i.aj = load float, ptr %i.p, align 4, !tbaa !9
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ad, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ac, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = load float, ptr %i.q, align 4, !tbaa !9
  %i.at = load float, ptr %i.r, align 4, !tbaa !9
  %i.au = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.af, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.ah, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.ae, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.ag, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.as, i64 3 ; 2 uses
  %i.bc = fsub <4 x float> %i.ax, %i.bb
  %i.bd = insertelement <4 x float> poison, float %i.z, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.bb) ; 3 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bi = fsub <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = mul nuw nsw i64 %indvars.iv202, %i.u
  %i.bk = extractelement <4 x float> %i.bf, i64 1
  %i.bl = extractelement <2 x float> %i.bi, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge192.split, label %.lr.ph, !llvm.loop !236

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = uitofp nneg i32 %i.bm to float
  %i.bo = fdiv float %i.bn, %i.t                  ; 2 uses
  %i.bp = tail call i32 @rand() #25
  %i.bq = tail call i32 @rand() #25
  %i.br = insertelement <2 x i32> poison, i32 %i.bp, i64 0
  %i.bs = insertelement <2 x i32> %i.br, i32 %i.bq, i64 1
  %i.bt = sitofp <2 x i32> %i.bs to <2 x float>
  %i.bu = fmul <2 x float> %i.w, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float f0x30000000)
  %i.bw = fadd <2 x float> %i.ar, %i.bv           ; 3 uses
  %shift = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bw, %shift
  %i.bx = shufflevector <2 x float> %i.bi, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.by = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %i.bh, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bo, float %i.bk)
  %.sroa.3.12.vec.insert.i.i169 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  %i.cd = add nuw nsw i64 %indvars.iv, %i.bj      ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.cd ; 2 uses
  store <2 x float> %i.cb, ptr %i.ce, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i169, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cd
  store float 1.000000e+00, ptr %i.cf, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !237

._crit_edge192.split:                             ; preds = %._crit_edge
  %i.cg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16) ; 17 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge192.split
  %i.ch = and i32 %7, 1
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge192.split
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cg)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #26
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.ci

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.cl = and i32 %7, 2
  %.not158 = icmp eq i32 %i.cl, 0
  br i1 %.not158, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.cm, float noundef 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cn = and i32 %7, 4
  %.not159 = icmp eq i32 %i.cn, 0
  br i1 %.not159, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = add nsw i32 %6, -1
  %i.cp = mul nsw i32 %i.co, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.cp, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cq = and i32 %7, 8
  %.not160 = icmp eq i32 %i.cq, 0
  br i1 %.not160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = add nsw i32 %6, -1
  %i.cs = mul nsw i32 %i.cr, %5
  %i.ct = add nsw i32 %5, -1
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.cu, float noundef 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %.preheader.preheader unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #26
  unreachable

.preheader.preheader:                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge195
  %.1196 = phi i32 [ %i.cy, %._crit_edge195 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cx = mul nuw nsw i32 %.1196, %5              ; 4 uses
  %i.cy = add nuw nsw i32 %.1196, 1               ; 4 uses
  %i.cz = icmp slt i32 %i.cy, %6
  %i.da = mul nuw nsw i32 %i.cy, %5               ; 4 uses
  br i1 %i.cz, label %.lr.ph194.split.us, label %.lr.ph194.split

.lr.ph194.split.us:                               ; preds = %.preheader, %.thread.us
  %.0193.us = phi i32 [ %i.dc, %.thread.us ], [ 0, %.preheader ] ; 5 uses
  %i.db = add nuw nsw i32 %.0193.us, %i.cx        ; 7 uses
  %i.dc = add nuw nsw i32 %.0193.us, 1            ; 6 uses
  %i.dd = icmp slt i32 %i.dc, %5
  br i1 %i.dd, label %bb.o, label %.thread.us.critedge

bb.o:                                             ; preds = %.lr.ph194.split.us
  %i.de = add nuw nsw i32 %i.dc, %i.cx            ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.de, ptr noundef null, i1 noundef zeroext false)
  %i.df = add nuw nsw i32 %.0193.us, %i.da        ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.df, ptr noundef null, i1 noundef zeroext false)
  %i.dg = add nuw nsw i32 %.0193.us, %.1196
  %i.dh = and i32 %i.dg, 1
  %.not161.us = icmp eq i32 %i.dh, 0
  br i1 %.not161.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = add nuw nsw i32 %i.dc, %i.da            ; 3 uses
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.de, i32 noundef %i.di, ptr noundef null)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.di, i32 noundef %i.df, ptr noundef null)
  br i1 %8, label %bb.q, label %.thread.us

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.di, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.df, i32 noundef %i.db, i32 noundef %i.de, ptr noundef null)
  %i.dj = add nuw nsw i32 %i.dc, %i.da
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.df, i32 noundef %i.de, i32 noundef %i.dj, ptr noundef null)
  br i1 %8, label %bb.s, label %.thread.us

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.de, i32 noundef %i.df, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us.critedge:                              ; preds = %.lr.ph194.split.us
  %i.dk = add nuw nsw i32 %.0193.us, %i.da
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.db, i32 noundef %i.dk, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.critedge, %bb.s, %bb.r, %bb.q, %bb.p
  %exitcond208.not = icmp eq i32 %i.dc, %5
  br i1 %exitcond208.not, label %._crit_edge195, label %.lr.ph194.split.us, !llvm.loop !238

._crit_edge195:                                   ; preds = %.thread, %.thread.us
  %exitcond209.not = icmp eq i32 %i.cy, %6
  br i1 %exitcond209.not, label %.loopexit, label %.preheader, !llvm.loop !239

.lr.ph194.split:                                  ; preds = %.preheader, %.thread
  %.0193 = phi i32 [ %i.dl, %.thread ], [ 0, %.preheader ] ; 2 uses
  %i.dl = add nuw nsw i32 %.0193, 1               ; 4 uses
  %i.dm = icmp slt i32 %i.dl, %5
  br i1 %i.dm, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph194.split
  %i.dn = add nuw nsw i32 %.0193, %i.cx
  %i.do = add nuw nsw i32 %i.dl, %i.cx
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.dn, i32 noundef %i.do, ptr noundef null, i1 noundef zeroext false)
  br label %.thread

.thread:                                          ; preds = %bb.t, %.lr.ph194.split
  %exitcond207.not = icmp eq i32 %i.dl, %5
  br i1 %exitcond207.not, label %._crit_edge195, label %.lr.ph194.split, !llvm.loop !238

.loopexit:                                        ; preds = %._crit_edge195, %bb.a
  %.0147 = phi ptr [ null, %bb.a ], [ %i.cg, %._crit_edge195 ]
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
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = add nsw i32 %5, -1
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = zext nneg i32 %5 to i64                  ; 2 uses
  %wide.trip.count252 = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv249 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next250, %._crit_edge ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv249 to i32
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fdiv float %i.s, %i.j
  %i.u = load float, ptr %i.k, align 4, !tbaa !9
  %i.v = load float, ptr %i.l, align 4, !tbaa !9
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.x = load <2 x float>, ptr %3, align 4, !tbaa !9
  %i.y = fsub <2 x float> %i.x, %i.w
  %i.z = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.w) ; 2 uses
  %i.ac = load <2 x float>, ptr %2, align 4, !tbaa !9 ; 2 uses
  %i.ad = load <2 x float>, ptr %4, align 4, !tbaa !9
  %i.ae = fsub <2 x float> %i.ad, %i.ac
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.aa, <2 x float> %i.ac)
  %i.ag = load float, ptr %i.m, align 4, !tbaa !9
  %i.ah = load float, ptr %i.n, align 4, !tbaa !9
  %i.ai = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.u, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ag, i64 1 ; 2 uses
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.aa, <2 x float> %i.al) ; 3 uses
  %i.ao = fsub <2 x float> %i.af, %i.ab
  %i.ap = extractelement <2 x float> %i.an, i64 0
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.an
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ar = mul nuw nsw i64 %indvars.iv249, %i.q
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge239.split, label %.lr.ph, !llvm.loop !240

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = uitofp nneg i32 %i.as to float
  %i.au = fdiv float %i.at, %i.p                  ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aw, <2 x float> %i.ab)
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.au, float %i.ap)
  %.sroa.3.12.vec.insert.i.i227 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ay, i64 0
  %i.az = add nuw nsw i64 %indvars.iv, %i.ar      ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.az ; 2 uses
  store <2 x float> %i.ax, ptr %i.ba, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i227, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.az
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !241

._crit_edge239.split:                             ; preds = %._crit_edge
  %i.bc = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16) ; 20 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge239.split
  %i.bd = and i32 %7, 1
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge239.split
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bc)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.be

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.bh = and i32 %7, 2
  %.not211 = icmp eq i32 %i.bh, 0
  br i1 %.not211, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bi, float noundef 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = and i32 %7, 4
  %.not212 = icmp eq i32 %i.bj, 0
  br i1 %.not212, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nsw i32 %6, -1
  %i.bl = mul nsw i32 %i.bk, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bl, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = and i32 %7, 8
  %.not213 = icmp eq i32 %i.bm, 0
  br i1 %.not213, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = add nsw i32 %6, -1
  %i.bo = mul nsw i32 %i.bn, %5
  %i.bp = add nsw i32 %5, -1
  %i.bq = add nuw nsw i32 %i.bp, %i.bo
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bq, float noundef 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = and i32 %7, 16
  %.not214 = icmp eq i32 %i.br, 0
  br i1 %.not214, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %5, -1
  %i.bt = lshr i32 %i.bs, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bt, float noundef 0.000000e+00)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = and i32 %7, 32
  %.not215 = icmp eq i32 %i.bu, 0
  br i1 %.not215, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %6, -1
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = mul nuw nsw i32 %i.bw, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bx, float noundef 0.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.by = and i32 %7, 64
  %.not216 = icmp eq i32 %i.by, 0
  br i1 %.not216, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = add nsw i32 %6, -1
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = mul nuw nsw i32 %i.ca, %5
  %i.cc = add nsw i32 %5, -1
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.cd, float noundef 0.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = and i32 %7, 128
  %.not217 = icmp eq i32 %i.ce, 0
  br i1 %.not217, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = add nsw i32 %6, -1
  %i.cg = mul nsw i32 %i.cf, %5
  %i.ch = add nsw i32 %5, -1
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %i.cg, %i.ci
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.cj, float noundef 0.000000e+00)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = and i32 %7, 256
  %.not218 = icmp eq i32 %i.ck, 0
  br i1 %.not218, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add nsw i32 %6, -1
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = mul nuw nsw i32 %i.cm, %5
  %i.co = add nsw i32 %5, -1
  %i.cp = lshr i32 %i.co, 1
  %i.cq = add nuw nsw i32 %i.cn, %i.cp
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.cq, float noundef 0.000000e+00)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %.preheader.preheader unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

.preheader.preheader:                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  %.not219 = icmp eq ptr %9, null
  %i.ct = add nsw i32 %5, -1
  %i.cu = add nsw i32 %6, -1                      ; 3 uses
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = uitofp nneg i32 %i.ct to float
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  %i.cz = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.cy ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.db = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge243
  %.0200245 = phi i32 [ %.us-phi, %._crit_edge243 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.1204244 = phi i32 [ %i.dc, %._crit_edge243 ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.dc = add nuw nsw i32 %.1204244, 1            ; 4 uses
  %i.dd = icmp slt i32 %i.dc, %6
  %i.de = mul nuw nsw i32 %.1204244, %5           ; 4 uses
  %i.df = mul nuw nsw i32 %i.dc, %5               ; 2 uses
  %i.dg = sub nuw nsw i32 %i.cu, %.1204244
  %i.dh = uitofp nneg i32 %i.dg to float
  %i.di = fmul float %i.da, %i.dh                 ; 3 uses
  %i.dj = xor i32 %.1204244, -1
  %i.dk = add i32 %i.cu, %i.dj
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fmul float %i.da, %i.dl                 ; 3 uses
  br i1 %i.dd, label %.lr.ph242.split.us, label %.lr.ph242.split

.lr.ph242.split.us:                               ; preds = %.preheader, %.thread.us
  %.0241.us = phi i32 [ %i.dn, %.thread.us ], [ 0, %.preheader ] ; 4 uses
  %.1240.us = phi i32 [ %.2.us, %.thread.us ], [ %.0200245, %.preheader ] ; 3 uses
  %i.dn = add nuw nsw i32 %.0241.us, 1            ; 6 uses
  %i.do = icmp slt i32 %i.dn, %5
  %i.dp = add nuw nsw i32 %.0241.us, %i.de        ; 7 uses
  %i.dq = add nuw nsw i32 %i.dn, %i.de            ; 3 uses
  %i.dr = add nuw nsw i32 %.0241.us, %i.df        ; 3 uses
  %i.ds = add nuw nsw i32 %i.dn, %i.df            ; 4 uses
  br i1 %i.do, label %bb.y, label %.thread.us.critedge

bb.y:                                             ; preds = %.lr.ph242.split.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.dp, i32 noundef %i.dr, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef null)
  br i1 %.not219, label %.critedge.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = uitofp nneg i32 %.0241.us to float
  %i.du = fmul float %i.db, %i.dt                 ; 3 uses
  %i.dv = sext i32 %.1240.us to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dv ; 12 uses
  store float %i.du, ptr %i.dw, align 4, !tbaa !9
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  store float %i.di, ptr %i.dx, align 4, !tbaa !9
  %i.dy = getelementptr i8, ptr %i.dw, i64 8
  store float %i.du, ptr %i.dy, align 4, !tbaa !9
  %i.dz = getelementptr i8, ptr %i.dw, i64 12
  store float %i.dm, ptr %i.dz, align 4, !tbaa !9
  %i.ea = uitofp nneg i32 %i.dn to float
  %i.eb = fmul float %i.db, %i.ea                 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.dw, i64 16
  store float %i.eb, ptr %i.ec, align 4, !tbaa !9
  %i.ed = getelementptr i8, ptr %i.dw, i64 20
  store float %i.dm, ptr %i.ed, align 4, !tbaa !9
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.ds, i32 noundef %i.dq, i32 noundef %i.dp, ptr noundef null)
  %i.ee = getelementptr i8, ptr %i.dw, i64 24
  store float %i.eb, ptr %i.ee, align 4, !tbaa !9
  %i.ef = getelementptr i8, ptr %i.dw, i64 28
  store float %i.dm, ptr %i.ef, align 4, !tbaa !9
  %i.eg = getelementptr i8, ptr %i.dw, i64 32
  store float %i.eb, ptr %i.eg, align 4, !tbaa !9
  %i.eh = getelementptr i8, ptr %i.dw, i64 36
  store float %i.di, ptr %i.eh, align 4, !tbaa !9
  %i.ei = getelementptr i8, ptr %i.dw, i64 40
  store float %i.du, ptr %i.ei, align 4, !tbaa !9
  %i.ej = getelementptr i8, ptr %i.dw, i64 44
  store float %i.di, ptr %i.ej, align 4, !tbaa !9
  br label %bb.aa

.critedge.us:                                     ; preds = %bb.y
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.ds, i32 noundef %i.dq, i32 noundef %i.dp, ptr noundef null)
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.us, %bb.z
  br i1 %8, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.dp, i32 noundef %i.ds, ptr noundef null, i1 noundef zeroext false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ek = add nsw i32 %.1240.us, 12
  br label %.thread.us

.thread.us.critedge:                              ; preds = %.lr.ph242.split.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.dp, i32 noundef %i.dr, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.critedge, %bb.ac
  %.2.us = phi i32 [ %i.ek, %bb.ac ], [ %.1240.us, %.thread.us.critedge ] ; 2 uses
  %exitcond255.not = icmp eq i32 %i.dn, %5
  br i1 %exitcond255.not, label %._crit_edge243, label %.lr.ph242.split.us, !llvm.loop !242

._crit_edge243:                                   ; preds = %.thread, %.thread.us
  %.us-phi = phi i32 [ %.2.us, %.thread.us ], [ %.0200245, %.thread ]
  %exitcond256.not = icmp eq i32 %i.dc, %6
  br i1 %exitcond256.not, label %.loopexit, label %.preheader, !llvm.loop !243

.lr.ph242.split:                                  ; preds = %.preheader, %.thread
  %.0241 = phi i32 [ %i.el, %.thread ], [ 0, %.preheader ] ; 2 uses
  %i.el = add nuw nsw i32 %.0241, 1               ; 4 uses
  %i.em = icmp slt i32 %i.el, %5
  br i1 %i.em, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.lr.ph242.split
  %i.en = add nuw nsw i32 %i.el, %i.de
  %i.eo = add nuw nsw i32 %.0241, %i.de
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.eo, i32 noundef %i.en, ptr noundef null, i1 noundef zeroext false)
  br label %.thread

.thread:                                          ; preds = %bb.ad, %.lr.ph242.split
  %exitcond254.not = icmp eq i32 %i.el, %5
  br i1 %exitcond254.not, label %._crit_edge243, label %.lr.ph242.split, !llvm.loop !242

.loopexit:                                        ; preds = %._crit_edge243, %bb.a
  %.0201 = phi ptr [ null, %bb.a ], [ %i.bc, %._crit_edge243 ]
  ret ptr %.0201
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
end_hunk_0
begin_hunk_1_@_ZN17btSoftBodyHelpers21generateBoundaryFacesEP10btSoftBody:bb.a
  %indvars.iv.i.i.i122 = phi i64 [ %indvars.iv.next.i.i.i123.3, %scalar.ph1008 ], [ %indvars.iv.i.i.i122.unr, %scalar.ph1008.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i113, i64 %indvars.iv.i.i.i122
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i122
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !64
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !64
  %indvars.iv.next.i.i.i123 = add nuw nsw i64 %indvars.iv.i.i.i122, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i113, i64 %indvars.iv.next.i.i.i123
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i.i.i123
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !64
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !64
  %indvars.iv.next.i.i.i123.1 = add nuw nsw i64 %indvars.iv.i.i.i122, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i113, i64 %indvars.iv.next.i.i.i123.1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i.i.i123.1
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !64
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !64
  %indvars.iv.next.i.i.i123.2 = add nuw nsw i64 %indvars.iv.i.i.i122, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i113, i64 %indvars.iv.next.i.i.i123.2
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i.i.i123.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !64
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !64
  %indvars.iv.next.i.i.i123.3 = add nuw nsw i64 %indvars.iv.i.i.i122, 4 ; 2 uses
  %exitcond.not.i.i.i124.3 = icmp eq i64 %indvars.iv.next.i.i.i123.3, %wide.trip.count.i.i.i121
  br i1 %exitcond.not.i.i.i124.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i116, label %scalar.ph1008, !llvm.loop !377

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i116: ; preds = %scalar.ph1008.prol.loopexit, %scalar.ph1008, %middle.block1017, %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i112
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dn)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i118 unwind label %bb.z

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i118: ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i116
  %.pre2.pre.i117.pre = load i32, ptr %i.aw, align 4, !tbaa !55
  store i8 1, ptr %i.au, align 8, !tbaa !50
  store ptr %.0.i.i.i113, ptr %i.av, align 8, !tbaa !54
  store i32 %i.ec, ptr %i.ax, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i118, %bb.p, %bb.o
  %i.ff = phi ptr [ %.0.i.i.i113, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i118 ], [ %i.dn, %bb.p ], [ %i.dn, %bb.o ] ; 9 uses
  %i.fg = phi i32 [ %.pre2.pre.i117.pre, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i118 ], [ %i.du, %bb.p ], [ %i.du, %bb.o ]
  %i.fh = ptrtoaddr ptr %i.ff to i64
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fi
  %i.fk = load i32, ptr %i.dy, align 4, !tbaa !64
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !64
  %i.fl = load i32, ptr %i.aw, align 4, !tbaa !55 ; 4 uses
  %i.fm = add i32 %i.fl, 1                        ; 8 uses
  store i32 %i.fm, ptr %i.aw, align 4, !tbaa !55
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !314
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %indvars.iv708 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !55 ; 3 uses
  %.not461 = icmp slt i32 %i.fl, %i.fq
  br i1 %.not461, label %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i, label %bb.t

._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i: ; preds = %bb.s
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !54
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !56
  %.not462 = icmp sgt i32 %i.fs, %i.fl
  br i1 %.not462, label %..lr.ph.i_crit_edge.i.i, label %bb.u

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.t
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54
  br label %.lr.ph.i.i.i128

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = sext i32 %i.fm to i64
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fu, i32 noundef 16)
          to label %.noexc130 unwind label %bb.z

.noexc130:                                        ; preds = %bb.v
  %.pre.i.i.i = load i32, ptr %i.fp, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i: ; preds = %.noexc130, %bb.u
  %i.fw = phi i32 [ %.pre.i.i.i, %.noexc130 ], [ %i.fq, %bb.u ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.fv, %.noexc130 ], [ null, %bb.u ] ; 9 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !54 ; 9 uses
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %i.ga = ptrtoaddr ptr %i.fz to i64
  %.0.i.i.i.i.i991 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.fw to i64 ; 5 uses
  %min.iters.check994 = icmp ult i32 %i.fw, 8
  %i.gb = sub i64 %i.ga, %.0.i.i.i.i.i991
  %diff.check992 = icmp ugt i64 %i.gb, -32
  %or.cond1036 = select i1 %min.iters.check994, i1 true, i1 %diff.check992
  br i1 %or.cond1036, label %scalar.ph993.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %.lr.ph.i.i.i.i.i
  %n.vec996 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1001, %vector.body997 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index998 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index998 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load999 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !64
  %wide.load1000 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <4 x i32> %wide.load999, ptr %i.gc, align 4, !tbaa !64
  store <4 x i32> %wide.load1000, ptr %i.gf, align 4, !tbaa !64
  %index.next1001 = add nuw i64 %index998, 8      ; 2 uses
  %i.gg = icmp eq i64 %index.next1001, %n.vec996
  br i1 %i.gg, label %middle.block1002, label %vector.body997, !llvm.loop !378

middle.block1002:                                 ; preds = %vector.body997
  %cmp.n1003 = icmp eq i64 %n.vec996, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n1003, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph993.preheader

scalar.ph993.preheader:                           ; preds = %.lr.ph.i.i.i.i.i, %middle.block1002
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec996, %middle.block1002 ] ; 3 uses
  %xtraiter1103 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod1104.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1104.not, label %scalar.ph993.prol.loopexit, label %scalar.ph993.prol

scalar.ph993.prol:                                ; preds = %scalar.ph993.preheader, %scalar.ph993.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph993.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph993.preheader ] ; 3 uses
  %prol.iter1105 = phi i64 [ %prol.iter1105.next, %scalar.ph993.prol ], [ 0, %scalar.ph993.preheader ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.i.i.prol
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !64
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !64
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1105.next = add i64 %prol.iter1105, 1 ; 2 uses
  %prol.iter1105.cmp.not = icmp eq i64 %prol.iter1105.next, %xtraiter1103
  br i1 %prol.iter1105.cmp.not, label %scalar.ph993.prol.loopexit, label %scalar.ph993.prol, !llvm.loop !379

scalar.ph993.prol.loopexit:                       ; preds = %scalar.ph993.prol, %scalar.ph993.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph993.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph993.prol ]
  %i.gk = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph993

scalar.ph993:                                     ; preds = %scalar.ph993.prol.loopexit, %scalar.ph993
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph993 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph993.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !64
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !64
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.i.i.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !64
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !64
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !64
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !64
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !64
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !64
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph993, !llvm.loop !380

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph993.prol.loopexit, %scalar.ph993, %middle.block1002, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !50, !range !36, !noundef !37
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.w, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fz)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i unwind label %bb.z

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i8 1, ptr %i.hb, align 8, !tbaa !50
  store ptr %.0.i.i.i.i.i, ptr %i.fy, align 8, !tbaa !54
  store i32 %i.fm, ptr %i.fr, align 8, !tbaa !56
  br label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.hc = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.hd = sext i32 %i.fq to i64                   ; 2 uses
  %wide.trip.count.i.i.i129 = sext i32 %i.fm to i64
  %i.he = shl nsw i64 %i.hd, 2
  %scevgep.i.i = getelementptr i8, ptr %i.hc, i64 %i.he
  %i.hf = sub nsw i64 %wide.trip.count.i.i.i129, %i.hd
  %i.hg = shl nsw i64 %i.hf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.hg, i1 false), !tbaa !64
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i: ; preds = %.lr.ph.i.i.i128, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i
  %i.hh = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i ], [ %i.hc, %.lr.ph.i.i.i128 ] ; 7 uses
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !55
  %i.hi = icmp sgt i32 %i.fl, -1
  br i1 %i.hi, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %i.hj = ptrtoaddr ptr %i.hh to i64
  %wide.trip.count.i5.i.i = zext i32 %i.fm to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fm, 8
  %i.hk = sub i64 %i.fh, %i.hj
  %diff.check = icmp ugt i64 %i.hk, -32
  %or.cond1037 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1037, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i4.i.i
  %n.vec = and i64 %wide.trip.count.i5.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load = load <4 x i32>, ptr %i.hm, align 4, !tbaa !64
  %wide.load989 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x i32> %wide.load, ptr %i.hl, align 4, !tbaa !64
  store <4 x i32> %wide.load989, ptr %i.ho, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i5.i.i
  br i1 %cmp.n, label %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i4.i.i, %middle.block
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter1106 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1108 = phi i64 [ %prol.iter1108.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i6.i.i.prol
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i6.i.i.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !64
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !64
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter1108.next = add i64 %prol.iter1108, 1 ; 2 uses
  %prol.iter1108.cmp.not = icmp eq i64 %prol.iter1108.next, %xtraiter1106
  br i1 %prol.iter1108.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !382

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ]
  %i.ht = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i6.i.i
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i6.i.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !64
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !64
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i7.i.i
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i7.i.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !64
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !64
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i7.i.i.1
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i7.i.i.1
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !64
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !64
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i7.i.i.2
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i7.i.i.2
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !64
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !64
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit, label %scalar.ph, !llvm.loop !383

_ZN20btAlignedObjectArrayIiEaSERKS0_.exit:        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %i.ih = load i8, ptr %i.au, align 8, !range !36
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.x, label %_ZN20btAlignedObjectArrayIiED2Ev.exit134

bb.x:                                             ; preds = %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ff)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit134 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #26
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit134:         ; preds = %_ZN20btAlignedObjectArrayIiEaSERKS0_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %i.il = load i32, ptr %i.aa, align 4, !tbaa !315 ; 2 uses
  %i.im = sext i32 %i.il to i64
  %i.in = icmp slt i64 %indvars.iv.next709, %i.im
  br i1 %i.in, label %bb.h, label %._crit_edge560, !llvm.loop !384

bb.z:                                             ; preds = %bb.w, %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i116, %bb.r, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i97, %bb.n, %bb.j, %bb.i, %bb.h
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bq

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.aa
  %indvars.iv712 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next713, %bb.aa ] ; 10 uses
  br label %bb.ab

._crit_edge619:                                   ; preds = %bb.aa
  %.pre723 = load ptr, ptr %i.bc, align 8, !tbaa !369 ; 2 uses
  %.not620 = icmp eq ptr %.pre723, %i.ba
  br i1 %.not620, label %._crit_edge624, label %.lr.ph623

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %i.ip = load i32, ptr %i.aa, align 4, !tbaa !315
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp slt i64 %indvars.iv.next713, %i.iq
  br i1 %i.ir, label %.preheader, label %._crit_edge619, !llvm.loop !385

bb.ab:                                            ; preds = %.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.053617 = phi i32 [ 0, %.preheader ], [ %i.uc, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.is = load ptr, ptr %i.z, align 8, !tbaa !314
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %indvars.iv712
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !54 ; 4 uses
  switch i32 %.053617, label %default.unreachable [
    i32 0, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
    i32 1, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i159
    i32 2, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i189
    i32 3, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219
  ]

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.iw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i139 unwind label %.loopexit467.split.loop.exit ; 5 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i139: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !64
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !64
  %i.iz = load ptr, ptr %i.z, align 8, !tbaa !314
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %indvars.iv712
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !54
  %i.jd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %.noexc146 unwind label %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 5 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i139
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.jc, align 4, !tbaa !64
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !64
  %i.jg = load i32, ptr %i.iw, align 4
  store i32 %i.jg, ptr %i.jd, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef 4) #28
  %i.jh = load ptr, ptr %i.z, align 8, !tbaa !314
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.jh, i64 %indvars.iv712
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !54
  %i.jl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %.noexc156 unwind label %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ; 2 uses

.noexc156:                                        ; preds = %.noexc146
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !64
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !64
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

.loopexit467.split.loop.exit:                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.split.loop.exit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit269

.loopexit467.split.loop.exit.split-lp.split.loop.exit: ; preds = %.noexc236
  %lpad.split.loop.exit566 = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread

.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i139
  %lpad.split.loop.exit572 = landingpad { ptr, i32 }
          cleanup
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
end_hunk_1
begin_hunk_2_@_ZN17btSoftBodyHelpers29interpolateBarycentricWeightsEP10btSoftBody:bb.a
  %i.hc = sext i32 %.pre2.i102 to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.hc
  %i.he = load ptr, ptr %i.cj, align 8, !tbaa !45
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !45
  %i.hf = add nsw i32 %.pre2.i102, 1              ; 3 uses
  store i32 %i.hf, ptr %i.bq, align 4, !tbaa !446
  %i.hg = icmp eq i32 %i.hf, 4
  br i1 %i.hg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.hh = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16)
          to label %.lr.ph.i.i.i123 unwind label %bb.ac ; 6 uses

.lr.ph.i.i.i123:                                  ; preds = %bb.v
  %i.hi = load ptr, ptr %i.gx, align 8, !tbaa !45
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !45
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !45
  store ptr %i.hl, ptr %i.hj, align 8, !tbaa !45
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !45
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !45
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !45
  store ptr %i.hr, ptr %i.hp, align 8, !tbaa !45
  %.old187 = load i8, ptr %i.bo, align 8, !tbaa !442, !range !36, !noundef !37
  %.old188 = trunc nuw i8 %.old187 to i1
  br i1 %.old188, label %bb.w, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120

bb.w:                                             ; preds = %.lr.ph.i.i.i123
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gx)
          to label %.noexc129 unwind label %bb.ac

.noexc129:                                        ; preds = %bb.w
  %.pre2.pre.pre.i122 = load i32, ptr %i.bq, align 4, !tbaa !446
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120: ; preds = %.noexc129, %.lr.ph.i.i.i123
  %.pre2.i121 = phi i32 [ 4, %.lr.ph.i.i.i123 ], [ %.pre2.pre.pre.i122, %.noexc129 ]
  store i8 1, ptr %i.bo, align 8, !tbaa !442
  store ptr %i.hh, ptr %i.bp, align 8, !tbaa !445
  store i32 8, ptr %i.br, align 8, !tbaa !447
  br label %bb.x

bb.x:                                             ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120, %bb.u
  %i.hs = phi ptr [ %i.hh, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120 ], [ %i.gx, %bb.u ] ; 9 uses
  %i.ht = phi i32 [ %.pre2.i121, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120 ], [ %i.hf, %bb.u ] ; 5 uses
  %i.hu = ptrtoaddr ptr %i.hs to i64
  %i.hv = sext i32 %i.ht to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.hv
  %i.hx = load ptr, ptr %i.cm, align 8, !tbaa !45
  store ptr %i.hx, ptr %i.hw, align 8, !tbaa !45
  %i.hy = add i32 %i.ht, 1                        ; 8 uses
  store i32 %i.hy, ptr %i.bq, align 4, !tbaa !446
  %i.hz = load i32, ptr %i.bk, align 4, !tbaa !446 ; 5 uses
  %.not = icmp slt i32 %i.ht, %i.hz
  br i1 %.not, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i, label %bb.y

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i: ; preds = %bb.x
  %.pre10.i.i = load ptr, ptr %i.bj, align 8, !tbaa !445
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.ia = load i32, ptr %i.bl, align 8, !tbaa !447
  %.not200 = icmp sgt i32 %i.ia, %i.ht
  br i1 %.not200, label %..lr.ph.i_crit_edge.i.i, label %bb.z

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.y
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !445
  br label %.lr.ph.i.i.i131

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = sext i32 %i.hy to i64
  %i.ic = shl nsw i64 %i.ib, 3
  %i.id = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ic, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i unwind label %bb.ac

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi ptr [ null, %bb.z ], [ %i.id, %bb.aa ] ; 9 uses
  %i.ie = icmp sgt i32 %i.hz, 0
  %i.if = load ptr, ptr %i.bj, align 8, !tbaa !445 ; 9 uses
  br i1 %i.ie, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %i.ig = ptrtoaddr ptr %i.if to i64
  %.0.i.i.i.i.i276 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.hz to i64 ; 5 uses
  %min.iters.check279 = icmp ult i32 %i.hz, 4
  %i.ih = sub i64 %i.ig, %.0.i.i.i.i.i276
  %diff.check277 = icmp ugt i64 %i.ih, -32
  %or.cond = select i1 %min.iters.check279, i1 true, i1 %diff.check277
  br i1 %or.cond, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.i.i.i.i
  %n.vec281 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next286, %vector.body282 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index283 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index283 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load284 = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !45
  %wide.load285 = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !45
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x ptr> %wide.load284, ptr %i.ii, align 8, !tbaa !45
  store <2 x ptr> %wide.load285, ptr %i.il, align 8, !tbaa !45
  %index.next286 = add nuw i64 %index283, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next286, %n.vec281
  br i1 %i.im, label %middle.block287, label %vector.body282, !llvm.loop !449

middle.block287:                                  ; preds = %vector.body282
  %cmp.n288 = icmp eq i64 %n.vec281, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n288, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph.i.i.i.i.i, %middle.block287
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec281, %middle.block287 ] ; 3 uses
  %xtraiter303 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol

scalar.ph278.prol:                                ; preds = %scalar.ph278.preheader, %scalar.ph278.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph278.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph278.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph278.prol ], [ 0, %scalar.ph278.preheader ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !45
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter303
  br i1 %prol.iter.cmp.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol, !llvm.loop !450

scalar.ph278.prol.loopexit:                       ; preds = %scalar.ph278.prol, %scalar.ph278.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph278.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph278.prol ]
  %i.iq = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.ir = icmp ugt i64 %i.iq, -4
  br i1 %i.ir, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph278 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph278.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i.i.i.i
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !45
  store ptr %i.iu, ptr %i.is, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i.i.i.i.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !45
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !45
  store ptr %i.ja, ptr %i.iy, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !45
  store ptr %i.jd, ptr %i.jb, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph278, !llvm.loop !451

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp ne ptr %i.if, null
  %i.je = load i8, ptr %i.bi, align 8, !range !36
  %i.jf = trunc nuw i8 %i.je to i1
  %or.cond192 = select i1 %.not.i5.i.i.i.i, i1 %i.jf, i1 false
  br i1 %or.cond192, label %bb.ab, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i: ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278, %middle.block287
  %.old190 = load i8, ptr %i.bi, align 8, !tbaa !442, !range !36, !noundef !37
  %.old191 = trunc nuw i8 %.old190 to i1
  br i1 %.old191, label %bb.ab, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

bb.ab:                                            ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.if)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i unwind label %bb.ac

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i: ; preds = %bb.ab, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  store i8 1, ptr %i.bi, align 8, !tbaa !442
  store ptr %.0.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !445
  store i32 %i.hy, ptr %i.bl, align 8, !tbaa !447
  br label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.jg = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.jh = sext i32 %i.hz to i64                   ; 2 uses
  %wide.trip.count.i.i.i132 = sext i32 %i.hy to i64
  %i.ji = shl nsw i64 %i.jh, 3
  %scevgep.i.i = getelementptr i8, ptr %i.jg, i64 %i.ji
  %i.jj = sub nsw i64 %wide.trip.count.i.i.i132, %i.jh
  %i.jk = shl nsw i64 %i.jj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.jk, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i131, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i
  %i.jl = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i ], [ %i.jg, %.lr.ph.i.i.i131 ] ; 7 uses
  store i32 %i.hy, ptr %i.bk, align 4, !tbaa !446
  %i.jm = icmp sgt i32 %i.ht, -1
  br i1 %i.jm, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %i.jn = ptrtoaddr ptr %i.jl to i64
  %wide.trip.count.i5.i.i = zext i32 %i.hy to i64 ; 5 uses
  %min.iters.check264 = icmp ult i32 %i.hy, 4
  %i.jo = sub i64 %i.hu, %i.jn
  %diff.check262 = icmp ugt i64 %i.jo, -32
  %or.cond290 = select i1 %min.iters.check264, i1 true, i1 %diff.check262
  br i1 %or.cond290, label %scalar.ph263.preheader, label %vector.ph265

vector.ph265:                                     ; preds = %.lr.ph.i4.i.i
  %n.vec266 = and i64 %wide.trip.count.i5.i.i, 2147483644 ; 3 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next271, %vector.body267 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %index268 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index268 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load269 = load <2 x ptr>, ptr %i.jq, align 8, !tbaa !45
  %wide.load270 = load <2 x ptr>, ptr %i.jr, align 8, !tbaa !45
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store <2 x ptr> %wide.load269, ptr %i.jp, align 8, !tbaa !45
  store <2 x ptr> %wide.load270, ptr %i.js, align 8, !tbaa !45
  %index.next271 = add nuw i64 %index268, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.jt, label %middle.block272, label %vector.body267, !llvm.loop !452

middle.block272:                                  ; preds = %vector.body267
  %cmp.n273 = icmp eq i64 %n.vec266, %wide.trip.count.i5.i.i
  br i1 %cmp.n273, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph263.preheader

scalar.ph263.preheader:                           ; preds = %.lr.ph.i4.i.i, %middle.block272
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec266, %middle.block272 ] ; 3 uses
  %xtraiter305 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %scalar.ph263.prol.loopexit, label %scalar.ph263.prol

scalar.ph263.prol:                                ; preds = %scalar.ph263.preheader, %scalar.ph263.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph263.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph263.preheader ] ; 3 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %scalar.ph263.prol ], [ 0, %scalar.ph263.preheader ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i6.i.i.prol
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.i6.i.i.prol
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !45
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %scalar.ph263.prol.loopexit, label %scalar.ph263.prol, !llvm.loop !453

scalar.ph263.prol.loopexit:                       ; preds = %scalar.ph263.prol, %scalar.ph263.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph263.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph263.prol ]
  %i.jx = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.jy = icmp ugt i64 %i.jx, -4
  br i1 %i.jy, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph263

scalar.ph263:                                     ; preds = %scalar.ph263.prol.loopexit, %scalar.ph263
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph263 ], [ %indvars.iv.i6.i.i.unr, %scalar.ph263.prol.loopexit ] ; 6 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i6.i.i
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.i6.i.i
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !45
  store ptr %i.kb, ptr %i.jz, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.next.i7.i.i
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next.i7.i.i
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !45
  store ptr %i.ke, ptr %i.kc, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.next.i7.i.i.1
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next.i7.i.i.1
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !45
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.next.i7.i.i.2
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next.i7.i.i.2
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !45
  store ptr %i.kk, ptr %i.ki, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph263, !llvm.loop !454

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit: ; preds = %scalar.ph263.prol.loopexit, %scalar.ph263, %middle.block272, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %i.kl = fcmp ult <4 x float> %i.gj, zeroinitializer
  %i.km = bitcast <4 x i1> %i.kl to i4
  %or.cond198.not = icmp eq i4 %i.km, 0
  %i.kn = load i8, ptr %i.bo, align 8, !range !36
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ad, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.am

bb.ad:                                            ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hs)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #26
  unreachable

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %or.cond198.not, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit, label %.thread

.thread:                                          ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137, %bb.o
  %.2179 = phi float [ %.sroa.speculated.2, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137 ], [ %.037203, %bb.o ]
  %i.ks = phi <4 x float> [ %i.gj, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137 ], [ %i.ca, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kt = load i32, ptr %i.bm, align 4, !tbaa !114
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next, %i.ku
  br i1 %i.kv, label %bb.o, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit, !llvm.loop !455

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137, %.thread
  %i.kw = phi <4 x float> [ %i.ks, %.thread ], [ %i.gj, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137 ]
  %.pre220 = load i32, ptr %i.bk, align 4, !tbaa !446
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit, %bb.n
  %i.kx = phi i32 [ %.pre220, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit ], [ 0, %bb.n ] ; 10 uses
  %i.ky = phi <4 x float> [ %i.kw, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge.loopexit ], [ undef, %bb.n ]
  %i.kz = load ptr, ptr %i.bs, align 8, !tbaa !439
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %indvars.iv210
  store <4 x float> %i.ky, ptr %i.la, align 4
  %i.lb = load ptr, ptr %i.bt, align 8, !tbaa !456
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.lb, i64 %indvars.iv210 ; 7 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !446 ; 3 uses
  %i.lf = icmp sgt i32 %i.kx, %i.le
  br i1 %i.lf, label %bb.af, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i138

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i138: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge
  %.phi.trans.insert9.i.i139 = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %.pre10.i.i140 = load ptr, ptr %.phi.trans.insert9.i.i139, align 8, !tbaa !445
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i141

bb.af:                                            ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !447
  %i.li = icmp slt i32 %i.lh, %i.kx
  br i1 %i.li, label %bb.ag, label %..lr.ph.i_crit_edge.i.i147

..lr.ph.i_crit_edge.i.i147:                       ; preds = %bb.af
  %.phi.trans.insert.i.i148 = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %.pre.i.i149 = load ptr, ptr %.phi.trans.insert.i.i148, align 8, !tbaa !445
  br label %.lr.ph.i.i.i150

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i.i153 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i.i.i153, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i155, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lj = sext i32 %i.kx to i64
  %i.lk = shl nsw i64 %i.lj, 3
  %i.ll = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.lk, i32 noundef 16)
          to label %.noexc166 unwind label %bb.al

.noexc166:                                        ; preds = %bb.ah
  %.pre.i.i.i154 = load i32, ptr %i.ld, align 4, !tbaa !446
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i155

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i155: ; preds = %.noexc166, %bb.ag
  %i.lm = phi i32 [ %.pre.i.i.i154, %.noexc166 ], [ %i.le, %bb.ag ] ; 3 uses
  %.0.i.i.i.i.i156 = phi ptr [ %i.ll, %.noexc166 ], [ null, %bb.ag ] ; 9 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !445 ; 9 uses
  br i1 %i.ln, label %.lr.ph.i.i.i.i.i161, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i157

.lr.ph.i.i.i.i.i161:                              ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i155
  %i.lq = ptrtoaddr ptr %i.lp to i64
  %.0.i.i.i.i.i156247 = ptrtoaddr ptr %.0.i.i.i.i.i156 to i64
  %wide.trip.count.i.i.i.i.i162 = zext nneg i32 %i.lm to i64 ; 5 uses
  %min.iters.check250 = icmp ult i32 %i.lm, 4
  %i.lr = sub i64 %i.lq, %.0.i.i.i.i.i156247
  %diff.check248 = icmp ugt i64 %i.lr, -32
  %or.cond291 = select i1 %min.iters.check250, i1 true, i1 %diff.check248
  br i1 %or.cond291, label %scalar.ph249.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %.lr.ph.i.i.i.i.i161
  %n.vec252 = and i64 %wide.trip.count.i.i.i.i.i162, 2147483644 ; 3 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next257, %vector.body253 ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %index254 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %index254 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %wide.load255 = load <2 x ptr>, ptr %i.lt, align 8, !tbaa !45
  %wide.load256 = load <2 x ptr>, ptr %i.lu, align 8, !tbaa !45
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <2 x ptr> %wide.load255, ptr %i.ls, align 8, !tbaa !45
  store <2 x ptr> %wide.load256, ptr %i.lv, align 8, !tbaa !45
  %index.next257 = add nuw i64 %index254, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.lw, label %middle.block258, label %vector.body253, !llvm.loop !457

middle.block258:                                  ; preds = %vector.body253
  %cmp.n259 = icmp eq i64 %n.vec252, %wide.trip.count.i.i.i.i.i162
  br i1 %cmp.n259, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159, label %scalar.ph249.preheader

scalar.ph249.preheader:                           ; preds = %.lr.ph.i.i.i.i.i161, %middle.block258
  %indvars.iv.i.i.i.i.i163.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i161 ], [ %n.vec252, %middle.block258 ] ; 3 uses
  %xtraiter308 = and i64 %wide.trip.count.i.i.i.i.i162, 3 ; 2 uses
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol

scalar.ph249.prol:                                ; preds = %scalar.ph249.preheader, %scalar.ph249.prol
  %indvars.iv.i.i.i.i.i163.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i164.prol, %scalar.ph249.prol ], [ %indvars.iv.i.i.i.i.i163.ph, %scalar.ph249.preheader ] ; 3 uses
  %prol.iter310 = phi i64 [ %prol.iter310.next, %scalar.ph249.prol ], [ 0, %scalar.ph249.preheader ]
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %indvars.iv.i.i.i.i.i163.prol
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i.i.i.i.i163.prol
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !45
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i164.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i163.prol, 1 ; 2 uses
  %prol.iter310.next = add i64 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i64 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %scalar.ph249.prol.loopexit, label %scalar.ph249.prol, !llvm.loop !458

scalar.ph249.prol.loopexit:                       ; preds = %scalar.ph249.prol, %scalar.ph249.preheader
  %indvars.iv.i.i.i.i.i163.unr = phi i64 [ %indvars.iv.i.i.i.i.i163.ph, %scalar.ph249.preheader ], [ %indvars.iv.next.i.i.i.i.i164.prol, %scalar.ph249.prol ]
  %i.ma = sub nsw i64 %indvars.iv.i.i.i.i.i163.ph, %wide.trip.count.i.i.i.i.i162
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159, label %scalar.ph249

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv.i.i.i.i.i163 = phi i64 [ %indvars.iv.next.i.i.i.i.i164.3, %scalar.ph249 ], [ %indvars.iv.i.i.i.i.i163.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %indvars.iv.i.i.i.i.i163
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i.i.i.i.i163
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !45
  store ptr %i.me, ptr %i.mc, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i164 = add nuw nsw i64 %indvars.iv.i.i.i.i.i163, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %indvars.iv.next.i.i.i.i.i164
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i.i.i164
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !45
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i164.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i163, 2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %indvars.iv.next.i.i.i.i.i164.1
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i.i.i164.1
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !45
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i164.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i163, 3 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i156, i64 %indvars.iv.next.i.i.i.i.i164.2
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i.i.i164.2
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !45
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i164.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i163, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i165.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i164.3, %wide.trip.count.i.i.i.i.i162
  br i1 %exitcond.not.i.i.i.i.i165.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159, label %scalar.ph249, !llvm.loop !459

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i157: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i155
  %.not.i5.i.i.i.i158 = icmp eq ptr %i.lp, null
  br i1 %.not.i5.i.i.i.i158, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159: ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block258, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i157
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.mp = load i8, ptr %i.mo, align 8, !tbaa !442, !range !36, !noundef !37
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.ai, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160

bb.ai:                                            ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lp)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160 unwind label %bb.al

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160: ; preds = %bb.ai, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i159, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i157
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i8 1, ptr %i.mr, align 8, !tbaa !442
  store ptr %.0.i.i.i.i.i156, ptr %i.lo, align 8, !tbaa !445
  store i32 %i.kx, ptr %i.lg, align 8, !tbaa !447
  br label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160, %..lr.ph.i_crit_edge.i.i147
  %i.ms = phi ptr [ %.pre.i.i149, %..lr.ph.i_crit_edge.i.i147 ], [ %.0.i.i.i.i.i156, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i160 ] ; 2 uses
  %i.mt = sext i32 %i.le to i64                   ; 2 uses
  %wide.trip.count.i.i.i151 = sext i32 %i.kx to i64
  %i.mu = shl nsw i64 %i.mt, 3
  %scevgep.i.i152 = getelementptr i8, ptr %i.ms, i64 %i.mu
  %i.mv = sub nsw i64 %wide.trip.count.i.i.i151, %i.mt
  %i.mw = shl nsw i64 %i.mv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i152, i8 0, i64 %i.mw, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i141

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i141: ; preds = %.lr.ph.i.i.i150, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i138
  %i.mx = phi ptr [ %.pre10.i.i140, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i138 ], [ %i.ms, %.lr.ph.i.i.i150 ] ; 7 uses
  store i32 %i.kx, ptr %i.ld, align 4, !tbaa !446
  %i.my = icmp sgt i32 %i.kx, 0
  %.pre221 = load ptr, ptr %i.bj, align 8, !tbaa !445 ; 9 uses
  br i1 %i.my, label %.lr.ph.i4.i.i142, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168

.lr.ph.i4.i.i142:                                 ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i141
  %.pre221244 = ptrtoaddr ptr %.pre221 to i64
  %i.mz = ptrtoaddr ptr %i.mx to i64
  %wide.trip.count.i5.i.i143 = zext nneg i32 %i.kx to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.kx, 4
  %i.na = sub i64 %.pre221244, %i.mz
  %diff.check = icmp ugt i64 %i.na, -32
  %or.cond292 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond292, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i4.i.i142
  %n.vec = and i64 %wide.trip.count.i5.i.i143, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.nc, align 8, !tbaa !45
  %wide.load245 = load <2 x ptr>, ptr %i.nd, align 8, !tbaa !45
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <2 x ptr> %wide.load, ptr %i.nb, align 8, !tbaa !45
  store <2 x ptr> %wide.load245, ptr %i.ne, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i5.i.i143
  br i1 %cmp.n, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i4.i.i142, %middle.block
  %indvars.iv.i6.i.i144.ph = phi i64 [ 0, %.lr.ph.i4.i.i142 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count.i5.i.i143, 3 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i144.prol = phi i64 [ %indvars.iv.next.i7.i.i145.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i144.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter313 = phi i64 [ %prol.iter313.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i6.i.i144.prol
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %indvars.iv.i6.i.i144.prol
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !45
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i145.prol = add nuw nsw i64 %indvars.iv.i6.i.i144.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !461

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i144.unr = phi i64 [ %indvars.iv.i6.i.i144.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i145.prol, %scalar.ph.prol ]
  %i.nj = sub nsw i64 %indvars.iv.i6.i.i144.ph, %wide.trip.count.i5.i.i143
  %i.nk = icmp ugt i64 %i.nj, -4
  br i1 %i.nk, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i144 = phi i64 [ %indvars.iv.next.i7.i.i145.3, %scalar.ph ], [ %indvars.iv.i6.i.i144.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i6.i.i144
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %indvars.iv.i6.i.i144
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !45
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i145 = add nuw nsw i64 %indvars.iv.i6.i.i144, 1 ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i7.i.i145
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %indvars.iv.next.i7.i.i145
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !45
  store ptr %i.nq, ptr %i.no, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i145.1 = add nuw nsw i64 %indvars.iv.i6.i.i144, 2 ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i7.i.i145.1
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %indvars.iv.next.i7.i.i145.1
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !45
  store ptr %i.nt, ptr %i.nr, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i145.2 = add nuw nsw i64 %indvars.iv.i6.i.i144, 3 ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i7.i.i145.2
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.pre221, i64 %indvars.iv.next.i7.i.i145.2
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !45
  store ptr %i.nw, ptr %i.nu, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i145.3 = add nuw nsw i64 %indvars.iv.i6.i.i144, 4 ; 2 uses
  %exitcond.not.i8.i.i146.3 = icmp eq i64 %indvars.iv.next.i7.i.i145.3, %wide.trip.count.i5.i.i143
  br i1 %exitcond.not.i8.i.i146.3, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168, label %scalar.ph, !llvm.loop !462

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i141
  %.not.i.i.i169 = icmp ne ptr %.pre221, null
  %i.nx = load i8, ptr %i.bi, align 8, !range !36
  %i.ny = trunc nuw i8 %i.nx to i1
  %or.cond.i.i170 = select i1 %.not.i.i.i169, i1 %i.ny, i1 false
  br i1 %or.cond.i.i170, label %bb.aj, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171

bb.aj:                                            ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre221)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #26
  unreachable

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit168, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.ob = load i32, ptr %i.q, align 4, !tbaa !436
  %i.oc = sext i32 %i.ob to i64
  %i.od = icmp slt i64 %indvars.iv.next211, %i.oc
  br i1 %i.od, label %bb.n, label %._crit_edge207, !llvm.loop !463

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.ac, %bb.al
  %.pn50 = phi { ptr, i32 } [ %i.oe, %bb.al ], [ %i.kp, %bb.ac ]
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.m
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.am ], [ %i.bu, %bb.m ]
  resume { ptr, i32 } %.pn50.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE6resizeEiRKS4_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !464  ; 4 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit
  %indvars.iv26 = phi i64 [ %i.e, %.preheader ], [ %indvars.iv.next27, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !456
  %i.g = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !445  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !36
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit: ; preds = %bb.b, %bb.c
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %lftr.wideiv29 = trunc i64 %indvars.iv.next27 to i32
  %exitcond30.not = icmp eq i32 %i.b, %lftr.wideiv29
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !465

bb.e:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %1, %i.b
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  tail call void @_ZN20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = sext i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEC2ERKS4_.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEC2ERKS4_.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !456
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store i8 1, ptr %i.v, align 8, !tbaa !442
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !445
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !447
end_hunk_2
begin_hunk_3_@_ZN17btSoftBodyHelpers29extrapolateBarycentricWeightsEP10btSoftBody:bb.a

._crit_edge243:                                   ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  ret void

bb.o:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector4E6resizeEiRKS0_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ao

bb.p:                                             ; preds = %.lr.ph242, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198
  %indvars.iv246 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next247, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198 ] ; 5 uses
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !448
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv246 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i8 1, ptr %i.cn, align 8, !tbaa !442
  store ptr null, ptr %i.co, align 8, !tbaa !445
  store i32 0, ptr %i.cp, align 4, !tbaa !446
  store i32 0, ptr %i.cq, align 8, !tbaa !447
  %i.dd = load i32, ptr %i.cr, align 4, !tbaa !108
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  br label %bb.u

._crit_edge.loopexit:                             ; preds = %bb.aj
  %.pre257 = load i32, ptr %i.cp, align 4, !tbaa !446
  %i.dh = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.di = phi i32 [ %.pre257, %._crit_edge.loopexit ], [ 0, %bb.p ] ; 10 uses
  %.sroa.0219.sroa.0.0 = phi float [ %.sroa.0219.sroa.0.2, %._crit_edge.loopexit ], [ undef, %bb.p ]
  %.050.lcssa = phi float [ %.1, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.p ]
  %i.dj = phi <2 x float> [ %i.dh, %._crit_edge.loopexit ], [ undef, %bb.p ]
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !439
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv246 ; 3 uses
  store float %.sroa.0219.sroa.0.0, ptr %i.dl, align 4
  %.sroa.0219.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store <2 x float> %i.dj, ptr %.sroa.0219.sroa.5.0..sroa_idx, align 4
  %.sroa.0219.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store float 0.000000e+00, ptr %.sroa.0219.sroa.7.0..sroa_idx, align 4
  %i.dm = load ptr, ptr %i.cy, align 8, !tbaa !456
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %indvars.iv246 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !446 ; 3 uses
  %i.dq = icmp sgt i32 %i.di, %i.dp
  br i1 %i.dq, label %bb.q, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i: ; preds = %._crit_edge
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !445
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

bb.q:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !447
  %i.dt = icmp slt i32 %i.ds, %i.di
  br i1 %i.dt, label %bb.r, label %..lr.ph.i_crit_edge.i.i

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.q
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !445
  br label %.lr.ph.i.i.i86

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = sext i32 %i.di to i64
  %i.dv = shl nsw i64 %i.du, 3
  %i.dw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dv, i32 noundef 16)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.s
  %.pre.i.i.i = load i32, ptr %i.do, align 4, !tbaa !446
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i: ; preds = %.noexc, %bb.r
  %i.dx = phi i32 [ %.pre.i.i.i, %.noexc ], [ %i.dp, %bb.r ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dw, %.noexc ], [ null, %bb.r ] ; 9 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !445 ; 9 uses
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %.0.i.i.i.i.i295 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.dx to i64 ; 5 uses
  %min.iters.check298 = icmp ult i32 %i.dx, 4
  %i.ec = sub i64 %i.eb, %.0.i.i.i.i.i295
  %diff.check296 = icmp ugt i64 %i.ec, -32
  %or.cond339 = select i1 %min.iters.check298, i1 true, i1 %diff.check296
  br i1 %or.cond339, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.i.i.i.i.i
  %n.vec300 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index302 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index302 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load303 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !45
  %wide.load304 = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x ptr> %wide.load303, ptr %i.ed, align 8, !tbaa !45
  store <2 x ptr> %wide.load304, ptr %i.eg, align 8, !tbaa !45
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.eh, label %middle.block306, label %vector.body301, !llvm.loop !476

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec300, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n307, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph.i.i.i.i.i, %middle.block306
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec300, %middle.block306 ] ; 3 uses
  %xtraiter353 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol

scalar.ph297.prol:                                ; preds = %scalar.ph297.preheader, %scalar.ph297.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph297.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph297.preheader ] ; 3 uses
  %prol.iter355 = phi i64 [ %prol.iter355.next, %scalar.ph297.prol ], [ 0, %scalar.ph297.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !45
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter355.next = add i64 %prol.iter355, 1   ; 2 uses
  %prol.iter355.cmp.not = icmp eq i64 %prol.iter355.next, %xtraiter353
  br i1 %prol.iter355.cmp.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol, !llvm.loop !477

scalar.ph297.prol.loopexit:                       ; preds = %scalar.ph297.prol, %scalar.ph297.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph297.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph297.prol ]
  %i.el = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297

scalar.ph297:                                     ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph297 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph297.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i.i.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.i.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !45
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !45
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !45
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297, !llvm.loop !478

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i: ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297, %middle.block306, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !442, !range !36, !noundef !37
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.t, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ea)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i unwind label %bb.am

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i8 1, ptr %i.fc, align 8, !tbaa !442
  store ptr %.0.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !445
  store i32 %i.di, ptr %i.dr, align 8, !tbaa !447
  br label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.fd = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.fe = sext i32 %i.dp to i64                   ; 2 uses
  %wide.trip.count.i.i.i87 = sext i32 %i.di to i64
  %i.ff = shl nsw i64 %i.fe, 3
  %scevgep.i.i = getelementptr i8, ptr %i.fd, i64 %i.ff
  %i.fg = sub nsw i64 %wide.trip.count.i.i.i87, %i.fe
  %i.fh = shl nsw i64 %i.fg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.fh, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i86, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i
  %i.fi = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i ], [ %i.fd, %.lr.ph.i.i.i86 ] ; 7 uses
  store i32 %i.di, ptr %i.do, align 4, !tbaa !446
  %i.fj = icmp sgt i32 %i.di, 0
  %.pre258 = load ptr, ptr %i.co, align 8, !tbaa !445 ; 9 uses
  br i1 %i.fj, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %.pre258280 = ptrtoaddr ptr %.pre258 to i64
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %wide.trip.count.i5.i.i = zext nneg i32 %i.di to i64 ; 5 uses
  %min.iters.check283 = icmp ult i32 %i.di, 4
  %i.fl = sub i64 %.pre258280, %i.fk
  %diff.check281 = icmp ugt i64 %i.fl, -32
  %or.cond340 = select i1 %min.iters.check283, i1 true, i1 %diff.check281
  br i1 %or.cond340, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i4.i.i
  %n.vec285 = and i64 %wide.trip.count.i5.i.i, 2147483644 ; 3 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next290, %vector.body286 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index287 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %index287 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load288 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !45
  %wide.load289 = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !45
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x ptr> %wide.load288, ptr %i.fm, align 8, !tbaa !45
  store <2 x ptr> %wide.load289, ptr %i.fp, align 8, !tbaa !45
  %index.next290 = add nuw i64 %index287, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.fq, label %middle.block291, label %vector.body286, !llvm.loop !479

middle.block291:                                  ; preds = %vector.body286
  %cmp.n292 = icmp eq i64 %n.vec285, %wide.trip.count.i5.i.i
  br i1 %cmp.n292, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph.i4.i.i, %middle.block291
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec285, %middle.block291 ] ; 3 uses
  %xtraiter356 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol

scalar.ph282.prol:                                ; preds = %scalar.ph282.preheader, %scalar.ph282.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph282.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph282.preheader ] ; 3 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %scalar.ph282.prol ], [ 0, %scalar.ph282.preheader ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i6.i.i.prol
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.i6.i.i.prol
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !45
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol, !llvm.loop !480

scalar.ph282.prol.loopexit:                       ; preds = %scalar.ph282.prol, %scalar.ph282.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph282.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph282.prol ]
  %i.fu = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.fv = icmp ugt i64 %i.fu, -4
  br i1 %i.fv, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph282 ], [ %indvars.iv.i6.i.i.unr, %scalar.ph282.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i6.i.i
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.i6.i.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !45
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i7.i.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !45
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i7.i.i.1
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i.1
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !45
  store ptr %i.ge, ptr %i.gc, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i7.i.i.2
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i.2
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !45
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282, !llvm.loop !481

bb.u:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0219.sroa.0.1 = phi float [ undef, %.lr.ph ], [ %.sroa.0219.sroa.0.2, %bb.aj ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %.050239 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.aj ] ; 3 uses
  %.051238 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.152, %bb.aj ] ; 5 uses
  %i.gi = phi <2 x float> [ undef, %.lr.ph ], [ %i.oq, %bb.aj ] ; 2 uses
  %i.gj = load ptr, ptr %i.cs, align 8, !tbaa !112
  %i.gk = getelementptr inbounds nuw [144 x i8], ptr %i.gj, i64 %indvars.iv ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !45 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !45 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !9 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !9 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !9 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !9
  %i.hd = load float, ptr %i.dc, align 4, !tbaa !9 ; 2 uses
  %i.he = fsub float %i.hd, %i.gr
  %i.hf = load float, ptr %i.df, align 4, !tbaa !9 ; 2 uses
  %i.hg = fsub float %i.hf, %i.gt
  %i.hh = load float, ptr %i.dg, align 4, !tbaa !9 ; 2 uses
  %i.hi = fsub float %i.hh, %i.gx
  %i.hj = load <2 x float>, ptr %i.go, align 4, !tbaa !9 ; 2 uses
  %i.hk = load <2 x float>, ptr %i.ha, align 4, !tbaa !9 ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hm = insertelement <2 x float> poison, float %i.gr, i64 0 ; 2 uses
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fsub <2 x float> %i.hl, %i.hn           ; 7 uses
  %i.hp = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.hq = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fsub <2 x float> %i.hp, %i.hr           ; 10 uses
  %i.ht = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hu = insertelement <2 x float> %i.ht, float %i.hc, i64 1
  %i.hv = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fsub <2 x float> %i.hu, %i.hw           ; 7 uses
  %i.hy = extractelement <2 x float> %i.hx, i64 0 ; 2 uses
  %i.hz = extractelement <2 x float> %i.hx, i64 1 ; 2 uses
  %i.ia = fneg float %i.hz
  %i.ib = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.ic = fmul float %i.ib, %i.ia
  %i.id = extractelement <2 x float> %i.ho, i64 1 ; 2 uses
  %i.ie = call float @llvm.fmuladd.f32(float %i.hy, float %i.id, float %i.ic) ; 3 uses
  %i.if = fmul float %i.ie, %i.ie
  %i.ig = shufflevector <2 x float> %i.hs, <2 x float> %i.ho, <2 x i32> <i32 1, i32 3>
  %i.ih = fneg <2 x float> %i.ig
  %i.ii = shufflevector <2 x float> %i.hx, <2 x float> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.ij = fmul <2 x float> %i.ii, %i.ih
  %i.ik = shufflevector <2 x float> %i.hs, <2 x float> %i.ho, <2 x i32> <i32 0, i32 2>
  %i.il = shufflevector <2 x float> %i.hx, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ij) ; 3 uses
  %i.in = extractelement <2 x float> %i.im, i64 0 ; 2 uses
  %i.io = call float @llvm.fmuladd.f32(float %i.in, float %i.in, float %i.if)
  %i.ip = extractelement <2 x float> %i.im, i64 1 ; 2 uses
  %i.iq = call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.io)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.iq)
  %i.ir = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.is = fmul float %i.ie, %i.ir                 ; 2 uses
  %i.it = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x float> %i.im, %i.iu           ; 3 uses
  %i.iw = fmul float %i.hg, %i.is
  %i.ix = extractelement <2 x float> %i.iv, i64 0
  %i.iy = call float @llvm.fmuladd.f32(float %i.he, float %i.ix, float %i.iw)
  %i.iz = extractelement <2 x float> %i.iv, i64 1
  %i.ja = call noundef float @llvm.fmuladd.f32(float %i.hi, float %i.iz, float %i.iy) ; 4 uses
  %i.jb = fmul float %i.is, %i.ja
  %i.jc = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x float> %i.iv, %i.jd
  %i.jf = fsub float %i.hf, %i.jb
  %i.jg = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.hh, i64 1
  %i.ji = fsub <2 x float> %i.jh, %i.je
  %i.jj = fsub float %i.jf, %i.gt                 ; 2 uses
  %i.jk = insertelement <2 x float> %i.hm, float %i.gx, i64 1
  %i.jl = fsub <2 x float> %i.ji, %i.jk           ; 2 uses
  %shift = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.hs, %shift
  %i.jm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jn = call float @llvm.fmuladd.f32(float %i.ib, float %i.id, float %i.jm)
  %i.jo = call noundef float @llvm.fmuladd.f32(float %i.hy, float %i.hz, float %i.jn) ; 3 uses
  %i.jp = fmul <2 x float> %i.hs, %i.hs
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.ho, <2 x float> %i.jp)
  %i.jr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hx, <2 x float> %i.jq) ; 3 uses
  %i.js = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jt = insertelement <2 x float> %i.js, float %i.jj, i64 1
  %i.ju = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.jw = fmul <2 x float> %i.jt, %i.jv
  %i.jx = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.jy, <2 x float> %i.jw)
  %i.ka = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kb = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kb, <2 x float> %i.jz) ; 2 uses
  %i.kd = fneg float %i.jo
  %i.ke = fmul float %i.jo, %i.kd
end_hunk_3
begin_hunk_4_@_ZN17btSoftBodyHelpers29extrapolateBarycentricWeightsEP10btSoftBody:bb.a
  %.pre253 = load ptr, ptr %i.gl, align 8, !tbaa !45
  store i8 1, ptr %i.ct, align 8, !tbaa !442
  store ptr %i.lk, ptr %i.cu, align 8, !tbaa !445
  store i32 1, ptr %i.cw, align 8, !tbaa !447
  store ptr %.pre253, ptr %i.lk, align 8, !tbaa !45
  store i32 1, ptr %i.cv, align 4, !tbaa !446
  %i.ll = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %bb.y unwind label %bb.ai      ; 6 uses

bb.y:                                             ; preds = %bb.x
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !45
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !45
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lk)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.ct, align 8, !tbaa !442
  store ptr %i.ll, ptr %i.cu, align 8, !tbaa !445
  store i32 2, ptr %i.cw, align 8, !tbaa !447
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lo = load ptr, ptr %i.gm, align 8, !tbaa !45
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !45
  store i32 2, ptr %i.cv, align 4, !tbaa !446
  %i.lp = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 32, i32 noundef 16)
          to label %.lr.ph.i.i.i154.preheader unwind label %bb.ai ; 12 uses

.lr.ph.i.i.i154.preheader:                        ; preds = %bb.z
  %i.lq = ptrtoaddr ptr %i.lp to i64
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !45
  store ptr %i.lr, ptr %i.lp, align 8, !tbaa !45
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !45
  store ptr %i.lu, ptr %i.ls, align 8, !tbaa !45
  %.old227 = load i8, ptr %i.ct, align 8, !tbaa !442, !range !36, !noundef !37
  %.old228 = trunc nuw i8 %.old227 to i1
  br i1 %.old228, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i154.preheader
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ll)
          to label %.noexc160 unwind label %bb.ai

.noexc160:                                        ; preds = %bb.aa
  %.pre2.pre.pre.i153 = load i32, ptr %i.cv, align 4, !tbaa !446
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i154.preheader, %.noexc160
  %.pre2.i152 = phi i32 [ 2, %.lr.ph.i.i.i154.preheader ], [ %.pre2.pre.pre.i153, %.noexc160 ] ; 5 uses
  store i8 1, ptr %i.ct, align 8, !tbaa !442
  store ptr %i.lp, ptr %i.cu, align 8, !tbaa !445
  store i32 4, ptr %i.cw, align 8, !tbaa !447
  %i.lv = sext i32 %.pre2.i152 to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lv
  %i.lx = load ptr, ptr %i.gy, align 8, !tbaa !45
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !45
  %i.ly = add i32 %.pre2.i152, 1                  ; 8 uses
  store i32 %i.ly, ptr %i.cv, align 4, !tbaa !446
  %i.lz = load i32, ptr %i.cp, align 4, !tbaa !446 ; 5 uses
  %.not = icmp slt i32 %.pre2.i152, %i.lz
  br i1 %.not, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162, label %bb.ac

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162: ; preds = %bb.ab
  %.pre10.i.i164 = load ptr, ptr %i.co, align 8, !tbaa !445
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165

bb.ac:                                            ; preds = %bb.ab
  %i.ma = load i32, ptr %i.cq, align 8, !tbaa !447
  %.not233 = icmp sgt i32 %i.ma, %.pre2.i152
  br i1 %.not233, label %..lr.ph.i_crit_edge.i.i171, label %bb.ad

..lr.ph.i_crit_edge.i.i171:                       ; preds = %bb.ac
  %.pre.i.i173 = load ptr, ptr %i.co, align 8, !tbaa !445
  br label %.lr.ph.i.i.i174

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i.i177 = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i.i.i.i177, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mb = sext i32 %i.ly to i64
  %i.mc = shl nsw i64 %i.mb, 3
  %i.md = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.mc, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179 unwind label %bb.ai

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i180 = phi ptr [ null, %bb.ad ], [ %i.md, %bb.ae ] ; 9 uses
  %i.me = icmp sgt i32 %i.lz, 0
  %i.mf = load ptr, ptr %i.co, align 8, !tbaa !445 ; 9 uses
  br i1 %i.me, label %.lr.ph.i.i.i.i.i185, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i181

.lr.ph.i.i.i.i.i185:                              ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179
  %i.mg = ptrtoaddr ptr %i.mf to i64
  %.0.i.i.i.i.i180324 = ptrtoaddr ptr %.0.i.i.i.i.i180 to i64
  %wide.trip.count.i.i.i.i.i186 = zext nneg i32 %i.lz to i64 ; 5 uses
  %min.iters.check327 = icmp ult i32 %i.lz, 4
  %i.mh = sub i64 %i.mg, %.0.i.i.i.i.i180324
  %diff.check325 = icmp ugt i64 %i.mh, -32
  %or.cond341 = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond341, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i.i.i.i.i185
  %n.vec329 = and i64 %wide.trip.count.i.i.i.i.i186, 2147483644 ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %index331 ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %index331 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %wide.load332 = load <2 x ptr>, ptr %i.mj, align 8, !tbaa !45
  %wide.load333 = load <2 x ptr>, ptr %i.mk, align 8, !tbaa !45
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <2 x ptr> %wide.load332, ptr %i.mi, align 8, !tbaa !45
  store <2 x ptr> %wide.load333, ptr %i.ml, align 8, !tbaa !45
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.mm, label %middle.block335, label %vector.body330, !llvm.loop !482

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %n.vec329, %wide.trip.count.i.i.i.i.i186
  br i1 %cmp.n336, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i.i.i.i.i185, %middle.block335
  %indvars.iv.i.i.i.i.i187.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i185 ], [ %n.vec329, %middle.block335 ] ; 3 uses
  %xtraiter347 = and i64 %wide.trip.count.i.i.i.i.i186, 3 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader, %scalar.ph326.prol
  %indvars.iv.i.i.i.i.i187.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i188.prol, %scalar.ph326.prol ], [ %indvars.iv.i.i.i.i.i187.ph, %scalar.ph326.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %scalar.ph326.prol ], [ 0, %scalar.ph326.preheader ]
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.i.i.i.i.i187.prol
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i.i.i187.prol
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !45
  store ptr %i.mp, ptr %i.mn, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i187.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol, !llvm.loop !483

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %indvars.iv.i.i.i.i.i187.unr = phi i64 [ %indvars.iv.i.i.i.i.i187.ph, %scalar.ph326.preheader ], [ %indvars.iv.next.i.i.i.i.i188.prol, %scalar.ph326.prol ]
  %i.mq = sub nsw i64 %indvars.iv.i.i.i.i.i187.ph, %wide.trip.count.i.i.i.i.i186
  %i.mr = icmp ugt i64 %i.mq, -4
  br i1 %i.mr, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %indvars.iv.i.i.i.i.i187 = phi i64 [ %indvars.iv.next.i.i.i.i.i188.3, %scalar.ph326 ], [ %indvars.iv.i.i.i.i.i187.unr, %scalar.ph326.prol.loopexit ] ; 6 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.i.i.i.i.i187
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i.i.i187
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !45
  store ptr %i.mu, ptr %i.ms, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188 = add nuw nsw i64 %indvars.iv.i.i.i.i.i187, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.next.i.i.i.i.i188
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i188
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !45
  store ptr %i.mx, ptr %i.mv, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i187, 2 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.next.i.i.i.i.i188.1
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i188.1
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !45
  store ptr %i.na, ptr %i.my, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i187, 3 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.next.i.i.i.i.i188.2
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i188.2
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !45
  store ptr %i.nd, ptr %i.nb, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i187, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i189.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i188.3, %wide.trip.count.i.i.i.i.i186
  br i1 %exitcond.not.i.i.i.i.i189.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, label %scalar.ph326, !llvm.loop !484

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i181: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179
  %.not.i5.i.i.i.i182 = icmp ne ptr %i.mf, null
  %i.ne = load i8, ptr %i.cn, align 8, !range !36
  %i.nf = trunc nuw i8 %i.ne to i1
  %or.cond232 = select i1 %.not.i5.i.i.i.i182, i1 %i.nf, i1 false
  br i1 %or.cond232, label %bb.af, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183: ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335
  %.old230 = load i8, ptr %i.cn, align 8, !tbaa !442, !range !36, !noundef !37
  %.old231 = trunc nuw i8 %.old230 to i1
  br i1 %.old231, label %bb.af, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184

bb.af:                                            ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i181, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.mf)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184 unwind label %bb.ai

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184: ; preds = %bb.af, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i181
  store i8 1, ptr %i.cn, align 8, !tbaa !442
  store ptr %.0.i.i.i.i.i180, ptr %i.co, align 8, !tbaa !445
  store i32 %i.ly, ptr %i.cq, align 8, !tbaa !447
  br label %.lr.ph.i.i.i174

.lr.ph.i.i.i174:                                  ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184, %..lr.ph.i_crit_edge.i.i171
  %i.ng = phi ptr [ %.pre.i.i173, %..lr.ph.i_crit_edge.i.i171 ], [ %.0.i.i.i.i.i180, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i184 ] ; 2 uses
  %i.nh = sext i32 %i.lz to i64                   ; 2 uses
  %wide.trip.count.i.i.i175 = sext i32 %i.ly to i64
  %i.ni = shl nsw i64 %i.nh, 3
  %scevgep.i.i176 = getelementptr i8, ptr %i.ng, i64 %i.ni
  %i.nj = sub nsw i64 %wide.trip.count.i.i.i175, %i.nh
  %i.nk = shl nsw i64 %i.nj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i176, i8 0, i64 %i.nk, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165: ; preds = %.lr.ph.i.i.i174, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162
  %i.nl = phi ptr [ %.pre10.i.i164, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162 ], [ %i.ng, %.lr.ph.i.i.i174 ] ; 7 uses
  store i32 %i.ly, ptr %i.cp, align 4, !tbaa !446
  %i.nm = icmp sgt i32 %.pre2.i152, -1
  br i1 %i.nm, label %.lr.ph.i4.i.i166, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192

.lr.ph.i4.i.i166:                                 ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165
  %i.nn = ptrtoaddr ptr %i.nl to i64
  %wide.trip.count.i5.i.i167 = zext i32 %i.ly to i64 ; 5 uses
  %min.iters.check312 = icmp ult i32 %i.ly, 4
  %i.no = sub i64 %i.lq, %i.nn
  %diff.check310 = icmp ugt i64 %i.no, -32
  %or.cond342 = select i1 %min.iters.check312, i1 true, i1 %diff.check310
  br i1 %or.cond342, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph.i4.i.i166
  %n.vec314 = and i64 %wide.trip.count.i5.i.i167, 2147483644 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %index316 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %index316 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load317 = load <2 x ptr>, ptr %i.nq, align 8, !tbaa !45
  %wide.load318 = load <2 x ptr>, ptr %i.nr, align 8, !tbaa !45
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store <2 x ptr> %wide.load317, ptr %i.np, align 8, !tbaa !45
  store <2 x ptr> %wide.load318, ptr %i.ns, align 8, !tbaa !45
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.nt, label %middle.block320, label %vector.body315, !llvm.loop !485

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count.i5.i.i167
  br i1 %cmp.n321, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %.lr.ph.i4.i.i166, %middle.block320
  %indvars.iv.i6.i.i168.ph = phi i64 [ 0, %.lr.ph.i4.i.i166 ], [ %n.vec314, %middle.block320 ] ; 3 uses
  %xtraiter350 = and i64 %wide.trip.count.i5.i.i167, 3 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %scalar.ph311.prol.loopexit, label %scalar.ph311.prol

scalar.ph311.prol:                                ; preds = %scalar.ph311.preheader, %scalar.ph311.prol
  %indvars.iv.i6.i.i168.prol = phi i64 [ %indvars.iv.next.i7.i.i169.prol, %scalar.ph311.prol ], [ %indvars.iv.i6.i.i168.ph, %scalar.ph311.preheader ] ; 3 uses
  %prol.iter352 = phi i64 [ %prol.iter352.next, %scalar.ph311.prol ], [ 0, %scalar.ph311.preheader ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i6.i.i168.prol
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i6.i.i168.prol
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !45
  store ptr %i.nw, ptr %i.nu, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i169.prol = add nuw nsw i64 %indvars.iv.i6.i.i168.prol, 1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %scalar.ph311.prol.loopexit, label %scalar.ph311.prol, !llvm.loop !486

scalar.ph311.prol.loopexit:                       ; preds = %scalar.ph311.prol, %scalar.ph311.preheader
  %indvars.iv.i6.i.i168.unr = phi i64 [ %indvars.iv.i6.i.i168.ph, %scalar.ph311.preheader ], [ %indvars.iv.next.i7.i.i169.prol, %scalar.ph311.prol ]
  %i.nx = sub nsw i64 %indvars.iv.i6.i.i168.ph, %wide.trip.count.i5.i.i167
  %i.ny = icmp ugt i64 %i.nx, -4
  br i1 %i.ny, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192, label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311
  %indvars.iv.i6.i.i168 = phi i64 [ %indvars.iv.next.i7.i.i169.3, %scalar.ph311 ], [ %indvars.iv.i6.i.i168.unr, %scalar.ph311.prol.loopexit ] ; 6 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i6.i.i168
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i6.i.i168
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !45
  store ptr %i.ob, ptr %i.nz, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i169 = add nuw nsw i64 %indvars.iv.i6.i.i168, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i7.i.i169
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i7.i.i169
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !45
  store ptr %i.oe, ptr %i.oc, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i169.1 = add nuw nsw i64 %indvars.iv.i6.i.i168, 2 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i7.i.i169.1
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i7.i.i169.1
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !45
  store ptr %i.oh, ptr %i.of, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i169.2 = add nuw nsw i64 %indvars.iv.i6.i.i168, 3 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i7.i.i169.2
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i7.i.i169.2
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !45
  store ptr %i.ok, ptr %i.oi, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i169.3 = add nuw nsw i64 %indvars.iv.i6.i.i168, 4 ; 2 uses
  %exitcond.not.i8.i.i170.3 = icmp eq i64 %indvars.iv.next.i7.i.i169.3, %wide.trip.count.i5.i.i167
  br i1 %exitcond.not.i8.i.i170.3, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192, label %scalar.ph311, !llvm.loop !487

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192: ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311, %middle.block320, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165
  %i.ol = load i8, ptr %i.ct, align 8, !range !36
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.ag, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195

bb.ag:                                            ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lp)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #26
  unreachable

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit192, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.an

bb.aj:                                            ; preds = %.split, %bb.v, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195
  %.sroa.0219.sroa.0.2 = phi float [ %i.ky, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195 ], [ %.sroa.0219.sroa.0.1, %.split ], [ %.sroa.0219.sroa.0.1, %bb.v ] ; 2 uses
  %.152 = phi float [ %.sroa.speculated.1, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195 ], [ %.051238, %.split ], [ %.051238, %bb.v ]
  %.1 = phi float [ %i.ja, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195 ], [ %.050239, %.split ], [ %.050239, %bb.v ] ; 2 uses
  %i.oq = phi <2 x float> [ %i.kr, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit195 ], [ %i.gi, %.split ], [ %i.gi, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.or = load i32, ptr %i.cr, align 4, !tbaa !108
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next, %i.os
  br i1 %i.ot, label %bb.u, label %._crit_edge.loopexit, !llvm.loop !488

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit: ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282, %middle.block291, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %i.ou = load ptr, ptr %i.cz, align 8, !tbaa !434
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv246
  store float %.050.lcssa, ptr %i.ov, align 4, !tbaa !9
  %.not.i.i.i196 = icmp ne ptr %.pre258, null
  %i.ow = load i8, ptr %i.cn, align 8, !range !36
  %i.ox = trunc nuw i8 %i.ow to i1
  %or.cond.i.i197 = select i1 %.not.i.i.i196, i1 %i.ox, i1 false
  br i1 %or.cond.i.i197, label %bb.ak, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198

bb.ak:                                            ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre258)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #26
  unreachable

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit198: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.pa = load i32, ptr %i.a, align 4, !tbaa !436
  %i.pb = sext i32 %i.pa to i64
  %i.pc = icmp slt i64 %indvars.iv.next247, %i.pb
  br i1 %i.pc, label %bb.p, label %._crit_edge243, !llvm.loop !489

bb.am:                                            ; preds = %bb.t, %bb.s
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.am
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pd, %bb.am ], [ %i.op, %bb.ai ]
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.o
  %.pn64.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn.pn, %bb.an ], [ %i.da, %bb.o ]
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #13

declare noundef float @_ZN20btConvexHullComputer7computeEPKvbiiff(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv() local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !91

bb.b:                                             ; preds = %bb.a
end_hunk_4
