Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif:bb.a
  br label %.loopexit

.lr.ph633:                                        ; preds = %bb.b
  %i.mg = mul nsw i32 %i.g, 6
  %i.mh = shl nsw i32 %i.g, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.mg, i32 noundef %i.mh)
  %i.mi = fmul float %5, 5.000000e-01
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted634 = load ptr, ptr %i.mj, align 8, !tbaa !86
  %.promoted636 = load i32, ptr %i.mk, align 4, !tbaa !57
  %.promoted638 = load ptr, ptr %i.ml, align 8, !tbaa !88
  %i.mm = zext nneg i32 %2 to i64
  %wide.trip.count675 = zext nneg i32 %i.g to i64
  %i.mn = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph633, %bb.v
  %indvars.iv672 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next673, %bb.v ] ; 2 uses
  %i.mp = phi ptr [ %.promoted638, %.lr.ph633 ], [ %i.pb, %bb.v ] ; 7 uses
  %i.mq = phi i32 [ %.promoted636, %.lr.ph633 ], [ %i.pc, %bb.v ] ; 2 uses
  %i.mr = phi ptr [ %.promoted634, %.lr.ph633 ], [ %i.or, %bb.v ] ; 16 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 4 uses
  %i.ms = icmp eq i64 %indvars.iv.next673, %i.mm
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv672 ; 3 uses
  %i.mu = select i1 %i.ms, i64 0, i64 %indvars.iv.next673
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mu ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.my = load <2 x float>, ptr %i.mv, align 4, !tbaa !15
  %i.mz = load <2 x float>, ptr %i.mt, align 4, !tbaa !15 ; 3 uses
  %i.na = fsub <2 x float> %i.my, %i.mz           ; 5 uses
  %foldExtExtBinop715 = fmul <2 x float> %i.na, %i.na
  %i.nb = extractelement <2 x float> %foldExtExtBinop715, i64 1
  %i.nc = extractelement <2 x float> %i.na, i64 0 ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nc, float %i.nb) ; 2 uses
  %i.ne = fcmp ogt float %i.nd, 0.000000e+00
  br i1 %i.ne, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nf = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.ng = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nf)
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul <2 x float> %i.na, %i.nh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.nj = phi <2 x float> [ %i.ni, %bb.u ], [ %i.na, %bb.t ]
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nl = fmul <2 x float> %i.mo, %i.nk           ; 4 uses
  %i.nm = fadd <2 x float> %i.mz, %i.nl
  %i.nn = fsub <2 x float> %i.mz, %i.nl
  %i.no = shufflevector <2 x float> %i.nm, <2 x float> %i.nn, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.no, ptr %i.mr, align 4, !tbaa !15
  %i.np = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.e, ptr %i.np, align 4, !tbaa !15
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i32 %3, ptr %i.nq, align 4, !tbaa !94
  %i.nr = load float, ptr %i.mv, align 4, !tbaa !89
  %i.ns = extractelement <2 x float> %i.nl, i64 0 ; 3 uses
  %i.nt = fadd float %i.ns, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  store float %i.nt, ptr %i.nu, align 4, !tbaa !95
  %i.nv = load float, ptr %i.mw, align 4, !tbaa !90
  %i.nw = extractelement <2 x float> %i.nl, i64 1 ; 3 uses
  %i.nx = fsub float %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store float %i.nx, ptr %i.ny, align 4, !tbaa !96
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  store i64 %i.e, ptr %i.nz, align 4, !tbaa !15
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mr, i64 36
  store i32 %3, ptr %i.oa, align 4, !tbaa !94
  %i.ob = load float, ptr %i.mv, align 4, !tbaa !89
  %i.oc = fsub float %i.ob, %i.ns
  %i.od = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  store float %i.oc, ptr %i.od, align 4, !tbaa !95
  %i.oe = load float, ptr %i.mw, align 4, !tbaa !90
  %i.of = fadd float %i.nw, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.mr, i64 44
  store float %i.of, ptr %i.og, align 4, !tbaa !96
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  store i64 %i.e, ptr %i.oh, align 4, !tbaa !15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  store i32 %3, ptr %i.oi, align 4, !tbaa !94
  %i.oj = load float, ptr %i.mt, align 4, !tbaa !89
  %i.ok = fsub float %i.oj, %i.ns
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mr, i64 60
  store float %i.ok, ptr %i.ol, align 4, !tbaa !95
  %i.om = load float, ptr %i.mx, align 4, !tbaa !90
  %i.on = fadd float %i.nw, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mr, i64 64
  store float %i.on, ptr %i.oo, align 4, !tbaa !96
  %i.op = getelementptr inbounds nuw i8, ptr %i.mr, i64 68
  store i64 %i.e, ptr %i.op, align 4, !tbaa !15
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mr, i64 76
  store i32 %3, ptr %i.oq, align 4, !tbaa !94
  %i.or = getelementptr inbounds nuw i8, ptr %i.mr, i64 80 ; 2 uses
  %i.os = trunc i32 %i.mq to i16                  ; 5 uses
  store i16 %i.os, ptr %i.mp, align 2, !tbaa !92
  %i.ot = add i16 %i.os, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !92
  %i.ov = add i16 %i.os, 2                        ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !92
  %i.ox = getelementptr inbounds nuw i8, ptr %i.mp, i64 6
  store i16 %i.os, ptr %i.ox, align 2, !tbaa !92
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  store i16 %i.ov, ptr %i.oy, align 2, !tbaa !92
  %i.oz = add i16 %i.os, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mp, i64 10
  store i16 %i.oz, ptr %i.pa, align 2, !tbaa !92
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mp, i64 12 ; 2 uses
  %i.pc = add i32 %i.mq, 4                        ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %..loopexit_crit_edge, label %bb.t, !llvm.loop !292

..loopexit_crit_edge:                             ; preds = %bb.v
  store ptr %i.or, ptr %i.mj, align 8, !tbaa !86
  store i32 %i.pc, ptr %i.mk, align 4, !tbaa !57
  store ptr %i.pb, ptr %i.ml, align 8, !tbaa !88
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit604, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph145, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !69
  %i.j = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.k = add i32 %reass.mul, -6
  %i.l = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 9 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = trunc i32 %i.n to i16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = add i32 %i.n, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.q, align 8, !tbaa !88 ; 2 uses
  %xtraiter = and i32 %2, 1
  %i.s = icmp eq i32 %2, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.t = and i32 %2, 2147483646
  %i.u = add nsw i32 %i.t, -4
  br label %bb.c

.lr.ph134.preheader.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph134.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph134.preheader.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.az, %.lr.ph134.preheader.unr-lcssa ] ; 4 uses
  %.0123130.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.ba, %.lr.ph134.preheader.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  store i16 %i.p, ptr %.epil.init, align 2, !tbaa !92
  %i.v = shl nuw i32 %.0123130.epil.init, 1       ; 2 uses
  %i.w = add i32 %i.r, %i.v
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !92
  %i.z = add i32 %i.v, %i.n
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.lr.ph134.preheader.unr-lcssa, %.epil.preheader
  %.lcssa198 = phi ptr [ %i.az, %.lr.ph134.preheader.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  store ptr %.lcssa198, ptr %i.q, align 8, !tbaa !88
  %i.ad = zext nneg i32 %2 to i64                 ; 3 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = alloca i8, i64 %i.ae, align 16          ; 3 uses
  %i.ag = add nsw i32 %2, -1                      ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  br label %.lr.ph134

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.ai = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.az, %bb.c ] ; 7 uses
  %.0123130 = phi i32 [ 2, %.lr.ph.new ], [ %i.ba, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ] ; 2 uses
  store i16 %i.p, ptr %i.ai, align 2, !tbaa !92
  %i.aj = shl nuw i32 %.0123130, 1                ; 2 uses
  %i.ak = add i32 %i.r, %i.aj
  %i.al = trunc i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !92
  %i.an = add i32 %i.aj, %i.n
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i16 %i.p, ptr %i.aq, align 2, !tbaa !92
  %i.ar = shl nuw i32 %.0123130, 1
  %i.as = or disjoint i32 %i.ar, 2                ; 2 uses
  %i.at = add i32 %i.r, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i16 %i.au, ptr %i.av, align 2, !tbaa !92
  %i.aw = add i32 %i.as, %i.n
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 3 uses
  %i.ba = add nuw nsw i32 %.0123130, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.u
  br i1 %niter.ncmp.1, label %.lr.ph134.preheader.unr-lcssa, label %bb.c, !llvm.loop !294

.lr.ph137:                                        ; preds = %bb.e
  %i.bb = fmul float %i.i, 5.000000e-01
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted139 = load ptr, ptr %i.bc, align 8, !tbaa !86
  %.promoted141 = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.g

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0122131 = phi i64 [ %i.ah, %.lr.ph134.preheader ], [ %indvars.iv, %bb.e ] ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0122131
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %5 = load <2 x float>, ptr %i.bg, align 4, !tbaa !15
  %i.bh = load <2 x float>, ptr %4, align 4, !tbaa !15
  %i.bi = fsub <2 x float> %5, %i.bh              ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bi, %i.bi
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bk = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bj) ; 2 uses
  %i.bm = fcmp ogt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph134
  %i.bn = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bo = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bn)
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bi, %i.bp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph134
  %i.br = phi <2 x float> [ %i.bq, %bb.d ], [ %i.bi, %.lr.ph134 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0122131 ; 2 uses
  %i.bt = extractelement <2 x float> %i.br, i64 1
  store float %i.bt, ptr %i.bs, align 8, !tbaa !89
  %i.bu = extractelement <2 x float> %i.br, i64 0
  %i.bv = fneg float %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float %i.bv, ptr %i.bw, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond158.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !295

bb.f:                                             ; preds = %bb.i
  store ptr %i.da, ptr %i.bc, align 8, !tbaa !86
  store ptr %i.dq, ptr %i.bd, align 8, !tbaa !88
  %i.bx = and i32 %i.l, 65534
  %i.by = add i32 %i.n, %i.bx
  store i32 %i.by, ptr %i.m, align 4, !tbaa !57
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph137, %bb.i
  %indvars.iv159 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next160, %bb.i ] ; 5 uses
  %i.bz = phi ptr [ %.promoted141, %.lr.ph137 ], [ %i.dq, %bb.i ] ; 7 uses
  %i.ca = phi ptr [ %.promoted139, %.lr.ph137 ], [ %i.da, %bb.i ] ; 7 uses
  %.0118135 = phi i32 [ %i.ag, %.lr.ph137 ], [ %i.dr, %bb.i ] ; 2 uses
  %6 = sext i32 %.0118135 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv159
  %8 = load <2 x float>, ptr %7, align 8, !tbaa !15
  %i.cc = load <2 x float>, ptr %i.cb, align 8, !tbaa !15
  %i.cd = fadd <2 x float> %8, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop193 = fmul <2 x float> %i.ce, %i.ce
  %i.cf = extractelement <2 x float> %foldExtExtBinop193, i64 1
  %i.cg = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cf) ; 2 uses
  %i.ci = fcmp ogt float %i.ch, f0x358637BD
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = fdiv float 1.000000e+00, %i.ch          ; 2 uses
  %i.ck = fcmp ogt float %i.cj, 1.000000e+02
  %spec.store.select = select i1 %i.ck, float 1.000000e+02, float %i.cj
  %i.cl = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.ce, %i.cm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = phi <2 x float> [ %i.cn, %bb.h ], [ %i.ce, %bb.g ]
  %i.cp = fmul <2 x float> %i.bf, %i.co           ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv159 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !15
  %i.cs = fsub <2 x float> %i.cr, %i.cp
  store <2 x float> %i.cs, ptr %i.ca, align 4, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.d, ptr %i.ct, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i32 %3, ptr %i.cu, align 4, !tbaa !94
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cw = load <2 x float>, ptr %i.cq, align 4, !tbaa !15
  %i.cx = fadd <2 x float> %i.cp, %i.cw
  store <2 x float> %i.cx, ptr %i.cv, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i64 %i.d, ptr %i.cy, align 4, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  store i32 %i.j, ptr %i.cz, align 4, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %indvars.iv159.tr = trunc nuw i64 %indvars.iv159 to i32
  %i.db = shl nuw i32 %indvars.iv159.tr, 1        ; 2 uses
  %i.dc = add i32 %i.db, %i.n
  %i.dd = trunc i32 %i.dc to i16                  ; 2 uses
  store i16 %i.dd, ptr %i.bz, align 2, !tbaa !92
  %i.de = shl i32 %.0118135, 1                    ; 2 uses
  %i.df = add i32 %i.de, %i.n
  %i.dg = trunc i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !92
  %i.di = add i32 %i.de, %i.o
  %i.dj = trunc i32 %i.di to i16                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !92
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  store i16 %i.dj, ptr %i.dl, align 2, !tbaa !92
  %i.dm = add i32 %i.db, %i.o
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i16 %i.dd, ptr %i.dp, align 2, !tbaa !92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv159 to i32
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %i.ad
  br i1 %exitcond163.not, label %bb.f, label %bb.g, !llvm.loop !296

.lr.ph145:                                        ; preds = %bb.b
  %i.ds = mul i32 %2, 3
  %i.dt = add i32 %i.ds, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.dt, i32 noundef %2)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted146 = load ptr, ptr %i.du, align 8, !tbaa !86 ; 2 uses
  %wide.trip.count167 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter202 = and i64 %wide.trip.count167, 3   ; 3 uses
  %i.dv = icmp eq i32 %2, 3
  br i1 %i.dv, label %.epil.preheader201, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter208.a = and i64 %wide.trip.count167, 2147483644
  br label %bb.k

.lr.ph149.unr-lcssa:                              ; preds = %bb.k
  %lcmp.mod205.not.a = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod205.not.a, label %.lr.ph149, label %.epil.preheader201

.epil.preheader201:                               ; preds = %.lr.ph149.unr-lcssa, %.lr.ph145
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next165.3, %.lr.ph149.unr-lcssa ]
  %.epil.init204.a = phi ptr [ %.promoted146, %.lr.ph145 ], [ %i.fg, %.lr.ph149.unr-lcssa ]
  %lcmp.mod207.a = icmp ne i64 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod207.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader201
  %indvars.iv164.epil = phi i64 [ %indvars.iv164.epil.init, %.epil.preheader201 ], [ %indvars.iv.next165.epil, %bb.j ] ; 2 uses
  %i.dw = phi ptr [ %.epil.init204.a, %.epil.preheader201 ], [ %i.eb, %bb.j ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader201 ], [ %epil.iter.next, %bb.j ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv164.epil
  %i.dy = load i64, ptr %i.dx, align 4, !tbaa !15
  store i64 %i.dy, ptr %i.dw, align 4, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.d, ptr %i.dz, align 4, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 %3, ptr %i.ea, align 4, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %indvars.iv.next165.epil = add nuw nsw i64 %indvars.iv164.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %.lr.ph149, label %bb.j, !llvm.loop !297

.lr.ph149:                                        ; preds = %bb.j, %.lr.ph149.unr-lcssa
  %.lcssa195 = phi ptr [ %i.fg, %.lr.ph149.unr-lcssa ], [ %i.eb, %bb.j ]
  store ptr %.lcssa195, ptr %i.du, align 8, !tbaa !86
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !57 ; 7 uses
  %i.ee = trunc i32 %i.ed to i16                  ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted151 = load ptr, ptr %i.ef, align 8, !tbaa !88 ; 2 uses
  %i.eg = add nsw i32 %2, -2                      ; 2 uses
  %i.eh = add nsw i32 %2, -3
  %xtraiter211 = and i32 %i.eg, 3                 ; 3 uses
  %i.ei = icmp ult i32 %i.eh, 3
  br i1 %i.ei, label %.epil.preheader210, label %.lr.ph149.new

.lr.ph149.new:                                    ; preds = %.lr.ph149
  %unroll_iter218 = and i32 %i.eg, -4
  %invariant.op = add i32 2, %i.ed
  %invariant.op229 = add i32 3, %i.ed
  br label %bb.m

bb.k:                                             ; preds = %bb.k, %.lr.ph145.new
  %indvars.iv164 = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next165.3, %bb.k ] ; 5 uses
  %i.ej = phi ptr [ %.promoted146, %.lr.ph145.new ], [ %i.fg, %bb.k ] ; 13 uses
  %niter209.a = phi i64 [ 0, %.lr.ph145.new ], [ %niter209.next.3.a, %bb.k ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv164
  %i.el = load i64, ptr %i.ek, align 4, !tbaa !15
  store i64 %i.el, ptr %i.ej, align 4, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.d, ptr %i.em, align 4, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i32 %3, ptr %i.en, align 4, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv164
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 4, !tbaa !15
  store i64 %i.er, ptr %i.eo, align 4, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  store i64 %i.d, ptr %i.es, align 4, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  store i32 %3, ptr %i.et, align 4, !tbaa !94
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv164
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 4, !tbaa !15
  store i64 %i.ex, ptr %i.eu, align 4, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store i64 %i.d, ptr %i.ey, align 4, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  store i32 %3, ptr %i.ez, align 4, !tbaa !94
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 60
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv164
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i64, ptr %i.fc, align 4, !tbaa !15
  store i64 %i.fd, ptr %i.fa, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 68
  store i64 %i.d, ptr %i.fe, align 4, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ej, i64 76
  store i32 %3, ptr %i.ff, align 4, !tbaa !94
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 80 ; 3 uses
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164, 4 ; 2 uses
  %niter209.next.3.a = add i64 %niter209.a, 4     ; 2 uses
  %niter209.ncmp.3.a = icmp eq i64 %niter209.next.3.a, %unroll_iter208.a
  br i1 %niter209.ncmp.3.a, label %.lr.ph149.unr-lcssa, label %bb.k, !llvm.loop !298

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod215.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod215.not, label %.epilog-lcssa, label %.epil.preheader210

.epil.preheader210:                               ; preds = %.unr-lcssa, %.lr.ph149
  %.epil.init214 = phi ptr [ %.promoted151, %.lr.ph149 ], [ %i.gp, %.unr-lcssa ]
  %.0148.epil.init = phi i32 [ 2, %.lr.ph149 ], [ %i.gq, %.unr-lcssa ]
  %lcmp.mod217 = icmp ne i32 %xtraiter211, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader210
  %i.fh = phi ptr [ %.epil.init214, %.epil.preheader210 ], [ %i.fn, %bb.l ] ; 4 uses
  %.0148.epil = phi i32 [ %.0148.epil.init, %.epil.preheader210 ], [ %i.fo, %bb.l ] ; 2 uses
  %epil.iter212 = phi i32 [ 0, %.epil.preheader210 ], [ %epil.iter212.next, %bb.l ]
  store i16 %i.ee, ptr %i.fh, align 2, !tbaa !92
  %i.fi = add i32 %i.ed, %.0148.epil
  %i.fj = trunc i32 %i.fi to i16                  ; 2 uses
  %i.fk = add i16 %i.fj, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !92
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i16 %i.fj, ptr %i.fm, align 2, !tbaa !92
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 6 ; 2 uses
  %i.fo = add nuw nsw i32 %.0148.epil, 1
  %epil.iter212.next = add i32 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i32 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !299
end_hunk_0
begin_hunk_1_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a
  %i.bkn = load i32, ptr %i.e, align 4, !tbaa !112 ; 2 uses
  %i.bko = sub nsw i32 %i.bkn, %.2.us.i.i.i.i
  %i.bkp = sext i32 %.397.us.i.i.i.i to i64
  %i.bkq = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bkp
  store i32 %i.bko, ptr %i.bkq, align 4, !tbaa !112
  %i.bkr = sext i32 %i.bkn to i64
  %i.bks = shl nsw i64 %i.bkr, 3
  %i.bkt = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bks)
          to label %.noexc431 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc431:                                        ; preds = %bb.hv
  %i.bku = icmp eq ptr %i.bkt, null
  br i1 %i.bku, label %.split.us.i.i.i.i, label %.lr.ph15.us.1.i.i.i.i

.lr.ph15.us.1.i.i.i.i:                            ; preds = %.noexc431
  store i32 0, ptr %i.e, align 4, !tbaa !112
  br label %bb.hw

bb.hw:                                            ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i, %.lr.ph15.us.1.i.i.i.i
  %indvars.iv24.1.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.1.i.i.i.i ], [ %indvars.iv.next25.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 2 uses
  %.19311.us.1.i.i.i.i = phi i32 [ %.2.us.i.i.i.i, %.lr.ph15.us.1.i.i.i.i ], [ %.2.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %.29610.us.1.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.1.i.i.i.i ], [ %.397.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 7 uses
  %i.bkv = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.1.i.i.i.i ], [ %i.bmu, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %i.bkw = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %indvars.iv24.1.i.i.i.i ; 12 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 12
  %i.bky = load i8, ptr %i.bkx, align 2, !tbaa !239
  switch i8 %i.bky, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i [
    i8 1, label %bb.ia
    i8 2, label %bb.hz
    i8 3, label %bb.hy
    i8 4, label %bb.hx
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkw, i64 4
  %i.bla = load i16, ptr %i.bkz, align 2, !tbaa !240
  %i.blb = sitofp i16 %i.bla to float
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkw, i64 6
  %i.bld = load i16, ptr %i.blc, align 2, !tbaa !241
  %i.ble = sitofp i16 %i.bld to float
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkw, i64 8
  %i.blg = load i16, ptr %i.blf, align 2, !tbaa !242
  %i.blh = sitofp i16 %i.blg to float
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bkw, i64 10
  %i.blj = load i16, ptr %i.bli, align 2, !tbaa !243
  %i.blk = sitofp i16 %i.blj to float
  %i.bll = load i16, ptr %i.bkw, align 2, !tbaa !244
  %i.blm = sitofp i16 %i.bll to float
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bkw, i64 2
  %i.blo = load i16, ptr %i.bln, align 2, !tbaa !245
  %i.blp = sitofp i16 %i.blo to float
  %i.blq = extractelement <2 x float> %i.bkv, i64 0
  %i.blr = extractelement <2 x float> %i.bkv, i64 1
  call fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr noundef nonnull %i.bkt, ptr noundef %i.e, float noundef %i.blq, float noundef %i.blr, float noundef %i.blb, float noundef %i.ble, float noundef %i.blh, float noundef %i.blk, float noundef %i.blm, float noundef %i.blp, float noundef %i.bau, i32 noundef 0)
  %i.bls = load <2 x i16>, ptr %i.bkw, align 2, !tbaa !92
  %i.blt = sitofp <2 x i16> %i.bls to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.blu = load <4 x i16>, ptr %i.bkw, align 2, !tbaa !92
  %i.blv = sitofp <4 x i16> %i.blu to <4 x float> ; 4 uses
  %i.blw = extractelement <2 x float> %i.bkv, i64 0
  %i.blx = extractelement <2 x float> %i.bkv, i64 1
  %i.bly = extractelement <4 x float> %i.blv, i64 0
  %i.blz = extractelement <4 x float> %i.blv, i64 1
  %i.bma = extractelement <4 x float> %i.blv, i64 2
  %i.bmb = extractelement <4 x float> %i.blv, i64 3
  call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef nonnull %i.bkt, ptr noundef %i.e, float noundef %i.blw, float noundef %i.blx, float noundef %i.bma, float noundef %i.bmb, float noundef %i.bly, float noundef %i.blz, float noundef %i.bau, i32 noundef 0)
  %i.bmc = load <2 x i16>, ptr %i.bkw, align 2, !tbaa !92
  %i.bmd = sitofp <2 x i16> %i.bmc to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.hz:                                            ; preds = %bb.hw
  %i.bme = load i32, ptr %i.e, align 4, !tbaa !112 ; 2 uses
  %i.bmf = add nsw i32 %i.bme, 1
  store i32 %i.bmf, ptr %i.e, align 4, !tbaa !112
  %i.bmg = load <2 x i16>, ptr %i.bkw, align 2, !tbaa !92
  %i.bmh = sitofp <2 x i16> %i.bmg to <2 x float> ; 2 uses
  %i.bmi = sext i32 %i.bme to i64
  %i.bmj = getelementptr inbounds [8 x i8], ptr %i.bkt, i64 %i.bmi
  store <2 x float> %i.bmh, ptr %i.bmj, align 4, !tbaa !15
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.ia:                                            ; preds = %bb.hw
  %i.bmk = icmp sgt i32 %.29610.us.1.i.i.i.i, -1
  %.pre32.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !112 ; 4 uses
  br i1 %i.bmk, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.bml = sub nsw i32 %.pre32.i.i.i.i, %.19311.us.1.i.i.i.i
  %i.bmm = zext nneg i32 %.29610.us.1.i.i.i.i to i64
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.bmm
  store i32 %i.bml, ptr %i.bmn, align 4, !tbaa !112
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.bmo = add nsw i32 %.pre32.i.i.i.i, 1
  store i32 %i.bmo, ptr %i.e, align 4, !tbaa !112
  %i.bmp = load <2 x i16>, ptr %i.bkw, align 2, !tbaa !92
  %i.bmq = sitofp <2 x i16> %i.bmp to <2 x float> ; 2 uses
  %i.bmr = add nsw i32 %.29610.us.1.i.i.i.i, 1
  %i.bms = sext i32 %.pre32.i.i.i.i to i64
  %i.bmt = getelementptr inbounds [8 x i8], ptr %i.bkt, i64 %i.bms
  store <2 x float> %i.bmq, ptr %i.bmt, align 4, !tbaa !15
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i: ; preds = %bb.ic, %bb.hz, %bb.hy, %bb.hx, %bb.hw
  %.397.us.1.i.i.i.i = phi i32 [ %.29610.us.1.i.i.i.i, %bb.hw ], [ %.29610.us.1.i.i.i.i, %bb.hx ], [ %i.bmr, %bb.ic ], [ %.29610.us.1.i.i.i.i, %bb.hy ], [ %.29610.us.1.i.i.i.i, %bb.hz ] ; 2 uses
  %.2.us.1.i.i.i.i = phi i32 [ %.19311.us.1.i.i.i.i, %bb.hw ], [ %.19311.us.1.i.i.i.i, %bb.hx ], [ %.pre32.i.i.i.i, %bb.ic ], [ %.19311.us.1.i.i.i.i, %bb.hy ], [ %.19311.us.1.i.i.i.i, %bb.hz ] ; 2 uses
  %i.bmu = phi <2 x float> [ %i.bkv, %bb.hw ], [ %i.blt, %bb.hx ], [ %i.bmq, %bb.ic ], [ %i.bmd, %bb.hy ], [ %i.bmh, %bb.hz ]
  %indvars.iv.next25.1.i.i.i.i = add nuw nsw i64 %indvars.iv24.1.i.i.i.i, 1 ; 2 uses
  %exitcond28.1.not.i.i.i.i = icmp eq i64 %indvars.iv.next25.1.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond28.1.not.i.i.i.i, label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, label %bb.hw, !llvm.loop !399

.split.us.i.i.i.i:                                ; preds = %.noexc431
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef null)
          to label %.noexc432 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc432:                                        ; preds = %.split.us.i.i.i.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.biw)
          to label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i: ; preds = %.noexc432, %.noexc430, %._crit_edge.i.i.i.i, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i: ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i
  %i.bmv = load i32, ptr %i.e, align 4, !tbaa !112
  %i.bmw = sub nsw i32 %i.bmv, %.2.us.1.i.i.i.i
  %i.bmx = sext i32 %.397.us.1.i.i.i.i to i64
  %i.bmy = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bmx
  store i32 %i.bmw, ptr %i.bmy, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  %min.iters.check = icmp ult i32 %spec.select.i.i.i.i.lcssa, 8
  br i1 %min.iters.check, label %.lr.ph.i23.i.i.i.preheader, label %vector.ph1197

vector.ph1197:                                    ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i
  %n.vec = and i64 %i.biu, 2147483640             ; 3 uses
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1197
  %index1199 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1202, %vector.body1198 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph1197 ], [ %i.bnb, %vector.body1198 ]
  %vec.phi1200 = phi <4 x i32> [ zeroinitializer, %vector.ph1197 ], [ %i.bnc, %vector.body1198 ]
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %index1199 ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 16
  %wide.load = load <4 x i32>, ptr %i.bmz, align 4, !tbaa !112
  %wide.load1201 = load <4 x i32>, ptr %i.bna, align 4, !tbaa !112
  %i.bnb = add <4 x i32> %wide.load, %vec.phi     ; 2 uses
  %i.bnc = add <4 x i32> %wide.load1201, %vec.phi1200 ; 2 uses
  %index.next1202 = add nuw i64 %index1199, 8     ; 2 uses
  %i.bnd = icmp eq i64 %index.next1202, %n.vec
  br i1 %i.bnd, label %middle.block1203, label %vector.body1198, !llvm.loop !400

middle.block1203:                                 ; preds = %vector.body1198
  %bin.rdx = add <4 x i32> %i.bnc, %i.bnb
  %i.bne = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.biu
  br i1 %cmp.n, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, %middle.block1203
  %indvars.iv.i24.i.i.i.ph = phi i64 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %n.vec, %middle.block1203 ]
  %.0874.i.i.i.i.ph = phi i32 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %i.bne, %middle.block1203 ]
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i.preheader, %.lr.ph.i23.i.i.i
  %indvars.iv.i24.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %.lr.ph.i23.i.i.i ], [ %indvars.iv.i24.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ] ; 2 uses
  %.0874.i.i.i.i = phi i32 [ %i.bnh, %.lr.ph.i23.i.i.i ], [ %.0874.i.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ]
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %indvars.iv.i24.i.i.i
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !112
  %i.bnh = add nsw i32 %i.bng, %.0874.i.i.i.i     ; 2 uses
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i423 = icmp eq i64 %indvars.iv.next.i25.i.i.i, %i.biu
  br i1 %exitcond.not.i26.i.i.i423, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i, !llvm.loop !401

._crit_edge.i27.i.i.i:                            ; preds = %.lr.ph.i23.i.i.i, %middle.block1203
  %.lcssa = phi i32 [ %i.bne, %middle.block1203 ], [ %i.bnh, %.lr.ph.i23.i.i.i ]
  %i.bni = add nsw i32 %.lcssa, 1
  %i.bnj = sext i32 %i.bni to i64
  %i.bnk = mul nsw i64 %i.bnj, 20
  %i.bnl = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bnk)
          to label %.noexc434 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc434:                                        ; preds = %._crit_edge.i27.i.i.i
  %i.bnm = icmp eq ptr %i.bnl, null
  br i1 %i.bnm, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.noexc434, %._crit_edge11.i.i.i.i
  %indvars.iv27.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.noexc434 ] ; 2 uses
  %.08315.i.i.i.i = phi i32 [ %i.bnr, %._crit_edge11.i.i.i.i ], [ 0, %.noexc434 ] ; 2 uses
  %.18813.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.noexc434 ] ; 2 uses
  %i.bnn = sext i32 %.08315.i.i.i.i to i64
  %i.bno = getelementptr inbounds [8 x i8], ptr %i.bkt, i64 %i.bnn ; 4 uses
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %indvars.iv27.i.i.i.i ; 2 uses
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !112 ; 4 uses
  %i.bnr = add nsw i32 %i.bnq, %.08315.i.i.i.i
  %i.bns = icmp sgt i32 %i.bnq, 0
  br i1 %i.bns, label %.lr.ph10.preheader.i.i.i.i, label %._crit_edge11.i.i.i.i

.lr.ph10.preheader.i.i.i.i:                       ; preds = %.lr.ph16.i.i.i.i
  %i.bnt = add nsw i32 %i.bnq, -1
  br label %.lr.ph10.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph10.preheader.i.i.i.i
  %i.bnu = phi i32 [ %i.bnq, %.lr.ph10.preheader.i.i.i.i ], [ %i.bom, %.lr.ph10._crit_edge.i.i.i.i ]
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i = phi i32 [ %i.bnt, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.0857.i.i.i.i.a = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %8 = sext i32 %.0857.i.i.i.i to i64             ; 3 uses
  %9 = getelementptr inbounds [8 x i8], ptr %i.bno, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !247  ; 2 uses
  %i.bnv = getelementptr inbounds nuw [8 x i8], ptr %i.bno, i64 %indvars.iv24.i28.i.i.i
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 4
  %i.bnx = load float, ptr %i.bnw, align 4, !tbaa !247 ; 2 uses
  %i.bny = fcmp oeq float %11, %i.bnx
  br i1 %i.bny, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.bnz = sext i32 %.0857.i.i.i.i.a to i64
  %i.boa = getelementptr inbounds [20 x i8], ptr %i.bnl, i64 %i.bnz ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 16
  %i.boc = fcmp ogt float %11, %i.bnx             ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.boc to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.bob, align 4, !tbaa !487
  %i.bod = select i1 %i.boc, i64 %8, i64 %indvars.iv24.i28.i.i.i
  %i.boe = getelementptr inbounds [8 x i8], ptr %i.bno, i64 %i.bod
  %i.bof = select i1 %i.boc, i64 %indvars.iv24.i28.i.i.i, i64 %8
  %i.bog = getelementptr inbounds [8 x i8], ptr %i.bno, i64 %i.bof
  %i.boh = load <2 x float>, ptr %i.boe, align 4, !tbaa !15
  %i.boi = load <2 x float>, ptr %i.bog, align 4, !tbaa !15
  %i.boj = shufflevector <2 x float> %i.boh, <2 x float> %i.boi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.boj, <4 x float> %i.bbg, <4 x float> zeroinitializer)
  store <4 x float> %i.bok, ptr %i.boa, align 4, !tbaa !15
  %i.bol = add nsw i32 %.0857.i.i.i.i.a, 1
  %.pre34.i.i.i.i = load i32, ptr %i.bnp, align 4, !tbaa !112
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.id, %.lr.ph10.i.i.i.i
  %i.bom = phi i32 [ %.pre34.i.i.i.i, %bb.id ], [ %i.bnu, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.bol, %bb.id ], [ %.0857.i.i.i.i.a, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.bon = sext i32 %i.bom to i64
  %i.boo = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.bon
  br i1 %i.boo, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !402

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.biu
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !403

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.bnl, i32 noundef %.2.lcssa.i.i.i.i)
  %i.bop = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.bop, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ih, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ih ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.boq = getelementptr inbounds nuw [20 x i8], ptr %i.bnl, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.boq, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !15
  %i.bor = load <2 x float>, ptr %i.boq, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.boq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !488
  br label %bb.ie

bb.ie:                                            ; preds = %bb.if, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.if ] ; 4 uses
  %i.bos = getelementptr [20 x i8], ptr %i.bnl, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.bot = getelementptr i8, ptr %i.bos, i64 -16
  %i.bou = load float, ptr %i.bot, align 4, !tbaa !249
  %i.bov = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.bou
  br i1 %i.bov, label %bb.if, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.if:                                            ; preds = %bb.ie
  %i.bow = getelementptr i8, ptr %i.bos, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bos, ptr noundef nonnull align 4 dereferenceable(20) %i.bow, i64 20, i1 false), !tbaa.struct !128
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.box = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.box, label %bb.ie, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ie
  %i.boy = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.if, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.boy, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.if ] ; 2 uses
  %i.boz = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.boz
  br i1 %.not.i.i.i.i.i.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.bpa = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.bpb = getelementptr inbounds [20 x i8], ptr %i.bnl, i64 %i.bpa ; 2 uses
  store <2 x float> %i.bor, ptr %i.bpb, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !488
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !404

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i: ; preds = %bb.ih, %._crit_edge17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.bpc = icmp sgt i32 %i.bdv, 63
  br i1 %i.bpc, label %bb.ii, label %.noexc435

bb.ii:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.bpd = shl nuw nsw i32 %i.bdw, 1
  %i.bpe = or disjoint i32 %i.bpd, 1
  %i.bpf = zext nneg i32 %i.bpe to i64
  %i.bpg = shl nuw nsw i64 %i.bpf, 2
  %i.bph = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bpg)
          to label %.noexc435 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc435:                                        ; preds = %bb.ii, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ], [ %i.bph, %bb.ii ] ; 43 uses
  %i.bpi = sext i32 %i.bdw to i64                 ; 3 uses
  %i.bpj = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.bpi ; 9 uses
  %i.bpk = add nsw i32 %.0168.i, %i.bea
  %i.bpl = sitofp i32 %i.bpk to float
  %i.bpm = fadd float %i.bpl, 1.000000e+00
  %i.bpn = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.bpo = getelementptr inbounds [20 x i8], ptr %i.bnl, i64 %i.bpn
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 4
  store float %i.bpm, ptr %i.bpp, align 4, !tbaa !249
  %i.bpq = icmp ult i32 %i.bdz, 2147483647
  br i1 %i.bpq, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %.noexc435
  %i.bpr = icmp ne i32 %.0168.i, 0
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpj, i64 4 ; 2 uses
  %i.bpt = shl nsw i64 %i.bpi, 2
  %i.bpu = add nsw i32 %i.bdv, 2
  %i.bpv = sext i32 %i.bpu to i64
  %i.bpw = shl nsw i64 %i.bpv, 2
  %i.bpx = sitofp i32 %i.bdw to float             ; 3 uses
  %i.bpy = icmp ult i32 %i.bdv, 2147483647        ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.bdw to i64
  br label %bb.ij

bb.ij:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.bnl, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %.0168.i, %.lr.ph33.i.i.i.i.i ], [ %i.czt, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.czu, %._crit_edge25.i.i.i.i.i ] ; 4 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.bpz = sitofp i32 %.07530.i.i.i.i.i to float  ; 68 uses
  %i.bqa = fadd float %i.bpz, 1.000000e+00        ; 70 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.bpt, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bpj, i8 0, i64 %i.bpw, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.il, %bb.ij
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ij ], [ %.sroa.7.2.i.i.i.i.i, %bb.il ] ; 2 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.bqc = load float, ptr %i.bqb, align 4, !tbaa !249 ; 2 uses
  %i.bqd = fcmp ugt float %i.bqc, %i.bqa
  br i1 %i.bqd, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.bqe = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.bpr, %i.bqe
  br label %bb.im

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ij, %bb.il
  %i.bqf = phi ptr [ %i.bql, %bb.il ], [ %.0..i.i.i.i.i, %bb.ij ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.il ], [ %i.c, %bb.ij ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.il ], [ %.sroa.7.027.i.i.i.i.i, %bb.ij ] ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 28
  %i.bqh = load float, ptr %i.bqg, align 4, !tbaa !492
  %i.bqi = fcmp ugt float %i.bqh, %i.bpz
  br i1 %i.bqi, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bqj = load ptr, ptr %i.bqf, align 8, !tbaa !493
  store ptr %i.bqj, ptr %.07810.i.i.i.i.i, align 8, !tbaa !490
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 20
  store float 0.000000e+00, ptr %i.bqk, align 4, !tbaa !494
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.bqf, align 8, !tbaa !83
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bqf, %bb.ik ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.bqf, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.ik ] ; 2 uses
  %i.bql = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !490 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.bql, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !405

bb.im:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.bqm = phi float [ %i.bqc, %.lr.ph15.i.i.i.i.i ], [ %i.bsb, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.bqn = phi ptr [ %i.bqb, %.lr.ph15.i.i.i.i.i ], [ %i.bsa, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.brz, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !495 ; 3 uses
  %i.bqq = fcmp une float %i.bqm, %i.bqp
  br i1 %i.bqq, label %bb.in, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.in:                                            ; preds = %bb.im
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bqr = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !83
  br label %bb.is

bb.ip:                                            ; preds = %bb.in
  %i.bqs = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.bqs, label %bb.iq, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ip
  %i.bqt = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bqu = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608)
          to label %.noexc436 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc436:                                        ; preds = %bb.iq
  %i.bqv = icmp eq ptr %i.bqu, null
  br i1 %i.bqv, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %.noexc436
end_hunk_1
