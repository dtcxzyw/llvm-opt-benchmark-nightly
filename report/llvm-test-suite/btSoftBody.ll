Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody13applyClustersEb:bb.a

.preheader:                                       ; preds = %.loopexit, %.preheader180, %.loopexit181
  br i1 %i.d, label %.lr.ph188, label %._crit_edge

.lr.ph188:                                        ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 832
  %wide.trip.count203 = zext nneg i32 %i.c to i64
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph186, %.loopexit
  %indvars.iv195 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next196, %.loopexit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv195
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !226 ; 8 uses
  %.in = getelementptr inbounds nuw i8, ptr %i.as, i64 %.in.v
  %i.at = load i32, ptr %.in, align 4, !tbaa !7
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.v ; 2 uses
  %i.aw = load float, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !159
  %i.az = fmul float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %.v53 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load <2 x float>, ptr %i.av, align 4, !tbaa !159
  %i.be = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !159 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bb, i64 1
  %i.bk = fmul <2 x float> %i.bf, %i.bh           ; 2 uses
  %i.bl = fmul <2 x float> %i.bf, %i.bj           ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !245 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph184, label %.loopexit

.lr.ph184:                                        ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !246
  %i.br = load ptr, ptr %i.ap, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 268
  %wide.trip.count193 = zext nneg i32 %i.bn to i64
  %i.bx = extractelement <2 x float> %i.bk, i64 0
  %i.by = extractelement <2 x float> %i.bl, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph184, %bb.i
  %indvars.iv190 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next191, %bb.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv190
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !209 ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bs
  %i.cd = sdiv exact i64 %i.cc, 120
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv190
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !159 ; 3 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !159
  %i.ci = load float, ptr %i.bv, align 8, !tbaa !159
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ck = shl i64 %i.cd, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 2 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %.sroa.11154.3165, i64 %i.cl ; 3 uses
  %i.cn = load <2 x float>, ptr %i.cj, align 4, !tbaa !159 ; 2 uses
  %i.co = load <2 x float>, ptr %i.bw, align 4, !tbaa !159 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ch, i64 1
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.ci, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.bl, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ct, <2 x float> %i.cw)
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = fmul float %i.bx, %i.cz
  %i.db = extractelement <2 x float> %i.cu, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.by, float %i.db, float %i.da)
  %i.dd = fadd <2 x float> %i.bg, %i.cx
  %i.de = fadd float %i.az, %i.dc
  %i.df = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.dg, %i.dd
  %i.di = fmul float %i.cg, %i.de
  %i.dj = load <2 x float>, ptr %i.cm, align 4, !tbaa !159
  %i.dk = fadd <2 x float> %i.dj, %i.dh
  store <2 x float> %i.dk, ptr %i.cm, align 4, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !159
  %i.dn = fadd float %i.di, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !159
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.10141.1, i64 %i.cl ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !159
  %i.dq = fadd float %i.cg, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !159
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.preheader, label %bb.g

bb.j:                                             ; preds = %.lr.ph188, %bb.l
  %indvars.iv200 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next201, %bb.l ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10141.1, i64 %indvars.iv200
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !159 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11154.3165, i64 %indvars.iv200 ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !159
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !109
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
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.j

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i.i104.not = icmp eq ptr %.sroa.10141.1, null
  br i1 %.not.i.i.i104.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10141.1)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %._crit_edge, %._crit_edge.thread
  %.not.i.i.i106.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i106.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.3165)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.m
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN20btAlignedObjectArrayIfED2Ev.exit112:         ; preds = %._crit_edge.thread
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i113.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i113.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176

_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread, %_ZN20btAlignedObjectArrayIfED2Ev.exit112
  %.pn56.pn.pn.pn171 = phi { ptr, i32 } [ %i.al, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  %.sroa.11154.1169 = phi ptr [ %i.g, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %.sroa.11154.3165, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.1169)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116 unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn171, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176 ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ], [ %i.ak, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172 ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.n

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
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
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !159, !noalias !584 ; 6 uses
  %7 = fneg float %6                              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.h = load <3 x float>, ptr %4, align 4, !tbaa !159, !noalias !585 ; 2 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.j = load <1 x float>, ptr %i.e, align 4
  %i.k = load <3 x float>, ptr %i.c, align 4, !tbaa !159, !noalias !585 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <1 x float>, ptr %i.f, align 4
  %i.n = load <3 x float>, ptr %i.d, align 4, !tbaa !159, !noalias !585 ; 3 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.p = load float, ptr %i.g, align 4, !tbaa !159, !noalias !585
  %i.q = extractelement <3 x float> %i.n, i64 2
  %i.r = extractelement <3 x float> %i.n, i64 0
  %i.s = load <2 x float>, ptr %i.b, align 4, !tbaa !159, !noalias !584 ; 3 uses
  %i.t = load float, ptr %i.a, align 4, !tbaa !159, !noalias !584 ; 5 uses
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.v = fneg float %i.u                          ; 4 uses
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.x = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.y = insertelement <4 x float> %i.w, float %7, i64 1
  %8 = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = insertelement <4 x float> %i.w, float 0.000000e+00, i64 2
  %9 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %9, float %6, i64 2
  %10 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %12 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %2, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %14 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.v, i64 1
  %i.ab = fneg float %i.t                         ; 4 uses
  %i.ac = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = fmul <4 x float> %i.l, %i.ad
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.x, <4 x float> %i.ae)
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %8, <4 x float> %i.af) ; 5 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.ai = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 2
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> %i.ag, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.al = shufflevector <1 x float> %i.m, <1 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> <float 0.000000e+00, float poison>, float %6, i64 1
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <1 x float> %i.j, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.v, i64 1 ; 2 uses
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = insertelement <2 x float> poison, float %i.p, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.ar) ; 3 uses
  %15 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 2, i32 2>
  %16 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.t, i64 1
  %17 = fmul <2 x float> %16, %i.av
  %18 = insertelement <2 x float> poison, float %i.ab, i64 0
  %19 = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %20 = insertelement <2 x float> %19, float 0.000000e+00, i64 1
  %21 = insertelement <2 x float> %i.aq, float %6, i64 0
  %22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %3, i64 0
  %23 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %2, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %24 = shufflevector <3 x float> %i.k, <3 x float> %i.aw, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %25 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %6, i64 1
  %26 = insertelement <4 x float> %25, float %7, i64 3
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ax = fmul <4 x float> %24, %27
  %28 = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %29 = shufflevector <3 x float> %i.h, <3 x float> %28, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.ay = insertelement <4 x float> %i.ag, float %i.t, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.v, i64 1
  %30 = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %30, <4 x float> %i.ax) ; 4 uses
  %31 = shufflevector <4 x float> %i.z, <4 x float> %i.ba, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.bb = insertelement <4 x float> %31, float %7, i64 3
  %32 = extractelement <4 x float> %i.ba, i64 0
  %33 = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %7, float %32) ; 2 uses
  %i.bc = fmul <4 x float> %i.bb, %i.ah
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.ak, <4 x float> %i.bc) ; 3 uses
  %i.be = extractelement <4 x float> %i.bd, i64 0 ; 2 uses
  %i.bf = extractelement <4 x float> %i.ba, i64 2
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.r, float 0.000000e+00, float %i.bf) ; 3 uses
  %34 = insertelement <2 x float> %18, float %i.bg, i64 1
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %20, <2 x float> %17)
  %36 = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %37 = insertelement <2 x float> %36, float %33, i64 0
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %37, <2 x float> %35)
  %39 = fsub <2 x float> %22, %38                 ; 2 uses
  %40 = fadd <2 x float> %23, %39                 ; 3 uses
  %i.bh = extractelement <2 x float> %40, i64 0   ; 2 uses
  %41 = fneg float %i.bh
  %42 = insertelement <2 x float> poison, float %33, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = extractelement <2 x float> %39, i64 1     ; 2 uses
  %45 = fneg float %44                            ; 2 uses
  %46 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.t, i64 0
  %47 = insertelement <4 x float> %46, float %7, i64 2
  %48 = insertelement <4 x float> %47, float %45, i64 3
  %49 = shufflevector <2 x float> %i.av, <2 x float> %40, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %50 = fmul <4 x float> %48, %49                 ; 4 uses
  %51 = shufflevector <4 x float> %50, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %15, <4 x float> %51) ; 2 uses
  %53 = shufflevector <4 x float> %52, <4 x float> %i.ba, <2 x i32> <i32 7, i32 0>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %43, <2 x float> %53)
  %54 = fsub <2 x float> zeroinitializer, %i.bi   ; 5 uses
  %55 = extractelement <2 x float> %54, i64 0     ; 2 uses
  %56 = extractelement <2 x float> %54, i64 1     ; 2 uses
  %57 = shufflevector <2 x float> %54, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %58 = fneg <2 x float> %54
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = extractelement <4 x float> %50, i64 1
  %60 = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.bg, float %i.bj)
  %61 = tail call noundef float @llvm.fmuladd.f32(float %6, float %i.be, float %60)
  %i.bk = extractelement <4 x float> %50, i64 2
  %62 = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bg, float %i.bk)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %62)
  %63 = fsub float 0.000000e+00, %61              ; 3 uses
  %i.bm = fneg float %63                          ; 2 uses
  %i.bn = insertelement <4 x float> %52, float %i.bl, i64 0
  %i.bo = fsub <4 x float> %11, %i.bn             ; 3 uses
  %i.bp = fadd <4 x float> %i.bo, %13             ; 5 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fneg float %i.bq                        ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.bt = insertelement <4 x float> poison, float %45, i64 0
  %i.bu = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %64 = fmul float %55, %i.bm
  %65 = extractelement <4 x float> %50, i64 3
  %66 = tail call noundef float @llvm.fmuladd.f32(float %56, float %63, float %65) ; 2 uses
  %67 = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bq, float %64) ; 2 uses
  %68 = fmul float %56, %i.br
  %69 = insertelement <4 x float> %i.bu, float %67, i64 1
  %70 = shufflevector <4 x float> %69, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bv = insertelement <4 x float> %70, float %63, i64 3
  %71 = shufflevector <4 x float> %i.bp, <4 x float> %i.bo, <4 x i32> <i32 1, i32 6, i32 1, i32 poison>
  %i.bw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bm, i64 2
  %72 = shufflevector <4 x float> %59, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %73 = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %74 = shufflevector <2 x float> %54, <2 x float> %40, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.bx = insertelement <4 x float> %74, float %66, i64 3
  %i.by = insertelement <4 x float> poison, float %67, i64 0
  %i.bz = insertelement <4 x float> poison, float %66, i64 0
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %55, float %44, float %68) ; 2 uses
  %i.cb = insertelement <4 x float> %i.bt, float %i.ca, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %41, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.br, i64 3
  %i.ce = fmul <4 x float> %i.bs, %i.cd
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bv, <4 x float> %i.ce) ; 3 uses
  %75 = shufflevector <4 x float> %71, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = fmul <4 x float> %75, %72
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> %i.bx, <4 x float> %i.cg) ; 3 uses
  %i.ci = shufflevector <4 x float> %i.by, <4 x float> %i.cf, <4 x i32> <i32 0, i32 7, i32 6, i32 0>
  %76 = shufflevector <4 x float> %i.cf, <4 x float> %i.ch, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.cj = insertelement <4 x float> %76, float %i.ca, i64 0
  %77 = shufflevector <4 x float> %i.bz, <4 x float> %i.ch, <4 x i32> <i32 0, i32 6, i32 5, i32 0>
  %78 = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ck = insertelement <2 x float> %78, float %1, i64 1
  %i.cl = fdiv <2 x float> splat (float 1.000000e+00), %i.ck ; 6 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = extractelement <2 x float> %i.cl, i64 1
  %i.cq = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cr = fmul <4 x float> %i.ci, %i.cq           ; 3 uses
  %i.cs = fmul <4 x float> %i.cj, %i.cq           ; 2 uses
  %i.ct = fmul <4 x float> %77, %i.cq             ; 3 uses
  %i.cu = extractelement <4 x float> %i.cr, i64 2
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cw = extractelement <4 x float> %i.ct, i64 2
  %i.cx = insertelement <2 x float> %i.cl, float 0.000000e+00, i64 0
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cz = fmul <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.co, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.de = fmul <4 x float> %i.cs, %i.dd           ; 2 uses
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.db, <4 x float> %i.dh)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> zeroinitializer, <4 x float> %i.di) ; 2 uses
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dl = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cm, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk) ; 2 uses
  %i.dp = extractelement <2 x float> %i.cz, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.dp)
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cp, float %i.dq)
  %i.ds = insertelement <4 x float> %i.dj, float 0.000000e+00, i64 3
  store <4 x float> %i.ds, ptr %0, align 4, !tbaa !159, !alias.scope !586
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = shufflevector <4 x float> %i.dj, <4 x float> %i.do, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 0.000000e+00, i64 3
  store <4 x float> %i.dv, ptr %i.dt, align 4, !tbaa !159, !alias.scope !586
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dx, ptr %i.dw, align 4, !tbaa !159, !alias.scope !586
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.dr, ptr %i.dy, align 4, !tbaa !159, !alias.scope !586
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !159, !alias.scope !586
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !587
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !245  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !246
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load float, ptr %i.x, align 8, !tbaa !197
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
end_hunk_0
begin_hunk_1_@llvm.sqrt.v2f32
!378 = distinct !{!378, !202}
!379 = distinct !{!379, i1 true, !"_ZNK11btTransform7inverseEv"}
!380 = distinct !{!380, !379, !"_ZNK11btTransform7inverseEv: argument 0"}
!381 = distinct !{!381, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!382 = distinct !{!382, !381, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!383 = !{!382, !380}
!384 = !{!380}
!385 = distinct !{!385, i1 true, !"_ZNK11btTransform7inverseEv"}
!386 = distinct !{!386, !385, !"_ZNK11btTransform7inverseEv: argument 0"}
!387 = distinct !{!387, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!388 = distinct !{!388, !387, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!389 = distinct !{!389, i1 true, !"_ZNK11btTransform7inverseEv"}
!390 = distinct !{!390, !389, !"_ZNK11btTransform7inverseEv: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!392 = distinct !{!392, !391, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!393 = distinct !{!393, !202, !203}
!394 = distinct !{!394, !177}
!395 = distinct !{!395, !202}
!396 = !{!388, !386}
!397 = !{!386}
!398 = !{!392, !390}
!399 = !{!390}
!400 = distinct !{!400, i1 true, !"_ZNK11btTransform7inverseEv"}
!401 = distinct !{!401, !400, !"_ZNK11btTransform7inverseEv: argument 0"}
!402 = distinct !{!402, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!403 = distinct !{!403, !402, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!404 = distinct !{!404, i1 true, !"_ZNK11btTransform7inverseEv"}
!405 = distinct !{!405, !404, !"_ZNK11btTransform7inverseEv: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!407 = distinct !{!407, !406, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!408 = distinct !{!408, !202, !203}
!409 = distinct !{!409, !177}
!410 = distinct !{!410, !202}
!411 = !{!403, !401}
!412 = !{!407, !405}
!413 = !{!"_ZTSN10btSoftBody6AJoint5SpecsE", !232, i64 0, !47, i64 12, !236, i64 32}
!414 = !{!413, !236, i64 32}
!415 = distinct !{!415, !177}
!416 = distinct !{!416, !202, !203}
!417 = distinct !{!417, !203, !202}
!418 = distinct !{!418, !202, !203}
!419 = distinct !{!419, !203, !202}
!420 = distinct !{!420, !177}
!421 = distinct !{!421, !202, !203}
!422 = distinct !{!422, !203, !202}
!423 = distinct !{!423, !177}
!424 = distinct !{!424, !177}
!425 = !{!166, !49, i64 8}
!426 = distinct !{!426, !202, !203}
!427 = distinct !{!427, !177}
!428 = distinct !{!428, !202}
!429 = distinct !{!429, i1 false, !"LVerDomain"}
!430 = distinct !{!430, !429}
!431 = distinct !{!431, !429}
!432 = distinct !{!432, !202, !203}
!433 = distinct !{!433, !202}
!434 = distinct !{!434, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!435 = distinct !{!435, !434, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!436 = !{!430}
!437 = !{!431}
!438 = !{!435}
!439 = distinct !{!439, !202, !203}
!440 = distinct !{!440, !177}
!441 = distinct !{!441, !202}
!442 = distinct !{!442, !202, !203}
!443 = distinct !{!443, !177}
!444 = distinct !{!444, !202}
!445 = distinct !{!445, !202, !203}
!446 = distinct !{!446, !177}
!447 = distinct !{!447, !202}
!448 = distinct !{!448, !202, !203}
!449 = distinct !{!449, !177}
!450 = distinct !{!450, !202}
!451 = distinct !{!451, !202, !203}
!452 = distinct !{!452, !177}
!453 = distinct !{!453, !202}
!454 = distinct !{!454, !202, !203}
!455 = distinct !{!455, !177}
!456 = distinct !{!456, !202}
!457 = distinct !{!457, !177}
!458 = distinct !{!458, !202, !203}
!459 = distinct !{!459, !177}
!460 = distinct !{!460, !202}
!461 = distinct !{!461, !202, !203}
!462 = distinct !{!462, !177}
!463 = distinct !{!463, !202}
!464 = distinct !{!464, !202, !203}
!465 = distinct !{!465, !177}
!466 = distinct !{!466, !202}
!467 = distinct !{!467, !202, !203}
!468 = distinct !{!468, !177}
!469 = distinct !{!469, !202}
!470 = distinct !{!470, !202, !203}
!471 = distinct !{!471, !177}
!472 = distinct !{!472, !202}
!473 = distinct !{!473, !202, !203}
!474 = distinct !{!474, !177}
!475 = distinct !{!475, !202}
!476 = distinct !{!476, !202, !203}
!477 = distinct !{!477, !177}
!478 = distinct !{!478, !202}
!479 = distinct !{!479, !202, !203}
!480 = distinct !{!480, !177}
!481 = distinct !{!481, !202}
!482 = distinct !{!482, !202, !203}
!483 = distinct !{!483, !177}
!484 = distinct !{!484, !202}
!485 = distinct !{!485, !202, !203}
!486 = distinct !{!486, !177}
!487 = distinct !{!487, !202}
!488 = distinct !{!488, !202, !203}
!489 = distinct !{!489, !177}
!490 = distinct !{!490, !202}
!491 = distinct !{!491, !202, !203}
!492 = distinct !{!492, !177}
!493 = distinct !{!493, !202}
!494 = distinct !{!494, !202, !203}
!495 = distinct !{!495, !177}
!496 = distinct !{!496, !202}
!497 = distinct !{!497, !202, !203}
!498 = distinct !{!498, !177}
!499 = distinct !{!499, !202}
!500 = distinct !{!500, !202, !203}
!501 = distinct !{!501, !177}
!502 = distinct !{!502, !202}
!503 = distinct !{!503, !202, !203}
!504 = distinct !{!504, !202, !203}
!505 = distinct !{!505, !177}
!506 = distinct !{!506, !202}
!507 = !{!244, !14, i64 24}
!508 = !{!244, !6, i64 8}
!509 = !{!"branch_weights", i32 4, i32 28}
!510 = distinct !{!510, !202, !203}
!511 = distinct !{!511, !177}
!512 = distinct !{!512, !202}
!513 = distinct !{!513, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!514 = distinct !{!514, !513, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!515 = !{!514}
!516 = distinct !{!516, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!517 = distinct !{!517, !516, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!518 = !{!517}
!519 = !{!247, !49, i64 396}
!520 = !{!247, !49, i64 400}
!521 = !{!247, !49, i64 404}
!522 = distinct !{!522, !202, !203}
!523 = distinct !{!523, !203, !202}
!524 = distinct !{null}
!525 = !{!"_ZTSN10btSoftBody8sRayCastE", !170, i64 0, !264, i64 8, !6, i64 12, !49, i64 16}
!526 = !{!525, !170, i64 0}
!527 = !{!525, !49, i64 16}
!528 = !{!525, !264, i64 8}
!529 = !{!525, !6, i64 12}
!530 = distinct !{!530, i1 true, !"_ZL8VolumeOfRKN10btSoftBody4FaceEf"}
!531 = distinct !{!531, !530, !"_ZL8VolumeOfRKN10btSoftBody4FaceEf: argument 0"}
!532 = distinct !{!532, i1 true, !"_ZN12btDbvtAabbMm10FromPointsEPPK9btVector3i"}
!533 = distinct !{!533, !532, !"_ZN12btDbvtAabbMm10FromPointsEPPK9btVector3i: argument 0"}
!534 = !{!531}
!535 = !{!533}
!536 = !{!533, !531}
!537 = !{!264, !264, i64 0}
!538 = distinct !{!538, i1 true, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f"}
!539 = distinct !{!539, !538, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f: argument 0"}
!540 = distinct !{!540, i1 true, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_"}
!541 = distinct !{!541, !540, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_: argument 0"}
!542 = distinct !{!542, i1 true, !"_ZL8VolumeOfRKN10btSoftBody4FaceEf"}
!543 = distinct !{!543, !542, !"_ZL8VolumeOfRKN10btSoftBody4FaceEf: argument 0"}
!544 = distinct !{!544, i1 true, !"_ZN12btDbvtAabbMm10FromPointsEPPK9btVector3i"}
!545 = distinct !{!545, !544, !"_ZN12btDbvtAabbMm10FromPointsEPPK9btVector3i: argument 0"}
!546 = distinct !{!546, !177}
!547 = distinct !{!547, !177}
!548 = !{!102, !49, i64 392}
!549 = !{!102, !49, i64 520}
!550 = !{!102, !49, i64 528}
!551 = !{!541, !539}
!552 = !{!545, !543}
!553 = !{!102, !49, i64 344}
!554 = !{!102, !49, i64 328}
!555 = !{!102, !49, i64 324}
!556 = !{!102, !49, i64 332}
!557 = !{!102, !49, i64 336}
!558 = !{!188, !49, i64 0}
!559 = !{!188, !49, i64 4}
!560 = !{!188, !49, i64 8}
!561 = distinct !{!561, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!562 = distinct !{!562, !561, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!563 = distinct !{!563, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!564 = distinct !{!564, !563, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!565 = !{!562}
!566 = !{!564}
!567 = !{!102, !49, i64 388}
!568 = distinct !{!568, !281}
!569 = distinct !{!569, !281}
!570 = !{!213, !49, i64 96}
!571 = !{!102, !6, i64 396}
!572 = !{ptr @_ZN10btSoftBody12VSolve_LinksEPS_f}
!573 = !{!102, !6, i64 400}
!574 = !{!102, !49, i64 320}
!575 = !{!102, !6, i64 404}
!576 = distinct !{!576, i1 true, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3"}
!577 = distinct !{!577, !576, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3: argument 0"}
!578 = distinct !{!578, i1 true, !"_ZL5CrossRK9btVector3"}
!579 = distinct !{!579, !578, !"_ZL5CrossRK9btVector3: argument 0"}
!580 = distinct !{!580, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!581 = distinct !{!581, !580, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!582 = distinct !{!582, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!583 = distinct !{!583, !582, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!584 = !{!579, !577}
!585 = !{!581, !577}
!586 = !{!583}
!587 = !{!247, !49, i64 392}
!588 = distinct !{!588, !281}
!589 = distinct !{!589, !177}
!590 = !{!"_ZTS18btAlignedAllocatorIP10btSoftBodyLj16EE"}
!591 = !{!"p2 _ZTS10btSoftBody", !12, i64 0}
!592 = !{!"_ZTS20btAlignedObjectArrayIP10btSoftBodyE", !590, i64 0, !6, i64 4, !6, i64 8, !591, i64 16, !14, i64 24}
!593 = !{!592, !6, i64 4}
!594 = !{!592, !591, i64 16}
!595 = !{ptr @_ZN10btSoftBody15prepareClustersEi}
!596 = !{ptr @_ZN10btSoftBody13solveClustersEf}
!597 = !{ptr @_ZN10btSoftBody15cleanupClustersEv}
!598 = distinct !{!598, !202, !203}
!599 = distinct !{!599, !177}
!600 = distinct !{!600, !202}
!601 = distinct !{!601, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!602 = distinct !{!602, !601, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!603 = !{!602}
!604 = !{!186, !6, i64 4}
!605 = !{!186, !185, i64 16}
!606 = !{!289, !289, i64 0}
!607 = !{!187, !6, i64 48}
!608 = !{!187, !6, i64 44}
!609 = !{!290, !6, i64 272}
!610 = !{!290, !289, i64 288}
!611 = !{!187, !6, i64 40}
!612 = !{!187, !6, i64 36}
!613 = !{!290, !6, i64 268}
!614 = distinct !{!614, i1 true, !"_ZL3MulRK11btMatrix3x3f"}
!615 = distinct !{!615, !614, !"_ZL3MulRK11btMatrix3x3f: argument 0"}
!616 = distinct !{!616, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!617 = distinct !{!617, !616, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!618 = !{!615}
!619 = !{!617}
!620 = distinct !{!620, i1 true, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3"}
!621 = distinct !{!621, !620, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3: argument 0"}
!622 = distinct !{!622, i1 true, !"_ZL5CrossRK9btVector3"}
!623 = distinct !{!623, !622, !"_ZL5CrossRK9btVector3: argument 0"}
!624 = distinct !{!624, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!625 = distinct !{!625, !624, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!626 = distinct !{!626, i1 true, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3"}
!627 = distinct !{!627, !626, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3: argument 0"}
!628 = distinct !{!628, i1 true, !"_ZL5CrossRK9btVector3"}
!629 = distinct !{!629, !628, !"_ZL5CrossRK9btVector3: argument 0"}
!630 = distinct !{!630, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!631 = distinct !{!631, !630, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!632 = distinct !{!632, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!633 = distinct !{!633, !632, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!634 = !{!623, !621}
!635 = !{!625, !621}
!636 = !{!629, !627}
!637 = !{!631, !627}
!638 = !{!633}
!639 = distinct !{!639, i1 true, !"_ZNK10btSoftBody7ImpulsengEv"}
!640 = distinct !{!640, !639, !"_ZNK10btSoftBody7ImpulsengEv: argument 0"}
!641 = !{!640}
!642 = distinct !{!642, i1 true, !"_ZL20AngularImpulseMatrixRK11btMatrix3x3S1_"}
!643 = distinct !{!643, !642, !"_ZL20AngularImpulseMatrixRK11btMatrix3x3S1_: argument 0"}
!644 = distinct !{!644, i1 true, !"_ZL3AddRK11btMatrix3x3S1_"}
!645 = distinct !{!645, !644, !"_ZL3AddRK11btMatrix3x3S1_: argument 0"}
!646 = !{!645, !643}
!647 = distinct !{!647, i1 true, !"_ZNK10btSoftBody7ImpulsengEv"}
!648 = distinct !{!648, !647, !"_ZNK10btSoftBody7ImpulsengEv: argument 0"}
!649 = !{!648}
!650 = distinct !{!650, i1 true, !"_ZNK10btSoftBody7ImpulsemlEf"}
!651 = distinct !{!651, !650, !"_ZNK10btSoftBody7ImpulsemlEf: argument 0"}
!652 = distinct !{!652, i1 true, !"_ZNK10btSoftBody7ImpulsemlEf"}
!653 = distinct !{!653, !652, !"_ZNK10btSoftBody7ImpulsemlEf: argument 0"}
!654 = distinct !{!654, i1 true, !"_ZNK10btSoftBody7ImpulsengEv"}
!655 = distinct !{!655, !654, !"_ZNK10btSoftBody7ImpulsengEv: argument 0"}
!656 = !{!247, !49, i64 408}
!657 = !{!247, !49, i64 412}
!658 = !{!651}
!659 = !{!653}
!660 = !{!655}
!661 = !{!102, !49, i64 360}
!662 = !{!"_ZTSN10btSoftBody8SContactE", !62, i64 0, !68, i64 8, !47, i64 16, !47, i64 32, !49, i64 48, !49, i64 52, !5, i64 56}
!663 = !{!662, !62, i64 0}
!664 = !{!662, !68, i64 8}
!665 = !{!662, !49, i64 48}
!666 = distinct !{null}
!667 = !{i64 0, i64 16, !180, i64 16, i64 16, !180}
!668 = !{!301, !49, i64 32}
!669 = !{!301, !49, i64 36}
!670 = distinct !{!670, !202, !203}
!671 = distinct !{!671, !177}
!672 = distinct !{!672, !202}
!673 = distinct !{!673, !202, !203}
!674 = distinct !{!674, !177}
!675 = distinct !{!675, !202}
!676 = distinct !{null}
!677 = !{!102, !88, i64 1208}
!678 = !{i64 0, i64 8, !285, i64 8, i64 8, !285}
!679 = !{!102, !49, i64 340}
!680 = !{!298, !49, i64 104}
!681 = !{!298, !49, i64 108}
!682 = distinct !{!682, !202, !203}
!683 = distinct !{!683, !177}
!684 = distinct !{!684, !202}
!685 = !{!"_ZTSN15btGjkEpaSolver28sResults7eStatusE", !5, i64 0}
!686 = !{!"_ZTSN15btGjkEpaSolver28sResultsE", !685, i64 0, !5, i64 4, !47, i64 36, !49, i64 52}
!687 = !{!686, !49, i64 52}
!688 = !{!295, !49, i64 240}
!689 = distinct !{!689, !202, !203}
!690 = distinct !{!690, !177}
!691 = distinct !{!691, !202}
!692 = !{!102, !49, i64 384}
!693 = !{!102, !49, i64 356}
!694 = !{!68, !68, i64 0}
!695 = !{i64 0, i64 8, !209, i64 8, i64 8, !694, i64 16, i64 16, !180, i64 32, i64 16, !180, i64 48, i64 4, !159, i64 52, i64 4, !159, i64 56, i64 8, !180}
!696 = distinct !{!696, !202, !203}
!697 = distinct !{!697, !177}
!698 = distinct !{!698, !202}
!699 = distinct !{!699, !202, !203}
!700 = distinct !{!700, !177}
!701 = distinct !{!701, !202}
!702 = !{!187, !49, i64 32}
end_hunk_1
