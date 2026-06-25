inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZNK10btSoftBody7getMassEi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load float, ptr %i.e, align 8, !tbaa !198 ; 2 uses
  %i.g = fcmp ogt float %i.f, 0.000000e+00
  %i.h = fdiv float 1.000000e+00, %i.f
  %i.i = select i1 %i.g, float %i.h, float 0.000000e+00
  ret float %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK10btSoftBody12getTotalMassEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load float, ptr %i.h, align 8, !tbaa !198 ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %i.k = fdiv float 1.000000e+00, %i.i
  %i.l = select i1 %i.j, float %i.k, float 0.000000e+00
  %i.m = fadd float %.056.epil.init, %i.l
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.epil.preheader ]
  ret float %.05.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.056 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.aa, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load float, ptr %i.o, align 8, !tbaa !198 ; 2 uses
  %i.q = fcmp ogt float %i.p, 0.000000e+00
  %i.r = fdiv float 1.000000e+00, %i.p
  %i.s = select i1 %i.q, float %i.r, float 0.000000e+00
  %i.t = fadd float %.056, %i.s
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  %i.w = load float, ptr %i.v, align 8, !tbaa !198 ; 2 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  %i.y = fdiv float 1.000000e+00, %i.w
  %i.z = select i1 %i.x, float %i.y, float 0.000000e+00
  %i.aa = fadd float %i.t, %i.z                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody12setTotalMassEfb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110  ; 10 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %2, label %.preheader27, label %.loopexit

.preheader27:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph, label %.preheader26

.lr.ph:                                           ; preds = %.preheader27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.f = icmp ult i32 %i.b, 8
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.c

.preheader26.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader26, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader26.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.preheader26.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !198
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader26, label %bb.b, !llvm.loop !329

.preheader26:                                     ; preds = %.preheader26.loopexit.unr-lcssa, %bb.b, %.preheader27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph32, label %.preheader

.lr.ph32:                                         ; preds = %.preheader26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
  %wide.trip.count45 = zext nneg i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store float 0.000000e+00, ptr %i.o, align 8, !tbaa !198
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !198
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !198
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store float 0.000000e+00, ptr %i.u, align 8, !tbaa !198
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 576
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 696
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !198
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 816
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !198
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 936
  store float 0.000000e+00, ptr %i.ac, align 8, !tbaa !198
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader26.loopexit.unr-lcssa, label %bb.c

.preheader:                                       ; preds = %bb.d, %.preheader26
  br i1 %i.c, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109 ; 5 uses
  %wide.trip.count50 = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph34
  %n.vec = and i64 %wide.trip.count50, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %index
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %index
  %i.ah = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %index
  %i.ai = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 216 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 336 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 456 ; 2 uses
  %i.an = load float, ptr %i.aj, align 8, !tbaa !198
  %i.ao = load float, ptr %i.ak, align 8, !tbaa !198
  %i.ap = load float, ptr %i.al, align 8, !tbaa !198
  %i.aq = load float, ptr %i.am, align 8, !tbaa !198
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = fdiv <4 x float> splat (float 1.000000e+00), %i.au ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  store float %i.aw, ptr %i.aj, align 8, !tbaa !198
  %i.ax = extractelement <4 x float> %i.av, i64 1
  store float %i.ax, ptr %i.ak, align 8, !tbaa !198
  %3 = extractelement <4 x float> %i.av, i64 2
  store float %3, ptr %i.al, align 8, !tbaa !198
  %4 = extractelement <4 x float> %i.av, i64 3
  store float %4, ptr %i.am, align 8, !tbaa !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count50
  br i1 %cmp.n, label %.lr.ph.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph34, %middle.block
  %indvars.iv47.ph = phi i64 [ 0, %.lr.ph34 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %indvars.iv42 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next43, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv42 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !249 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !249 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !249 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !159
  %i.bk = load float, ptr %i.bc, align 4, !tbaa !159 ; 2 uses
  %i.bl = fsub float %i.bj, %i.bk                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !159
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !159 ; 2 uses
  %i.bq = fsub float %i.bn, %i.bp                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load float, ptr %i.br, align 4, !tbaa !159
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159 ; 2 uses
  %i.bv = fsub float %i.bs, %i.bu                 ; 2 uses
  %i.bw = load float, ptr %i.bi, align 4, !tbaa !159
  %i.bx = fsub float %i.bw, %i.bk                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !159
  %i.ca = fsub float %i.bz, %i.bp                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !159
  %i.cd = fsub float %i.cc, %i.bu                 ; 2 uses
  %i.ce = fneg float %i.ca
  %i.cf = fmul float %i.bv, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cd, float %i.cf) ; 2 uses
  %i.ch = fneg float %i.cd
  %i.ci = fmul float %i.bl, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bx, float %i.ci) ; 2 uses
  %i.ck = fneg float %i.bx
  %i.cl = fmul float %i.bq, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ca, float %i.cl) ; 2 uses
  %i.cn = fmul float %i.cj, %i.cj
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.co)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cp) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 96 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !198
  %i.cs = fadd float %sqrt.i.i, %i.cr
  store float %i.cs, ptr %i.cq, align 8, !tbaa !198
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !198
  %i.cv = fadd float %sqrt.i.i, %i.cu
  store float %i.cv, ptr %i.ct, align 8, !tbaa !198
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 96 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !198
  %i.cy = fadd float %sqrt.i.i, %i.cx
  store float %i.cy, ptr %i.cw, align 8, !tbaa !198
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.preheader, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %scalar.ph ], [ %indvars.iv47.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv47
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96 ; 2 uses
  %i.db = load float, ptr %i.da, align 8, !tbaa !198
  %i.dc = fdiv float 1.000000e+00, %i.db
  store float %i.dc, ptr %i.da, align 8, !tbaa !198
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.lr.ph.i, label %scalar.ph, !llvm.loop !331

.loopexit:                                        ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %scalar.ph, %middle.block, %.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 4 uses
  %xtraiter76 = and i64 %wide.trip.count.i, 1
  %i.df = icmp eq i32 %i.b, 1
  br i1 %i.df, label %.epil.preheader75, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter81 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %.056.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.dt, %bb.e ]
  %niter82 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter82.next.1, %bb.e ]
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load float, ptr %i.dh, align 8, !tbaa !198 ; 2 uses
  %i.dj = fcmp ogt float %i.di, 0.000000e+00
  %i.dk = fdiv float 1.000000e+00, %i.di
  %i.dl = select i1 %i.dj, float %i.dk, float 0.000000e+00
  %i.dm = fadd float %.056.i, %i.dl
  %i.dn = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 216
  %i.dp = load float, ptr %i.do, align 8, !tbaa !198 ; 2 uses
  %i.dq = fcmp ogt float %i.dp, 0.000000e+00
  %i.dr = fdiv float 1.000000e+00, %i.dp
  %i.ds = select i1 %i.dq, float %i.dr, float 0.000000e+00
  %i.dt = fadd float %i.dm, %i.ds                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %.lr.ph36.unr-lcssa, label %bb.e

.lr.ph36.unr-lcssa:                               ; preds = %bb.e
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.lr.ph36, label %.epil.preheader75

.epil.preheader75:                                ; preds = %.lr.ph36.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.lr.ph36.unr-lcssa ]
  %.056.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.dt, %.lr.ph36.unr-lcssa ]
  %lcmp.mod80 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.du = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i.epil.init
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !198 ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  %i.dy = fdiv float 1.000000e+00, %i.dw
  %i.dz = select i1 %i.dx, float %i.dy, float 0.000000e+00
  %i.ea = fadd float %.056.i.epil.init, %i.dz
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.unr-lcssa, %.epil.preheader75
  %.lcssa = phi float [ %i.dt, %.lr.ph36.unr-lcssa ], [ %i.ea, %.epil.preheader75 ]
  %i.eb = fdiv float 1.000000e+00, %.lcssa
  %i.ec = fmul float %1, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !109 ; 5 uses
  %wide.trip.count55 = zext nneg i32 %i.b to i64
  %min.iters.check64 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph36
  %n.vec67 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next70, %vector.body68 ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %index69
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %index69
  %i.eh = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %index69
  %i.ei = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %index69
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 96 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 216 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 336 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 456 ; 2 uses
  %i.en = load float, ptr %i.ej, align 8, !tbaa !198
  %i.eo = load float, ptr %i.ek, align 8, !tbaa !198
  %i.ep = load float, ptr %i.el, align 8, !tbaa !198
  %i.eq = load float, ptr %i.em, align 8, !tbaa !198
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 3
  %i.ev = fdiv <4 x float> %i.eu, %broadcast.splat ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 0
  store float %i.ew, ptr %i.ej, align 8, !tbaa !198
  %i.ex = extractelement <4 x float> %i.ev, i64 1
  store float %i.ex, ptr %i.ek, align 8, !tbaa !198
  %5 = extractelement <4 x float> %i.ev, i64 2
  store float %5, ptr %i.el, align 8, !tbaa !198
  %6 = extractelement <4 x float> %i.ev, i64 3
  store float %6, ptr %i.em, align 8, !tbaa !198
  %index.next70 = add nuw i64 %index69, 4         ; 2 uses
  %i.ey = icmp eq i64 %index.next70, %n.vec67
  br i1 %i.ey, label %middle.block71, label %vector.body68, !llvm.loop !332

middle.block71:                                   ; preds = %vector.body68
  %cmp.n72 = icmp eq i64 %n.vec67, %wide.trip.count.i
  br i1 %cmp.n72, label %._crit_edge, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.lr.ph36, %middle.block71
  %indvars.iv52.ph = phi i64 [ 0, %.lr.ph36 ], [ %n.vec67, %middle.block71 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %scalar.ph63 ], [ %indvars.iv52.ph, %scalar.ph63.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %indvars.iv52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !198
  %i.fc = fdiv float %i.fb, %i.ec
  store float %i.fc, ptr %i.fa, align 8, !tbaa !198
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %scalar.ph63, !llvm.loop !333

._crit_edge:                                      ; preds = %scalar.ph63, %middle.block71, %.preheader, %.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.fd, align 4, !tbaa !166
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody15setTotalDensityEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNK10btSoftBody9getVolumeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.027.0.copyload.i = load float, ptr %i.f, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.035.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bf, %bb.c ]
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !249  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !159
  %i.q = fsub float %i.p, %.sroa.027.0.copyload.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fsub float %i.s, %.sroa.6.0.copyload.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !159
  %i.w = fsub float %i.v, %.sroa.9.0.copyload.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159
  %i.ab = fsub float %i.aa, %.sroa.027.0.copyload.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fsub float %i.ad, %.sroa.6.0.copyload.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159
  %i.ah = fsub float %i.ag, %.sroa.9.0.copyload.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !249 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159
  %i.am = fsub float %i.al, %.sroa.027.0.copyload.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159
  %i.ap = fsub float %i.ao, %.sroa.6.0.copyload.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  %i.as = fsub float %i.ar, %.sroa.9.0.copyload.i ; 2 uses
  %i.at = fneg float %i.ap
  %i.au = fmul float %i.ah, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.as, float %i.au)
  %i.aw = fneg float %i.as
  %i.ax = fmul float %i.ab, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.am, float %i.ax)
  %i.az = fneg float %i.am
  %i.ba = fmul float %i.ae, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ap, float %i.ba)
  %i.bc = fmul float %i.t, %i.ay
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.q, float %i.av, float %i.bc)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.bb, float %i.bd)
  %i.bf = fadd float %.035.i, %i.be               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.b ], [ %i.bf, %bb.c ]
  %i.bg = fdiv float %.0.lcssa.i, 6.000000e+00
  br label %_ZNK10btSoftBody9getVolumeEv.exit

_ZNK10btSoftBody9getVolumeEv.exit:                ; preds = %bb.a, %._crit_edge.i
  %.1.i = phi float [ %i.bg, %._crit_edge.i ], [ 0.000000e+00, %bb.a ]
  %i.bh = fmul float %1, %.1.i
  tail call void @_ZN10btSoftBody12setTotalMassEfb(ptr noundef nonnull align 8 dereferenceable(1496) %0, float noundef %i.bh, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK10btSoftBody9getVolumeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.027.0.copyload = load float, ptr %i.f, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.035 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bf, %bb.c ]
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !249  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !159
  %i.q = fsub float %i.p, %.sroa.027.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fsub float %i.s, %.sroa.6.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !159
  %i.w = fsub float %i.v, %.sroa.9.0.copyload
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159
  %i.ab = fsub float %i.aa, %.sroa.027.0.copyload ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fsub float %i.ad, %.sroa.6.0.copyload   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159
  %i.ah = fsub float %i.ag, %.sroa.9.0.copyload   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !249 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159
  %i.am = fsub float %i.al, %.sroa.027.0.copyload ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159
  %i.ap = fsub float %i.ao, %.sroa.6.0.copyload   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  %i.as = fsub float %i.ar, %.sroa.9.0.copyload   ; 2 uses
  %i.at = fneg float %i.ap
  %i.au = fmul float %i.ah, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.as, float %i.au)
  %i.aw = fneg float %i.as
  %i.ax = fmul float %i.ab, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.am, float %i.ax)
  %i.az = fneg float %i.am
  %i.ba = fmul float %i.ae, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ap, float %i.ba)
  %i.bc = fmul float %i.t, %i.ay
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.q, float %i.av, float %i.bc)
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody13setVolumeMassEf:bb.a

.preheader:                                       ; preds = %bb.d, %.preheader44
  br i1 %i.m, label %.lr.ph51, label %.loopexit

.lr.ph51:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %wide.trip.count65 = zext i32 %i.n to i64       ; 7 uses
  %i.ao = add nsw i64 %wide.trip.count65, -1      ; 2 uses
  %xtraiter75 = and i64 %wide.trip.count65, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.epil.preheader74, label %.lr.ph51.new

.lr.ph51.new:                                     ; preds = %.lr.ph51
  %unroll_iter79 = and i64 %wide.trip.count65, 4294967294
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %indvars.iv57 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next58, %bb.d ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [136 x i8], ptr %i.s, i64 %indvars.iv57 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load float, ptr %i.ar, align 8, !tbaa !272
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !249 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !198
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.aw, align 8, !tbaa !198
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.az, %i.v
  %i.bb = sdiv exact i64 %i.ba, 120
  %sext = shl i64 %i.bb, 32
  %i.bc = ashr exact i64 %sext, 30
  %i.bd = getelementptr inbounds i8, ptr %.sroa.1035.172, i64 %i.bc ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  %i.bf = fadd float %i.be, 1.000000e+00
  store float %i.bf, ptr %i.bd, align 4, !tbaa !159
  %i.bg = load float, ptr %i.ar, align 8, !tbaa !272
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !249 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !198
  %i.bm = fadd float %i.bh, %i.bl
  store float %i.bm, ptr %i.bk, align 8, !tbaa !198
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bn, %i.v
  %i.bp = sdiv exact i64 %i.bo, 120
  %sext.1 = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.1, 30
  %i.br = getelementptr inbounds i8, ptr %.sroa.1035.172, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !159
  %i.bt = fadd float %i.bs, 1.000000e+00
  store float %i.bt, ptr %i.br, align 4, !tbaa !159
  %i.bu = load float, ptr %i.ar, align 8, !tbaa !272
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !249 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 2 uses
  %i.bz = load float, ptr %i.by, align 8, !tbaa !198
  %i.ca = fadd float %i.bv, %i.bz
  store float %i.ca, ptr %i.by, align 8, !tbaa !198
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.cb, %i.v
  %i.cd = sdiv exact i64 %i.cc, 120
  %sext.2 = shl i64 %i.cd, 32
  %i.ce = ashr exact i64 %sext.2, 30
  %i.cf = getelementptr inbounds i8, ptr %.sroa.1035.172, i64 %i.ce ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !159
  %i.ch = fadd float %i.cg, 1.000000e+00
  store float %i.ch, ptr %i.cf, align 4, !tbaa !159
  %i.ci = load float, ptr %i.ar, align 8, !tbaa !272
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !249 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !198
  %i.co = fadd float %i.cj, %i.cn
  store float %i.co, ptr %i.cm, align 8, !tbaa !198
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.cp, %i.v
  %i.cr = sdiv exact i64 %i.cq, 120
  %sext.3 = shl i64 %i.cr, 32
  %i.cs = ashr exact i64 %sext.3, 30
  %i.ct = getelementptr inbounds i8, ptr %.sroa.1035.172, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !159
  %i.cv = fadd float %i.cu, 1.000000e+00
  store float %i.cv, ptr %i.ct, align 4, !tbaa !159
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.preheader, label %bb.d

.lr.ph.i.i.unr-lcssa:                             ; preds = %bb.k
  %lcmp.mod77.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i, label %.epil.preheader74

.epil.preheader74:                                ; preds = %.lr.ph.i.i.unr-lcssa, %.lr.ph51
  %indvars.iv62.epil.init = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next63.1, %.lr.ph.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv62.epil.init
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !198 ; 2 uses
  %i.cz = fcmp ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %.epil.preheader74
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1035.172, i64 %indvars.iv62.epil.init
  %i.db = load float, ptr %i.da, align 4, !tbaa !159
  %i.dc = fdiv float %i.db, %i.cy
  store float %i.dc, ptr %i.cx, align 8, !tbaa !198
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.epil.preheader74, %bb.e, %.lr.ph.i.i.unr-lcssa
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 8 uses
  %wide.trip.count.i.i = zext nneg i32 %i.n to i64
  %xtraiter82 = and i64 %wide.trip.count65, 1
  %i.df = icmp eq i64 %i.ao, 0
  br i1 %i.df, label %.epil.preheader81, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter87 = and i64 %wide.trip.count65, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 3 uses
  %.056.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.dt, %bb.f ]
  %niter88 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter88.next.1, %bb.f ]
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load float, ptr %i.dh, align 8, !tbaa !198 ; 2 uses
  %i.dj = fcmp ogt float %i.di, 0.000000e+00
  %i.dk = fdiv float 1.000000e+00, %i.di
  %i.dl = select i1 %i.dj, float %i.dk, float 0.000000e+00
  %i.dm = fadd float %.056.i.i, %i.dl
  %i.dn = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 216
  %i.dp = load float, ptr %i.do, align 8, !tbaa !198 ; 2 uses
  %i.dq = fcmp ogt float %i.dp, 0.000000e+00
  %i.dr = fdiv float 1.000000e+00, %i.dp
  %i.ds = select i1 %i.dq, float %i.dr, float 0.000000e+00
  %i.dt = fadd float %i.dm, %i.ds                 ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter88.next.1 = add i64 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.lr.ph36.i.unr-lcssa, label %bb.f

.lr.ph36.i.unr-lcssa:                             ; preds = %bb.f
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod84.not, label %.lr.ph36.i, label %.epil.preheader81

.epil.preheader81:                                ; preds = %.lr.ph36.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph36.i.unr-lcssa ]
  %.056.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.dt, %.lr.ph36.i.unr-lcssa ]
  %lcmp.mod86 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.du = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv.i.i.epil.init
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !198 ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  %i.dy = fdiv float 1.000000e+00, %i.dw
  %i.dz = select i1 %i.dx, float %i.dy, float 0.000000e+00
  %i.ea = fadd float %.056.i.i.epil.init, %i.dz
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.unr-lcssa, %.epil.preheader81
  %.lcssa = phi float [ %i.dt, %.lr.ph36.i.unr-lcssa ], [ %i.ea, %.epil.preheader81 ]
  %i.eb = fdiv float 1.000000e+00, %.lcssa
  %i.ec = fmul float %1, %i.eb                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph36.i
  %n.vec = and i64 %wide.trip.count65, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %index
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %index
  %i.ef = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %index
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %index
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 216 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 336 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 456 ; 2 uses
  %i.el = load float, ptr %i.eh, align 8, !tbaa !198
  %i.em = load float, ptr %i.ei, align 8, !tbaa !198
  %i.en = load float, ptr %i.ej, align 8, !tbaa !198
  %i.eo = load float, ptr %i.ek, align 8, !tbaa !198
  %i.ep = insertelement <4 x float> poison, float %i.el, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.em, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 3
  %i.et = fdiv <4 x float> %i.es, %broadcast.splat ; 4 uses
  %i.eu = extractelement <4 x float> %i.et, i64 0
  store float %i.eu, ptr %i.eh, align 8, !tbaa !198
  %i.ev = extractelement <4 x float> %i.et, i64 1
  store float %i.ev, ptr %i.ei, align 8, !tbaa !198
  %2 = extractelement <4 x float> %i.et, i64 2
  store float %2, ptr %i.ej, align 8, !tbaa !198
  %3 = extractelement <4 x float> %i.et, i64 3
  store float %3, ptr %i.ek, align 8, !tbaa !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph36.i, %middle.block
  %indvars.iv52.i.ph = phi i64 [ 0, %.lr.ph36.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %scalar.ph ], [ %indvars.iv52.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [120 x i8], ptr %i.de, i64 %indvars.iv52.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 96 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !198
  %i.fa = fdiv float %i.ez, %i.ec
  store float %i.fa, ptr %i.ey, align 8, !tbaa !198
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i.i
  br i1 %exitcond56.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !336

bb.g:                                             ; preds = %bb.k, %.lr.ph51.new
  %indvars.iv62 = phi i64 [ 0, %.lr.ph51.new ], [ %indvars.iv.next63.1, %bb.k ] ; 4 uses
  %niter80 = phi i64 [ 0, %.lr.ph51.new ], [ %niter80.next.1, %bb.k ]
  %i.fb = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv62
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 96 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !198 ; 2 uses
  %i.fe = fcmp ogt float %i.fd, 0.000000e+00
  br i1 %i.fe, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1035.172, i64 %indvars.iv62
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !159
  %i.fh = fdiv float %i.fg, %i.fd
  store float %i.fh, ptr %i.fc, align 8, !tbaa !198
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next63 = or disjoint i64 %indvars.iv62, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv.next63
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 96 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !198 ; 2 uses
  %i.fl = fcmp ogt float %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1035.172, i64 %indvars.iv.next63
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !159
  %i.fo = fdiv float %i.fn, %i.fk
  store float %i.fo, ptr %i.fj, align 8, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %.lr.ph.i.i.unr-lcssa, label %bb.g

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.fp, align 4, !tbaa !166
  %.not.i.i.i29.not = icmp eq ptr %.sroa.1035.172, null
  br i1 %.not.i.i.i29.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1035.172)
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %.loopexit, %bb.l
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16setVolumeDensityEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.b = load i32, ptr %i.a, align 4, !tbaa !122  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0914.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load float, ptr %i.h, align 8, !tbaa !272
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i) ; 4 uses
  %i.k = fadd float %.0914.epil.init, %i.j
  %i.l = fadd float %i.k, %i.j
  %i.m = fadd float %i.l, %i.j
  %i.n = fadd float %i.m, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.09.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.epil.preheader ]
  %i.o = fmul float %1, %.09.lcssa
  %i.p = fdiv float %i.o, 6.000000e+00
  tail call void @_ZN10btSoftBody13setVolumeMassEf(ptr noundef nonnull align 8 dereferenceable(1496) %0, float noundef %i.p)
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0914 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !272
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 4 uses
  %i.u = fadd float %.0914, %i.t
  %i.v = fadd float %i.u, %i.t
  %i.w = fadd float %i.v, %i.t
  %i.x = fadd float %i.w, %i.t
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load float, ptr %i.z, align 8, !tbaa !272
  %i.ab = tail call noundef float @llvm.fabs.f32(float %i.aa) ; 4 uses
  %i.ac = fadd float %i.x, %i.ab
  %i.ad = fadd float %i.ac, %i.ab
  %i.ae = fadd float %i.ad, %i.ab
  %i.af = fadd float %i.ae, %i.ab                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody9transformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !182  ; 5 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef float %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.z), !inline_history !183 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.x, align 4, !tbaa !159
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_1
