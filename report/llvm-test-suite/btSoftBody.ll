Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody18initializeClustersEv:bb.a

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.prol
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159
  store float %i.ag, ptr %i.ae, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !451

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159
  store float %i.al, ptr %i.aj, align 4, !tbaa !159
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159
  store float %i.ao, ptr %i.am, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  store float %i.ar, ptr %i.ap, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load float, ptr %i.at, align 4, !tbaa !159
  store float %i.au, ptr %i.as, align 4, !tbaa !159
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !452

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !39, !range !179, !noundef !180
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i8 1, ptr %i.ay, align 8, !tbaa !39
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !43
  store i32 %i.j, ptr %i.n, align 8, !tbaa !45
  %.pre190.pre = load i32, ptr %i.i, align 4, !tbaa !358
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre190 = phi i32 [ %i.j, %..lr.ph.i_crit_edge ], [ %.pre190.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.az = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ba = sext i32 %i.l to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.j to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bc = sub nsw i64 %wide.trip.count.i, %i.ba
  %i.bd = shl nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !159
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.be = phi i32 [ %.pre190, %.lr.ph.i ], [ %i.j, %bb.b ] ; 11 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !44
  %i.bf = icmp sgt i32 %i.be, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %.pre193 = load float, ptr %i.h, align 4, !tbaa !449
  %i.bg = fdiv float 1.000000e+00, %.pre193       ; 2 uses
  store float %i.bg, ptr %i.h, align 4, !tbaa !449
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !362
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !43
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %i.bm = fdiv float 1.000000e+00, %i.en          ; 3 uses
  store float %i.bm, ptr %i.h, align 4, !tbaa !449
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !362 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 3 uses
  %xtraiter242 = and i64 %wide.trip.count, 1
  %i.br = icmp eq i32 %i.be, 1
  br i1 %i.br, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.new
  %indvars.iv.i81 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.i82.1, %bb.g ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %._crit_edge.new ], [ %i.ct, %bb.g ]
  %i.bs = phi <2 x float> [ zeroinitializer, %._crit_edge.new ], [ %i.cu, %bb.g ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.g ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !251 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !159
  %i.by = load float, ptr %i.bw, align 4, !tbaa !159 ; 2 uses
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !159
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fadd float %.sroa.015.019.i, %i.bz
  %i.cg = fadd <2 x float> %i.bs, %i.ce
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i82
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !251 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i82
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !159
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !159 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !159
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd float %i.cf, %i.cn                 ; 3 uses
  %i.cu = fadd <2 x float> %i.cg, %i.cs           ; 3 uses
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.g

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.i81.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i82.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81.epil.init
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !251 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81.epil.init
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !159
  %i.da = load float, ptr %i.cy, align 4, !tbaa !159 ; 2 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !159
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dd
  %i.dh = fadd float %.sroa.015.019.i.epil.init, %i.db
  %i.di = fadd <2 x float> %.epil.init, %i.dg
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge.thread
  %i.dj = phi float [ %i.bg, %._crit_edge.thread ], [ %i.bm, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.dk = phi <2 x float> [ zeroinitializer, %._crit_edge.thread ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %i.dl = fmul float %i.dj, %.sroa.015.0.lcssa.i  ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.dk           ; 3 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.do, <2 x i32> <i32 3, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
  store <2 x float> %i.dp, ptr %i.dr, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  store <2 x float> %i.dq, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !185
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ds, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, i8 0, i64 48, i1 false)
  br i1 %i.bf, label %.lr.ph163, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge: ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.dv = load <2 x float>, ptr %.phi.trans.insert194, align 4, !tbaa !159
  %.pre199 = load float, ptr %.phi.trans.insert198, align 8, !tbaa !159
  %.pre201 = load float, ptr %.phi.trans.insert200, align 4, !tbaa !159, !noalias !453 ; 2 uses
  %i.dw = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.pre201, i64 1
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !362
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !43
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 188 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 172 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %.promoted165 = load float, ptr %i.eb, align 4, !tbaa !159
  %i.ee = load <2 x float>, ptr %i.ec, align 4, !tbaa !159
  %.promoted168 = load float, ptr %i.ed, align 8, !tbaa !159
  %wide.trip.count182 = zext nneg i32 %i.be to i64
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !251
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !199 ; 2 uses
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bk, align 8, !tbaa !391
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.el = fdiv float 1.000000e+00, %i.ei
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi float [ %i.el, %bb.j ], [ f0x5D5E0B6B, %bb.i ] ; 2 uses
  store float %.sink, ptr %i.ek, align 4, !tbaa !159
  %i.em = load float, ptr %i.h, align 4, !tbaa !449
  %i.en = fadd float %.sink, %i.em                ; 2 uses
  store float %i.en, ptr %i.h, align 4, !tbaa !449
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h

bb.l:                                             ; preds = %.lr.ph163, %bb.l
  %indvars.iv179 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next180, %bb.l ] ; 3 uses
  %i.eo = phi float [ %.promoted168, %.lr.ph163 ], [ %i.ga, %bb.l ]
  %i.ep = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fo, %bb.l ]
  %i.eq = phi float [ %.promoted165, %.lr.ph163 ], [ %i.fs, %bb.l ]
  %i.er = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fr, %bb.l ]
  %i.es = phi <2 x float> [ %i.ee, %.lr.ph163 ], [ %i.fz, %bb.l ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv179
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !251 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !159
  %i.ex = fsub float %i.ew, %i.dl                 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ez = fmul float %i.ex, %i.ex
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv179
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !159 ; 4 uses
  %i.fc = load <2 x float>, ptr %i.ey, align 4, !tbaa !159
  %i.fd = fsub <2 x float> %i.fc, %i.do           ; 5 uses
  %i.fe = fmul <2 x float> %i.fd, %i.fd           ; 3 uses
  %shift = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fe, %shift
  %i.ff = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fg = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fadd <2 x float> %i.fh, %i.fe
  %i.fj = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.eq, i64 1
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fi, <2 x float> %i.fm) ; 3 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 3 uses
  store float %i.fo, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !159
  %i.fp = extractelement <2 x float> %i.fd, i64 0
  %i.fq = extractelement <2 x float> %i.fd, i64 1
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.ff, float %i.er) ; 3 uses
  store float %i.fr, ptr %i.dt, align 8, !tbaa !159
  %i.fs = extractelement <2 x float> %i.fn, i64 1 ; 3 uses
  store float %i.fs, ptr %i.eb, align 4, !tbaa !159
  %i.ft = fneg float %i.ex
  %i.fu = fneg float %i.fp
  %i.fv = fmul float %i.fb, %i.ft
  %i.fw = fmul float %i.fb, %i.fu
  %i.fx = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fd, <2 x float> %i.es) ; 3 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fq, float %i.eo) ; 3 uses
  store <2 x float> %i.fz, ptr %i.ec, align 4, !tbaa !159
  store float %i.ga, ptr %i.ed, align 8, !tbaa !159
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge164, label %bb.l

._crit_edge164:                                   ; preds = %bb.l, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge
  %i.gb = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fr, %bb.l ] ; 4 uses
  %i.gc = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fo, %bb.l ] ; 2 uses
  %i.gd = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fs, %bb.l ] ; 3 uses
  %i.ge = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.ga, %bb.l ] ; 5 uses
  %i.gf = phi <2 x float> [ %i.dw, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fn, %bb.l ]
  %i.gg = phi <2 x float> [ %i.dv, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fz, %bb.l ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.gk = fneg float %i.ge                        ; 2 uses
  %i.gl = fmul float %i.ge, %i.gk
  %i.gm = fneg <2 x float> %i.gf
  %i.gn = extractelement <2 x float> %i.gg, i64 1 ; 3 uses
  %i.go = fneg float %i.gn                        ; 2 uses
  %i.gp = fmul float %i.gn, %i.go
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gc, float %i.gp)
  %i.gr = extractelement <2 x float> %i.gg, i64 0 ; 3 uses
  %i.gs = fneg float %i.gr
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gd, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.gc, float %i.gl) ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.gy = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.gy, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hb = fmul <4 x float> %i.gx, %i.ha
  %i.hc = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ge, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> %i.gw, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.he = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.gw, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.hf = insertelement <4 x float> %i.he, float %i.ge, i64 1
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.hg, <4 x float> %i.hb) ; 2 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fmul float %i.gr, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gv, float %i.hj)
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !185
  %i.hl = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.gb, i64 1
  %i.hn = insertelement <2 x float> poison, float %i.go, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.gk, i64 1
  %i.hp = fmul <2 x float> %i.hm, %i.ho
  %i.hq = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.ge, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.hr, <2 x float> %i.hp) ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.gn, float %i.ht, float %i.hk)
  %i.hv = fdiv float 1.000000e+00, %i.hu          ; 5 uses
  %i.hw = fmul float %i.gv, %i.hv
  %i.hx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hv, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hz = fmul <4 x float> %i.hh, %i.hy
  %i.ia = fmul float %i.gq, %i.hv
  %i.ib = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hs, %i.ic           ; 2 uses
  %i.ie = fmul float %i.gu, %i.hv
  store float %i.hw, ptr %i.dt, align 8
  store <4 x float> %i.hz, ptr %i.gh, align 4
  store float %i.ia, ptr %i.gj, align 4
  %i.if = extractelement <2 x float> %i.id, i64 1
  store float %i.if, ptr %i.gi, align 8
  store <2 x float> %i.id, ptr %i.du, align 8
  store float %i.ie, ptr %.sroa.5142.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !185
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !159
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ii, align 4, !tbaa !159
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ik, align 8, !tbaa !159
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !198
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !37 ; 2 uses
  %i.ip = icmp sgt i32 %i.be, %i.io
  br i1 %i.ip, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.m:                                             ; preds = %._crit_edge164
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !38
  %i.is = icmp slt i32 %i.ir, %i.be
  br i1 %i.is, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i94 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i94, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = sext i32 %i.be to i64
  %i.iu = shl nsw i64 %i.it, 4
  %i.iv = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iu, i32 noundef 16)
  %.pre.i95 = load i32, ptr %i.in, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %i.iw = phi i32 [ %.pre.i95, %bb.o ], [ %i.io, %bb.n ] ; 4 uses
  %.0.i.i.i96 = phi ptr [ %i.iv, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i.i98, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i98:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %wide.trip.count.i.i.i99 = zext nneg i32 %i.iw to i64 ; 2 uses
  %xtraiter248 = and i64 %wide.trip.count.i.i.i99, 1
  %i.iz = icmp eq i32 %i.iw, 1
  br i1 %i.iz, label %.epil.preheader247, label %.lr.ph.i.i.i98.new

.lr.ph.i.i.i98.new:                               ; preds = %.lr.ph.i.i.i98
  %unroll_iter251 = and i64 %wide.trip.count.i.i.i99, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i98.new
  %indvars.iv.i.i.i100 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %indvars.iv.next.i.i.i101.1, %bb.p ] ; 4 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %niter252.next.1, %bb.p ]
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !36
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ja, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !198
  %indvars.iv.next.i.i.i101 = or disjoint i64 %indvars.iv.i.i.i100, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i101
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !36
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv.next.i.i.i101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !198
  %indvars.iv.next.i.i.i101.1 = add nuw nsw i64 %indvars.iv.i.i.i100, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i98
  %indvars.iv.i.i.i100.epil.init = phi i64 [ 0, %.lr.ph.i.i.i98 ], [ %indvars.iv.next.i.i.i101.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100.epil.init
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !36
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i100.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !198
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader247, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !36 ; 2 uses
  %.not.i5.i.i97 = icmp eq ptr %i.jk, null
  br i1 %.not.i5.i.i97, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !32, !range !179, !noundef !180
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jk)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jo, align 8, !tbaa !32
  store ptr %.0.i.i.i96, ptr %i.jj, align 8, !tbaa !36
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !38
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !37
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !362
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !251 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !159
  %i.jw = load <2 x float>, ptr %i.dr, align 8, !tbaa !159
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !159
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !159
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !36
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !37
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !146
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btMatrix3x3, align 4         ; 11 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %4 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 524
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph352, %bb.s
  %i.p = phi i32 [ %i.b, %.lr.ph352 ], [ %i.qn, %bb.s ]
  %indvars.iv379 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next380, %bb.s ] ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv379
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !287  ; 53 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !358  ; 10 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.v = icmp sgt i32 %i.u, 0                     ; 3 uses
  br i1 %i.v, label %.lr.ph.i, label %.loopexit300

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !362  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %i.u, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bc, %bb.d ]
  %i.ab = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.bd, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !251 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ah = load float, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !159
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd float %.sroa.015.019.i, %i.ai
  %i.ap = fadd <2 x float> %i.ab, %i.an
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !251 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i
  %i.au = load float, ptr %i.as, align 4, !tbaa !159
  %i.av = load float, ptr %i.at, align 4, !tbaa !159 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !159
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fadd float %i.ao, %i.aw                 ; 3 uses
  %i.bd = fadd <2 x float> %i.ap, %i.bb           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit300.loopexit.unr-lcssa, label %bb.d

.loopexit300.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit300, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit300.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit300.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bc, %.loopexit300.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bd, %.loopexit300.loopexit.unr-lcssa ]
  %lcmp.mod438 = trunc i32 %i.u to i1
  call void @llvm.assume(i1 %lcmp.mod438)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !251 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.epil.init
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !159
  %i.bj = load float, ptr %i.bh, align 4, !tbaa !159 ; 2 uses
  %i.bk = fmul float %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !159
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = fadd float %.sroa.015.019.i.epil.init, %i.bk
  %i.br = fadd <2 x float> %.epil.init, %i.bp
  br label %.loopexit300

.loopexit300:                                     ; preds = %.epil.preheader, %.loopexit300.loopexit.unr-lcssa, %bb.c
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bc, %.loopexit300.loopexit.unr-lcssa ], [ %i.bq, %.epil.preheader ]
  %i.bs = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.bd, %.loopexit300.loopexit.unr-lcssa ], [ %i.br, %.epil.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 164 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159 ; 3 uses
  %i.bv = fmul float %.sroa.015.0.lcssa.i, %i.bu  ; 2 uses
  %i.bw = extractelement <2 x float> %i.bs, i64 0
  %i.bx = fmul float %i.bw, %i.bu                 ; 2 uses
  %i.by = extractelement <2 x float> %i.bs, i64 1
  %i.bz = fmul float %i.by, %i.bu                 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bv, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bx, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 264 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ca, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 272 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !185
  %.promoted304 = load float, ptr %i.f, align 4
  %i.cb = insertelement <2 x float> <float poison, float 2.000000e-04>, float %.promoted304, i64 0 ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %.loopexit300
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !362
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cg = load <2 x float>, ptr %i.g, align 4, !tbaa !159
  %.promoted322 = load float, ptr %i.h, align 4, !tbaa !159
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f
  store <2 x float> %i.ij, ptr %i.g, align 4, !tbaa !159
  store float %i.ip, ptr %i.h, align 4, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit300
  %.lcssa311 = phi float [ %i.iv, %._crit_edge ], [ f0x399D4951, %.loopexit300 ]
  %.lcssa303 = phi float [ %i.ii, %._crit_edge ], [ f0x38D1B717, %.loopexit300 ]
  %i.ch = phi <2 x float> [ %i.io, %._crit_edge ], [ %i.cb, %.loopexit300 ]
  %i.ci = phi <2 x float> [ %i.iu, %._crit_edge ], [ zeroinitializer, %.loopexit300 ]
  store float %.lcssa303, ptr %1, align 4
  store <2 x float> %i.ch, ptr %i.f, align 4
  store <2 x float> %i.ci, ptr %i.e, align 4
  store float %.lcssa311, ptr %.sroa.5297.0..sroa_idx, align 4
  call fastcc void @_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !198
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !198
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !198
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.co = load float, ptr %i.cn, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 172
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !159, !noalias !456 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 204
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !159, !noalias !456 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.db = load float, ptr %i.da, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.de = load float, ptr %i.dd, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.dh = load float, ptr %i.cm, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 132 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !159, !noalias !456 ; 5 uses
  %i.dk = fmul float %i.cq, %i.dj
  %i.dl = call float @llvm.fmuladd.f32(float %i.co, float %i.dh, float %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.do = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dn, float %i.dl) ; 2 uses
  %i.dp = load <2 x float>, ptr %i.cj, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.dq = load <2 x float>, ptr %i.cx, align 4, !tbaa !159, !noalias !456 ; 5 uses
  %i.dr = load float, ptr %i.dc, align 8, !tbaa !159, !noalias !456
  %i.ds = load <2 x float>, ptr %i.cl, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.dt = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.dw = fmul <2 x float> %i.du, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x float> %i.dp, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dz, <2 x float> %i.dw)
  %i.eb = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.ee = shufflevector <2 x float> %i.dq, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.ef = fmul <2 x float> %i.ed, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.dz, <2 x float> %i.ef)
  %i.ej = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.dv, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.em = shufflevector <2 x float> %i.dq, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3>
  %i.en = fmul <2 x float> %i.el, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.db, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.dz, <2 x float> %i.en)
  %i.er = insertelement <2 x float> poison, float %i.de, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = extractelement <2 x float> %i.dq, i64 0
  %i.eu = fmul float %i.et, %i.dj
  %i.ev = call float @llvm.fmuladd.f32(float %i.cw, float %i.dh, float %i.eu)
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.dn, float %i.ev) ; 2 uses
  %i.ex = fmul float %i.dr, %i.dj
  %i.ey = call float @llvm.fmuladd.f32(float %i.db, float %i.dh, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.de, float %i.dn, float %i.ey) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul float %i.dj, %i.ew
  %i.fl = call float @llvm.fmuladd.f32(float %i.dh, float %i.do, float %i.fk)
  %i.fm = call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.ez, float %i.fl) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 220
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 228
  %.sroa.12281.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 244
  store float 0.000000e+00, ptr %.sroa.12281.16..sroa_idx, align 4, !tbaa !185
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.fp = load <2 x float>, ptr %i.cr, align 4, !tbaa !159, !noalias !456 ; 3 uses
  %i.fq = load <2 x float>, ptr %i.df, align 4, !tbaa !159, !noalias !456 ; 3 uses
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.fs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.fr, <2 x float> %i.ea) ; 3 uses
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.fr, <2 x float> %i.ei) ; 3 uses
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fr, <2 x float> %i.eq) ; 3 uses
  %i.fv = fmul <2 x float> %i.fa, %i.ft
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fs, <2 x float> %i.fv)
  %i.fx = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fu, <2 x float> %i.fw) ; 3 uses
  %i.fz = fmul <2 x float> %i.ft, %i.fc
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fs, <2 x float> %i.fz)
  %i.gb = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.fu, <2 x float> %i.ga) ; 3 uses
  %i.gd = fmul <2 x float> %i.ft, %i.ff
  %i.ge = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fs, <2 x float> %i.gd)
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fu, <2 x float> %i.ge) ; 3 uses
  %i.gg = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.gh = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.gg, %i.gi
  %i.gk = insertelement <2 x float> poison, float %i.do, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.gl, <2 x float> %i.gj)
  %i.gn = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.go, <2 x float> %i.gm) ; 3 uses
  %i.gq = extractelement <2 x float> %i.fy, i64 0
  store float %i.gq, ptr %i.fn, align 8
  %i.gr = extractelement <2 x float> %i.gc, i64 0
  store float %i.gr, ptr %.sroa.5275.0..sroa_idx, align 4
  %i.gs = extractelement <2 x float> %i.gf, i64 0
  store float %i.gs, ptr %.sroa.6276.0..sroa_idx, align 8
  %i.gt = shufflevector <2 x float> %i.fy, <2 x float> %i.gc, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float 0.000000e+00, i64 0
  %i.gv = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.gw, ptr %.sroa.7277.0..sroa_idx, align 4
  store <2 x float> %i.gp, ptr %i.fo, align 8
  %.sroa.16282.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store float %i.fm, ptr %.sroa.16282.32..sroa_idx, align 8
  %.sroa.17283.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 260
  store float 0.000000e+00, ptr %.sroa.17283.32..sroa_idx, align 4, !tbaa !185
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 352 ; 4 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 360 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.s, i64 368 ; 2 uses
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 372
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 376 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i8 0, i64 32, i1 false)
  br i1 %i.v, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.e
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !362
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43
  %wide.trip.count369 = zext nneg i32 %i.u to i64
  %i.hd = load <2 x float>, ptr %i.ca, align 8, !tbaa !159 ; 2 uses
  %.pre383 = load float, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !159
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = insertelement <2 x float> %i.he, float %.pre383, i64 0
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.hg = phi float [ %.promoted322, %.lr.ph ], [ %i.ip, %bb.f ]
  %i.hh = phi float [ f0x38D1B717, %.lr.ph ], [ %i.ii, %bb.f ]
  %i.hi = phi float [ f0x399D4951, %.lr.ph ], [ %i.iv, %bb.f ]
  %i.hj = phi <2 x float> [ %i.cb, %.lr.ph ], [ %i.io, %bb.f ]
  %i.hk = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.iu, %bb.f ]
  %i.hl = phi <2 x float> [ %i.cg, %.lr.ph ], [ %i.ij, %bb.f ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !251 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !159
  %i.hq = fsub float %i.hp, %i.bv                 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !159
  %i.ht = fsub float %i.hs, %i.bx                 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !159
  %i.hw = fsub float %i.hv, %i.bz                 ; 2 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !159 ; 3 uses
  %i.ia = load <2 x float>, ptr %i.hx, align 4, !tbaa !159 ; 4 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0
  %i.ic = fmul float %i.hq, %i.ib
  %i.id = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ig = insertelement <2 x float> %i.if, float %i.hz, i64 1
  %i.ih = fmul <2 x float> %i.ie, %i.ig
  %i.ii = fadd float %i.ic, %i.hh                 ; 2 uses
  %i.ij = fadd <2 x float> %i.ih, %i.hl           ; 2 uses
  %i.ik = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.il, %i.ia
  %i.in = fmul float %i.ht, %i.hz
  %i.io = fadd <2 x float> %i.im, %i.hj           ; 2 uses
  %i.ip = fadd float %i.in, %i.hg                 ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ir, %i.ia
  %i.it = fmul float %i.hw, %i.hz
  %i.iu = fadd <2 x float> %i.is, %i.hk           ; 2 uses
  %i.iv = fadd float %i.it, %i.hi                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

bb.g:                                             ; preds = %.lr.ph326, %bb.g
  %indvars.iv366 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next367, %bb.g ] ; 3 uses
  %i.iw = phi float [ 0.000000e+00, %.lr.ph326 ], [ %i.km, %bb.g ]
  %i.ix = phi float [ 0.000000e+00, %.lr.ph326 ], [ %i.kk, %bb.g ]
end_hunk_0
begin_hunk_1_@_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib:bb.a
  store float %i.be, ptr %i.bq, align 8, !tbaa !481
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store ptr null, ptr %i.br, align 8, !tbaa !484
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.bs, align 8, !tbaa !485
  call void @_ZN6btDbvt7rayTestEPK10btDbvtNodeRK9btVector3S5_RNS_8ICollideE(ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !484 ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load float, ptr %i.bq, align 8, !tbaa !481
  store float %i.bu, ptr %3, align 4, !tbaa !159
  store i32 3, ptr %4, align 4, !tbaa !480
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !117
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 72
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %5, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.3 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.2, %bb.h ]
  ret i32 %.3
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody13predictMotionEf(ptr noundef nonnull align 8 dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 14 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !166, !range !179, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !166
  tail call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1208
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.f = load i32, ptr %i.e, align 4, !tbaa !160
  %i.g = and i32 %i.f, 16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = load float, ptr %i.h, align 8, !tbaa !486
  %i.j = fmul float %1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  store float %i.j, ptr %i.k, align 8, !tbaa !487
  %i.l = fdiv float 1.000000e+00, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float %i.l, ptr %i.m, align 4, !tbaa !488
  %i.n = fmul float %i.j, 3.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  store float %i.n, ptr %i.o, align 8, !tbaa !489
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef float %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 3 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !462
  %i.w = fmul float %i.u, 2.500000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  store float %i.w, ptr %i.x, align 8, !tbaa !490
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load float, ptr %i.k, align 8, !tbaa !159 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.aa, align 4, !tbaa !159
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159
  %i.ai = fmul float %i.ab, %i.ah                 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !110 ; 4 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ao = icmp eq i32 %i.ak, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1 ]
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !199
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.f, label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.au = load <2 x float>, ptr %i.at, align 8, !tbaa !159
  %i.av = fadd <2 x float> %i.af, %i.au
  store <2 x float> %i.av, ptr %i.at, align 8, !tbaa !159
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !159
  %i.ay = fadd float %i.ai, %i.ax
  store float %i.ay, ptr %i.aw, align 8, !tbaa !159
  br label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i

_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i: ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv.i ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !199
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.g, label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1

bb.g:                                             ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 168 ; 2 uses
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !159
  %i.bf = fadd <2 x float> %i.af, %i.be
  store <2 x float> %i.bf, ptr %i.bd, align 8, !tbaa !159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 176 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !159
  %i.bi = fadd float %i.ai, %i.bh
  store float %i.bi, ptr %i.bg, align 8, !tbaa !159
  br label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1

_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1: ; preds = %bb.g, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, label %bb.e

_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa: ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.bj = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !199
  %i.bm = fcmp ogt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.h, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

bb.h:                                             ; preds = %.epil.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 8, !tbaa !159
  %i.bp = fadd <2 x float> %i.af, %i.bo
  store <2 x float> %i.bp, ptr %i.bn, align 8, !tbaa !159
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !159
  %i.bs = fadd float %i.ai, %i.br
  store float %i.bs, ptr %i.bq, align 8, !tbaa !159
  br label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

_ZN10btSoftBody11addVelocityERK9btVector3.exit:   ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.d
  tail call void @_ZN10btSoftBody11applyForcesEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.bt = load i32, ptr %i.aj, align 4, !tbaa !110 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 832
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw [120 x i8], ptr %i.bw, i64 %indvars.iv ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !198
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !159 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !159
  %i.cf = fmul float %i.cc, %i.ce
  %i.cg = load float, ptr %i.k, align 8, !tbaa !159 ; 2 uses
  %i.ch = fmul float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !159
  %i.cl = fadd float %i.ch, %i.ck                 ; 2 uses
  store float %i.cl, ptr %i.cj, align 8, !tbaa !159
  %i.cm = load <2 x float>, ptr %i.ca, align 8, !tbaa !159 ; 2 uses
  %i.cn = insertelement <2 x float> %i.cm, float %i.cc, i64 1
  %i.co = insertelement <2 x float> %i.cm, float %i.cc, i64 0
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cp, %i.cr
  %i.ct = load <2 x float>, ptr %i.ci, align 8, !tbaa !159
  %i.cu = fadd <2 x float> %i.cs, %i.ct           ; 2 uses
  store <2 x float> %i.cu, ptr %i.ci, align 8, !tbaa !159
  %i.cv = load float, ptr %i.k, align 8, !tbaa !159 ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cu, %i.cx
  %i.cz = fmul float %i.cl, %i.cv
  %i.da = load <2 x float>, ptr %i.by, align 8, !tbaa !159
  %i.db = fadd <2 x float> %i.cy, %i.da
  store <2 x float> %i.db, ptr %i.by, align 8, !tbaa !159
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !159
  %i.de = fadd float %i.cz, %i.dd
  store float %i.de, ptr %i.dc, align 8, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  br i1 %exitcond.not, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.i, %_ZN10btSoftBody11addVelocityERK9btVector3.exit
  tail call void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !183 ; 5 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !177 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef float %i.dl(ptr noundef nonnull align 8 dereferenceable(24) %i.di), !inline_history !184 ; 3 uses
  %i.dn = load <2 x float>, ptr %i.dg, align 4, !tbaa !159
  %i.do = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !159
  %i.dt = fsub float %i.ds, %i.dm
  %.sroa.3.12.vec.insert.i8.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store <2 x float> %i.dq, ptr %i.du, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store <2 x float> %.sroa.3.12.vec.insert.i8.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !185
  %i.dv = load <2 x float>, ptr %i.dh, align 4, !tbaa !159
  %i.dw = fadd <2 x float> %i.dp, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !159
  %i.dz = fadd float %i.dm, %i.dy
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  store <2 x float> %i.dw, ptr %i.ea, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !185
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !186 ; 2 uses
  %.not5.i = icmp eq ptr %i.ec, null
  br i1 %.not5.i, label %_ZN10btSoftBody12updateBoundsEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = load ptr, ptr %i.y, align 8, !tbaa !46  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !187 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !195
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull %i.ec, ptr noundef nonnull align 4 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.ea, ptr noundef %i.eh), !inline_history !184
  br label %_ZN10btSoftBody12updateBoundsEv.exit

bb.l:                                             ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.el, i8 0, i64 32, i1 false)
  br label %_ZN10btSoftBody12updateBoundsEv.exit

_ZN10btSoftBody12updateBoundsEv.exit:             ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.em = load i32, ptr %i.aj, align 4, !tbaa !110 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %_ZN10btSoftBody12updateBoundsEv.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count155 = zext nneg i32 %i.em to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph144, %bb.m
  %indvars.iv152 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next153, %bb.m ] ; 2 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw [120 x i8], ptr %i.eq, i64 %indvars.iv152 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load float, ptr %i.v, align 4, !tbaa !462 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !159, !noalias !491 ; 2 uses
  %i.ew = fsub float %i.ev, %i.et
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ew, i64 0
  %i.ex = load <2 x float>, ptr %i.es, align 4, !tbaa !159, !noalias !491 ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = fsub <2 x float> %i.ex, %i.ez
  %i.fb = fadd <2 x float> %i.ez, %i.ex
  %i.fc = fadd float %i.et, %i.ev
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fc, i64 0
  store <2 x float> %i.fa, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !185
  store <2 x float> %i.fb, ptr %.sroa.5124.0..sroa_idx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i8.i.i, ptr %.sroa.6125.0..sroa_idx, align 8, !tbaa !185
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.fg = load float, ptr %i.o, align 8, !tbaa !159 ; 2 uses
  %i.fh = load <2 x float>, ptr %i.ff, align 8, !tbaa !159
  %i.fi = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !159
  %i.fn = fmul float %i.fg, %i.fm
  %.sroa.3.12.vec.insert.i55 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  store <2 x float> %i.fk, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i55, ptr %i.ep, align 8
  %i.fo = load float, ptr %i.x, align 8, !tbaa !490
  %i.fp = call noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef %i.fe, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %i.fo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge145, label %bb.m

._crit_edge145:                                   ; preds = %bb.m, %_ZN10btSoftBody12updateBoundsEv.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !479
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %._crit_edge145
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !118
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph147, label %.loopexit141

.lr.ph147:                                        ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.12115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph147, %bb.n
  %indvars.iv157 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next158, %bb.n ] ; 2 uses
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !117
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %indvars.iv157 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !251 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !251 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !159
  %i.gk = fadd float %i.gh, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !251 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.gp = load float, ptr %i.go, align 4, !tbaa !159
  %i.gq = fadd float %i.gk, %i.gp
  %i.gr = fmul float %i.gq, f0x3EAAAAAB
  %i.gs = load float, ptr %i.v, align 4, !tbaa !462 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gy = load <2 x float>, ptr %.sroa.17.16..sroa_idx, align 4 ; 3 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ha = load <2 x float>, ptr %i.gw, align 4, !tbaa !159, !noalias !496 ; 3 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hc = shufflevector <2 x float> %i.gy, <2 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fcmp olt <4 x float> %i.hc, %i.hd
  %i.hf = shufflevector <4 x i1> %i.he, <4 x i1> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hg = select <4 x i1> %i.hf, <4 x float> %i.hb, <4 x float> %i.gz ; 3 uses
  %i.hh = load <2 x float>, ptr %i.gx, align 4, !tbaa !159, !noalias !496
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hk = shufflevector <4 x float> %i.hg, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hl = fcmp olt <4 x float> %i.hj, %i.hk
  %i.hm = select <4 x i1> %i.hl, <4 x float> %i.hi, <4 x float> %i.hg ; 4 uses
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  %i.ho = fsub float %i.hn, %i.gs
  %i.hp = extractelement <4 x float> %i.hm, i64 2
  %i.hq = fadd float %i.gs, %i.hp
  %i.hr = load <2 x float>, ptr %i.gt, align 4    ; 4 uses
  %i.hs = load <2 x float>, ptr %i.gu, align 4, !tbaa !159, !noalias !496 ; 4 uses
  %i.ht = fcmp olt <2 x float> %i.hs, %i.hr
  %i.hu = select <2 x i1> %i.ht, <2 x float> %i.hs, <2 x float> %i.hr ; 2 uses
  %i.hv = load <2 x float>, ptr %i.gv, align 4, !tbaa !159, !noalias !496 ; 4 uses
  %i.hw = fcmp olt <2 x float> %i.hv, %i.hu
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hv, <2 x float> %i.hu
  %i.hy = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody10updatePoseEv:bb.a
  %i.hr = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.hq, %i.hs
  %i.hu = fadd <2 x float> %i.ht, %i.ha           ; 3 uses
  %i.hv = load <2 x float>, ptr %i.hj, align 4, !tbaa !159 ; 3 uses
  %i.hw = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.hw, %i.hv
  %i.hy = fadd <2 x float> %i.hx, %i.gy           ; 3 uses
  %i.hz = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = fmul <2 x float> %i.hz, %i.hv
  %i.ib = fadd <2 x float> %i.ia, %i.gz           ; 2 uses
  %i.ic = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x float> %i.id, %i.hv
  %i.if = fmul float %i.hi, %i.hl
  %i.ig = fadd <2 x float> %i.ie, %i.gx           ; 2 uses
  %i.ih = fadd float %i.if, %i.gw                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.ii = extractelement <2 x float> %i.ge, i64 1 ; 2 uses
  %i.ij = fneg float %i.ii
  %i.ik = fmul float %i.gq, %i.ij
  %i.il = extractelement <2 x float> %i.fy, i64 1 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.gs, float %i.ik)
  %i.in = fneg float %i.gs
  %i.io = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.ip = fmul float %i.io, %i.in
  %i.iq = extractelement <2 x float> %i.ge, i64 0 ; 2 uses
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.iq, float %i.ip)
  %i.is = extractelement <2 x float> %i.ey, i64 1
  %i.it = fmul float %i.is, %i.ir
  %i.iu = extractelement <2 x float> %i.ey, i64 0
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.im, float %i.it)
  %i.iw = fneg float %i.iq
  %i.ix = fmul float %i.il, %i.iw
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.io, float %i.ii, float %i.ix)
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %i.fa, float %i.iy, float %i.iv)
  %i.ja = fdiv float 1.000000e+00, %i.iz          ; 3 uses
  %i.jb = fcmp olt float %i.ja, 1.000000e+00
  %i.jc = fcmp ogt float %i.ja, %i.gu
  %..i = select i1 %i.jc, float %i.gu, float %i.ja
  %i.jd = select i1 %i.jb, float 1.000000e+00, float %..i ; 2 uses
  %i.je = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jg = fmul <2 x float> %i.ey, %i.jf
  %i.jh = fmul float %i.fa, %i.jd
  %.sroa.3.12.vec.insert.i.i40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jh, i64 0
  %i.ji = fmul <2 x float> %i.fy, %i.jf
  %i.jj = fmul <2 x float> %i.ge, %i.jf
  %i.jk = fmul <2 x float> %i.gn, %i.jf           ; 2 uses
  %i.jl = insertelement <2 x float> %i.jk, float 0.000000e+00, i64 1
  %i.jm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.jk, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.jg, ptr %i.go, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i40, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !185
  store <2 x float> %i.ji, ptr %i.gp, align 8
  store <2 x float> %i.jl, ptr %.sroa.1062.16..sroa_idx, align 8, !tbaa !185
  store <2 x float> %i.jj, ptr %i.gr, align 8
  store <2 x float> %i.jm, ptr %.sroa.1564.32..sroa_idx, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16solveConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 8           ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  tail call void @_ZN10btSoftBody13applyClustersEb(ptr noundef nonnull align 8 dereferenceable(1496) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !251  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !159
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !159
  %i.o = fsub <2 x float> %i.m, %i.n              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store <2 x float> %i.o, ptr %i.u, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.445.0..sroa_idx, align 4, !tbaa !185
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aa = load float, ptr %i.z, align 8, !tbaa !341
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = fdiv float 1.000000e+00, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store float %i.ac, ptr %i.ad, align 8, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !126 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count177 = zext nneg i32 %i.af to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %bb.c
  %indvars.iv174 = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next175, %bb.c ] ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.an = getelementptr inbounds nuw [104 x i8], ptr %i.am, i64 %indvars.iv174 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !522 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load float, ptr %i.ar, align 8, !tbaa !159 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !159 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bc = load <2 x float>, ptr %i.aq, align 4, !tbaa !159 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !159 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bh = fmul <2 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bb, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bl)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bs = load float, ptr %i.br, align 4, !tbaa !159
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159
  %i.bv = fmul float %i.au, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.as, float %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.by = load float, ptr %i.bx, align 4, !tbaa !159
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.ay, float %i.bw)
  %.sroa.3.12.vec.insert.i83 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  store <2 x float> %i.bq, ptr %1, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i83, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.ca = load float, ptr %i.aj, align 8, !tbaa !487
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !261
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !199
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !523
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  call fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias writable align 4 %2, float noundef %i.ca, float noundef %i.cd, float noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(48) %i.cg, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !198
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !198
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !198
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !198
  %i.cl = load float, ptr %i.aj, align 8, !tbaa !487
  %i.cm = load float, ptr %i.cc, align 8, !tbaa !199
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store float %i.cn, ptr %i.co, align 8, !tbaa !529
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge141, label %bb.c

._crit_edge141:                                   ; preds = %bb.c, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !530 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.preheader135.lr.ph, label %.loopexit134

.preheader135.lr.ph:                              ; preds = %._crit_edge141
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !24 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.preheader135, label %._crit_edge146

.preheader135:                                    ; preds = %.preheader135.lr.ph, %._crit_edge144
  %i.cw = phi i32 [ %i.de, %._crit_edge144 ], [ %i.cq, %.preheader135.lr.ph ]
  %i.cx = phi i32 [ %i.df, %._crit_edge144 ], [ %i.cu, %.preheader135.lr.ph ] ; 2 uses
  %.076145 = phi i32 [ %i.dg, %._crit_edge144 ], [ 0, %.preheader135.lr.ph ]
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph143, label %._crit_edge144

._crit_edge146:                                   ; preds = %._crit_edge144, %.preheader135.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !110 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph149, label %.loopexit134

.lr.ph149:                                        ; preds = %._crit_edge146
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count185 = zext nneg i32 %i.da to i64
  br label %bb.d

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  %.pre = load i32, ptr %i.cp, align 4, !tbaa !530
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %._crit_edge144.loopexit, %.preheader135
  %i.de = phi i32 [ %.pre, %._crit_edge144.loopexit ], [ %i.cw, %.preheader135 ] ; 2 uses
  %i.df = phi i32 [ %i.dl, %._crit_edge144.loopexit ], [ %i.cx, %.preheader135 ]
  %i.dg = add nuw nsw i32 %.076145, 1             ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.de
  br i1 %i.dh, label %.preheader135, label %._crit_edge146, !llvm.loop !531

.lr.ph143:                                        ; preds = %.preheader135, %.lr.ph143
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph143 ], [ 0, %.preheader135 ] ; 2 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv179
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !228
  %cond.i = icmp eq i32 %i.dk, 0
  %_ZN10btSoftBody12VSolve_LinksEPS_f..i = select i1 %cond.i, ptr @_ZN10btSoftBody12VSolve_LinksEPS_f, ptr null
  tail call void %_ZN10btSoftBody12VSolve_LinksEPS_f..i(ptr noundef nonnull %0, float noundef 1.000000e+00), !callees !533
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.dl = load i32, ptr %i.cs, align 4, !tbaa !24 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next180, %i.dm
  br i1 %i.dn, label %.lr.ph143, label %._crit_edge144.loopexit

bb.d:                                             ; preds = %.lr.ph149, %bb.d
  %indvars.iv182 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next183, %bb.d ] ; 2 uses
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !109
  %i.dp = getelementptr inbounds nuw [120 x i8], ptr %i.do, i64 %indvars.iv182 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.ds = load float, ptr %i.dd, align 8, !tbaa !159 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.du = load float, ptr %i.dt, align 4, !tbaa !159
  %i.dv = fmul float %i.ds, %i.du
  %i.dw = load <2 x float>, ptr %i.dr, align 4, !tbaa !159
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dw
  %i.ea = load <2 x float>, ptr %i.dq, align 4, !tbaa !159
  %i.eb = fadd <2 x float> %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !159
  %i.ee = fadd float %i.dv, %i.ed
  %.sroa.3.12.vec.insert.i93 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x float> %i.eb, ptr %i.ef, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i93, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !185
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.loopexit134, label %bb.d

.loopexit134:                                     ; preds = %bb.d, %._crit_edge146, %._crit_edge141
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !534 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph155, label %.loopexit132

.lr.ph155:                                        ; preds = %.loopexit134
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.pre208 = load i32, ptr %i.ej, align 4, !tbaa !30
  br label %bb.e

._crit_edge156:                                   ; preds = %._crit_edge153
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.em = load float, ptr %i.el, align 4, !tbaa !488
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eo = load float, ptr %i.en, align 8, !tbaa !535
  %i.ep = fsub float 1.000000e+00, %i.eo
  %i.eq = fmul float %i.em, %i.ep                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.es = load i32, ptr %i.er, align 4, !tbaa !110 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph159, label %.loopexit132

.lr.ph159:                                        ; preds = %._crit_edge156
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 832
  %wide.trip.count193 = zext nneg i32 %i.es to i64
  %i.ev = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph155, %._crit_edge153
  %i.ex = phi i32 [ %i.eh, %.lr.ph155 ], [ %i.fd, %._crit_edge153 ] ; 2 uses
  %i.ey = phi i32 [ %.pre208, %.lr.ph155 ], [ %i.fe, %._crit_edge153 ] ; 2 uses
  %.079154 = phi i32 [ 0, %.lr.ph155 ], [ %i.ff, %._crit_edge153 ] ; 2 uses
  %i.ez = uitofp nneg i32 %.079154 to float
  %i.fa = sitofp i32 %i.ex to float
  %i.fb = fdiv float %i.ez, %i.fa
  %i.fc = icmp sgt i32 %i.ey, 0
  br i1 %i.fc, label %.lr.ph152, label %._crit_edge153

._crit_edge153.loopexit:                          ; preds = %.lr.ph152
  %.pre209 = load i32, ptr %i.eg, align 8, !tbaa !534
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge153.loopexit, %bb.e
  %i.fd = phi i32 [ %.pre209, %._crit_edge153.loopexit ], [ %i.ex, %bb.e ] ; 2 uses
  %i.fe = phi i32 [ %i.fl, %._crit_edge153.loopexit ], [ %i.ey, %bb.e ]
  %i.ff = add nuw nsw i32 %.079154, 1             ; 2 uses
  %i.fg = icmp slt i32 %i.ff, %i.fd
  br i1 %i.fg, label %bb.e, label %._crit_edge156

.lr.ph152:                                        ; preds = %bb.e, %.lr.ph152
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph152 ], [ 0, %bb.e ] ; 2 uses
  %i.fh = load ptr, ptr %i.ek, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv187
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !212
  %i.fk = zext nneg i32 %i.fj to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10btSoftBody11staticSolveEi, i64 %i.fk
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void %switch.load(ptr noundef nonnull %0, float noundef 1.000000e+00, float noundef %i.fb), !callees !536
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.fl = load i32, ptr %i.ej, align 4, !tbaa !30 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next188, %i.fm
  br i1 %i.fn, label %.lr.ph152, label %._crit_edge153.loopexit

bb.f:                                             ; preds = %.lr.ph159, %bb.f
  %indvars.iv190 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next191, %bb.f ] ; 2 uses
  %i.fo = load ptr, ptr %i.eu, align 8, !tbaa !109
  %i.fp = getelementptr inbounds nuw [120 x i8], ptr %i.fo, i64 %indvars.iv190 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !159
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !159
  %i.fw = fsub float %i.ft, %i.fv
  %i.fx = load <2 x float>, ptr %i.fq, align 4, !tbaa !159
  %i.fy = load <2 x float>, ptr %i.fr, align 4, !tbaa !159
  %i.fz = fsub <2 x float> %i.fx, %i.fy
  %i.ga = fmul <2 x float> %i.ew, %i.fz
  %i.gb = fmul float %i.eq, %i.fw
  %.sroa.3.12.vec.insert.i103 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gb, i64 0
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store <2 x float> %i.ga, ptr %i.gc, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i103, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !185
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  br i1 %exitcond194.not, label %.loopexit132, label %bb.f

.loopexit132:                                     ; preds = %bb.f, %._crit_edge156, %.loopexit134
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !537 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.loopexit132
end_hunk_2
begin_hunk_3_@_ZNK10btSoftBody12checkContactEP17btCollisionObjectRK9btVector3fRNS_4sCtiE:bb.a
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
  store float %i.cr, ptr %i.cs, align 8, !tbaa !572
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret i1 %i.ay
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !159
  %i.c = fdiv float 1.000000e+00, %i.b            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !159
  %i.f = fmul float %i.c, %i.e
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.h = insertelement <2 x float> poison, float %i.c, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g
  %i.k = fdiv <2 x float> %i.j, splat (float 3.000000e+00) ; 3 uses
  %i.l = fcmp olt <2 x float> %i.k, zeroinitializer
  %i.m = fsub <2 x float> splat (float 1.000000e+00), %i.k
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = select <2 x i1> %i.l, <2 x i32> %i.n, <2 x i32> zeroinitializer ; 3 uses
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = fadd <2 x float> %i.k, %i.p              ; 2 uses
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 3 uses
  %foldExtExtBinop = sub nsw <2 x i32> %i.r, %i.o
  %i.s = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop162 = sub nsw <2 x i32> %i.r, %i.o
  %i.t = extractelement <2 x i32> %foldExtExtBinop162, i64 1 ; 4 uses
  %i.u = fdiv float %i.f, 3.000000e+00            ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fsub float 1.000000e+00, %i.u
  %i.x = fptosi float %i.w to i32
  %i.y = select i1 %i.v, i32 %i.x, i32 0          ; 2 uses
  %i.z = sitofp i32 %i.y to float
  %i.aa = fadd float %i.u, %i.z                   ; 2 uses
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = sub nsw i32 %i.ab, %i.y                 ; 4 uses
  %i.ad = and i32 %i.s, 65535
  %i.ae = add nuw nsw i32 %i.ad, 24               ; 2 uses
  %i.af = lshr i32 %i.s, 5
  %i.ag = and i32 %i.af, 134215680
  %i.ah = shl i32 %i.ae, 16
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = xor i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = lshr i32 %i.aj, 11
  %i.al = and i32 %i.t, 65535
  %i.am = add i32 %i.aj, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i32 %i.t, 5
  %i.ap = and i32 %i.ao, 134215680
  %i.aq = shl i32 %i.an, 16
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = xor i32 %i.ar, %i.an                    ; 2 uses
  %i.at = lshr i32 %i.as, 11
  %i.au = and i32 %i.ac, 65535
  %i.av = add i32 %i.as, %i.au
  %i.aw = add i32 %i.av, %i.at                    ; 2 uses
  %i.ax = lshr i32 %i.ac, 5
  %i.ay = and i32 %i.ax, 134215680
  %i.az = shl i32 %i.aw, 16
  %i.ba = xor i32 %i.ay, %i.az
  %i.bb = xor i32 %i.ba, %i.aw                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 11
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = shl i32 %i.bd, 16
  %i.bf = xor i32 %i.be, %i.bd                    ; 2 uses
  %i.bg = lshr i32 %i.bf, 11
  %i.bh = ptrtoint ptr %2 to i64                  ; 3 uses
  %.sroa.13.16.extract.trunc.i = trunc i64 %i.bh to i32 ; 2 uses
  %i.bi = and i32 %.sroa.13.16.extract.trunc.i, 65535
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = add i32 %i.bj, %i.bg                    ; 2 uses
  %i.bl = lshr i32 %.sroa.13.16.extract.trunc.i, 5
  %i.bm = and i32 %i.bl, 134215680
  %i.bn = shl i32 %i.bk, 16
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = xor i32 %i.bo, %i.bk                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 11
  %.sroa.13.20.extract.shift.i = lshr i64 %i.bh, 32
  %.sroa.13.20.extract.trunc.i = trunc nuw i64 %.sroa.13.20.extract.shift.i to i32
  %i.br = and i32 %.sroa.13.20.extract.trunc.i, 65535
  %i.bs = add i32 %i.bp, %i.br
  %i.bt = add i32 %i.bs, %i.bq                    ; 2 uses
  %sh.diff.i = lshr i64 %i.bh, 37
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i32
  %i.bu = and i32 %tr.sh.diff.i, 134215680
  %i.bv = shl i32 %i.bt, 16
  %i.bw = xor i32 %i.bu, %i.bv
  %i.bx = xor i32 %i.bw, %i.bt                    ; 2 uses
  %i.by = lshr i32 %i.bx, 11
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %i.ca = shl i32 %i.bz, 3
  %i.cb = xor i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = lshr i32 %i.cb, 5
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = shl i32 %i.cd, 4
  %i.cf = xor i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = lshr i32 %i.cf, 17
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = shl i32 %i.ch, 25
  %i.cj = xor i32 %i.ci, %i.ch                    ; 2 uses
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = add i32 %i.ck, %i.cj                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !573
  %i.co = urem i32 %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !574
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !575 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !577
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !577
  %.not153 = icmp eq ptr %i.ct, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !578 ; 2 uses
  br i1 %.not153, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.cx = phi i32 [ %i.cy, %bb.f ], [ %.pre, %bb.a ]
  %.0154 = phi ptr [ %i.dp, %bb.f ], [ %i.ct, %bb.a ] ; 7 uses
  %i.cy = add nsw i32 %i.cx, 1                    ; 3 uses
  store i32 %i.cy, ptr %.phi.trans.insert, align 4, !tbaa !578
  %i.cz = getelementptr inbounds nuw i8, ptr %.0154, i64 272
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !579
  %i.db = icmp eq i32 %i.da, %i.cl
  br i1 %i.db, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.0154, i64 256
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !4
  %i.de = icmp eq i32 %i.dd, %i.s
  br i1 %i.de, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %.0154, i64 260
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = icmp eq i32 %i.dg, %i.t
  br i1 %i.dh, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %.0154, i64 264
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !4
  %i.dk = icmp eq i32 %i.dj, %i.ac
  br i1 %i.dk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dl = getelementptr inbounds nuw i8, ptr %.0154, i64 280
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !581
  %i.dn = icmp eq ptr %i.dm, %2
  br i1 %i.dn, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.0154, i64 288
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !582 ; 2 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.f, %bb.a
  %i.dq = phi i32 [ %.pre, %bb.a ], [ %i.cy, %bb.f ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ds = add nsw i32 %i.dq, 1
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !578
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !583
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !583
  %i.dw = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #32 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.dw, i8 0, i64 288, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 288
  store ptr %i.ct, ptr %i.dx, align 16, !tbaa !582
  store ptr %i.dw, ptr %i.cs, align 8, !tbaa !575
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 280
  store ptr %2, ptr %i.dy, align 8, !tbaa !581
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 272
  store i32 %i.cl, ptr %i.dz, align 16, !tbaa !579
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 256
  store i32 %i.s, ptr %i.ea, align 16, !tbaa !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 260
  store i32 %i.t, ptr %i.eb, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 264
  store i32 %i.ac, ptr %i.ec, align 8, !tbaa !4
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.dw)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge
  %.1 = phi ptr [ %i.dw, %.critedge ], [ %.0154, %bb.e ] ; 3 uses
  %i.ed = sitofp i32 %i.ab to float
  %i.ee = fsub float %i.aa, %i.ed
  %i.ef = fmul float %i.ee, 3.000000e+00          ; 2 uses
  %i.eg = fptosi float %i.ef to i32               ; 3 uses
  %.sroa.5.0.insert.ext.i146 = zext i32 %i.eg to i64
  %.sroa.5.0.insert.shift.i147 = shl nuw i64 %.sroa.5.0.insert.ext.i146, 32
  %i.eh = sitofp <2 x i32> %i.r to <2 x float>
  %i.ei = sitofp i32 %i.eg to float
  %i.ej = fsub float %i.ef, %i.ei                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !584
  %i.em = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.el, ptr %i.em, align 4, !tbaa !585
  %i.en = sext i32 %i.eg to i64                   ; 4 uses
  %i.eo = add i64 %.sroa.5.0.insert.shift.i147, 4294967296
  %i.ep = ashr exact i64 %i.eo, 32                ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.er = fsub <2 x float> %i.q, %i.eh
  %i.es = fmul <2 x float> %i.er, splat (float 3.000000e+00) ; 2 uses
  %i.et = fptosi <2 x float> %i.es to <2 x i32>   ; 3 uses
  %i.eu = extractelement <2 x i32> %i.et, i64 1   ; 2 uses
  %.sroa.5.0.insert.ext.i140 = zext i32 %i.eu to i64
  %.sroa.5.0.insert.shift.i141 = shl nuw i64 %.sroa.5.0.insert.ext.i140, 32
  %i.ev = extractelement <2 x i32> %i.et, i64 0   ; 2 uses
  %.sroa.5.0.insert.ext.i = zext i32 %i.ev to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %i.ew = sitofp <2 x i32> %i.et to <2 x float>
  %i.ex = fsub <2 x float> %i.es, %i.ew           ; 5 uses
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.ey ; 2 uses
  %i.fa = sext i32 %i.eu to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.en
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !159 ; 3 uses
  %i.fe = add i64 %.sroa.5.0.insert.shift.i, 4294967296
  %i.ff = ashr exact i64 %i.fe, 26
  %i.fg = getelementptr inbounds i8, ptr %.1, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.fa ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.en
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !159 ; 2 uses
  %i.fk = add i64 %.sroa.5.0.insert.shift.i141, 4294967296
  %i.fl = ashr exact i64 %i.fk, 32                ; 2 uses
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
  %foldExtExtBinop164 = fmul <2 x float> %i.gz, %i.gz
  %i.ho = extractelement <2 x float> %foldExtExtBinop164, i64 0
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
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody6CJoint5SolveEff:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 372
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bz = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.ca = load float, ptr %i.bw, align 8, !tbaa !159 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !159 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.by, align 4, !tbaa !159 ; 3 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ca, i64 1
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = fneg float %i.bz
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = extractelement <2 x float> %i.cc, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cn, float %i.cm)
  %.sroa.3.12.vec.insert.i.i7.i.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i17.i8 = phi <2 x float> [ %.sroa.5.0.copyload.i.i4, %bb.f ], [ %.sroa.5.0.copyload8.i.i25, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.0.0.i15.i9 = phi <2 x float> [ %.sroa.0.0.copyload.i.i2, %bb.f ], [ %.sroa.0.0.copyload6.i.i26, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0.0.i3.i10 = phi <2 x float> [ %i.bp, %bb.f ], [ %i.cj, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5.0.i4.i11 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i7, %bb.f ], [ %.sroa.3.12.vec.insert.i.i7.i.i29, %bb.g ], [ zeroinitializer, %bb.e ]
  %foldExtExtBinop137 = fadd <2 x float> %.sroa.0.0.i15.i9, %.sroa.0.0.i3.i10
  %foldExtExtBinop139 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop137
  %i.cp = extractelement <2 x float> %foldExtExtBinop139, i64 0 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !159 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ct = shufflevector <2 x float> %.sroa.0.0.i15.i9, <2 x float> %.sroa.5.0.i17.i8, <2 x i32> <i32 1, i32 2>
  %i.cu = shufflevector <2 x float> %.sroa.0.0.i3.i10, <2 x float> %.sroa.5.0.i4.i11, <2 x i32> <i32 1, i32 2>
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = fsub <2 x float> %i.av, %i.cv           ; 3 uses
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !tbaa !159 ; 3 uses
  %foldExtExtBinop141 = fmul <2 x float> %i.cw, %i.cx
  %i.cy = extractelement <2 x float> %foldExtExtBinop141, i64 0
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.cy)
  %i.da = extractelement <2 x float> %i.cx, i64 1
  %i.db = extractelement <2 x float> %i.cw, i64 1
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.da, float %i.cz) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = and i8 %i.de, -4
  %i.dg = or disjoint i8 %i.df, 1
  store i8 %i.dg, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !198
  %i.dj = fcmp olt float %i.dc, 0.000000e+00
  %.pre = load float, ptr %3, align 8, !tbaa !159 ; 2 uses
  br i1 %i.dj, label %bb.h, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge: ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dk = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !159
  br label %bb.i

bb.h:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %i.dl = fmul float %i.cr, %i.dc                 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.cx, %i.dn           ; 2 uses
  %i.dp = fsub float %i.cp, %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !159 ; 2 uses
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %i.dl, %i.ds
  %i.du = fadd float %.pre, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dw = fsub <2 x float> %i.cw, %i.do
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dw, %i.dy
  %i.ea = fadd <2 x float> %i.do, %i.dz
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !159
  %i.ec = fadd <2 x float> %i.ea, %i.eb
  br label %bb.i

bb.i:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge, %bb.h
  %i.ed = phi float [ %i.du, %bb.h ], [ %.pre, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.ec, %bb.h ], [ %i.dk, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !159
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.el = load float, ptr %i.ek, align 4, !tbaa !159
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.en = load float, ptr %i.em, align 4, !tbaa !159
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !159
  %i.eq = extractelement <2 x float> %i.ee, i64 0
  %i.er = fmul float %i.eq, %i.ep
  %i.es = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ed, float %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.eu = load float, ptr %i.et, align 4, !tbaa !159
  %i.ev = extractelement <2 x float> %i.ee, i64 1
  %i.ew = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.es)
  %i.ex = load <2 x float>, ptr %i.ef, align 4, !tbaa !159 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.ej, align 4, !tbaa !159 ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fd = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fb)
  %i.fg = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.el, i64 1
  %i.fi = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fi, <2 x float> %i.ff)
  %i.fk = insertelement <2 x float> poison, float %2, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj           ; 4 uses
  %i.fn = fmul float %2, %i.ew                    ; 5 uses
  %.sroa.3.12.vec.insert.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  store <2 x float> %i.fm, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %i.ei, align 8, !tbaa !185
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !293 ; 3 uses
  %i.fp = load ptr, ptr %i.aw, align 8, !tbaa !293
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.fr = extractelement <2 x float> %i.fm, i64 0 ; 3 uses
  %i.fs = extractelement <2 x float> %i.fm, i64 1 ; 3 uses
  %or.cond = fcmp ord float %i.fr, %i.fs
  %i.ft = fcmp ord float %i.fn, 0.000000e+00
  %or.cond135 = and i1 %or.cond, %i.ft
  br i1 %or.cond135, label %bb.k, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.k:                                             ; preds = %bb.j
  %i.fu = fmul float %i.fs, %i.fs
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fv)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 408
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !628
  %i.fz = fcmp olt float %sqrt.i, %i.fy
  br i1 %i.fz, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ga = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.gb = fneg <2 x float> %i.fm
  %i.gc = fneg float %i.fn                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 412
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !629 ; 4 uses
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i63, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !185
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.12.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x float> <float -0.000000e+00, float 0.000000e+00>, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !185
  %.sroa.14.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 %i.ga, ptr %.sroa.14.0..sroa_idx92, align 8
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.gg, %i.gb
  store <2 x float> %i.gh, ptr %4, align 8, !tbaa !159, !alias.scope !630
  %i.gi = fmul float %i.ge, %i.gc
  store float %i.gi, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !159, !alias.scope !630
  %i.gj = fmul float %i.ge, -0.000000e+00         ; 2 uses
  store float %i.gj, ptr %.sroa.9.0..sroa_idx88, align 8, !tbaa !159, !alias.scope !630
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.gl = fmul float %i.ge, -0.000000e+00
  store float %i.gl, ptr %i.gk, align 4, !tbaa !159, !alias.scope !630
  store float %i.gj, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !159, !alias.scope !630
  %i.gm = trunc i32 %i.ga to i8                   ; 2 uses
  %i.gn = and i8 %i.gm, 1
  %.not.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i = load i8, ptr %.sroa.14.0..sroa_idx92, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.go = phi i8 [ %.pre.i, %bb.m ], [ %i.gm, %bb.l ]
  %.mask.i = and i8 %i.go, 2
  %.not7.i = icmp eq i8 %.mask.i, 0
  br i1 %.not7.i, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx88, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 412
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !629 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.gs = load <2 x float>, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gs
  store <2 x float> %i.gv, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !159, !alias.scope !633
  %i.gy = fmul float %i.gr, %i.gx
  store float %i.gy, ptr %i.gw, align 8, !tbaa !159, !alias.scope !633
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ha = load <2 x float>, ptr %i.gz, align 8, !tbaa !159, !alias.scope !633
  %i.hb = fmul <2 x float> %i.gu, %i.ha
  store <2 x float> %i.hb, ptr %i.gz, align 8, !tbaa !159, !alias.scope !633
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !159, !alias.scope !633
  %i.he = fmul float %i.gr, %i.hd
  store float %i.he, ptr %i.hc, align 8, !tbaa !159, !alias.scope !633
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8             ; 2 uses
  %i.hh = and i8 %i.hg, 1
  %.not.i64 = icmp eq i8 %i.hh, 0
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i65 = load i8, ptr %i.hf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  %i.hi = phi i8 [ %.pre.i65, %bb.p ], [ %i.hg, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit ]
  %.mask.i66 = and i8 %i.hi, 2
  %.not7.i67 = icmp eq i8 %.mask.i66, 0
  br i1 %.not7.i67, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.hj = load <2 x float>, ptr %6, align 8, !tbaa !159, !alias.scope !636
  %i.hk = fneg <2 x float> %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !159, !alias.scope !636
  %i.hn = fneg float %i.hm
  %.sroa.3.12.vec.insert.i.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hn, i64 0
  store <2 x float> %i.hk, ptr %6, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i.i71, ptr %i.hl, align 8, !tbaa !185, !alias.scope !636
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hp = load <2 x float>, ptr %i.ho, align 8, !tbaa !159, !alias.scope !636
  %i.hq = fneg <2 x float> %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !159, !alias.scope !636
  %i.ht = fneg float %i.hs
  %.sroa.3.12.vec.insert.i5.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ht, i64 0
  store <2 x float> %i.hq, ptr %i.ho, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i5.i74, ptr %i.hr, align 8, !tbaa !185, !alias.scope !636
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8             ; 2 uses
  %i.hw = and i8 %i.hv, 1
  %.not.i75 = icmp eq i8 %i.hw, 0
  br i1 %.not.i75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i76 = load i8, ptr %i.hu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hx = phi i8 [ %.pre.i76, %bb.t ], [ %i.hv, %bb.s ]
  %.mask.i77 = and i8 %i.hx, 2
  %.not7.i78 = icmp eq i8 %.mask.i77, 0
  br i1 %.not7.i78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i81 = load i8, ptr %i.dd, align 8
  %.mask.i82 = and i8 %.pre.i81, 2
  %.not7.i83 = icmp eq i8 %.mask.i82, 0
  br i1 %.not7.i83, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84: ; preds = %bb.x, %bb.w, %bb.j, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6CJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(244) %0, float %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !308
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !159
  %i.g = fneg <2 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !159
  %i.j = fneg float %i.i
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.g, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14PSolve_AnchorsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #0 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !639
  %i.c = fmul float %1, %i.b                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load float, ptr %i.d, align 8, !tbaa !487 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %indvars.iv ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !522  ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !261  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load float, ptr %i.t, align 8, !tbaa !159 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.w = load float, ptr %i.v, align 4, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.z = load float, ptr %i.y, align 4, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 348
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.am = load float, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !159 ; 2 uses
  %i.aq = fneg float %i.ap
  %i.ar = load <2 x float>, ptr %i.o, align 4, !tbaa !159 ; 2 uses
  %i.as = load <2 x float>, ptr %i.q, align 8, !tbaa !159 ; 2 uses
  %i.at = load <2 x float>, ptr %i.x, align 4, !tbaa !159 ; 2 uses
  %i.au = load <2 x float>, ptr %i.ac, align 4, !tbaa !159
  %i.av = load <2 x float>, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.aw = load float, ptr %i.an, align 4, !tbaa !159
  %i.ax = shufflevector <2 x float> %i.ar, <2 x float> %i.at, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
end_hunk_4
