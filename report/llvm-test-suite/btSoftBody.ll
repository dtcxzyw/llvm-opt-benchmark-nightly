Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody7setPoseEbb:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load float, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %i.o = fdiv float 1.000000e+00, %i.m
  %i.p = select i1 %i.n, float %i.o, float 0.000000e+00
  %i.q = fadd float %.056.i, %i.p
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load float, ptr %i.s, align 8, !tbaa !197 ; 2 uses
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  %i.v = fdiv float 1.000000e+00, %i.t
  %i.w = select i1 %i.u, float %i.v, float 0.000000e+00
  %i.x = fadd float %i.q, %i.w                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa, label %bb.b

_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK10btSoftBody12getTotalMassEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa ]
  %.056.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.x, %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %indvars.iv.i.epil.init
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load float, ptr %i.z, align 8, !tbaa !197 ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  %i.ac = fdiv float 1.000000e+00, %i.aa
  %i.ad = select i1 %i.ab, float %i.ac, float 0.000000e+00
  %i.ae = fadd float %.056.i.epil.init, %i.ad
  br label %_ZNK10btSoftBody12getTotalMassEv.exit

_ZNK10btSoftBody12getTotalMassEv.exit:            ; preds = %.epil.preheader, %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa, %bb.a
  %.05.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.x, %_ZNK10btSoftBody12getTotalMassEv.exit.loopexit.unr-lcssa ], [ %i.ae, %.epil.preheader ] ; 3 uses
  %i.af = sitofp i32 %i.f to float
  %i.ag = fmul float %.05.lcssa.i, %i.af
  %i.ah = fmul float %i.ag, 1.000000e+03          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !44 ; 3 uses
  %i.ak = icmp sgt i32 %i.f, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.c:                                             ; preds = %_ZNK10btSoftBody12getTotalMassEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !45
  %i.an = icmp slt i32 %i.am, %i.f
  br i1 %i.an, label %bb.d, label %..lr.ph.i37_crit_edge

..lr.ph.i37_crit_edge:                            ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %.lr.ph.i37

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = sext i32 %i.f to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %i.aq = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ap, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !44
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ar = phi i32 [ %.pre.i, %bb.e ], [ %i.aj, %bb.d ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.aq, %bb.e ], [ null, %bb.d ] ; 9 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 9 uses
  br i1 %i.as, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.av = ptrtoaddr ptr %i.au to i64
  %.0.i.i.i185 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  %i.aw = sub i64 %i.av, %.0.i.i.i185
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond203 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond203, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !159
  %wide.load186 = load <4 x float>, ptr %i.az, align 4, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x float> %wide.load, ptr %i.ax, align 4, !tbaa !159
  store <4 x float> %wide.load186, ptr %i.ba, align 4, !tbaa !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter219 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i.prol
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  store float %i.be, ptr %i.bc, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter219
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !427

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !159
  store float %i.bj, ptr %i.bh, align 4, !tbaa !159
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !159
  store float %i.bm, ptr %i.bk, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.1
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !159
  store float %i.bp, ptr %i.bn, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.2
  %i.bs = load float, ptr %i.br, align 4, !tbaa !159
  store float %i.bs, ptr %i.bq, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !428

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !42, !range !175, !noundef !176
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.au)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i8 1, ptr %i.bw, align 8, !tbaa !42
  store ptr %.0.i.i.i, ptr %i.at, align 8, !tbaa !43
  store i32 %i.f, ptr %i.al, align 8, !tbaa !45
  %.pre135.pre = load i32, ptr %i.e, align 4, !tbaa !110
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %..lr.ph.i37_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre135 = phi i32 [ %i.f, %..lr.ph.i37_crit_edge ], [ %.pre135.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.bx = phi ptr [ %.pre, %..lr.ph.i37_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.by = sext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i38 = sext i32 %i.f to i64
  %i.bz = shl nsw i64 %i.by, 2
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.bz
  %i.ca = sub nsw i64 %wide.trip.count.i38, %i.by
  %i.cb = shl nsw i64 %i.ca, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cb, i1 false), !tbaa !159
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i37, %_ZNK10btSoftBody12getTotalMassEv.exit
  %i.cc = phi i32 [ %.pre135, %.lr.ph.i37 ], [ %i.f, %_ZNK10btSoftBody12getTotalMassEv.exit ] ; 14 uses
  store i32 %i.f, ptr %i.ai, align 4, !tbaa !44
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %_ZNK10btSoftBody11evaluateComEv.exit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !109 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cc to i64   ; 10 uses
  %i.cg = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter222 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.epil.preheader221, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter226 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

.lr.ph105.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph105, label %.epil.preheader221

.epil.preheader221:                               ; preds = %.lr.ph105.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph105.unr-lcssa ]
  %.035102.epil.init = phi float [ %.05.lcssa.i, %.lr.ph ], [ %.136.1, %.lr.ph105.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i32 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %i.cf, i64 %indvars.iv.epil.init
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !197
  %i.cl = fcmp ugt float %i.ck, 0.000000e+00
  %i.cm = fadd float %i.ah, %.035102.epil.init
  %.136.epil = select i1 %i.cl, float %.035102.epil.init, float %i.cm
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.unr-lcssa, %.epil.preheader221
  %.136.lcssa = phi float [ %.136.1, %.lr.ph105.unr-lcssa ], [ %.136.epil, %.epil.preheader221 ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !109 ; 9 uses
  %i.cp = fdiv float %i.ah, %.136.lcssa           ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43 ; 6 uses
  %wide.trip.count123 = zext nneg i32 %i.cc to i64
  %min.iters.check192 = icmp ult i32 %i.cc, 4
  br i1 %min.iters.check192, label %scalar.ph191.preheader, label %vector.memcheck187

vector.memcheck187:                               ; preds = %.lr.ph105
  %i.cs = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep188 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %scevgep189 = getelementptr nuw i8, ptr %i.co, i64 96
  %i.ct = mul nuw nsw i64 %wide.trip.count, 120
  %i.cu = getelementptr i8, ptr %i.co, i64 %i.ct
  %scevgep190 = getelementptr i8, ptr %i.cu, i64 -20
  %bound0 = icmp ult ptr %i.cr, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph191.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck187
  %n.vec194 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.136.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph193
  %index198 = phi i64 [ 0, %vector.ph193 ], [ %index.next199, %vector.body197 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %index198
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %index198
  %i.cx = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %index198
  %i.cy = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %index198
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 216
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 336
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 456
  %i.dd = load float, ptr %i.cz, align 8, !tbaa !197, !alias.scope !436
  %i.de = load float, ptr %i.da, align 8, !tbaa !197, !alias.scope !436
  %i.df = load float, ptr %i.db, align 8, !tbaa !197, !alias.scope !436
  %i.dg = load float, ptr %i.dc, align 8, !tbaa !197, !alias.scope !436
  %i.dh = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 3 ; 2 uses
  %i.dl = fcmp ogt <4 x float> %i.dk, zeroinitializer
  %i.dm = fmul <4 x float> %broadcast.splat, %i.dk
  %i.dn = fdiv <4 x float> splat (float 1.000000e+00), %i.dm
  %i.do = select <4 x i1> %i.dl, <4 x float> %i.dn, <4 x float> %broadcast.splat196
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index198
  store <4 x float> %i.do, ptr %i.dp, align 4, !tbaa !159, !alias.scope !437, !noalias !436
  %index.next199 = add nuw i64 %index198, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.dq, label %middle.block200, label %vector.body197, !llvm.loop !432

middle.block200:                                  ; preds = %vector.body197
  %cmp.n201 = icmp eq i64 %n.vec194, %wide.trip.count
  br i1 %cmp.n201, label %._crit_edge, label %scalar.ph191.preheader

scalar.ph191.preheader:                           ; preds = %vector.memcheck187, %.lr.ph105, %middle.block200
  %indvars.iv120.ph = phi i64 [ 0, %vector.memcheck187 ], [ 0, %.lr.ph105 ], [ %n.vec194, %middle.block200 ] ; 5 uses
  %xtraiter228 = and i64 %wide.trip.count, 1
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %scalar.ph191.prol.loopexit, label %scalar.ph191.prol

scalar.ph191.prol:                                ; preds = %scalar.ph191.preheader
  %i.dr = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %indvars.iv120.ph
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !197 ; 2 uses
  %i.du = fcmp ogt float %i.dt, 0.000000e+00
  %i.dv = fmul float %.136.lcssa, %i.dt
  %i.dw = fdiv float 1.000000e+00, %i.dv
  %i.dx = select i1 %i.du, float %i.dw, float %i.cp
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv120.ph
  store float %i.dx, ptr %i.dy, align 4, !tbaa !159
  %indvars.iv.next121.prol = or disjoint i64 %indvars.iv120.ph, 1
  br label %scalar.ph191.prol.loopexit

scalar.ph191.prol.loopexit:                       ; preds = %scalar.ph191.prol, %scalar.ph191.preheader
  %indvars.iv120.unr = phi i64 [ %indvars.iv120.ph, %scalar.ph191.preheader ], [ %indvars.iv.next121.prol, %scalar.ph191.prol ]
  %i.dz = icmp eq i64 %i.cg, %indvars.iv120.ph
  br i1 %i.dz, label %._crit_edge, label %scalar.ph191

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.035102 = phi float [ %.05.lcssa.i, %.lr.ph.new ], [ %.136.1, %bb.g ] ; 2 uses
  %niter227 = phi i64 [ 0, %.lr.ph.new ], [ %niter227.next.1, %bb.g ]
  %i.ea = getelementptr inbounds nuw [120 x i8], ptr %i.cf, i64 %indvars.iv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !197
  %i.ed = fcmp ugt float %i.ec, 0.000000e+00
  %i.ee = fadd float %i.ah, %.035102
  %.136 = select i1 %i.ed, float %.035102, float %i.ee ; 2 uses
  %i.ef = getelementptr inbounds nuw [120 x i8], ptr %i.cf, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 216
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !197
  %i.ei = fcmp ugt float %i.eh, 0.000000e+00
  %i.ej = fadd float %i.ah, %.136
  %.136.1 = select i1 %i.ei, float %.136, float %i.ej ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.lr.ph105.unr-lcssa, label %bb.g

scalar.ph191:                                     ; preds = %scalar.ph191.prol.loopexit, %scalar.ph191
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.1, %scalar.ph191 ], [ %indvars.iv120.unr, %scalar.ph191.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %indvars.iv120
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.em = load float, ptr %i.el, align 8, !tbaa !197 ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  %i.eo = fmul float %.136.lcssa, %i.em
  %i.ep = fdiv float 1.000000e+00, %i.eo
  %i.eq = select i1 %i.en, float %i.ep, float %i.cp
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv120
  store float %i.eq, ptr %i.er, align 4, !tbaa !159
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %indvars.iv.next121
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.eu = load float, ptr %i.et, align 8, !tbaa !197 ; 2 uses
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  %i.ew = fmul float %.136.lcssa, %i.eu
  %i.ex = fdiv float 1.000000e+00, %i.ew
  %i.ey = select i1 %i.ev, float %i.ex, float %i.cp
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next121
  store float %i.ey, ptr %i.ez, align 4, !tbaa !159
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %exitcond124.not.1 = icmp eq i64 %indvars.iv.next121.1, %wide.trip.count123
  br i1 %exitcond124.not.1, label %._crit_edge, label %scalar.ph191, !llvm.loop !433

._crit_edge:                                      ; preds = %scalar.ph191.prol.loopexit, %scalar.ph191, %middle.block200
  %i.fa = load i8, ptr %i.d, align 1, !tbaa !162, !range !175, !noundef !176
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.lr.ph.i42, label %_ZNK10btSoftBody11evaluateComEv.exit

.lr.ph.i42:                                       ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !109 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !43 ; 3 uses
  %xtraiter232 = and i64 %wide.trip.count, 1
  %i.fg = icmp eq i64 %i.cg, 0
  br i1 %i.fg, label %.epil.preheader231, label %.lr.ph.i42.new

.lr.ph.i42.new:                                   ; preds = %.lr.ph.i42
  %unroll_iter237 = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i42.new
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.i42.new ], [ %indvars.iv.next.i45.1, %bb.h ] ; 4 uses
  %.sroa.7.020.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i42.new ], [ %.sroa.7.8.vec.insert18.i.1, %bb.h ] ; 2 uses
  %.sroa.07.019.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i42.new ], [ %i.gf, %bb.h ]
  %niter238 = phi i64 [ 0, %.lr.ph.i42.new ], [ %niter238.next.1, %bb.h ]
  %i.fh = getelementptr inbounds nuw [120 x i8], ptr %i.fd, i64 %indvars.iv.i44 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i44
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !159 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !159
  %i.fn = fmul float %i.fk, %i.fm
  %i.fo = load <2 x float>, ptr %i.fi, align 4, !tbaa !159
  %i.fp = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fq, %i.fo
  %i.fs = fadd <2 x float> %.sroa.07.019.i, %i.fr
  %.sroa.7.8.vec.extract.i = extractelement <2 x float> %.sroa.7.020.i, i64 0
  %i.ft = fadd float %.sroa.7.8.vec.extract.i, %i.fn
  %indvars.iv.next.i45 = or disjoint i64 %indvars.iv.i44, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [120 x i8], ptr %i.fd, i64 %indvars.iv.next.i45 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i45
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !159 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !159
  %i.ga = fmul float %i.fx, %i.fz
  %i.gb = load <2 x float>, ptr %i.fv, align 4, !tbaa !159
  %i.gc = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x float> %i.gd, %i.gb
  %i.gf = fadd <2 x float> %i.fs, %i.ge           ; 3 uses
  %i.gg = fadd float %i.ft, %i.ga
  %.sroa.7.8.vec.insert18.i.1 = insertelement <2 x float> %.sroa.7.020.i, float %i.gg, i64 0 ; 3 uses
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %niter238.next.1 = add i64 %niter238, 2         ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, label %bb.h

_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZNK10btSoftBody11evaluateComEv.exit, label %.epil.preheader231

.epil.preheader231:                               ; preds = %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, %.lr.ph.i42
  %indvars.iv.i44.epil.init = phi i64 [ 0, %.lr.ph.i42 ], [ %indvars.iv.next.i45.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.020.i.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i42 ], [ %.sroa.7.8.vec.insert18.i.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.07.019.i.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i42 ], [ %i.gf, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod236 = trunc i32 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.gh = getelementptr inbounds nuw [120 x i8], ptr %i.fd, i64 %indvars.iv.i44.epil.init ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i44.epil.init
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !159 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !159
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = load <2 x float>, ptr %i.gi, align 4, !tbaa !159
  %i.gp = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gq, %i.go
  %i.gs = fadd <2 x float> %.sroa.07.019.i.epil.init, %i.gr
  %.sroa.7.8.vec.extract.i.epil = extractelement <2 x float> %.sroa.7.020.i.epil.init, i64 0
  %i.gt = fadd float %.sroa.7.8.vec.extract.i.epil, %i.gn
  %.sroa.7.8.vec.insert18.i.epil = insertelement <2 x float> %.sroa.7.020.i.epil.init, float %i.gt, i64 0
  br label %_ZNK10btSoftBody11evaluateComEv.exit

_ZNK10btSoftBody11evaluateComEv.exit:             ; preds = %.epil.preheader231, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, %._crit_edge, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %.sroa.07.1.i = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit ], [ %i.gf, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ], [ %i.gs, %.epil.preheader231 ] ; 4 uses
  %.sroa.7.1.i = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit ], [ %.sroa.7.8.vec.insert18.i.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ], [ %.sroa.7.8.vec.insert18.i.epil, %.epil.preheader231 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !37 ; 2 uses
  %i.gw = icmp sgt i32 %i.cc, %i.gv
  br i1 %i.gw, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.i:                                             ; preds = %_ZNK10btSoftBody11evaluateComEv.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !38
  %i.gz = icmp slt i32 %i.gy, %i.cc
  br i1 %i.gz, label %bb.j, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i52 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i52, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = sext i32 %i.cc to i64
  %i.hb = shl nsw i64 %i.ha, 4
  %i.hc = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hb, i32 noundef 16)
  %.pre.i53 = load i32, ptr %i.gu, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.hd = phi i32 [ %.pre.i53, %bb.k ], [ %i.gv, %bb.j ] ; 4 uses
  %.0.i.i.i54 = phi ptr [ %i.hc, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i.i.i56, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i56:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %wide.trip.count.i.i.i57 = zext nneg i32 %i.hd to i64 ; 2 uses
  %xtraiter240 = and i64 %wide.trip.count.i.i.i57, 1
  %i.hg = icmp eq i32 %i.hd, 1
  br i1 %i.hg, label %.epil.preheader239, label %.lr.ph.i.i.i56.new

.lr.ph.i.i.i56.new:                               ; preds = %.lr.ph.i.i.i56
  %unroll_iter243 = and i64 %wide.trip.count.i.i.i57, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i56.new
  %indvars.iv.i.i.i58 = phi i64 [ 0, %.lr.ph.i.i.i56.new ], [ %indvars.iv.next.i.i.i59.1, %bb.l ] ; 4 uses
  %niter244 = phi i64 [ 0, %.lr.ph.i.i.i56.new ], [ %niter244.next.1, %bb.l ]
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.i.i.i58
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !36
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %indvars.iv.i.i.i58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hh, ptr noundef nonnull align 4 dereferenceable(16) %i.hj, i64 16, i1 false), !tbaa.struct !193
  %indvars.iv.next.i.i.i59 = or disjoint i64 %indvars.iv.i.i.i58, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.next.i.i.i59
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i.i59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hk, ptr noundef nonnull align 4 dereferenceable(16) %i.hm, i64 16, i1 false), !tbaa.struct !193
  %indvars.iv.next.i.i.i59.1 = add nuw nsw i64 %indvars.iv.i.i.i58, 2 ; 2 uses
  %niter244.next.1 = add i64 %niter244, 2         ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.l

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader239

.epil.preheader239:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i56
  %indvars.iv.i.i.i58.epil.init = phi i64 [ 0, %.lr.ph.i.i.i56 ], [ %indvars.iv.next.i.i.i59.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod242 = trunc i32 %i.hd to i1
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.i.i.i58.epil.init
end_hunk_0
