inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody15RayFromToCaster7ProcessEPK10btDbvtNode:bb.a
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !483
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %6) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !159  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !159 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !159 ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !159 ; 3 uses
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.h = fsub float %i.a, %i.g                    ; 2 uses
  %i.i = fsub float %i.c, %i.f                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !159 ; 4 uses
  %i.n = fsub float %i.k, %i.m                    ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !159  ; 2 uses
  %i.p = fsub float %i.o, %i.g                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !159 ; 2 uses
  %i.s = fsub float %i.r, %i.f                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !159 ; 2 uses
  %i.v = fsub float %i.u, %i.m                    ; 2 uses
  %i.w = fneg float %i.s
  %i.x = fmul float %i.n, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.i, float %i.v, float %i.x) ; 5 uses
  %i.z = fneg float %i.v
  %i.aa = fmul float %i.h, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.aa) ; 5 uses
  %i.ac = fneg float %i.p
  %i.ad = fmul float %i.i, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.ad) ; 5 uses
  %i.af = load float, ptr %2, align 4, !tbaa !159 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 2 uses
  %i.ai = fmul float %i.ah, %i.ab
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.y, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.ae, float %i.aj) ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp olt float %i.an, f0x34000000
  br i1 %i.ao, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !159 ; 2 uses
  %i.ar = load <2 x float>, ptr %0, align 4, !tbaa !159 ; 3 uses
  %i.as = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.m, i64 1
  %i.bc = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.az) ; 2 uses
  %shift = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.be, %shift
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bg = fneg float %i.bf
  %i.bh = fdiv float %i.bg, %i.am                 ; 6 uses
  %i.bi = fcmp ogt float %i.bh, f0x35A00000
  %i.bj = fcmp olt float %i.bh, %6
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !159
  %i.bm = fmul float %i.af, %i.bh
  %i.bn = fmul float %i.ah, %i.bh
  %i.bo = fmul float %i.al, %i.bh
  %i.bp = extractelement <2 x float> %i.ar, i64 0
  %i.bq = fadd float %i.bp, %i.bm                 ; 3 uses
  %i.br = fadd float %i.bl, %i.bn                 ; 3 uses
  %i.bs = fadd float %i.aq, %i.bo                 ; 3 uses
  %i.bt = fsub float %i.g, %i.bq                  ; 4 uses
  %i.bu = fsub float %i.f, %i.br                  ; 4 uses
  %i.bv = fsub float %i.m, %i.bs                  ; 4 uses
  %i.bw = fsub float %i.a, %i.bq                  ; 4 uses
  %i.bx = fsub float %i.c, %i.br                  ; 4 uses
  %i.by = fsub float %i.k, %i.bs                  ; 4 uses
  %i.bz = fneg float %i.bx
  %i.ca = fmul float %i.bv, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.by, float %i.ca)
  %i.cc = fneg float %i.by
  %i.cd = fmul float %i.bt, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.cd)
  %i.cf = fneg float %i.bw
  %i.cg = fmul float %i.bu, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bx, float %i.cg)
  %i.ci = fmul float %i.ab, %i.ce
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.cb, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ch, float %i.cj)
  %i.cl = fcmp ogt float %i.ck, f0xB5A00000
  br i1 %i.cl, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.cm = fsub float %i.o, %i.bq                  ; 4 uses
  %i.cn = fsub float %i.r, %i.br                  ; 4 uses
  %i.co = fsub float %i.u, %i.bs                  ; 4 uses
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.by, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.co, float %i.cq)
  %i.cs = fneg float %i.co
  %i.ct = fmul float %i.bw, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cm, float %i.ct)
  %i.cv = fneg float %i.cm
  %i.cw = fmul float %i.bx, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cn, float %i.cw)
  %i.cy = fmul float %i.ab, %i.cu
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.y, float %i.cr, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.cx, float %i.cz)
  %i.db = fcmp ogt float %i.da, f0xB5A00000
  br i1 %i.db, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.dc = fneg float %i.bu
  %i.dd = fmul float %i.co, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bv, float %i.dd)
  %i.df = fneg float %i.bv
  %i.dg = fmul float %i.cm, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.co, float %i.bt, float %i.dg)
  %i.di = fneg float %i.bt
  %i.dj = fmul float %i.cn, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bu, float %i.dj)
  %i.dl = fmul float %i.ab, %i.dh
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.y, float %i.de, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.dk, float %i.dm)
  %i.do = fcmp ogt float %i.dn, f0xB5A00000
  br i1 %i.do, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.e, %bb.c, %bb.d
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge.thread, %bb.e
  %.3 = phi float [ %i.bh, %bb.e ], [ -1.000000e+00, %.critedge.thread ], [ -1.000000e+00, %bb.a ]
  ret float %.3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN6btDbvt7rayTestEPK10btDbvtNodeRK9btVector3S5_RNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !159
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !159
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.h = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1024, i32 noundef 16) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.i, i8 0, i64 1016, i1 false), !tbaa !561
  store ptr %0, ptr %i.h, align 8, !tbaa !561
  %i.j = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop182 = fmul <2 x float> %i.j, %i.j
  %i.k = extractelement <2 x float> %foldExtExtBinop182, i64 1
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 3 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.k)
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.m)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.j, %i.q              ; 4 uses
  %i.s = fmul float %i.e, %i.o                    ; 3 uses
  %i.t = fcmp oeq <2 x float> %i.r, zeroinitializer
  %i.u = fdiv <2 x float> splat (float 1.000000e+00), %i.r
  %i.v = select <2 x i1> %i.t, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.u ; 3 uses
  %i.w = fcmp oeq float %i.s, 0.000000e+00
  %i.x = fdiv float 1.000000e+00, %i.s
  %i.y = select i1 %i.w, float f0x5D5E0B6B, float %i.x ; 3 uses
  %i.z = fcmp uge <2 x float> %i.v, zeroinitializer ; 2 uses
  %i.aa = fcmp uge float %i.y, 0.000000e+00       ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.j, %i.r
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = extractelement <2 x float> %i.r, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.l, float %i.ab)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.e, float %i.ad)
  br label %bb.b

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  %.sroa.1770.0 = phi ptr [ %.sroa.1770.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.h, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 17 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 8 uses
  %.sroa.3.0 = phi i32 [ %.sroa.3.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 10 uses
  %.024 = phi i32 [ %.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 126, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 6 uses
  %.0 = phi i32 [ %.1, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 1, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 3 uses
  %.sroa.1770.0179 = ptrtoaddr ptr %.sroa.1770.0 to i64
  %i.af = add nsw i32 %.0, -1                     ; 6 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.1770.0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !561 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load <2 x float>, ptr %i.ai, align 4    ; 2 uses
  %i.al = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ao = select <2 x i1> %i.z, <2 x float> %i.am, <2 x float> %i.an
  %i.ap = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = fmul <2 x float> %i.v, %i.aq            ; 3 uses
  %i.as = select <2 x i1> %i.z, <2 x float> %i.an, <2 x float> %i.am
  %i.at = fsub <2 x float> %i.as, %i.ap
  %i.au = fmul <2 x float> %i.v, %i.at            ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ax = fcmp ogt float %i.av, %i.aw
  %i.ay = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.ba = fcmp ogt float %i.az, %i.ay
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.15.16.copyload = load float, ptr %.sroa.15.16..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.bc = fcmp olt <2 x float> %i.au, %i.bb       ; 2 uses
  %i.bd = extractelement <2 x i1> %i.bc, i64 0
  %i.be = select i1 %i.bd, float %i.az, float %i.av ; 3 uses
  %i.bf = extractelement <2 x i1> %i.bc, i64 1
  %.052.i = select i1 %i.bf, float %i.aw, float %i.ay ; 3 uses
  %.sroa.speculated150 = select i1 %i.aa, float %.sroa.8.0.copyload, float %.sroa.15.16.copyload
  %i.bg = load float, ptr %i.c, align 4, !tbaa !159 ; 2 uses
  %i.bh = fsub float %.sroa.speculated150, %i.bg
  %i.bi = fmul float %i.y, %i.bh                  ; 3 uses
  %.sroa.speculated = select i1 %i.aa, float %.sroa.15.16.copyload, float %.sroa.8.0.copyload
  %i.bj = fsub float %.sroa.speculated, %i.bg
  %i.bk = fmul float %i.y, %i.bj                  ; 3 uses
  %i.bl = fcmp ogt float %i.be, %i.bk
  %i.bm = fcmp ogt float %i.bi, %.052.i
  %or.cond60.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.bn = fcmp ogt float %i.bi, %i.be
  %i.bo = select i1 %i.bn, float %i.bi, float %i.be
  %i.bp = fcmp olt float %i.bk, %.052.i
  %.1.i = select i1 %i.bp, float %i.bk, float %.052.i
  %i.bq = fcmp olt float %i.bo, %i.ae
  %i.br = fcmp ogt float %.1.i, 0.000000e+00
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.d, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !185
  %.not124 = icmp eq ptr %i.bu, null
  br i1 %.not124, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp sgt i32 %i.af, %.024
  br i1 %i.bv, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bw = shl nsw i32 %.sroa.3.0, 1               ; 6 uses
  %i.bx = icmp sgt i32 %i.bw, %.sroa.3.0
  br i1 %i.bx, label %bb.g, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58

bb.g:                                             ; preds = %bb.f
  %i.by = icmp slt i32 %.sroa.12.0, %i.bw
  %4 = sext i32 %i.bw to i64
  %5 = shl nsw i64 %4, 3                          ; 2 uses
  br i1 %i.by, label %bb.h, label %.lr.ph.i41

bb.h:                                             ; preds = %bb.g
  %i.bz = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %5, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i unwind label %bb.j ; 8 uses

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %bb.h
  %wide.trip.count.i.i.i52 = zext i32 %.sroa.3.0 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.3.0, 4
  %.0.i.i.i178 = ptrtoaddr ptr %i.bz to i64
  %i.ca = sub i64 %.sroa.1770.0179, %.0.i.i.i178
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i52, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !561
  %wide.load180 = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !561
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x ptr> %wide.load, ptr %i.cb, align 8, !tbaa !561
  store <2 x ptr> %wide.load180, ptr %i.ce, align 8, !tbaa !561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i52
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, %middle.block
  %indvars.iv.i.i.i53.ph = phi i64 [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i52, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i53.prol = phi i64 [ %indvars.iv.next.i.i.i54.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i53.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i53.prol
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %indvars.iv.i.i.i53.prol
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !561
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.prol = add nuw nsw i64 %indvars.iv.i.i.i53.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !563

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i53.unr = phi i64 [ %indvars.iv.i.i.i53.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i54.prol, %scalar.ph.prol ]
  %i.cj = sub nsw i64 %indvars.iv.i.i.i53.ph, %wide.trip.count.i.i.i52
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i53 = phi i64 [ %indvars.iv.next.i.i.i54.3, %scalar.ph ], [ %indvars.iv.i.i.i53.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i53
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %indvars.iv.i.i.i53
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !561
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i53, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i54
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %indvars.iv.next.i.i.i54
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !561
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.1 = add nuw nsw i64 %indvars.iv.i.i.i53, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i54.1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %indvars.iv.next.i.i.i54.1
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !561
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.2 = add nuw nsw i64 %indvars.iv.i.i.i53, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i54.2
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1770.0, i64 %indvars.iv.next.i.i.i54.2
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !561
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.3 = add nuw nsw i64 %indvars.iv.i.i.i53, 4 ; 2 uses
  %exitcond.not.i.i.i55.3 = icmp eq i64 %indvars.iv.next.i.i.i54.3, %wide.trip.count.i.i.i52
  br i1 %exitcond.not.i.i.i55.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit, label %scalar.ph, !llvm.loop !564

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1770.0)
          to label %.lr.ph.i41 unwind label %bb.j

.lr.ph.i41:                                       ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit
  %.sroa.1770.6 = phi ptr [ %i.bz, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit ], [ %.sroa.1770.0, %bb.g ] ; 2 uses
  %.sroa.12.5 = phi i32 [ %i.bw, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit ], [ %.sroa.12.0, %bb.g ]
  %i.cx = sext i32 %.sroa.3.0 to i64
  %i.cy = shl nsw i64 %i.cx, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.1770.6, i64 %i.cy
  %i.cz = sub nsw i64 %5, %i.cy
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cz, i1 false), !tbaa !561
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58: ; preds = %.lr.ph.i41, %bb.f
  %.sroa.1770.7 = phi ptr [ %.sroa.1770.0, %bb.f ], [ %.sroa.1770.6, %.lr.ph.i41 ]
  %.sroa.12.6 = phi i32 [ %.sroa.12.0, %bb.f ], [ %.sroa.12.5, %.lr.ph.i41 ]
  %i.da = add nsw i32 %i.bw, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49.loopexit, %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58, %bb.e
  %.sroa.1770.1 = phi ptr [ %.sroa.1770.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58 ], [ %.sroa.1770.0, %bb.e ] ; 3 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58 ], [ %.sroa.12.0, %bb.e ]
  %.sroa.3.1 = phi i32 [ %i.bw, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58 ], [ %.sroa.3.0, %bb.e ]
  %.125 = phi i32 [ %i.da, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit58 ], [ %.024, %bb.e ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !185
  %i.df = getelementptr inbounds [8 x i8], ptr %.sroa.1770.1, i64 %i.ag
  store ptr %i.de, ptr %i.df, align 8, !tbaa !561
  %i.dg = load ptr, ptr %i.bt, align 8, !tbaa !185
  %i.dh = add nsw i32 %.0, 1
  %i.di = sext i32 %.0 to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.1770.1, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !561
  br label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %3, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ai)
          to label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread unwind label %bb.i

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %.sroa.1770.2 = phi ptr [ %.sroa.1770.1, %bb.k ], [ %.sroa.1770.0, %bb.l ], [ %.sroa.1770.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.1770.0, %bb.b ], [ %.sroa.1770.0, %bb.c ] ; 2 uses
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %bb.k ], [ %.sroa.12.0, %bb.l ], [ %.sroa.12.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.12.0, %bb.b ], [ %.sroa.12.0, %bb.c ]
  %.sroa.3.2 = phi i32 [ %.sroa.3.1, %bb.k ], [ %.sroa.3.0, %bb.l ], [ %.sroa.3.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.3.0, %bb.b ], [ %.sroa.3.0, %bb.c ]
  %.2 = phi i32 [ %.125, %bb.k ], [ %.024, %bb.l ], [ %.024, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.024, %bb.b ], [ %.024, %bb.c ]
  %.1 = phi i32 [ %i.dh, %bb.k ], [ %i.af, %bb.l ], [ %i.af, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.af, %bb.b ], [ %i.af, %bb.c ] ; 2 uses
  %.not34 = icmp eq i32 %.1, 0
  br i1 %.not34, label %bb.m, label %bb.b

bb.m:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1770.2)
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.n:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.j ], [ %i.db, %bb.i ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1770.0)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit63 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit63: ; preds = %bb.n
  resume { ptr, i32 } %.pn

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.m, %bb.a
  ret void

bb.o:                                             ; preds = %bb.n
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  tail call void @__clang_call_terminate(ptr %i.do) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody12checkContactEP17btCollisionObjectRK9btVector3fRNS_4sCtiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = icmp eq i32 %i.d, 2
  %..i = select i1 %i.e, ptr %1, ptr null         ; 2 uses
  %.not = icmp eq ptr %..i, null
  %i.f = getelementptr inbounds nuw i8, ptr %..i, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = select i1 %.not, ptr %i.g, ptr %i.f      ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.m = load float, ptr %2, align 4, !tbaa !159
  %i.n = load float, ptr %i.l, align 4, !tbaa !159
  %i.o = fsub float %i.m, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !159
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.x = load float, ptr %i.w, align 4, !tbaa !159
  %i.y = fsub float %i.v, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.ae = load float, ptr %i.ab, align 4, !tbaa !159, !noalias !565
  %i.af = load float, ptr %i.ac, align 4, !tbaa !159, !noalias !565
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !159, !noalias !565
  %i.ah = load <2 x float>, ptr %i.h, align 4, !tbaa !159, !noalias !565
  %i.ai = load <2 x float>, ptr %i.z, align 4, !tbaa !159, !noalias !565
  %i.aj = load <2 x float>, ptr %i.aa, align 4, !tbaa !159, !noalias !565
  %i.ak = insertelement <2 x float> poison, float %i.t, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.al, %i.ai
  %i.an = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ao, <2 x float> %i.am)
  %i.aq = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = fmul float %i.t, %i.af
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.o, float %i.at)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.y, float %i.au)
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  store <2 x float> %i.as, ptr %6, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.aw, align 8
  %i.ax = call noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(52) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %3) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ay = fcmp olt float %i.ax, 0.000000e+00      ; 2 uses
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store ptr %1, ptr %4, align 8, !tbaa !568
  %i.ba = load float, ptr %5, align 4, !tbaa !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !159 ; 2 uses
  %i.bd = load float, ptr %i.ab, align 4, !tbaa !159
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !159 ; 2 uses
  %i.bg = load float, ptr %i.ac, align 4, !tbaa !159
  %i.bh = load <2 x float>, ptr %i.h, align 4, !tbaa !159 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.z, align 4, !tbaa !159 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bm = fmul <2 x float> %i.bk, %i.bl
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bm)
  %i.br = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bg, i64 1
  %i.bt = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bq) ; 3 uses
  %i.bw = load float, ptr %i.aa, align 4, !tbaa !159
  %i.bx = load float, ptr %i.az, align 4, !tbaa !159
  %i.by = fmul float %i.bc, %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %i.bw, float %i.ba, float %i.by)
  %i.ca = load float, ptr %i.ad, align 4, !tbaa !159
  %i.cb = call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.bf, float %i.bz) ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.bv, ptr %i.cc, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !185
  %i.cd = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.ce = fmul float %i.ax, %i.cd
  %i.cf = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cg = fmul float %i.ax, %i.cf
  %i.ch = fmul float %i.ax, %i.cb
  %i.ci = load float, ptr %2, align 4, !tbaa !159
  %i.cj = fsub float %i.ci, %i.ce
  %i.ck = load float, ptr %i.p, align 4, !tbaa !159
  %i.cl = fsub float %i.ck, %i.cg
  %i.cm = load float, ptr %i.u, align 4, !tbaa !159
  %i.cn = fsub float %i.cm, %i.ch
  %i.co = fmul float %i.cf, %i.cl
  %i.cp = call float @llvm.fmuladd.f32(float %i.cd, float %i.cj, float %i.co)
  %i.cq = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cn, float %i.cp)
  %i.cr = fneg float %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.cr, ptr %i.cs, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret i1 %i.ay
}

; Function Attrs: uwtable
end_hunk_0
begin_hunk_1_@_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE:bb.a
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !561
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !561
  %indvars.iv.next.i.i.i56.1 = add nuw nsw i64 %indvars.iv.i.i.i55, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !561
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !561
  %indvars.iv.next.i.i.i56.2 = add nuw nsw i64 %indvars.iv.i.i.i55, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.2
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !561
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !561
  %indvars.iv.next.i.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i57.3 = icmp eq i64 %indvars.iv.next.i.i.i56.3, %wide.trip.count.i.i.i54
  br i1 %exitcond.not.i.i.i57.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph, !llvm.loop !668

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49
  %.pre-phi = phi i64 [ %.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %wide.trip.count.i.i.i54, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cm = phi ptr [ %i.bf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bn, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ] ; 2 uses
  %.sroa.23.7 = phi i32 [ %.sroa.23.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bk, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.pre-phi
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !561
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !561
  %i.cp = add nuw nsw i32 %.sroa.3.0, 1
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %3, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.m

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60, %bb.l, %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ct = phi ptr [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.b, %bb.l ], [ %i.b, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.3.1 = phi i32 [ %i.cp, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.d, %bb.l ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %.sroa.23.0, %bb.l ], [ %.sroa.23.0, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %.sroa.23.0, %bb.f ], [ %.sroa.23.0, %bb.e ], [ %.sroa.23.0, %bb.d ], [ %.sroa.23.0, %bb.c ], [ %.sroa.23.0, %bb.b ]
  %i.cu = icmp sgt i32 %.sroa.3.1, 0
  br i1 %i.cu, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, %bb.k, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30, %bb.j, %bb.l
  %i.cv = phi ptr [ %i.bf, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ], [ %i.bf, %bb.k ], [ %i.b, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30 ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65: ; preds = %bb.m
  resume { ptr, i32 } %i.cw

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody23defaultCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.btSoftColliders::CollideCL_SS", align 8 ; 11 uses
  %3 = alloca %"struct.btSoftColliders::CollideVF_SS", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.b = load i32, ptr %i.a, align 4, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.d = load i32, ptr %i.c, align 4, !tbaa !160  ; 2 uses
  %i.e = and i32 %i.b, 48
  %i.f = and i32 %i.e, %i.d
  switch i32 %i.f, label %bb.e [
    i32 32, label %bb.b
    i32 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %0, %1
  %i.g = and i32 %i.d, 64
  %.not15 = icmp eq i32 %i.g, 0
  %or.cond = and i1 %.not14, %.not15
  br i1 %or.cond, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !652
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.j, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN15btSoftColliders12CollideCL_SSE, i64 16), ptr %2, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.l = load float, ptr %i.k, align 4, !tbaa !486
  store float %i.l, ptr %i.i, align 4, !tbaa !657
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !177  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef float %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.n), !inline_history !669
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !177  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef float %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.t), !inline_history !669
  %i.y = fadd float %i.r, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.y, ptr %i.z, align 8, !tbaa !659
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !159 ; 2 uses
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !159 ; 2 uses
  %i.ae = fcmp olt float %i.ac, %i.ad
  %i.af = select i1 %i.ae, float %i.ac, float %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.af, ptr %i.ag, align 4, !tbaa !661
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.ah, align 8, !tbaa !555
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ai, align 8, !tbaa !555
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !662
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !662
  call void @_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN15btSoftColliders12CollideVF_SSE, i64 16), ptr %3, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !177 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef float %i.ar(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !177 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef float %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
  %i.az = fadd float %i.as, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.az, ptr %i.ba, align 8, !tbaa !670
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.bb, align 8, !tbaa !555
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %i.bc, align 8, !tbaa !555
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !672
  call void @_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr %1, ptr %i.bb, align 8, !tbaa !555
  store ptr %0, ptr %i.bc, align 8, !tbaa !555
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !672
  call void @_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %.noexc
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit: ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2048, i32 noundef 16) ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !561
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !561
  br label %bb.b

bb.b:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit
  %.sroa.3.0 = phi i32 [ 128, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.3.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 4 uses
  %.sroa.12.0 = phi i32 [ 128, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.12.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 3 uses
  %.sroa.17114.0 = phi ptr [ %i.c, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.17114.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 7 uses
  %.052 = phi i32 [ 124, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.153, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 9 uses
  %i.d = add nsw i32 %.0, -1                      ; 10 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %.sroa.17114.0, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !561 ; 14 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !561 ; 13 uses
  %i.g = icmp sgt i32 %i.d, %.052
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = shl nsw i32 %.sroa.3.0, 1                ; 6 uses
  %i.i = icmp sgt i32 %i.h, %.sroa.3.0
  %i.j = icmp slt i32 %.sroa.12.0, %i.h
  %or.cond160 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond160, label %bb.d, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.h to i64
  %i.l = shl nsw i64 %i.k, 4
  %i.m = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i unwind label %bb.g ; 3 uses

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i: ; preds = %bb.d
  %wide.trip.count.i.i.i72 = zext nneg i32 %.sroa.3.0 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i
  %indvars.iv.i.i.i73 = phi i64 [ 0, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i ], [ %indvars.iv.next.i.i.i74.1, %bb.e ] ; 4 uses
  %indvars.iv.i.i.i73.a = phi i64 [ 0, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i ], [ %indvars.iv.next.i.i.i74.1.a, %bb.e ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.i.i.i73
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.17114.0, i64 %indvars.iv.i.i.i73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !673
  %indvars.iv.next.i.i.i74 = or disjoint i64 %indvars.iv.i.i.i73, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i74
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.17114.0, i64 %indvars.iv.next.i.i.i74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !673
  %indvars.iv.next.i.i.i74.1 = add nuw nsw i64 %indvars.iv.i.i.i73, 2
  %indvars.iv.next.i.i.i74.1.a = add i64 %indvars.iv.i.i.i73.a, 2 ; 2 uses
  %exitcond.not.i.i.i75.1 = icmp eq i64 %indvars.iv.next.i.i.i74.1.a, %wide.trip.count.i.i.i72
  br i1 %exitcond.not.i.i.i75.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit, label %bb.e

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit: ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17114.0)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78 unwind label %bb.g

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78: ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit, %bb.c
  %.sroa.12.5 = phi i32 [ %.sroa.12.0, %bb.c ], [ %i.h, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit ]
  %.sroa.17114.6 = phi ptr [ %.sroa.17114.0, %bb.c ], [ %i.m, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit ]
  %i.r = add nsw i32 %i.h, -4
  br label %bb.h

bb.f:                                             ; preds = %bb.v
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78, %bb.b
  %.sroa.3.1 = phi i32 [ %i.h, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78 ], [ %.sroa.3.0, %bb.b ]
  %.sroa.12.1 = phi i32 [ %.sroa.12.5, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78 ], [ %.sroa.12.0, %bb.b ]
  %.sroa.17114.1 = phi ptr [ %.sroa.17114.6, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78 ], [ %.sroa.17114.0, %bb.b ] ; 11 uses
  %.153 = phi i32 [ %i.r, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit78 ], [ %.052, %bb.b ]
  %i.u = icmp eq ptr %.sroa.0.0.copyload, %.sroa.23.0.copyload
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !185
  %.not147 = icmp eq ptr %i.w, null
  br i1 %.not147, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !185  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.e ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !561
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !561
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !185 ; 2 uses
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr [16 x i8], ptr %.sroa.17114.1, i64 %i.ab ; 3 uses
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !561
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.aa, ptr %.sroa.4102.0..sroa_idx, align 8, !tbaa !561
  %i.ad = add nsw i32 %.0, 2
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %i.af = load <2 x ptr>, ptr %i.x, align 8, !tbaa !185
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.ag = load float, ptr %.sroa.0.0.copyload, align 4, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !159
  %i.aj = fcmp ugt float %i.ag, %i.ai
  br i1 %i.aj, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159
  %i.am = load float, ptr %.sroa.23.0.copyload, align 4, !tbaa !159
  %i.an = fcmp ult float %i.al, %i.am
  br i1 %i.an, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !159
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  %i.as = fcmp ugt float %i.ap, %i.ar
  br i1 %i.as, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !159
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !159
  %i.ax = fcmp ult float %i.au, %i.aw
  br i1 %i.ax, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bc = fcmp ugt float %i.az, %i.bb
  br i1 %i.bc, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit

_Z9IntersectRK12btDbvtAabbMmS1_.exit:             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !159
  %i.bh = fcmp ult float %i.be, %i.bg
  br i1 %i.bh, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !185
  %.not144 = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 48 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !185
  %.not145 = icmp eq ptr %i.bl, null              ; 2 uses
  br i1 %.not144, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !185 ; 2 uses
  br i1 %.not145, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !185
  %i.bq = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.e ; 2 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !561
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bp, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !561
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !185
  %i.bt = sext i32 %.0 to i64
  %i.bu = getelementptr [16 x i8], ptr %.sroa.17114.1, i64 %i.bt ; 6 uses
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !561
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bs, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !561
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !185
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !185
  %i.bx = getelementptr i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !561
  %.sroa.494.0..sroa_idx = getelementptr i8, ptr %i.bu, i64 24
  store ptr %i.bw, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !561
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !185
  %i.ca = add nsw i32 %.0, 3
  %i.cb = getelementptr i8, ptr %i.bu, i64 32
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !561
  %.sroa.492.0..sroa_idx = getelementptr i8, ptr %i.bu, i64 40
  store ptr %i.bz, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.e ; 2 uses
  store ptr %i.bn, ptr %i.cc, align 8, !tbaa !561
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !561
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.ce = add nsw i32 %.0, 1
  %i.cf = sext i32 %.0 to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.cf ; 2 uses
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !561
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.488.0..sroa_idx, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.t:                                             ; preds = %bb.p
  br i1 %.not145, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !185
  %i.cj = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.e ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.cj, align 8, !tbaa !561
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !561
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !185
  %i.cl = add nsw i32 %.0, 1
  %i.cm = sext i32 %.0 to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %.sroa.17114.1, i64 %i.cm ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.cn, align 8, !tbaa !561
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %3, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.23.0.copyload)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.f

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %_Z9IntersectRK12btDbvtAabbMmS1_.exit, %bb.u, %bb.v, %bb.r, %bb.s, %bb.i, %bb.j
  %.1 = phi i32 [ %i.ad, %bb.j ], [ %i.d, %bb.i ], [ %i.ca, %bb.r ], [ %i.ce, %bb.s ], [ %i.cl, %bb.u ], [ %i.d, %bb.v ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.o ], [ %i.d, %bb.n ], [ %i.d, %bb.m ], [ %i.d, %bb.l ], [ %i.d, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.w:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17114.1)
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit

bb.x:                                             ; preds = %bb.g, %bb.f
  %.sroa.17114.2 = phi ptr [ %.sroa.17114.1, %bb.f ], [ %.sroa.17114.0, %bb.g ]
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17114.2)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit83 unwind label %bb.y

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit83: ; preds = %bb.x
  resume { ptr, i32 } %.pn.pn

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.w, %bb.a
  ret void

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
end_hunk_1
