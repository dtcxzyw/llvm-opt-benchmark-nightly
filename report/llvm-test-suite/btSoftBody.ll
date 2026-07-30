inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody13applyClustersEb:bb.a
  br i1 %i.d, label %.lr.ph188, label %._crit_edge

.lr.ph188:                                        ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 832
  %wide.trip.count203 = zext nneg i32 %i.c to i64
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph186, %.loopexit
  %indvars.iv195 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next196, %.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv195
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !287 ; 8 uses
  %.in = getelementptr inbounds nuw i8, ptr %i.at, i64 %.in.v
  %i.au = load i32, ptr %.in, align 4, !tbaa !4
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.v ; 2 uses
  %i.ax = load float, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !159
  %i.ba = fmul float %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %.v53 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.be = load <2 x float>, ptr %i.aw, align 4, !tbaa !159
  %i.bf = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bh = fmul <2 x float> %i.bg, %i.be
  %i.bi = load <2 x float>, ptr %i.bd, align 4, !tbaa !159 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x float> %i.bj, float %i.bc, i64 1
  %i.bl = fmul <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bm = fmul <2 x float> %i.bg, %i.bk           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !358 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph184, label %.loopexit

.lr.ph184:                                        ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !362
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !109
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 264
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 268
  %wide.trip.count193 = zext nneg i32 %i.bo to i64
  %i.by = extractelement <2 x float> %i.bl, i64 0
  %i.bz = extractelement <2 x float> %i.bm, i64 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph184, %bb.j
  %indvars.iv190 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next191, %bb.j ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv190
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !251 ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bt
  %i.ce = sdiv exact i64 %i.cd, 120
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv190
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !159 ; 3 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !159
  %i.cj = load float, ptr %i.bw, align 8, !tbaa !159
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %sext = shl i64 %i.ce, 32
  %i.cl = ashr exact i64 %sext, 32                ; 2 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %.sroa.11154.3165, i64 %i.cl ; 3 uses
  %i.cn = load <2 x float>, ptr %i.ck, align 4, !tbaa !159 ; 2 uses
  %i.co = load <2 x float>, ptr %i.bx, align 4, !tbaa !159 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ci, i64 1
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.cj, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.bm, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.ct, <2 x float> %i.cw)
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = fmul float %i.by, %i.cz
  %i.db = extractelement <2 x float> %i.cu, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.db, float %i.da)
  %i.dd = fadd <2 x float> %i.bh, %i.cx
  %i.de = fadd float %i.ba, %i.dc
  %i.df = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.dg, %i.dd
  %i.di = fmul float %i.ch, %i.de
  %i.dj = load <2 x float>, ptr %i.cm, align 4, !tbaa !159
  %i.dk = fadd <2 x float> %i.dj, %i.dh
  store <2 x float> %i.dk, ptr %i.cm, align 4, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !159
  %i.dn = fadd float %i.di, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !159
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.10141.1, i64 %i.cl ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !159
  %i.dq = fadd float %i.ch, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !159
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.h
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.preheader, label %bb.h

bb.k:                                             ; preds = %.lr.ph188, %bb.m
  %indvars.iv200 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next201, %bb.m ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10141.1, i64 %indvars.iv200
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !159 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11154.3165, i64 %indvars.iv200 ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !159
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = load ptr, ptr %i.ar, align 8, !tbaa !109
  %i.ea = getelementptr inbounds nuw [120 x i8], ptr %i.dz, i64 %indvars.iv200 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.du, align 4, !tbaa !159
  %i.ed = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.ec
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !tbaa !159
  %i.eh = fadd <2 x float> %i.ef, %i.eg
  store <2 x float> %i.eh, ptr %i.eb, align 4, !tbaa !159
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !159
  %i.ek = fadd float %i.dy, %i.ej
  store float %i.ek, ptr %i.ei, align 4, !tbaa !159
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.k

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i.i104.not = icmp eq ptr %.sroa.10141.1, null
  br i1 %.not.i.i.i104.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10141.1)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %._crit_edge, %._crit_edge.thread
  %.not.i.i.i106.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i106.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.3165)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.n
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN20btAlignedObjectArrayIfED2Ev.exit112:         ; preds = %._crit_edge.thread
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i113.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i113.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176

_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread, %_ZN20btAlignedObjectArrayIfED2Ev.exit112
  %.pn56.pn.pn.pn171 = phi { ptr, i32 } [ %i.am, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  %.sroa.11154.1169 = phi ptr [ %i.g, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %.sroa.11154.3165, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.1169)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116 unwind label %bb.o

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176, %bb.f
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ], [ %i.al, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172 ], [ %.pn56.pn.pn.pn171, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176 ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.o

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn

bb.o:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  tail call void @__clang_call_terminate(ptr %i.en) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !159, !noalias !539 ; 3 uses
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %6 = load float, ptr %4, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = load float, ptr %i.h, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load float, ptr %i.n, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %8 = load <2 x float>, ptr %5, align 4, !tbaa !159, !noalias !539 ; 3 uses
  %9 = load float, ptr %i.d, align 4, !tbaa !159, !noalias !539 ; 3 uses
  %10 = extractelement <2 x float> %8, i64 0      ; 4 uses
  %11 = fneg float %10                            ; 3 uses
  %12 = fneg float %9                             ; 4 uses
  %i.r = insertelement <2 x float> poison, float %i.f, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.c, i64 0 ; 4 uses
  %i.u = fmul <2 x float> %i.s, %i.t
  %13 = fmul float %10, %i.f
  %14 = insertelement <2 x float> poison, float %6, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.b, i64 1 ; 4 uses
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %16, <2 x float> %i.u)
  %18 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x float> %18, float %11, i64 1 ; 3 uses
  %i.v = insertelement <2 x float> poison, float %i.j, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.t
  %20 = insertelement <2 x float> poison, float %7, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %16, <2 x float> %i.x)
  %23 = fmul float %10, %i.j
  %24 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %23)
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.z, %i.t
  %i.ab = fmul float %10, %i.o
  %i.ac = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %16, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %19, <2 x float> %i.ae) ; 3 uses
  %i.ai = insertelement <2 x float> %8, float %12, i64 1 ; 2 uses
  %i.aj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.ak = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1 ; 2 uses
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.am = insertelement <2 x float> poison, float %3, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %2, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %26, align 4, !tbaa !159, !alias.scope !547
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %29 = load float, ptr %i.k, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %30 = load float, ptr %i.g, align 4, !tbaa !159, !noalias !544 ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %30, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %19, <2 x float> %17) ; 3 uses
  %i.at = insertelement <2 x float> poison, float %29, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %19, <2 x float> %22) ; 3 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %6, float %12, float %13)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %i.aw) ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.m, float %12, float %i.ab)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.ay) ; 2 uses
  %31 = fmul <2 x float> %16, %i.av
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %29, float 0.000000e+00, float %24) ; 2 uses
  %32 = insertelement <2 x float> poison, float %11, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.av, %33
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.as, <2 x float> %31)
  %34 = fmul float %i.ba, %11
  %35 = insertelement <2 x float> poison, float %9, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %i.as, <2 x float> %i.bb)
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ah, <2 x float> %i.bc)
  %38 = tail call float @llvm.fmuladd.f32(float %9, float %i.ax, float %34)
  %39 = fmul <2 x float> %i.aj, %i.av
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.as, <2 x float> %39)
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ah, <2 x float> %i.be)
  %i.bf = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.aj, %i.bg
  %i.bi = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.bm, <2 x float> %i.bk)
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> zeroinitializer, <2 x float> %37)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %38)
  %i.bq = fsub <2 x float> zeroinitializer, %i.bd ; 6 uses
  %i.br = fsub <2 x float> %i.an, %40
  %i.bs = fsub <2 x float> zeroinitializer, %i.bn ; 4 uses
  %i.bt = fsub <2 x float> zeroinitializer, %i.bo ; 7 uses
  %i.bu = fsub float %3, %i.bp
  %i.bv = fadd <2 x float> %i.ap, %i.br           ; 6 uses
  %i.bw = fadd float %2, %i.bu                    ; 2 uses
  %i.bx = fneg <2 x float> %i.bs                  ; 3 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %41 = extractelement <2 x float> %i.bv, i64 1   ; 2 uses
  %i.ca = insertelement <2 x float> %i.bv, float %i.bw, i64 0 ; 2 uses
  %i.cb = fneg <2 x float> %i.ca                  ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %42 = fmul float %i.bz, %i.cc
  %i.cd = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.ce = extractelement <2 x float> %i.bs, i64 0
  %i.cf = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.ce, float %42) ; 2 uses
  %43 = extractelement <2 x float> %i.bq, i64 0   ; 2 uses
  %44 = fmul float %43, %i.cg
  %i.ch = extractelement <2 x float> %i.bx, i64 1
  %45 = fmul float %i.cf, %i.ch
  %46 = fmul <2 x float> %i.bv, %i.by
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %46) ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 1
  %47 = extractelement <2 x float> %i.bt, i64 0
  %48 = tail call noundef float @llvm.fmuladd.f32(float %41, float %i.bw, float %45) ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cd, float %48, float %44)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %47, float %i.cj, float %i.ck)
  %i.cm = insertelement <2 x float> poison, float %1, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = fdiv <2 x float> splat (float 1.000000e+00), %i.cn ; 4 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0 ; 5 uses
  %i.cq = extractelement <2 x float> %i.co, i64 1 ; 3 uses
  %i.cr = fmul float %48, %i.cq                   ; 3 uses
  %49 = shufflevector <2 x float> %i.bq, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.cs = fmul <2 x float> %49, %i.cb
  %50 = shufflevector <2 x float> %i.bs, <2 x float> %i.bq, <2 x i32> <i32 1, i32 2>
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %50, <2 x float> %i.cs)
  %52 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ct = fmul <2 x float> %51, %52               ; 4 uses
  %53 = fmul float %i.cg, %i.cq                   ; 2 uses
  %54 = fneg <2 x float> %i.bt
  %55 = shufflevector <2 x float> %i.bt, <2 x float> %54, <2 x i32> <i32 0, i32 3>
  %56 = shufflevector <2 x float> %i.bx, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2>
  %57 = fmul <2 x float> %55, %56
  %58 = shufflevector <2 x float> %i.bv, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3>
  %59 = shufflevector <2 x float> %i.ca, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %60 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %59, <2 x float> %57)
  %61 = fmul <2 x float> %60, %52                 ; 2 uses
  %62 = fmul <2 x float> %i.ci, %52               ; 3 uses
  %63 = fneg float %i.bz
  %64 = fmul float %43, %63
  %65 = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %41, float %64)
  %66 = fmul float %65, %i.cq                     ; 2 uses
  %i.cu = fmul float %53, 0.000000e+00            ; 2 uses
  %i.cv = extractelement <2 x float> %i.ct, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cp, float %i.cu)
  %67 = extractelement <2 x float> %i.ct, i64 1
  %68 = fmul float %i.cp, %53
  %69 = tail call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %68)
  %i.cx = extractelement <2 x float> %62, i64 1   ; 2 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %69)
  %70 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %71 = fmul <2 x float> %70, %61
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> zeroinitializer, <2 x float> %71)
  %73 = insertelement <2 x float> %62, float %66, i64 1 ; 2 uses
  %74 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> zeroinitializer, <2 x float> %72)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.cu)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cp, float %i.cz)
  store float %i.cy, ptr %27, align 4, !tbaa !159, !alias.scope !547
  store <2 x float> %74, ptr %28, align 4, !tbaa !159, !alias.scope !547
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %75, align 4, !tbaa !159, !alias.scope !547
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.da, ptr %76, align 4, !tbaa !159, !alias.scope !547
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %78 = fmul <2 x float> %61, zeroinitializer     ; 3 uses
  %79 = extractelement <2 x float> %78, i64 0
  %80 = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cp, float %79)
  %81 = insertelement <2 x float> poison, float %80, i64 0
  %82 = insertelement <2 x float> %81, float %i.cw, i64 1
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> zeroinitializer, <2 x float> %82)
  %84 = extractelement <2 x float> %78, i64 1
  %85 = tail call float @llvm.fmuladd.f32(float %67, float %i.cp, float %84)
  %86 = tail call noundef float @llvm.fmuladd.f32(float %66, float 0.000000e+00, float %85)
  %87 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> zeroinitializer, <2 x float> %78)
  %88 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %70, <2 x float> %87)
  %89 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %89, ptr %0, align 4, !tbaa !159, !alias.scope !547
  store float %86, ptr %25, align 4, !tbaa !159, !alias.scope !547
  store <2 x float> %88, ptr %77, align 4, !tbaa !159, !alias.scope !547
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.db, align 4, !tbaa !159, !alias.scope !547
  ret void
}

declare void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8eVSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 {
bb.a:
  %cond = icmp eq i32 %0, 0
  %_ZN10btSoftBody12VSolve_LinksEPS_f. = select i1 %cond, ptr @_ZN10btSoftBody12VSolve_LinksEPS_f, ptr null
  ret ptr %_ZN10btSoftBody12VSolve_LinksEPS_f.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8ePSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10btSoftBody11staticSolveEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody12dampClustersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %wide.trip.count55 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %indvars.iv52 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next53, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !287  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !550
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !358  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load float, ptr %i.x, align 8, !tbaa !199
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !159
  %i.ac = load float, ptr %i.r, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ae = load float, ptr %i.q, align 8, !tbaa !159 ; 2 uses
  %i.af = load float, ptr %i.u, align 8, !tbaa !159
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ad, align 4, !tbaa !159 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.s, align 4, !tbaa !159 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.ab, i64 1
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ac, i64 1
  %i.an = fsub <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.t, align 4, !tbaa !159 ; 3 uses
  %i.aq = fneg <2 x float> %i.ao
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ae, i64 1
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.an, <2 x float> %i.at)
  %i.av = extractelement <2 x float> %i.an, i64 1
  %i.aw = fneg float %i.av
  %i.ax = extractelement <2 x float> %i.ap, i64 0
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = extractelement <2 x float> %i.ao, i64 0
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.az, float %i.ay)
  %i.bb = load <2 x float>, ptr %i.p, align 8, !tbaa !159
  %i.bc = fadd <2 x float> %i.bb, %i.au           ; 3 uses
  %i.bd = fadd float %i.ba, %i.af                 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ag, align 8, !tbaa !159 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !159 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh
  %i.bj = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bg, i64 1 ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fcmp ugt float %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fsub <2 x float> %i.bc, %i.be
  %i.bs = fsub float %i.bd, %i.bg
  %i.bt = load float, ptr %i.h, align 8, !tbaa !159 ; 2 uses
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.br, %i.bw
  %i.by = fadd <2 x float> %i.be, %i.bx
  store <2 x float> %i.by, ptr %i.ag, align 8, !tbaa !159
  %i.bz = fadd float %i.bg, %i.bu
  store float %i.bz, ptr %i.bf, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.b
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody11staticSolveEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge9

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %._crit_edge9

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i32 [ %i.h, %._crit_edge ], [ %i.d, %.preheader.lr.ph ] ; 2 uses
  %.068 = phi i32 [ %i.i, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge9:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.h = phi i32 [ %i.f, %.preheader ], [ %i.n, %.lr.ph ]
  %i.i = add nuw nsw i32 %.068, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %._crit_edge9, label %.preheader, !llvm.loop !551

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !212
  %i.m = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10btSoftBody11staticSolveEi, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void %switch.load(ptr noundef nonnull %0, float noundef 1.000000e+00, float noundef 0.000000e+00), !callees !536
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge
}

end_hunk_0
begin_hunk_1_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f:bb.a
  %i.fm = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.en
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !159
  %i.fp = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %i.fl ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.en
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !159 ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ep
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !159 ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ep
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !159 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.ep
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !159
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ep
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !159
  %i.ga = insertelement <2 x float> poison, float %i.fr, i64 0 ; 2 uses
  %i.gb = insertelement <2 x float> %i.ga, float %i.fj, i64 1 ; 2 uses
  %i.gc = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fsub <2 x float> %i.gb, %i.gd           ; 3 uses
  %i.gf = insertelement <2 x float> poison, float %i.fo, i64 0 ; 2 uses
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = fsub <2 x float> %i.gg, %i.gh           ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.fz, i64 0 ; 3 uses
  %i.gk = insertelement <2 x float> %i.gj, float %i.fv, i64 1 ; 2 uses
  %i.gl = insertelement <2 x float> poison, float %i.ft, i64 0 ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fsub <2 x float> %i.gk, %i.gm           ; 3 uses
  %i.go = insertelement <2 x float> poison, float %i.fx, i64 0 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fsub <2 x float> %i.gp, %i.gk           ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gs = fsub <2 x float> %i.gi, %i.ge
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.ex, <2 x float> %i.ge) ; 2 uses
  %i.gu = fsub <2 x float> %i.gr, %i.gn
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.ex, <2 x float> %i.gn)
  %i.gw = fsub <2 x float> %i.gv, %i.gt
  %i.gx = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gy, <2 x float> %i.gt) ; 4 uses
  %i.ha = insertelement <2 x float> %i.gj, float %i.ft, i64 1
  %i.hb = insertelement <2 x float> %i.ga, float %i.fd, i64 1
  %i.hc = fsub <2 x float> %i.ha, %i.hb           ; 2 uses
  %i.hd = insertelement <2 x float> %i.go, float %i.fv, i64 1
  %i.he = insertelement <2 x float> %i.gf, float %i.fj, i64 1
  %i.hf = fsub <2 x float> %i.hd, %i.he
  %i.hg = fsub <2 x float> %i.hf, %i.hc
  %i.hh = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.hh, <2 x float> %i.hc) ; 2 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 0
  %i.hk = extractelement <2 x float> %i.hi, i64 1 ; 2 uses
  %i.hl = fsub float %i.hj, %i.hk
  %i.hm = extractelement <2 x float> %i.ex, i64 1
  %i.hn = tail call noundef float @llvm.fmuladd.f32(float %i.hl, float %i.hm, float %i.hk) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.gz, %i.gz
  %i.ho = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hp = extractelement <2 x float> %i.gz, i64 1 ; 2 uses
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.ho)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hq)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.hr)
  %i.hs = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ht = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hu = fmul float %i.hn, %i.hs
  %i.hv = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.hv, %i.hw
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  store <2 x float> %i.hx, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.eq, align 4, !tbaa !185
  %i.hy = shufflevector <2 x float> %i.gn, <2 x float> %i.ge, <2 x i32> <i32 1, i32 3>
  %i.hz = insertelement <2 x float> %i.gl, float %i.fd, i64 1
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.hh, <2 x float> %i.hz) ; 2 uses
  %i.ib = shufflevector <2 x float> %i.gq, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.ic = insertelement <2 x float> %i.gj, float %i.fr, i64 1
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hh, <2 x float> %i.ic)
  %i.ie = fsub <2 x float> %i.id, %i.ia
  %i.if = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.if, <2 x float> %i.ia) ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fsub float %i.ih, %i.ii
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ej, float %i.ii)
  %i.il = fsub float %i.ik, %4
  ret float %i.il
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(48) %2) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load float, ptr %0, align 4, !tbaa !159  ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !159 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <4 x float>, ptr %i.h, align 4
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.b, align 4, !tbaa !159 ; 3 uses
  %i.m = load float, ptr %i.a, align 4, !tbaa !159, !noalias !586
  %i.n = fmul float %i.l, %i.l
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.o)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.r = load <2 x float>, ptr %i.g, align 4, !tbaa !159, !noalias !586
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.u = fmul <2 x float> %i.r, %i.t              ; 3 uses
  %i.v = extractelement <2 x float> %i.u, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.x = fmul float %i.e, %i.q                    ; 2 uses
  %i.y = insertelement <2 x float> %i.j, float %i.m, i64 1
  %i.z = fmul <2 x float> %i.t, %i.y              ; 4 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0  ; 3 uses
  %i.ac = load <2 x float>, ptr %i.c, align 4, !tbaa !159, !noalias !586
  %i.ad = fmul <2 x float> %i.t, %i.ac            ; 4 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 1 ; 3 uses
  %i.af = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.l, i64 1
  %i.ai = fmul <2 x float> %i.t, %i.ah            ; 3 uses
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7119.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.10121.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.al = fneg float %i.ae
  %i.am = fmul float %i.ab, %i.al
  %i.an = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.ao = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.an, float %i.am)
  %i.aq = fneg float %i.an
  %i.ar = fmul float %i.aa, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.af, float %i.ar)
  %i.at = fmul float %i.w, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ap, float %i.at)
  %i.av = fneg float %i.af
  %i.aw = fmul float %i.ao, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ae, float %i.aw)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.ax, float %i.au) ; 2 uses
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp olt float %i.az, f0x34000000
  br i1 %i.ba, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.bb = shufflevector <2 x float> %i.z, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.bc = phi float [ %i.cx, %.preheader ], [ %i.x, %.preheader.preheader ] ; 4 uses
  %i.bd = phi float [ %i.cz, %.preheader ], [ %i.aa, %.preheader.preheader ]
  %i.be = phi float [ %i.cw, %.preheader ], [ %i.w, %.preheader.preheader ]
  %i.bf = phi float [ %i.dz, %.preheader ], [ %i.v, %.preheader.preheader ]
  %i.bg = phi float [ %i.dc, %.preheader ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi float [ %i.da, %.preheader ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %.024123 = phi i32 [ %i.ee, %.preheader ], [ 0, %.preheader.preheader ]
  %.025122 = phi float [ %i.ea, %.preheader ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %i.bi = phi <2 x float> [ %i.cy, %.preheader ], [ %i.z, %.preheader.preheader ] ; 3 uses
  %i.bj = phi <2 x float> [ %i.db, %.preheader ], [ %i.ad, %.preheader.preheader ] ; 3 uses
  %i.bk = phi <2 x float> [ %i.dl, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 5 uses
  %i.bl = phi <2 x float> [ %i.cv, %.preheader ], [ %i.u, %.preheader.preheader ] ; 4 uses
  %i.bm = phi <2 x float> [ %i.ef, %.preheader ], [ %i.bb, %.preheader.preheader ]
  %i.bn = fneg float %i.bg                        ; 2 uses
  %i.bo = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bp = fneg float %i.bo                        ; 2 uses
  %i.bq = fmul float %i.be, %i.bp
  %i.br = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = fmul float %i.bf, %i.bs
  %i.bu = fneg <2 x float> %i.bm                  ; 2 uses
  %i.bv = fneg float %i.bh
  %i.bw = fmul float %i.bc, %i.bv
  %i.bx = fdiv float 1.000000e+00, %.025122       ; 2 uses
  %i.by = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bw, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bi, <2 x float> %i.bz)
  %i.cb = fmul float %i.bh, %i.bn
  %i.cc = insertelement <2 x float> %i.bk, float %i.bd, i64 0
  %i.cd = insertelement <2 x float> %i.bu, float %i.bp, i64 0
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.ce)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.bo, float %i.cb)
  %i.ch = fmul float %i.bc, %i.bn
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bq, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bj, <2 x float> %i.cj)
  %i.cl = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cn = fmul <2 x float> %i.cm, %i.ca
  %i.co = fmul <2 x float> %i.cm, %i.cf
  %i.cp = fmul float %i.bx, %i.cg
  %i.cq = fmul <2 x float> %i.cm, %i.ck
  %i.cr = fadd <2 x float> %i.bl, %i.co
  %i.cs = fadd float %i.cp, %i.bc
  %i.ct = fadd <2 x float> %i.bi, %i.cq
  %i.cu = fadd <2 x float> %i.bj, %i.cn
  %i.cv = fmul <2 x float> %i.cr, splat (float 5.000000e-01) ; 6 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0 ; 3 uses
  %i.cx = fmul float %i.cs, 5.000000e-01          ; 6 uses
  %i.cy = fmul <2 x float> %i.ct, splat (float 5.000000e-01) ; 5 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1 ; 4 uses
  %i.da = extractelement <2 x float> %i.cy, i64 0 ; 4 uses
  %i.db = fmul <2 x float> %i.cu, splat (float 5.000000e-01) ; 4 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  %i.dd = extractelement <2 x float> %i.db, i64 0 ; 2 uses
  %i.de = fmul <2 x float> %i.bl, %i.bu
  %i.df = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.dh, <2 x float> %i.de)
  %i.dj = fmul <2 x float> %i.cm, %i.di
  %i.dk = fadd <2 x float> %i.bk, %i.dj
  %i.dl = fmul <2 x float> %i.dk, splat (float 5.000000e-01) ; 3 uses
  %i.dm = fneg float %i.dc
  %i.dn = fmul float %i.da, %i.dm
  %i.do = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.dp = extractelement <2 x float> %i.dl, i64 1 ; 4 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.do, float %i.dn)
  %i.dr = fneg float %i.do
  %i.ds = fmul float %i.cz, %i.dr
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dd, float %i.ds)
  %i.du = fmul float %i.cw, %i.dt
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dq, float %i.du)
  %i.dw = fneg float %i.dd
  %i.dx = fmul float %i.dp, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.dc, float %i.dx)
  %i.dz = extractelement <2 x float> %i.cv, i64 1 ; 4 uses
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dy, float %i.dv) ; 2 uses
  %i.eb = fsub float %i.ea, %.025122              ; 2 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = fcmp ule float %i.ec, f0x38D1B717
  %i.ee = add nuw nsw i32 %.024123, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, 16
  %or.cond = select i1 %i.ed, i1 true, i1 %exitcond.not
  %i.ef = shufflevector <2 x float> %i.cy, <2 x float> %i.db, <2 x i32> <i32 1, i32 2>
  br i1 %or.cond, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  %i.eg = fneg float %i.dp
  %i.eh = fneg float %i.da
  %i.ei = fneg float %i.cz
  %i.ej = fmul float %i.cw, %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dp, float %i.ej) ; 3 uses
  %i.el = fmul float %i.cx, %i.eh
  %i.em = fmul float %i.dz, %i.eg
  %i.en = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.el, i64 1
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cy, <2 x float> %i.eo) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ep, %i.ep
  %i.eq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.er = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.eq)
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.es)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.et)
  %i.eu = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ev = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.ep, %i.ew           ; 7 uses
  store <2 x float> %i.ex, ptr %i.ak, align 4
  %3 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %4 = insertelement <2 x float> %3, float %i.cx, i64 0
  %5 = fneg <2 x float> %4
  %i.ey = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  %i.ez = fneg float %i.dz
  %i.fa = extractelement <2 x float> %i.ex, i64 0 ; 3 uses
  %i.fb = fmul float %i.fa, %i.ez
  %i.fc = fneg float %i.fa
  %i.fd = fmul float %i.ek, %i.eu                 ; 5 uses
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i, ptr %.sroa.10121.32..sroa_idx, align 4, !tbaa !185
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.cx, float %i.fb) ; 3 uses
  %6 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ff = insertelement <2 x float> %6, float %i.fd, i64 1 ; 2 uses
  %7 = fmul <2 x float> %i.ff, %5
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.cv, <2 x float> %7) ; 3 uses
  %i.fh = fmul float %i.fe, %i.fe
  %i.fi = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.fh)
  %i.fk = extractelement <2 x float> %i.fg, i64 0 ; 2 uses
  %i.fl = tail call noundef float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fj)
  %sqrt.i.i18.i = tail call noundef float @llvm.sqrt.f32(float %i.fl)
  %i.fm = fdiv float 1.000000e+00, %sqrt.i.i18.i  ; 2 uses
  %i.fn = fmul float %i.fe, %i.fm                 ; 5 uses
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fg, %i.fp           ; 8 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i.i.i20.i = insertelement <2 x float> %i.fr, float %i.fn, i64 1
  %i.fs = insertelement <2 x float> %i.fq, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i20.i, ptr %i.aj, align 4
  store <2 x float> %i.fs, ptr %.sroa.7119.16..sroa_idx, align 4, !tbaa !185
  %i.ft = fneg <2 x float> %i.ff
  %i.fu = fmul <2 x float> %i.fq, %i.ft
  %i.fv = insertelement <2 x float> poison, float %i.fd, i64 0 ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fx = insertelement <2 x float> %6, float %i.fn, i64 0
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fx, <2 x float> %i.fu) ; 4 uses
  %i.fz = fmul float %i.fn, %i.fc
  %i.ga = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ey, float %i.fz) ; 3 uses
  %foldExtExtBinop7 = fmul <2 x float> %i.fy, %i.fy
  %i.gc = extractelement <2 x float> %foldExtExtBinop7, i64 1
  %i.gd = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gc)
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.ge)
  %sqrt.i.i29.i = tail call noundef float @llvm.sqrt.f32(float %i.gf)
  %i.gg = fdiv float 1.000000e+00, %sqrt.i.i29.i  ; 2 uses
  %i.gh = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.fy, %i.gi           ; 5 uses
  %i.gk = fmul float %i.gb, %i.gg                 ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i32.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gk, i64 0
  store <2 x float> %i.gj, ptr %1, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i32.i, ptr %.sroa.4117.0..sroa_idx, align 4, !tbaa !185
  %i.gl = load float, ptr %0, align 4, !tbaa !159, !noalias !589 ; 2 uses
  %i.gm = load float, ptr %i.a, align 4, !tbaa !159, !noalias !589 ; 2 uses
  %i.gn = fmul float %i.ga, %i.gm
  %i.go = extractelement <2 x float> %i.gj, i64 0
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.go, float %i.gn)
  %i.gq = load float, ptr %i.c, align 4, !tbaa !159, !noalias !589 ; 2 uses
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %i.fa, float %i.gp)
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = load <2 x float>, ptr %i.g, align 4, !tbaa !159, !noalias !589 ; 3 uses
  %i.gt = load <2 x float>, ptr %i.b, align 4, !tbaa !159, !noalias !589 ; 3 uses
  %i.gu = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = fmul <2 x float> %i.gu, %i.gt
  %i.gw = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gw, <2 x float> %i.gv)
  %i.gy = load <2 x float>, ptr %i.k, align 4, !tbaa !159, !noalias !589 ; 3 uses
  %i.gz = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gz, <2 x float> %i.gx)
  %i.hb = extractelement <2 x float> %i.gt, i64 1 ; 2 uses
  %i.hc = fmul float %i.fn, %i.hb
  %i.hd = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.he = extractelement <2 x float> %i.gj, i64 1
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.he, float %i.hc)
  %i.hg = extractelement <2 x float> %i.gy, i64 1 ; 2 uses
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.ey, float %i.hf)
  %i.hi = extractelement <2 x float> %i.fq, i64 0
  %i.hj = fmul float %i.hi, %i.hb
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.gk, float %i.hj)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.fd, float %i.hk)
  store float %i.gr, ptr %2, align 4
  store <2 x float> %i.ha, ptr %.sroa.464.0..sroa_idx, align 4
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.665.0..sroa_idx, align 4, !tbaa !185
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hn = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hq = insertelement <2 x float> %i.hp, float %i.gm, i64 0 ; 2 uses
  %i.hr = fmul <2 x float> %i.ho, %i.hq
  %i.hs = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ht = insertelement <2 x float> %i.hs, float %i.gl, i64 0 ; 2 uses
  %i.hu = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hu, <2 x float> %i.hr)
  %i.hw = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hx = insertelement <2 x float> %i.hw, float %i.gq, i64 0 ; 2 uses
  %i.hy = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hy, <2 x float> %i.hv)
  store <2 x float> %i.hz, ptr %i.hm, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.hh, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.1167.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float 0.000000e+00, ptr %.sroa.1167.16..sroa_idx, align 4, !tbaa !185
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ib = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.ib, %i.hq
  %i.id = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.ie, <2 x float> %i.ic)
  %i.ig = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.ig, <2 x float> %i.if)
  store <2 x float> %i.ih, ptr %i.ia, align 4
  %.sroa.1568.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.hl, ptr %.sroa.1568.32..sroa_idx, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %1, align 4, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ij, align 4, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7119.16..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.10121.32..sroa_idx, align 4, !tbaa !159
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ik, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.il, align 4, !tbaa !159
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.im, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.in, align 4, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 0.000000e+00, ptr %i.io, align 4, !tbaa !185
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #25

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody5Joint7PrepareEfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(181) %0, float %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK10btSoftBody4Body8activateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit

_ZNK10btSoftBody4Body8activateEv.exit:            ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !592  ; 2 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNK10btSoftBody4Body8activateEv.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit2

_ZNK10btSoftBody4Body8activateEv.exit2:           ; preds = %_ZNK10btSoftBody4Body8activateEv.exit, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6LJoint7PrepareEfi(ptr nofree noundef nonnull align 8 dereferenceable(216) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !592  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.g, !prof !196

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.i, i64 16, i1 false), !tbaa.struct !198
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !198
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !198
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !198
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !291  ; 2 uses
  %.not5.i = icmp eq ptr %i.o, null
  br i1 %.not5.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.ae, %bb.x, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.bv, %bb.p ], [ %i.fc, %bb.x ], [ %i.gb, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  resume { ptr, i32 } %common.resume.op
end_hunk_1
begin_hunk_2_@_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_:bb.a
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.ba, %i.bc
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bf = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bg, <2 x float> %i.bd)
  %i.bi = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.u, i64 1
  %i.bk = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bl, <2 x float> %i.bh)
  %i.bn = load <2 x float>, ptr %i.ax, align 4, !tbaa !159
  %i.bo = fadd <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %i.ax, align 4, !tbaa !159
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !159
  %i.br = fadd float %i.ar, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !159
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 348 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !365
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !365
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint7PrepareEfi(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !592  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !592  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g, !prof !196

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !198
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !198
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !291  ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.bt, %bb.p ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !293  ; 2 uses
  %.not6.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.w
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.h, %bb.j
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %spec.select.i, %bb.j ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load float, ptr %i.x, align 8, !tbaa !159 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159
  %i.ai = load <2 x float>, ptr %.0.i, align 4, !tbaa !159 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ap = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ah, i64 1
  %i.au = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !159
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !159
  %i.bb = fmul float %i.aa, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.y, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.ae, float %i.bc)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.aw, ptr %i.bg, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !185
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.n, !prof !196

bb.k:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i16 = icmp eq i32 %i.bk, 0
  br i1 %.not.i16, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.m unwind label %bb.p       ; 4 uses

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 16, i1 false), !tbaa.struct !198
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !198
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !198
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !198
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !291 ; 2 uses
  %.not5.i12 = icmp eq ptr %i.br, null
  br i1 %.not5.i12, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

bb.p:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bh, align 8, !tbaa !293 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bv
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.o, %bb.q
  %.0.i13 = phi ptr [ %i.bs, %bb.o ], [ %spec.select.i15, %bb.q ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !159
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bz = load float, ptr %i.by, align 4, !tbaa !159
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !159
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !159
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !159
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !159 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cm = load float, ptr %i.bg, align 8, !tbaa !159 ; 3 uses
  %3 = load <2 x float>, ptr %.0.i13, align 4, !tbaa !159 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.ce, align 4, !tbaa !159 ; 2 uses
  %i.co = load <2 x float>, ptr %i.ch, align 4, !tbaa !159 ; 4 uses
  %i.cp = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %4 = shufflevector <2 x float> %i.co, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %5 = fmul <2 x float> %4, %i.cq
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cu = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cs)
  %6 = shufflevector <2 x float> %i.co, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.cv, <2 x float> %5)
  %i.cx = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cj, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> %i.cw) ; 6 uses
  %8 = insertelement <2 x float> poison, float %i.cj, i64 0
  %.sroa.0.0.vec.insert.i18 = insertelement <2 x float> %8, float %i.cb, i64 1
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.vec.insert.i18, <2 x float> %i.da, <2 x float> %7) ; 3 uses
  %10 = shufflevector <2 x float> %i.db, <2 x float> %9, <2 x i32> <i32 3, i32 0>
  %i.dc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.db, <2 x i32> <i32 3, i32 1>
  store <2 x float> %10, ptr %i.ck, align 8
  store <2 x float> %i.dc, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !185
  %i.dd = load <2 x float>, ptr %i.cl, align 4, !tbaa !159 ; 5 uses
  %i.de = fneg <2 x float> %i.dd
  %i.df = fmul <2 x float> %9, %i.de
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.cm, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.dh, <2 x float> %i.df) ; 4 uses
  %i.dj = fneg float %i.cm
  %i.dk = extractelement <2 x float> %i.db, i64 0
  %i.dl = fmul float %i.dk, %i.dj
  %11 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %i.dm = extractelement <2 x float> %i.dd, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %11, float %i.dm, float %i.dl) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.di, %i.di
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dp = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.do)
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dq)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dr) ; 2 uses
  %i.ds = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.ds, label %bb.r, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.r:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.di, %i.dv
  %i.dx = fmul float %i.dn, %i.dt
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.r
  %.sroa.0.0.i = phi <2 x float> [ %i.dw, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !185
  %foldExtExtBinop77 = fmul <2 x float> %i.db, %i.dd
  %i.dz = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cm, float %11, float %i.dz)
  %i.eb = extractelement <2 x float> %i.db, i64 1
  %i.ec = extractelement <2 x float> %i.dd, i64 1
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.eb, float %i.ea) ; 3 uses
  %i.ee = fcmp olt float %i.ed, -1.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %..i = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eg = select i1 %i.ee, float -1.000000e+00, float %..i
  %i.eh = tail call noundef float @acosf(float noundef %i.eg) #34, !tbaa !4 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.ei, float f0x3E490FDB, float %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ek = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.el = fmul float %.sroa.speculated61, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.en = load float, ptr %i.em, align 4, !tbaa !616
  %i.eo = fdiv float %i.en, %1                    ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eq, %.sroa.0.0.i
  %i.es = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.er, %i.et
  store <2 x float> %i.eu, ptr %i.dy, align 4, !tbaa !159
  %i.ev = fmul float %i.el, %i.eo
  store float %i.ev, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  %i.ew = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.s, label %bb.u, !prof !196

bb.s:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.ey = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i29 = icmp eq i32 %i.ey, 0
  br i1 %.not.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.ez = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !592 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fa, null
  br i1 %.not5.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.w:                                             ; preds = %bb.u
  %i.fc = load ptr, ptr %i.i, align 8, !tbaa !293 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fc, null
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fd
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.v, %bb.w
  %.0.i26 = phi ptr [ %i.fb, %bb.v ], [ %spec.select.i28, %bb.w ] ; 6 uses
  %i.fe = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.x, label %bb.z, !prof !196

bb.x:                                             ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i34 = icmp eq i32 %i.fg, 0
  br i1 %.not.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fh = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !592 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fi, null
  br i1 %.not5.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.ab:                                            ; preds = %bb.z
  %i.fk = load ptr, ptr %i.bh, align 8, !tbaa !293 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fk, null
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fl
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.aa, %bb.ab
  %.0.i31 = phi ptr [ %i.fj, %bb.aa ], [ %spec.select.i33, %bb.ab ] ; 6 uses
  %i.fm = load float, ptr %.0.i26, align 4, !tbaa !159, !noalias !617
  %i.fn = load float, ptr %.0.i31, align 4, !tbaa !159, !noalias !617
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !159, !noalias !617
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !159, !noalias !617
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !159, !noalias !617
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !159, !noalias !617
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gc = load <2 x float>, ptr %i.fo, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.fp, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.ge = fadd <2 x float> %i.gc, %i.gd           ; 5 uses
  %12 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %i.fm, i64 1
  %14 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.fn, i64 1
  %16 = fadd <2 x float> %13, %15                 ; 3 uses
  %i.gf = load <2 x float>, ptr %i.fu, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gg = load <2 x float>, ptr %i.fv, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gi = insertelement <2 x float> %i.gh, float %i.fs, i64 1
  %i.gj = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = insertelement <2 x float> %i.gj, float %i.ft, i64 1
  %i.gl = fadd <2 x float> %i.gi, %i.gk           ; 3 uses
  %i.gm = fadd <2 x float> %i.gf, %i.gg           ; 3 uses
  %i.gn = load <2 x float>, ptr %i.ga, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.go = load <2 x float>, ptr %i.gb, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gq = insertelement <2 x float> %i.gp, float %i.fy, i64 1
  %i.gr = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.fz, i64 1
  %i.gt = fadd <2 x float> %i.gq, %i.gs           ; 3 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 1 ; 2 uses
  %i.gv = fadd <2 x float> %i.gn, %i.go           ; 3 uses
  %i.gw = fneg <2 x float> %i.gv                  ; 2 uses
  %i.gx = fneg float %i.gu
  %i.gy = fneg <2 x float> %i.gt
  %i.gz = fmul <2 x float> %i.gl, %i.gw
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gt, <2 x float> %i.gz) ; 3 uses
  %i.hb = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.hc = fmul float %i.hb, %i.gx
  %i.hd = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.he = extractelement <2 x float> %i.gv, i64 0
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.he, float %i.hc) ; 2 uses
  %i.hg = extractelement <2 x float> %i.ge, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop79 = fmul <2 x float> %i.ge, %shift
  %17 = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.hh = extractelement <2 x float> %16, i64 1   ; 3 uses
  %i.hi = extractelement <2 x float> %i.ha, i64 0
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hi, float %17)
  %i.hk = extractelement <2 x float> %i.ge, i64 1
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hk, float %i.hf, float %i.hj)
  %i.hm = fdiv float 1.000000e+00, %i.hl          ; 4 uses
  %i.hn = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hp = fmul <2 x float> %i.ha, %i.ho           ; 3 uses
  %i.hq = fmul <2 x float> %i.ge, %i.gy
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.gv, <2 x float> %i.hq)
  %i.hs = fmul <2 x float> %i.hr, %i.ho           ; 3 uses
  %i.ht = fneg <2 x float> %i.gm
  %i.hu = fmul <2 x float> %16, %i.ht
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gl, <2 x float> %i.hu)
  %i.hw = fmul <2 x float> %i.hv, %i.ho           ; 3 uses
  %i.hx = fmul float %i.hf, %i.hm                 ; 2 uses
  %i.hy = extractelement <2 x float> %i.gw, i64 0
  %i.hz = fmul float %i.hh, %i.hy
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.gu, float %i.hz)
  %i.ib = fmul float %i.ia, %i.hm                 ; 2 uses
  %i.ic = fneg float %i.hd
  %i.id = fmul float %i.hg, %i.ic
  %i.ie = tail call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.hb, float %i.id)
  %i.if = fmul float %i.ie, %i.hm                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ih = extractelement <2 x float> %i.hp, i64 0
  store float %i.ih, ptr %i.ig, align 4
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ii = extractelement <2 x float> %i.hs, i64 0
  store float %i.ii, ptr %.sroa.4.0..sroa_idx50, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ij = extractelement <2 x float> %i.hw, i64 0
  store float %i.ij, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !185
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.il = shufflevector <2 x float> %i.hp, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.il, ptr %i.ik, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.im = extractelement <2 x float> %i.hw, i64 1
  store float %i.im, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 8, !tbaa !185
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.hx, ptr %i.in, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %i.ib, ptr %.sroa.14.32..sroa_idx, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.if, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8, !tbaa !185
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ip = load float, ptr %i.io, align 8, !tbaa !308 ; 5 uses
  %i.iq = fcmp ogt float %i.ip, 0.000000e+00
  %.pre = load float, ptr %i.dy, align 4, !tbaa !159 ; 3 uses
  %.pre64 = load float, ptr %i.ej, align 8, !tbaa !159 ; 3 uses
  %.pre65 = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159 ; 3 uses
  br i1 %i.iq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35
  %i.ir = fmul float %i.ip, %.pre                 ; 2 uses
  %i.is = fmul float %i.ip, %.pre64               ; 2 uses
  %i.it = fmul float %i.ip, %.pre65               ; 2 uses
  %i.iu = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.iv, %i.hs
  %i.ix = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.iy, <2 x float> %i.iw)
  %i.ja = insertelement <2 x float> poison, float %i.it, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.jb, <2 x float> %i.iz)
  %i.jd = fmul float %i.is, %i.ib
  %i.je = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.ir, float %i.jd)
  %i.jf = tail call noundef float @llvm.fmuladd.f32(float %i.if, float %i.it, float %i.je)
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jf, i64 0
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.jc, ptr %i.jg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i43, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %i.jh = fsub float 1.000000e+00, %i.ip          ; 3 uses
  %i.ji = fmul float %i.jh, %.pre                 ; 2 uses
  store float %i.ji, ptr %i.dy, align 4, !tbaa !159
  %i.jj = fmul float %i.jh, %.pre64               ; 2 uses
  store float %i.jj, ptr %i.ej, align 8, !tbaa !159
  %i.jk = fmul float %i.jh, %.pre65               ; 2 uses
  store float %i.jk, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35
  %i.jl = phi float [ %i.jk, %bb.ac ], [ %.pre65, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.jm = phi float [ %i.jj, %bb.ac ], [ %.pre64, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.jn = phi float [ %i.ji, %bb.ac ], [ %.pre, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.jo = sitofp i32 %2 to float
  %i.jp = fdiv float 1.000000e+00, %i.jo          ; 3 uses
  %i.jq = fmul float %i.jp, %i.jn
  store float %i.jq, ptr %i.dy, align 4, !tbaa !159
  %i.jr = fmul float %i.jp, %i.jm
  store float %i.jr, ptr %i.ej, align 8, !tbaa !159
  %i.js = fmul float %i.jp, %i.jl
  store float %i.js, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(224) %0, float %1, float noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !592  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !293  ; 3 uses
  %.not2.i = icmp eq ptr %i.e, null
  br i1 %.not2.i, label %_ZNK10btSoftBody4Body15angularVelocityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %.sroa.0.0.copyload6.i = load <2 x float>, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %.sroa.5.0.copyload8.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i, align 8, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit

_ZNK10btSoftBody4Body15angularVelocityEv.exit:    ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload6.i, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.5.0.copyload8.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592  ; 3 uses
  %.not.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body15angularVelocityEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %.sroa.0.0.copyload.i3 = load <2 x float>, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %.sroa.5.0.copyload.i5 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i4, align 4, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body15angularVelocityEv.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !293  ; 3 uses
  %.not2.i10 = icmp eq ptr %i.k, null
  br i1 %.not2.i10, label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %.sroa.0.0.copyload6.i11 = load <2 x float>, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx7.i12 = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  %.sroa.5.0.copyload8.i13 = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i12, align 8, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14

_ZNK10btSoftBody4Body15angularVelocityEv.exit14:  ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i6 = phi <2 x float> [ %.sroa.0.0.copyload.i3, %bb.e ], [ %.sroa.0.0.copyload6.i11, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %.sroa.5.0.i7 = phi <2 x float> [ %.sroa.5.0.copyload.i5, %bb.e ], [ %.sroa.5.0.copyload8.i13, %bb.g ], [ zeroinitializer, %bb.f ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.i, %.sroa.0.0.i6
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop77 = fsub <2 x float> %.sroa.0.0.i, %.sroa.0.0.i6
  %i.n = extractelement <2 x float> %foldExtExtBinop77, i64 1 ; 2 uses
  %foldExtExtBinop79 = fsub <2 x float> %.sroa.5.0.i, %.sroa.5.0.i7
  %i.o = extractelement <2 x float> %foldExtExtBinop79, i64 0 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fmul float %i.n, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.m, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !159
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.w, float %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !326  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef float %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %0, float noundef %i.x) ; 3 uses
  %i.ae = load float, ptr %i.p, align 8, !tbaa !159
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = load float, ptr %i.r, align 4, !tbaa !159
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = load float, ptr %i.v, align 8, !tbaa !159
  %i.aj = fmul float %i.ad, %i.ai
  %i.ak = fsub float %i.m, %i.af
  %i.al = fsub float %i.n, %i.ah
  %i.am = fsub float %i.o, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = load i8, ptr %i.an, align 8
  %i.aq = and i8 %i.ap, -4
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load float, ptr %i.au, align 8, !tbaa !159 ; 3 uses
  %i.aw = fmul float %i.ak, %i.av
  %i.ax = fmul float %i.al, %i.av
  %i.ay = fmul float %i.am, %i.av
  %i.az = load float, ptr %i.at, align 4, !tbaa !159
  %i.ba = fadd float %i.az, %i.aw                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !159
  %i.bd = fadd float %i.ax, %i.bc                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !159
  %i.bg = fadd float %i.ay, %i.bf                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !159
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !159
end_hunk_2
