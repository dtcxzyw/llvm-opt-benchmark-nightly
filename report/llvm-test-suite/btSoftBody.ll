inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody15RayFromToCaster7ProcessEPK10btDbvtNode:bb.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.q, ptr %i.o, align 8, !tbaa !479
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.u, align 8, !tbaa !482
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !483
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !483
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %6) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !159  ; 2 uses
  %i.b = load float, ptr %3, align 4, !tbaa !159  ; 4 uses
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !159 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !159 ; 4 uses
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !159 ; 4 uses
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = load float, ptr %5, align 4, !tbaa !159  ; 2 uses
  %i.o = fsub float %i.n, %i.b                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !159 ; 2 uses
  %i.r = fsub float %i.q, %i.g                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !159 ; 2 uses
  %i.u = fsub float %i.t, %i.l                    ; 2 uses
  %i.v = fneg float %i.r
  %i.w = fmul float %i.m, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.h, float %i.u, float %i.w) ; 6 uses
  %i.y = fneg float %i.u
  %i.z = fmul float %i.c, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.z) ; 6 uses
  %i.ab = fneg float %i.o
  %i.ac = fmul float %i.h, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.r, float %i.ac) ; 6 uses
  %i.ae = load float, ptr %2, align 4, !tbaa !159 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ah = fmul float %i.ag, %i.aa
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.x, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !159 ; 2 uses
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ad, float %i.ai) ; 2 uses
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp olt float %i.am, f0x34000000
  br i1 %i.an, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = fmul float %i.g, %i.aa
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.b, float %i.x, float %i.ao)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.ad, float %i.ap)
  %i.ar = load float, ptr %0, align 4, !tbaa !159 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !159 ; 2 uses
  %i.au = fmul float %i.aa, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.x, float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !159 ; 2 uses
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ad, float %i.av)
  %i.az = fsub float %i.ay, %i.aq
  %i.ba = fneg float %i.az
  %i.bb = fdiv float %i.ba, %i.al                 ; 6 uses
  %i.bc = fcmp ogt float %i.bb, f0x35A00000
  %i.bd = fcmp olt float %i.bb, %6
  %or.cond = and i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.be = fmul float %i.ae, %i.bb
  %i.bf = fmul float %i.ag, %i.bb
  %i.bg = fmul float %i.ak, %i.bb
  %i.bh = fadd float %i.ar, %i.be                 ; 3 uses
  %i.bi = fadd float %i.at, %i.bf                 ; 3 uses
  %i.bj = fadd float %i.ax, %i.bg                 ; 3 uses
  %i.bk = fsub float %i.b, %i.bh                  ; 4 uses
  %i.bl = fsub float %i.g, %i.bi                  ; 4 uses
  %i.bm = fsub float %i.l, %i.bj                  ; 4 uses
  %i.bn = fsub float %i.a, %i.bh                  ; 4 uses
  %i.bo = fsub float %i.e, %i.bi                  ; 4 uses
  %i.bp = fsub float %i.j, %i.bj                  ; 4 uses
  %i.bq = fneg float %i.bo
  %i.br = fmul float %i.bm, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bp, float %i.br)
  %i.bt = fneg float %i.bp
  %i.bu = fmul float %i.bk, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bu)
  %i.bw = fneg float %i.bn
  %i.bx = fmul float %i.bl, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bo, float %i.bx)
  %i.bz = fmul float %i.aa, %i.bv
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.x, float %i.bs, float %i.bz)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.by, float %i.ca)
  %i.cc = fcmp ogt float %i.cb, f0xB5A00000
  br i1 %i.cc, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.cd = fsub float %i.n, %i.bh                  ; 4 uses
  %i.ce = fsub float %i.q, %i.bi                  ; 4 uses
  %i.cf = fsub float %i.t, %i.bj                  ; 4 uses
  %i.cg = fneg float %i.ce
  %i.ch = fmul float %i.bp, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.cf, float %i.ch)
  %i.cj = fneg float %i.cf
  %i.ck = fmul float %i.bn, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cd, float %i.ck)
  %i.cm = fneg float %i.cd
  %i.cn = fmul float %i.bo, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ce, float %i.cn)
  %i.cp = fmul float %i.aa, %i.cl
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ci, float %i.cp)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.co, float %i.cq)
  %i.cs = fcmp ogt float %i.cr, f0xB5A00000
  br i1 %i.cs, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.ct = fneg float %i.bl
  %i.cu = fmul float %i.cf, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bm, float %i.cu)
  %i.cw = fneg float %i.bm
  %i.cx = fmul float %i.cd, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.bk, float %i.cx)
  %i.cz = fneg float %i.bk
  %i.da = fmul float %i.ce, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bl, float %i.da)
  %i.dc = fmul float %i.aa, %i.cy
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.x, float %i.cv, float %i.dc)
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.db, float %i.dd)
  %i.df = fcmp ogt float %i.de, f0xB5A00000
  br i1 %i.df, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.e, %bb.c, %bb.d
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge.thread, %bb.e
  %.3 = phi float [ %i.bb, %bb.e ], [ -1.000000e+00, %.critedge.thread ], [ -1.000000e+00, %bb.a ]
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
  %foldExtExtBinop188 = fmul <2 x float> %i.j, %i.j
  %i.k = extractelement <2 x float> %foldExtExtBinop188, i64 1
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
  %.sroa.1774.0 = phi ptr [ %.sroa.1774.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.h, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 17 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 8 uses
  %.sroa.3.0 = phi i32 [ %.sroa.3.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 11 uses
  %.024 = phi i32 [ %.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 126, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 6 uses
  %.0 = phi i32 [ %.1, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 1, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 3 uses
  %.sroa.1774.0185 = ptrtoaddr ptr %.sroa.1774.0 to i64
  %i.af = add nsw i32 %.0, -1                     ; 6 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.1774.0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !561 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load <2 x float>, ptr %i.ai, align 4    ; 2 uses
  %i.al = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.am = select <2 x i1> %i.z, <2 x float> %i.ak, <2 x float> %i.al
  %i.an = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = fmul <2 x float> %i.v, %i.ao            ; 3 uses
  %i.aq = select <2 x i1> %i.z, <2 x float> %i.al, <2 x float> %i.ak
  %i.ar = fsub <2 x float> %i.aq, %i.an
  %i.as = fmul <2 x float> %i.v, %i.ar            ; 3 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fcmp ogt <2 x float> %i.ap, %i.at       ; 2 uses
  %i.av = extractelement <2 x i1> %i.au, i64 0
  %i.aw = extractelement <2 x i1> %i.au, i64 1
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.15.16.copyload = load float, ptr %.sroa.15.16..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.ax = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %i.ax
  %i.ba = select i1 %i.az, float %i.ay, float %i.ax ; 3 uses
  %i.bb = extractelement <2 x float> %i.as, i64 0 ; 2 uses
  %i.bc = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  %i.bd = fcmp olt float %i.bc, %i.bb
  %.052.i = select i1 %i.bd, float %i.bc, float %i.bb ; 3 uses
  %.sroa.speculated156 = select i1 %i.aa, float %.sroa.8.0.copyload, float %.sroa.15.16.copyload
  %i.be = load float, ptr %i.c, align 4, !tbaa !159 ; 2 uses
  %i.bf = fsub float %.sroa.speculated156, %i.be
  %i.bg = fmul float %i.y, %i.bf                  ; 3 uses
  %.sroa.speculated = select i1 %i.aa, float %.sroa.15.16.copyload, float %.sroa.8.0.copyload
  %i.bh = fsub float %.sroa.speculated, %i.be
  %i.bi = fmul float %i.y, %i.bh                  ; 3 uses
  %i.bj = fcmp ogt float %i.ba, %i.bi
  %i.bk = fcmp ogt float %i.bg, %.052.i
  %or.cond60.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.bl = fcmp ogt float %i.bg, %i.ba
  %i.bm = select i1 %i.bl, float %i.bg, float %i.ba
  %i.bn = fcmp olt float %i.bi, %.052.i
  %.1.i = select i1 %i.bn, float %i.bi, float %.052.i
  %i.bo = fcmp olt float %i.bm, %i.ae
  %i.bp = fcmp ogt float %.1.i, 0.000000e+00
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.d, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !184
  %.not130 = icmp eq ptr %i.bs, null
  br i1 %.not130, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = icmp sgt i32 %i.af, %.024
  br i1 %i.bt, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bu = shl nsw i32 %.sroa.3.0, 1               ; 7 uses
  %i.bv = icmp sgt i32 %i.bu, %.sroa.3.0
  br i1 %i.bv, label %bb.g, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62

bb.g:                                             ; preds = %bb.f
  %i.bw = icmp slt i32 %.sroa.12.0, %i.bu
  br i1 %i.bw, label %4, label %.lr.ph.i41

4:                                                ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.sroa.3.0, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %4
  %5 = sext i32 %i.bu to i64
  %6 = shl nsw i64 %5, 3
  %i.bx = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %6, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i unwind label %bb.j

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %bb.h, %4
  %.0.i.i.i = phi ptr [ null, %4 ], [ %i.bx, %bb.h ] ; 8 uses
  %wide.trip.count.i.i.i52 = zext i32 %.sroa.3.0 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.3.0, 4
  %.0.i.i.i184 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.by = sub i64 %.0.i.i.i184, %.sroa.1774.0185
  %diff.check = icmp ult i64 %i.by, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i52, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !561
  %wide.load186 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !561
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x ptr> %wide.load, ptr %i.bz, align 8, !tbaa !561
  store <2 x ptr> %wide.load186, ptr %i.cc, align 8, !tbaa !561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i52
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, %middle.block
  %indvars.iv.i.i.i53.ph = phi i64 [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i52, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i53.prol = phi i64 [ %indvars.iv.next.i.i.i54.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i53.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i53.prol
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %indvars.iv.i.i.i53.prol
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !561
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.prol = add nuw nsw i64 %indvars.iv.i.i.i53.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !563

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i53.unr = phi i64 [ %indvars.iv.i.i.i53.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i54.prol, %scalar.ph.prol ]
  %i.ch = sub nsw i64 %indvars.iv.i.i.i53.ph, %wide.trip.count.i.i.i52
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i53 = phi i64 [ %indvars.iv.next.i.i.i54.3, %scalar.ph ], [ %indvars.iv.i.i.i53.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i53
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %indvars.iv.i.i.i53
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !561
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i53, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i54
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %indvars.iv.next.i.i.i54
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !561
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.1 = add nuw nsw i64 %indvars.iv.i.i.i53, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i54.1
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %indvars.iv.next.i.i.i54.1
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !561
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.2 = add nuw nsw i64 %indvars.iv.i.i.i53, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i54.2
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1774.0, i64 %indvars.iv.next.i.i.i54.2
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !561
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !561
  %indvars.iv.next.i.i.i54.3 = add nuw nsw i64 %indvars.iv.i.i.i53, 4 ; 2 uses
  %exitcond.not.i.i.i55.3 = icmp eq i64 %indvars.iv.next.i.i.i54.3, %wide.trip.count.i.i.i52
  br i1 %exitcond.not.i.i.i55.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit, label %scalar.ph, !llvm.loop !564

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1774.0)
          to label %.lr.ph.i41 unwind label %bb.j

.lr.ph.i41:                                       ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit, %bb.g
  %.sroa.1774.6 = phi ptr [ %.sroa.1774.0, %bb.g ], [ %.0.i.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit ] ; 2 uses
  %.sroa.12.5 = phi i32 [ %.sroa.12.0, %bb.g ], [ %i.bu, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit ]
  %i.cv = sext i32 %.sroa.3.0 to i64              ; 2 uses
  %wide.trip.count.i = sext i32 %i.bu to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %scevgep = getelementptr i8, ptr %.sroa.1774.6, i64 %i.cw
  %i.cx = sub nsw i64 %wide.trip.count.i, %i.cv
  %7 = shl nsw i64 %i.cx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %7, i1 false), !tbaa !561
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62: ; preds = %.lr.ph.i41, %bb.f
  %.sroa.1774.7 = phi ptr [ %.sroa.1774.0, %bb.f ], [ %.sroa.1774.6, %.lr.ph.i41 ]
  %.sroa.12.6 = phi i32 [ %.sroa.12.0, %bb.f ], [ %.sroa.12.5, %.lr.ph.i41 ]
  %i.cy = add nsw i32 %i.bu, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i47.loopexit, %bb.h
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62, %bb.e
  %.sroa.1774.1 = phi ptr [ %.sroa.1774.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62 ], [ %.sroa.1774.0, %bb.e ] ; 3 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62 ], [ %.sroa.12.0, %bb.e ]
  %.sroa.3.1 = phi i32 [ %i.bu, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62 ], [ %.sroa.3.0, %bb.e ]
  %.125 = phi i32 [ %i.cy, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit62 ], [ %.024, %bb.e ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !184
  %i.dd = getelementptr inbounds [8 x i8], ptr %.sroa.1774.1, i64 %i.ag
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !561
  %i.de = load ptr, ptr %i.br, align 8, !tbaa !184
  %i.df = add nsw i32 %.0, 1
  %i.dg = sext i32 %.0 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %.sroa.1774.1, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !561
  br label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.di = load ptr, ptr %3, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ai)
          to label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread unwind label %bb.i

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %.sroa.1774.2 = phi ptr [ %.sroa.1774.1, %bb.k ], [ %.sroa.1774.0, %bb.l ], [ %.sroa.1774.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.1774.0, %bb.b ], [ %.sroa.1774.0, %bb.c ] ; 2 uses
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %bb.k ], [ %.sroa.12.0, %bb.l ], [ %.sroa.12.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.12.0, %bb.b ], [ %.sroa.12.0, %bb.c ]
  %.sroa.3.2 = phi i32 [ %.sroa.3.1, %bb.k ], [ %.sroa.3.0, %bb.l ], [ %.sroa.3.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.3.0, %bb.b ], [ %.sroa.3.0, %bb.c ]
  %.2 = phi i32 [ %.125, %bb.k ], [ %.024, %bb.l ], [ %.024, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.024, %bb.b ], [ %.024, %bb.c ]
  %.1 = phi i32 [ %i.df, %bb.k ], [ %i.af, %bb.l ], [ %i.af, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.af, %bb.b ], [ %i.af, %bb.c ] ; 2 uses
  %.not34 = icmp eq i32 %.1, 0
  br i1 %.not34, label %bb.m, label %bb.b

bb.m:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1774.2)
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.n:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.da, %bb.j ], [ %i.cz, %bb.i ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1774.0)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit67 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit67: ; preds = %bb.n
  resume { ptr, i32 } %.pn

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.m, %bb.a
  ret void

bb.o:                                             ; preds = %bb.n
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  tail call void @__clang_call_terminate(ptr %i.dm) #35
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
  %i.h = select i1 %.not, ptr %i.g, ptr %i.f      ; 13 uses
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
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %1, ptr %4, align 8, !tbaa !568
  %i.bc = load float, ptr %i.h, align 4, !tbaa !159
  %i.bd = load float, ptr %5, align 4, !tbaa !159 ; 3 uses
  %i.be = load float, ptr %i.bb, align 4, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !159 ; 3 uses
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = call float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bh)
  %i.bj = load float, ptr %i.ab, align 4, !tbaa !159
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !159 ; 3 uses
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bl, float %i.bi) ; 3 uses
  %i.bn = load float, ptr %i.z, align 4, !tbaa !159
  %i.bo = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bp = fmul float %i.bg, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.bn, float %i.bd, float %i.bp)
  %i.br = load float, ptr %i.ac, align 4, !tbaa !159
  %i.bs = call noundef float @llvm.fmuladd.f32(float %i.br, float %i.bl, float %i.bq) ; 3 uses
  %i.bt = load float, ptr %i.aa, align 4, !tbaa !159
  %i.bu = load float, ptr %i.az, align 4, !tbaa !159
  %i.bv = fmul float %i.bg, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bt, float %i.bd, float %i.bv)
  %i.bx = load float, ptr %i.ad, align 4, !tbaa !159
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bl, float %i.bw) ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bm, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.bs, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.bz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !184
  %i.ca = fmul float %i.ax, %i.bm
  %i.cb = fmul float %i.ax, %i.bs
  %i.cc = fmul float %i.ax, %i.by
  %i.cd = load float, ptr %2, align 4, !tbaa !159
  %i.ce = fsub float %i.cd, %i.ca
  %i.cf = load float, ptr %i.p, align 4, !tbaa !159
  %i.cg = fsub float %i.cf, %i.cb
  %i.ch = load float, ptr %i.u, align 4, !tbaa !159
  %i.ci = fsub float %i.ch, %i.cc
  %i.cj = fmul float %i.bs, %i.cg
  %i.ck = call float @llvm.fmuladd.f32(float %i.bm, float %i.ce, float %i.cj)
  %i.cl = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.ci, float %i.ck)
  %i.cm = fneg float %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.cm, ptr %i.cn, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret i1 %i.ay
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE:bb.a
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !561
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !561
  %indvars.iv.next.i.i.i61.1 = add nuw nsw i64 %indvars.iv.i.i.i60, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i61.1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !561
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !561
  %indvars.iv.next.i.i.i61.2 = add nuw nsw i64 %indvars.iv.i.i.i60, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i61.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61.2
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !561
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !561
  %indvars.iv.next.i.i.i61.3 = add nuw nsw i64 %indvars.iv.i.i.i60, 4 ; 2 uses
  %exitcond.not.i.i.i62.3 = icmp eq i64 %indvars.iv.next.i.i.i61.3, %wide.trip.count.i.i.i59
  br i1 %exitcond.not.i.i.i62.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, label %scalar.ph, !llvm.loop !668

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63
  %.pre-phi = phi i64 [ %.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %wide.trip.count.i.i.i59, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ]
  %i.cm = phi ptr [ %i.bf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %i.bn, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ] ; 2 uses
  %.sroa.23.7 = phi i32 [ %.sroa.23.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %i.bk, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ]
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

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69, %bb.l, %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ct = phi ptr [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %i.b, %bb.l ], [ %i.b, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.3.1 = phi i32 [ %i.cp, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %i.d, %bb.l ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %.sroa.23.0, %bb.l ], [ %.sroa.23.0, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %.sroa.23.0, %bb.f ], [ %.sroa.23.0, %bb.e ], [ %.sroa.23.0, %bb.d ], [ %.sroa.23.0, %bb.c ], [ %.sroa.23.0, %bb.b ]
  %i.cu = icmp sgt i32 %.sroa.3.1, 0
  br i1 %i.cu, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, %bb.k, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29, %bb.j, %bb.l
  %i.cv = phi ptr [ %i.bf, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ], [ %i.bf, %bb.k ], [ %i.b, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29 ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit74 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit74: ; preds = %bb.m
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !182
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !672
  call void @_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr %1, ptr %i.bb, align 8, !tbaa !555
  store ptr %0, ptr %i.bc, align 8, !tbaa !555
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !182
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
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !561
  br label %bb.b

bb.b:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit
  %.sroa.3.0 = phi i32 [ 128, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.3.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 5 uses
  %.sroa.12.0 = phi i32 [ 128, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.12.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 3 uses
  %.sroa.17116.0 = phi ptr [ %i.c, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.sroa.17116.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 7 uses
  %.052 = phi i32 [ 124, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.153, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 9 uses
  %i.d = add nsw i32 %.0, -1                      ; 10 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %.sroa.17116.0, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !561 ; 14 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !561 ; 13 uses
  %i.g = icmp sgt i32 %i.d, %.052
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = shl nsw i32 %.sroa.3.0, 1                ; 6 uses
  %i.i = icmp sgt i32 %i.h, %.sroa.3.0
  %i.j = icmp slt i32 %.sroa.12.0, %i.h
  %or.cond162 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond162, label %4, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79

4:                                                ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.sroa.3.0, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %4
  %i.k = sext i32 %i.h to i64
  %i.l = shl nsw i64 %i.k, 4
  %i.m = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i unwind label %bb.g

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i: ; preds = %bb.d, %4
  %.0.i.i.i = phi ptr [ null, %4 ], [ %i.m, %bb.d ] ; 3 uses
  %wide.trip.count.i.i.i73 = zext nneg i32 %.sroa.3.0 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i
  %indvars.iv.i.i.i74.a = phi i64 [ 0, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i ], [ %indvars.iv.next.i.i.i75.1.a, %bb.e ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i74.a
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.17116.0, i64 %indvars.iv.i.i.i74.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !673
  %indvars.iv.next.i.i.i75 = or disjoint i64 %indvars.iv.i.i.i74.a, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i75
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.17116.0, i64 %indvars.iv.next.i.i.i75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !673
  %indvars.iv.next.i.i.i75.1.a = add nuw nsw i64 %indvars.iv.i.i.i74.a, 2 ; 2 uses
  %exitcond.not.i.i.i76.1 = icmp eq i64 %indvars.iv.next.i.i.i75.1.a, %wide.trip.count.i.i.i73
  br i1 %exitcond.not.i.i.i76.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit, label %bb.e

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit: ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17116.0)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79 unwind label %bb.g

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79: ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit, %bb.c
  %.sroa.12.5 = phi i32 [ %.sroa.12.0, %bb.c ], [ %i.h, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit ]
  %.sroa.17116.6 = phi ptr [ %.sroa.17116.0, %bb.c ], [ %.0.i.i.i, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i68.loopexit ]
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

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79, %bb.b
  %.sroa.3.1 = phi i32 [ %i.h, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79 ], [ %.sroa.3.0, %bb.b ]
  %.sroa.12.1 = phi i32 [ %.sroa.12.5, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79 ], [ %.sroa.12.0, %bb.b ]
  %.sroa.17116.1 = phi ptr [ %.sroa.17116.6, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79 ], [ %.sroa.17116.0, %bb.b ] ; 11 uses
  %.153 = phi i32 [ %i.r, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit79 ], [ %.052, %bb.b ]
  %i.u = icmp eq ptr %.sroa.0.0.copyload, %.sroa.23.0.copyload
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184
  %.not149 = icmp eq ptr %i.w, null
  br i1 %.not149, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !184  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.e ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !561
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !561
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !184 ; 2 uses
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr [16 x i8], ptr %.sroa.17116.1, i64 %i.ab ; 3 uses
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !561
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.aa, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !561
  %i.ad = add nsw i32 %.0, 2
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %i.af = load <2 x ptr>, ptr %i.x, align 8, !tbaa !184
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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !184
  %.not146 = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 48 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !184
  %.not147 = icmp eq ptr %i.bl, null              ; 2 uses
  br i1 %.not146, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !184 ; 2 uses
  br i1 %.not147, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !184
  %i.bq = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.e ; 2 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !561
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bp, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !561
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !184
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !184
  %i.bt = sext i32 %.0 to i64
  %i.bu = getelementptr [16 x i8], ptr %.sroa.17116.1, i64 %i.bt ; 6 uses
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !561
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bs, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !561
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !184
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !184
  %i.bx = getelementptr i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !561
  %.sroa.496.0..sroa_idx = getelementptr i8, ptr %i.bu, i64 24
  store ptr %i.bw, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !561
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !184
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !184
  %i.ca = add nsw i32 %.0, 3
  %i.cb = getelementptr i8, ptr %i.bu, i64 32
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !561
  %.sroa.494.0..sroa_idx = getelementptr i8, ptr %i.bu, i64 40
  store ptr %i.bz, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.e ; 2 uses
  store ptr %i.bn, ptr %i.cc, align 8, !tbaa !561
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !561
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !184
  %i.ce = add nsw i32 %.0, 1
  %i.cf = sext i32 %.0 to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.cf ; 2 uses
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !561
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !561
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.t:                                             ; preds = %bb.p
  br i1 %.not147, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !184
  %i.cj = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.e ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.cj, align 8, !tbaa !561
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %.sroa.488.0..sroa_idx, align 8, !tbaa !561
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !184
  %i.cl = add nsw i32 %.0, 1
  %i.cm = sext i32 %.0 to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %.sroa.17116.1, i64 %i.cm ; 2 uses
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
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17116.1)
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit

bb.x:                                             ; preds = %bb.g, %bb.f
  %.sroa.17116.2 = phi ptr [ %.sroa.17116.1, %bb.f ], [ %.sroa.17116.0, %bb.g ]
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.17116.2)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit85 unwind label %bb.y

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit85: ; preds = %bb.x
  resume { ptr, i32 } %.pn.pn

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.w, %bb.a
  ret void

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
end_hunk_1
