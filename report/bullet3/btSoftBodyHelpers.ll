Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii:.loopexit

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
  %i.aa = load float, ptr %1, align 4, !tbaa !19
  %i.ab = load float, ptr %3, align 4, !tbaa !19
  %i.ac = load float, ptr %i.k, align 4, !tbaa !19
  %i.ad = load float, ptr %i.l, align 4, !tbaa !19
  %i.ae = load float, ptr %i.m, align 4, !tbaa !19
  %i.af = load float, ptr %i.n, align 4, !tbaa !19
  %i.ag = load float, ptr %2, align 4, !tbaa !19
  %i.ah = load float, ptr %4, align 4, !tbaa !19
  %i.ai = load float, ptr %i.o, align 4, !tbaa !19
  %i.aj = load float, ptr %i.p, align 4, !tbaa !19
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ad, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ac, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = load float, ptr %i.q, align 4, !tbaa !19
  %i.at = load float, ptr %i.r, align 4, !tbaa !19
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
  br i1 %exitcond206.not, label %._crit_edge192.split, label %.lr.ph, !llvm.loop !335

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
  store <2 x float> %.sroa.3.12.vec.insert.i.i169, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !39
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cd
  store float 1.000000e+00, ptr %i.cf, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !336

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
  %i.cp = mul nuw nsw i32 %i.co, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.cg, i32 noundef %i.cp, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cq = and i32 %7, 8
  %.not160 = icmp eq i32 %i.cq, 0
  br i1 %.not160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = add nsw i32 %6, -1
  %i.cs = mul nuw nsw i32 %i.cr, %5
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
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 2 uses
  %smax211 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
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
  %exitcond208.not = icmp eq i32 %i.dc, %smax
  br i1 %exitcond208.not, label %._crit_edge195, label %.lr.ph194.split.us, !llvm.loop !337

._crit_edge195:                                   ; preds = %.thread, %.thread.us
  %exitcond209.not.a = icmp eq i32 %i.cy, %smax211
  br i1 %exitcond209.not.a, label %.loopexit, label %.preheader, !llvm.loop !338

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
  %exitcond207.not = icmp eq i32 %i.dl, %smax
  br i1 %exitcond207.not, label %._crit_edge195, label %.lr.ph194.split, !llvm.loop !337

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
  %i.u = load float, ptr %i.k, align 4, !tbaa !19
  %i.v = load float, ptr %i.l, align 4, !tbaa !19
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 2 uses
  %i.x = load <2 x float>, ptr %3, align 4, !tbaa !19
  %i.y = fsub <2 x float> %i.x, %i.w
  %i.z = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.w) ; 2 uses
  %i.ac = load <2 x float>, ptr %2, align 4, !tbaa !19 ; 2 uses
  %i.ad = load <2 x float>, ptr %4, align 4, !tbaa !19
  %i.ae = fsub <2 x float> %i.ad, %i.ac
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.aa, <2 x float> %i.ac)
  %i.ag = load float, ptr %i.m, align 4, !tbaa !19
  %i.ah = load float, ptr %i.n, align 4, !tbaa !19
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
  br i1 %exitcond253.not, label %._crit_edge239.split, label %.lr.ph, !llvm.loop !339

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
  store <2 x float> %.sroa.3.12.vec.insert.i.i227, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !39
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.az
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !340

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
  %i.bl = mul nuw nsw i32 %i.bk, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.bl, float noundef 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = and i32 %7, 8
  %.not213 = icmp eq i32 %i.bm, 0
  br i1 %.not213, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = add nsw i32 %6, -1
  %i.bo = mul nuw nsw i32 %i.bn, %5
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
  %i.cg = mul nuw nsw i32 %i.cf, %5
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
  %i.cv = uitofp nneg i32 %i.ct to float
  %i.cw = uitofp nneg i32 %i.cu to float
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.cy ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 2 uses
  %smax260 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
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
  store float %i.du, ptr %i.dw, align 4, !tbaa !19
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  store float %i.di, ptr %i.dx, align 4, !tbaa !19
  %i.dy = getelementptr i8, ptr %i.dw, i64 8
  store float %i.du, ptr %i.dy, align 4, !tbaa !19
  %i.dz = getelementptr i8, ptr %i.dw, i64 12
  store float %i.dm, ptr %i.dz, align 4, !tbaa !19
  %i.ea = uitofp nneg i32 %i.dn to float
  %i.eb = fmul float %i.db, %i.ea                 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.dw, i64 16
  store float %i.eb, ptr %i.ec, align 4, !tbaa !19
  %i.ed = getelementptr i8, ptr %i.dw, i64 20
  store float %i.dm, ptr %i.ed, align 4, !tbaa !19
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.bc, i32 noundef %i.ds, i32 noundef %i.dq, i32 noundef %i.dp, ptr noundef null)
  %i.ee = getelementptr i8, ptr %i.dw, i64 24
  store float %i.eb, ptr %i.ee, align 4, !tbaa !19
  %i.ef = getelementptr i8, ptr %i.dw, i64 28
  store float %i.dm, ptr %i.ef, align 4, !tbaa !19
  %i.eg = getelementptr i8, ptr %i.dw, i64 32
  store float %i.eb, ptr %i.eg, align 4, !tbaa !19
  %i.eh = getelementptr i8, ptr %i.dw, i64 36
  store float %i.di, ptr %i.eh, align 4, !tbaa !19
  %i.ei = getelementptr i8, ptr %i.dw, i64 40
  store float %i.du, ptr %i.ei, align 4, !tbaa !19
  %i.ej = getelementptr i8, ptr %i.dw, i64 44
  store float %i.di, ptr %i.ej, align 4, !tbaa !19
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
  %exitcond255.not = icmp eq i32 %i.dn, %smax
  br i1 %exitcond255.not, label %._crit_edge243, label %.lr.ph242.split.us, !llvm.loop !341

._crit_edge243:                                   ; preds = %.thread, %.thread.us
  %.us-phi = phi i32 [ %.2.us, %.thread.us ], [ %.0200245, %.thread ]
  %exitcond256.not = icmp eq i32 %i.dc, %smax260
  br i1 %exitcond256.not, label %.loopexit, label %.preheader, !llvm.loop !342

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
  %exitcond254.not = icmp eq i32 %i.el, %smax
  br i1 %exitcond254.not, label %._crit_edge243, label %.lr.ph242.split, !llvm.loop !341

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

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %i.e = add nsw i32 %3, 3                        ; 7 uses
  %i.f = icmp sgt i32 %3, -3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = zext nneg i32 %i.e to i64
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.h, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.b   ; 5 uses

.lr.ph.i:                                         ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !40
  store ptr %i.i, ptr %i.b, align 8, !tbaa !41
  store i32 %i.e, ptr %i.d, align 8, !tbaa !43
  store i32 %i.e, ptr %i.c, align 4, !tbaa !42
  %i.j = uitofp nneg i32 %i.e to float
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i
  %.030.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.w, %._crit_edge.i ] ; 5 uses
  %.01729.i = phi i32 [ 0, %.lr.ph.i ], [ %i.x, %._crit_edge.i ] ; 4 uses
  %.not25.i = icmp eq i32 %.01729.i, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i13
  %i.k = tail call float @llvm.fmuladd.f32(float %.1.i, float 2.000000e+00, float -1.000000e+00)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.019.lcssa.i = phi float [ -1.000000e+00, %.preheader.i ], [ %i.k, %._crit_edge.loopexit.i ] ; 3 uses
  %i.l = shl nuw nsw i32 %.01729.i, 1
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float f0x40490FDB, float f0x40490FDB)
  %i.o = fdiv float %i.n, %i.j                    ; 2 uses
  %i.p = fneg float %.019.lcssa.i
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %.019.lcssa.i, float 1.000000e+00)
  %i.r = tail call noundef float @sqrtf(float noundef %i.q) #25 ; 2 uses
  %i.s = tail call noundef float @cosf(float noundef %i.o) #25
  %i.t = fmul float %i.r, %i.s
  %i.u = tail call noundef float @sinf(float noundef %i.o) #25
  %i.v = fmul float %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  store float %i.t, ptr %.030.i, align 4
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store float %i.v, ptr %.sroa.4.0..0.sroa_idx.i, align 4
  %.sroa.5.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  store float %.019.lcssa.i, ptr %.sroa.5.0..0.sroa_idx.i, align 4
  %.sroa.6.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..0.sroa_idx.i, align 4, !tbaa !39
  %i.x = add nuw nsw i32 %.01729.i, 1             ; 2 uses
  %exitcond.not.i14 = icmp eq i32 %i.x, %i.e
  br i1 %exitcond.not.i14, label %.lr.ph, label %.preheader.i, !llvm.loop !343

.lr.ph.i13:                                       ; preds = %.preheader.i, %.lr.ph.i13
  %.01828.i = phi i32 [ %i.ab, %.lr.ph.i13 ], [ %.01729.i, %.preheader.i ] ; 2 uses
  %.01927.i = phi float [ %.1.i, %.lr.ph.i13 ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %.02026.i = phi float [ %i.aa, %.lr.ph.i13 ], [ 5.000000e-01, %.preheader.i ] ; 2 uses
  %i.y = and i32 %.01828.i, 1
  %.not22.i = icmp eq i32 %i.y, 0
  %i.z = fadd float %.01927.i, %.02026.i
  %.1.i = select i1 %.not22.i, float %.01927.i, float %i.z ; 2 uses
  %i.aa = fmul float %.02026.i, 5.000000e-01
  %i.ab = lshr i32 %.01828.i, 1                   ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i13, !llvm.loop !344

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = zext nneg i32 %i.e to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %i.af = invoke noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3ib(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.i, i32 noundef %i.e, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !19
  %i.al = load float, ptr %i.ac, align 4, !tbaa !19
  %i.am = fmul float %i.ak, %i.al
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !19
  %i.ao = load <2 x float>, ptr %2, align 4, !tbaa !19
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.ar = fadd <2 x float> %i.ap, %i.aq
  %i.as = load float, ptr %i.ad, align 4, !tbaa !19
  %i.at = fadd float %i.am, %i.as
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  store <2 x float> %i.ar, ptr %i.ai, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %i.aj, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.au, label %bb.d, label %._crit_edge, !llvm.loop !345

bb.e:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.af

bb.g:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.b ], [ %i.ah, %bb.c ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3ib(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
