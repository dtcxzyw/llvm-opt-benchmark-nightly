Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btLemkeAlgorithm?download=true
inline.NumInlined: 176
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN16btLemkeAlgorithm5solveEj:bb.a
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !34

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp ne ptr %i.q, null
  %i.aq = load i8, ptr %i.h, align 8, !range !35
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond = select i1 %.not.i5.i.i.i, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN9btVectorXIfEC2Ei.exit.thread

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.h, align 8, !tbaa !26, !range !35, !noundef !36
  %.old232 = trunc nuw i8 %.old to i1
  br i1 %.old232, label %bb.c, label %_ZN9btVectorXIfEC2Ei.exit.thread

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
          to label %_ZN9btVectorXIfEC2Ei.exit.thread unwind label %bb.d

_ZN9btVectorXIfEC2Ei.exit.thread:                 ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !26
  store ptr %i.o, ptr %i.i, align 8, !tbaa !27
  store i32 %i.g, ptr %i.k, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !9
  store i32 %i.g, ptr %i.j, align 4, !tbaa !25
  br label %_Z9btSetZeroIfEvPT_i.exit.i

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.d ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(32) %0) #15
  br label %common.resume

_ZN9btVectorXIfEC2Ei.exit:                        ; preds = %bb.a
  store i32 %i.g, ptr %i.j, align 4, !tbaa !25
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN9btVectorXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %_ZN9btVectorXIfEC2Ei.exit.thread, %_ZN9btVectorXIfEC2Ei.exit
  %i.at = phi ptr [ %i.o, %_ZN9btVectorXIfEC2Ei.exit.thread ], [ null, %_ZN9btVectorXIfEC2Ei.exit ]
  %i.au = sext i32 %i.g to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !9
  br label %_ZN9btVectorXIfE7setZeroEv.exit

_ZN9btVectorXIfE7setZeroEv.exit:                  ; preds = %_Z9btSetZeroIfEvPT_i.exit.i, %_ZN9btVectorXIfEC2Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 %i.f, ptr %4, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 %i.f, ptr %i.aw, align 4, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store i8 1, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.bh, align 8, !tbaa !45
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %i.f, i32 noundef %i.f)
          to label %_ZN9btMatrixXIfEC2Eii.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bj) #15
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bk) #15
  br label %.body

_ZN9btMatrixXIfEC2Eii.exit:                       ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %_ZN9btMatrixXIfE7setZeroEv.exit.i, label %_Z9btSetZeroIfEvPT_i.exit.i.i

_Z9btSetZeroIfEvPT_i.exit.i.i:                    ; preds = %.noexc
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bn = sext i32 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.bo, i1 false), !tbaa !9
  br label %_ZN9btMatrixXIfE7setZeroEv.exit.i

_ZN9btMatrixXIfE7setZeroEv.exit.i:                ; preds = %_Z9btSetZeroIfEvPT_i.exit.i.i, %.noexc
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bp = load i32, ptr %4, align 8, !tbaa !37    ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %_ZN9btMatrixXIfE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit.i
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.bs = add i32 %i.br, 1                        ; 5 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 5 uses
  %.promoted.i = load i32, ptr %i.az, align 8, !tbaa !41
  %wide.trip.count.i = zext nneg i32 %i.bp to i64 ; 2 uses
  %xtraiter439 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.bu = icmp ult i32 %i.bp, 4
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod441 = icmp ne i64 %xtraiter439, 0
  call void @llvm.assume(i1 %lcmp.mod441)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bv = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.bw = mul i32 %i.bs, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bx
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !9
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter439
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.f, %._crit_edge.i.unr-lcssa
  %i.bz = add i32 %.promoted.i, %i.bp
  store i32 %i.bz, ptr %i.az, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE11setIdentityEv.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.ca = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cb = mul i32 %i.bs, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cc
  store float 1.000000e+00, ptr %i.cd, align 4, !tbaa !9
  %i.ce = trunc i64 %indvars.iv.i to i32
  %i.cf = or disjoint i32 %i.ce, 1
  %i.cg = mul i32 %i.bs, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ch
  store float 1.000000e+00, ptr %i.ci, align 4, !tbaa !9
  %i.cj = trunc i64 %indvars.iv.i to i32
  %i.ck = or disjoint i32 %i.cj, 2
  %i.cl = mul i32 %i.bs, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cm
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !9
  %i.co = trunc i64 %indvars.iv.i to i32
  %i.cp = or disjoint i32 %i.co, 3
  %i.cq = mul i32 %i.bs, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr
  store float 1.000000e+00, ptr %i.cs, align 4, !tbaa !9
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !47

_ZN9btMatrixXIfE11setIdentityEv.exit:             ; preds = %._crit_edge.i, %_ZN9btMatrixXIfE7setZeroEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN9btMatrixXIfE8negativeEv(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.ct)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZN9btMatrixXIfE11setIdentityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cu = add nsw i32 %i.g, 2                     ; 2 uses
  store i32 %i.f, ptr %6, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.cw, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 29 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 1, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 10 uses
  store ptr null, ptr %i.da, align 8, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.db, align 4, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.dc, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i8 1, ptr %i.dd, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  store ptr null, ptr %i.de, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.dg, align 8, !tbaa !45
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %i.f, i32 noundef %i.cu)
          to label %_ZN9btMatrixXIfEC2Eii.exit93 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.di) #15
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.dj) #15
  br label %.body91

_ZN9btMatrixXIfEC2Eii.exit93:                     ; preds = %bb.h
  %i.dk = add i32 %i.f, -1                        ; 2 uses
  %i.dl = load i32, ptr %4, align 8, !tbaa !37    ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.preheader.lr.ph.i, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

.preheader.lr.ph.i:                               ; preds = %_ZN9btMatrixXIfEC2Eii.exit93
  %i.dn = load i32, ptr %i.aw, align 4, !tbaa !38 ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %i.dp = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.dq = load ptr, ptr %i.da, align 8            ; 7 uses
  br i1 %i.do, label %.preheader.preheader.i, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %i.dt = load i32, ptr %i.cv, align 4            ; 2 uses
  %.promoted17.i = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.du = zext nneg i32 %i.dn to i64              ; 8 uses
  %wide.trip.count24.i = zext nneg i32 %i.dl to i64
  %i.dv = add nsw i64 %i.du, -1                   ; 2 uses
  %i.dw = sub i64 %i.dr, %i.ds
  %i.dx = mul nsw i64 %i.du, -4
  %min.iters.check329 = icmp ult i32 %i.dn, 12
  %i.dy = trunc nsw i64 %i.dv to i32
  %i.dz = icmp ugt i64 %i.dv, 4294967295
  %n.vec331 = and i64 %i.du, 2147483640           ; 3 uses
  %cmp.n338 = icmp eq i64 %n.vec331, %i.du
  %xtraiter442 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i98, %.preheader.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next22.i, %._crit_edge.i98 ] ; 5 uses
  %i.ea = mul nuw nsw i64 %indvars.iv21.i, %i.du
  %i.eb = trunc i64 %indvars.iv21.i to i32
  %i.ec = mul i32 %i.dt, %i.eb                    ; 8 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ea ; 6 uses
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.ee = mul i64 %i.dx, %indvars.iv21.i
  %i.ef = add i64 %i.dw, %i.ee
  %i.eg = trunc i64 %indvars.iv21.i to i32
  %i.eh = mul i32 %i.dt, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 2
  %i.ek = add i64 %i.ef, %i.ej
  %i.el = add i32 %i.ec, %i.dy
  %i.em = icmp slt i32 %i.el, %i.ec
  %i.en = or i1 %i.em, %i.dz
  %i.eo = add i64 %i.ek, -1
  %diff.check327 = icmp ult i64 %i.eo, 31
  %or.cond426 = select i1 %i.en, i1 true, i1 %diff.check327
  br i1 %or.cond426, label %scalar.ph328.preheader, label %vector.body332

vector.body332:                                   ; preds = %vector.scevcheck, %vector.body332
  %index333 = phi i64 [ %index.next336, %vector.body332 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index333 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load334 = load <4 x float>, ptr %i.ep, align 4, !tbaa !9
  %wide.load335 = load <4 x float>, ptr %i.eq, align 4, !tbaa !9
  %i.er = trunc nuw nsw i64 %index333 to i32
  %i.es = add i32 %i.ec, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x float> %wide.load334, ptr %i.eu, align 4, !tbaa !9
  store <4 x float> %wide.load335, ptr %i.ev, align 4, !tbaa !9
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ew, label %middle.block337, label %vector.body332, !llvm.loop !48

middle.block337:                                  ; preds = %vector.body332
  br i1 %cmp.n338, label %._crit_edge.i98, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.scevcheck, %.preheader.i, %middle.block337
  %indvars.iv.i95.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec331, %middle.block337 ] ; 3 uses
  br i1 %lcmp.mod443.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %indvars.iv.i95.prol = phi i64 [ %indvars.iv.next.i96.prol, %scalar.ph328.prol ], [ %indvars.iv.i95.ph, %scalar.ph328.preheader ] ; 3 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i95.prol
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !9
  %i.ez = trunc nuw nsw i64 %indvars.iv.i95.prol to i32
  %.reass.i.prol = add i32 %i.ec, %i.ez
  %i.fa = sext i32 %.reass.i.prol to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fa
  store float %i.ey, ptr %i.fb, align 4, !tbaa !9
  %indvars.iv.next.i96.prol = add nuw nsw i64 %indvars.iv.i95.prol, 1 ; 2 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !49

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %indvars.iv.i95.unr = phi i64 [ %indvars.iv.i95.ph, %scalar.ph328.preheader ], [ %indvars.iv.next.i96.prol, %scalar.ph328.prol ]
  %i.fc = sub nsw i64 %indvars.iv.i95.ph, %i.du
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %._crit_edge.i98, label %scalar.ph328

._crit_edge16.i:                                  ; preds = %._crit_edge.i98
  %i.fe = mul i32 %i.dn, %i.dl
  %i.ff = add i32 %.promoted17.i, %i.fe
  store i32 %i.ff, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

._crit_edge.i98:                                  ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block337
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %._crit_edge16.i, label %.preheader.i, !llvm.loop !50

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96.3, %scalar.ph328 ], [ %indvars.iv.i95.unr, %scalar.ph328.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i95
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !9
  %i.fi = trunc nuw nsw i64 %indvars.iv.i95 to i32
  %.reass.i = add i32 %i.ec, %i.fi
  %i.fj = sext i32 %.reass.i to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fj
  store float %i.fh, ptr %i.fk, align 4, !tbaa !9
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !9
  %i.fn = trunc nuw nsw i64 %indvars.iv.next.i96 to i32
  %.reass.i.1 = add i32 %i.ec, %i.fn
  %i.fo = sext i32 %.reass.i.1 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fo
  store float %i.fm, ptr %i.fp, align 4, !tbaa !9
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i95, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96.1
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !9
  %i.fs = trunc nuw nsw i64 %indvars.iv.next.i96.1 to i32
  %.reass.i.2 = add i32 %i.ec, %i.fs
  %i.ft = sext i32 %.reass.i.2 to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ft
  store float %i.fr, ptr %i.fu, align 4, !tbaa !9
  %indvars.iv.next.i96.2 = add nuw nsw i64 %indvars.iv.i95, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96.2
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !9
  %i.fx = trunc nuw nsw i64 %indvars.iv.next.i96.2 to i32
  %.reass.i.3 = add i32 %i.ec, %i.fx
  %i.fy = sext i32 %.reass.i.3 to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fy
  store float %i.fw, ptr %i.fz, align 4, !tbaa !9
  %indvars.iv.next.i96.3 = add nuw nsw i64 %indvars.iv.i95, 4 ; 2 uses
  %exitcond.not.i97.3 = icmp eq i64 %indvars.iv.next.i96.3, %i.du
  br i1 %exitcond.not.i97.3, label %._crit_edge.i98, label %scalar.ph328, !llvm.loop !51

_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit:    ; preds = %._crit_edge16.i, %.preheader.lr.ph.i, %_ZN9btMatrixXIfEC2Eii.exit93
  %i.ga = load i32, ptr %5, align 8, !tbaa !37    ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.preheader.lr.ph.i99, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

.preheader.lr.ph.i99:                             ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !38 ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = load ptr, ptr %i.da, align 8            ; 7 uses
  br i1 %i.ge, label %.preheader.preheader.i101, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

.preheader.preheader.i101:                        ; preds = %.preheader.lr.ph.i99
  %i.gi = ptrtoaddr ptr %i.gh to i64
  %i.gj = ptrtoaddr ptr %i.gg to i64
  %i.gk = load i32, ptr %i.cv, align 4            ; 2 uses
  %.promoted17.i101 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.gl = zext nneg i32 %i.gd to i64              ; 8 uses
  %wide.trip.count24.i102 = zext nneg i32 %i.ga to i64
  %i.gm = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gn = sub i64 %i.gi, %i.gj
  %i.go = mul nsw i64 %i.gl, -4
  %min.iters.check344 = icmp ult i32 %i.gd, 12
  %i.gp = trunc nsw i64 %i.gm to i32
  %i.gq = icmp ugt i64 %i.gm, 4294967295
  %n.vec346 = and i64 %i.gl, 2147483640           ; 3 uses
  %cmp.n353 = icmp eq i64 %n.vec346, %i.gl
  %xtraiter445 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod446.not.a = icmp eq i64 %xtraiter445, 0
  br label %.preheader.i104

.preheader.i104:                                  ; preds = %._crit_edge.i110, %.preheader.preheader.i101
  %indvars.iv21.i105 = phi i64 [ 0, %.preheader.preheader.i101 ], [ %indvars.iv.next22.i111, %._crit_edge.i110 ] ; 5 uses
  %i.gr = mul nuw nsw i64 %indvars.iv21.i105, %i.gl
  %i.gs = trunc i64 %indvars.iv21.i105 to i32
  %i.gt = mul i32 %i.gk, %i.gs
  %invariant.op.i = add i32 %i.gt, %i.f           ; 8 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gr ; 6 uses
  br i1 %min.iters.check344, label %scalar.ph343.preheader, label %vector.scevcheck340

vector.scevcheck340:                              ; preds = %.preheader.i104
  %i.gv = mul i64 %i.go, %indvars.iv21.i105
  %i.gw = add i64 %i.gn, %i.gv
  %i.gx = trunc i64 %indvars.iv21.i105 to i32
  %i.gy = mul i32 %i.gk, %i.gx
  %i.gz = add i32 %i.gy, %i.f
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = add i64 %i.gw, %i.hb
  %i.hd = add i32 %invariant.op.i, %i.gp
  %i.he = icmp slt i32 %i.hd, %invariant.op.i
  %i.hf = or i1 %i.he, %i.gq
  %i.hg = add i64 %i.hc, -1
  %diff.check342 = icmp ult i64 %i.hg, 31
  %or.cond428 = select i1 %i.hf, i1 true, i1 %diff.check342
  br i1 %or.cond428, label %scalar.ph343.preheader, label %vector.body347

vector.body347:                                   ; preds = %vector.scevcheck340, %vector.body347
  %index348 = phi i64 [ %index.next351, %vector.body347 ], [ 0, %vector.scevcheck340 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index348 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load349 = load <4 x float>, ptr %i.hh, align 4, !tbaa !9
  %wide.load350 = load <4 x float>, ptr %i.hi, align 4, !tbaa !9
  %i.hj = trunc nuw nsw i64 %index348 to i32
  %i.hk = add i32 %invariant.op.i, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <4 x float> %wide.load349, ptr %i.hm, align 4, !tbaa !9
  store <4 x float> %wide.load350, ptr %i.hn, align 4, !tbaa !9
  %index.next351 = add nuw i64 %index348, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.ho, label %middle.block352, label %vector.body347, !llvm.loop !52

middle.block352:                                  ; preds = %vector.body347
  br i1 %cmp.n353, label %._crit_edge.i110, label %scalar.ph343.preheader

scalar.ph343.preheader:                           ; preds = %vector.scevcheck340, %.preheader.i104, %middle.block352
  %indvars.iv.i106.ph = phi i64 [ 0, %vector.scevcheck340 ], [ 0, %.preheader.i104 ], [ %n.vec346, %middle.block352 ] ; 3 uses
  br i1 %lcmp.mod446.not.a, label %scalar.ph343.prol.loopexit, label %scalar.ph343.prol

scalar.ph343.prol:                                ; preds = %scalar.ph343.preheader, %scalar.ph343.prol
  %indvars.iv.i106.prol = phi i64 [ %indvars.iv.next.i108.prol, %scalar.ph343.prol ], [ %indvars.iv.i106.ph, %scalar.ph343.preheader ] ; 3 uses
  %prol.iter447 = phi i64 [ %prol.iter447.next, %scalar.ph343.prol ], [ 0, %scalar.ph343.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106.prol
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !9
  %i.hr = trunc nuw nsw i64 %indvars.iv.i106.prol to i32
  %.reass.i107.prol = add i32 %invariant.op.i, %i.hr
  %i.hs = sext i32 %.reass.i107.prol to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hs
  store float %i.hq, ptr %i.ht, align 4, !tbaa !9
  %indvars.iv.next.i108.prol = add nuw nsw i64 %indvars.iv.i106.prol, 1 ; 2 uses
  %prol.iter447.next = add i64 %prol.iter447, 1   ; 2 uses
  %prol.iter447.cmp.not = icmp eq i64 %prol.iter447.next, %xtraiter445
  br i1 %prol.iter447.cmp.not, label %scalar.ph343.prol.loopexit, label %scalar.ph343.prol, !llvm.loop !53

scalar.ph343.prol.loopexit:                       ; preds = %scalar.ph343.prol, %scalar.ph343.preheader
  %indvars.iv.i106.unr = phi i64 [ %indvars.iv.i106.ph, %scalar.ph343.preheader ], [ %indvars.iv.next.i108.prol, %scalar.ph343.prol ]
  %i.hu = sub nsw i64 %indvars.iv.i106.ph, %i.gl
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge.i110, label %scalar.ph343

._crit_edge16.i113:                               ; preds = %._crit_edge.i110
  %i.hw = mul i32 %i.gd, %i.ga
  %i.hx = add i32 %.promoted17.i101, %i.hw
  store i32 %i.hx, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

._crit_edge.i110:                                 ; preds = %scalar.ph343.prol.loopexit, %scalar.ph343, %middle.block352
  %indvars.iv.next22.i111 = add nuw nsw i64 %indvars.iv21.i105, 1 ; 2 uses
  %exitcond25.not.i112 = icmp eq i64 %indvars.iv.next22.i111, %wide.trip.count24.i102
  br i1 %exitcond25.not.i112, label %._crit_edge16.i113, label %.preheader.i104, !llvm.loop !50

scalar.ph343:                                     ; preds = %scalar.ph343.prol.loopexit, %scalar.ph343
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i108.3, %scalar.ph343 ], [ %indvars.iv.i106.unr, %scalar.ph343.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !9
  %i.ia = trunc nuw nsw i64 %indvars.iv.i106 to i32
  %.reass.i107 = add i32 %invariant.op.i, %i.ia
  %i.ib = sext i32 %.reass.i107 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ib
  store float %i.hz, ptr %i.ic, align 4, !tbaa !9
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108
  %i.ie = load float, ptr %i.id, align 4, !tbaa !9
  %i.if = trunc nuw nsw i64 %indvars.iv.next.i108 to i32
  %.reass.i107.1 = add i32 %invariant.op.i, %i.if
  %i.ig = sext i32 %.reass.i107.1 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ig
  store float %i.ie, ptr %i.ih, align 4, !tbaa !9
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.1
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !9
  %i.ik = trunc nuw nsw i64 %indvars.iv.next.i108.1 to i32
  %.reass.i107.2 = add i32 %invariant.op.i, %i.ik
  %i.il = sext i32 %.reass.i107.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.il
  store float %i.ij, ptr %i.im, align 4, !tbaa !9
  %indvars.iv.next.i108.2 = add nuw nsw i64 %indvars.iv.i106, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.2
  %i.io = load float, ptr %i.in, align 4, !tbaa !9
  %i.ip = trunc nuw nsw i64 %indvars.iv.next.i108.2 to i32
  %.reass.i107.3 = add i32 %invariant.op.i, %i.ip
  %i.iq = sext i32 %.reass.i107.3 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.iq
  store float %i.io, ptr %i.ir, align 4, !tbaa !9
  %indvars.iv.next.i108.3 = add nuw nsw i64 %indvars.iv.i106, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next.i108.3, %i.gl
  br i1 %exitcond.not.i109.3, label %._crit_edge.i110, label %scalar.ph343, !llvm.loop !54

_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114: ; preds = %._crit_edge16.i113, %.preheader.lr.ph.i99, %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit
  br i1 %i.l, label %.preheader.lr.ph.i115, label %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit

.preheader.lr.ph.i115:                            ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114
  %i.is = load i32, ptr %i.cv, align 4            ; 6 uses
  %i.it = load ptr, ptr %i.da, align 8            ; 6 uses
  %.promoted20.i = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.iu = zext i32 %i.dk to i64                   ; 2 uses
  %i.iv = zext nneg i32 %i.f to i64               ; 2 uses
  %min.iters.check357 = icmp ult i32 %i.f, 8
  br i1 %min.iters.check357, label %.preheader.i118.preheader, label %vector.scevcheck355

vector.scevcheck355:                              ; preds = %.preheader.lr.ph.i115
  %ident.check = icmp ne i32 %i.is, 1
  %i.iw = add i32 %i.g, %i.dk
  %i.ix = icmp slt i32 %i.iw, %i.g
  %i.iy = or i1 %ident.check, %i.ix
  br i1 %i.iy, label %.preheader.i118.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.scevcheck355
  %n.vec359 = and i64 %i.iv, 2147483640           ; 3 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %i.iz = trunc i64 %index361 to i32
  %i.ja = add i32 %i.g, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x float> splat (float -1.000000e+00), ptr %i.jc, align 4, !tbaa !9
  store <4 x float> splat (float -1.000000e+00), ptr %i.jd, align 4, !tbaa !9
  %index.next362 = add nuw i64 %index361, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next362, %n.vec359
  br i1 %i.je, label %middle.block363, label %vector.body360, !llvm.loop !55

middle.block363:                                  ; preds = %vector.body360
  %cmp.n364 = icmp eq i64 %n.vec359, %i.iv
  br i1 %cmp.n364, label %._crit_edge19.i, label %.preheader.i118.preheader

.preheader.i118.preheader:                        ; preds = %vector.scevcheck355, %.preheader.lr.ph.i115, %middle.block363
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck355 ], [ 0, %.preheader.lr.ph.i115 ], [ %n.vec359, %middle.block363 ] ; 3 uses
  %i.jf = sub nsw i64 %i.iu, %indvars.iv.ph
  %i.jg = and i32 %i.f, 3                         ; 2 uses
  %xtraiter448 = zext nneg i32 %i.jg to i64
  %lcmp.mod449.not = icmp eq i32 %i.jg, 0
  br i1 %lcmp.mod449.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol

.preheader.i118.prol:                             ; preds = %.preheader.i118.preheader, %.preheader.i118.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.i118.prol ], [ %indvars.iv.ph, %.preheader.i118.preheader ] ; 2 uses
  %prol.iter450 = phi i64 [ %prol.iter450.next, %.preheader.i118.prol ], [ 0, %.preheader.i118.preheader ]
  %i.jh = trunc i64 %indvars.iv.prol to i32
  %i.ji = mul i32 %i.is, %i.jh
  %invariant.op.i119.prol = add i32 %i.ji, %i.g
  %i.jj = sext i32 %invariant.op.i119.prol to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jj
  store float -1.000000e+00, ptr %i.jk, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter450.next = add i64 %prol.iter450, 1   ; 2 uses
  %prol.iter450.cmp.not = icmp eq i64 %prol.iter450.next, %xtraiter448
  br i1 %prol.iter450.cmp.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol, !llvm.loop !56

.preheader.i118.prol.loopexit:                    ; preds = %.preheader.i118.prol, %.preheader.i118.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.i118.preheader ], [ %indvars.iv.next.prol, %.preheader.i118.prol ]
  %i.jl = icmp ult i64 %i.jf, 3
  br i1 %i.jl, label %._crit_edge19.i, label %.preheader.i118

.preheader.i118:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.i118 ], [ %indvars.iv.unr, %.preheader.i118.prol.loopexit ] ; 5 uses
  %i.jm = trunc i64 %indvars.iv to i32
  %i.jn = mul i32 %i.is, %i.jm
  %invariant.op.i119 = add i32 %i.jn, %i.g
  %i.jo = sext i32 %invariant.op.i119 to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jo
  store float -1.000000e+00, ptr %i.jp, align 4, !tbaa !9
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = add i32 %i.jq, 1
  %i.js = mul i32 %i.is, %i.jr
  %invariant.op.i119.1 = add i32 %i.js, %i.g
  %i.jt = sext i32 %invariant.op.i119.1 to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jt
  store float -1.000000e+00, ptr %i.ju, align 4, !tbaa !9
  %i.jv = trunc i64 %indvars.iv to i32
  %i.jw = add i32 %i.jv, 2
  %i.jx = mul i32 %i.is, %i.jw
  %invariant.op.i119.2 = add i32 %i.jx, %i.g
  %i.jy = sext i32 %invariant.op.i119.2 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jy
  store float -1.000000e+00, ptr %i.jz, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ka = trunc i64 %indvars.iv.next.2 to i32
  %i.kb = mul i32 %i.is, %i.ka
  %invariant.op.i119.3 = add i32 %i.kb, %i.g
  %i.kc = sext i32 %invariant.op.i119.3 to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.kc
  store float -1.000000e+00, ptr %i.kd, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond25.not.i125.3 = icmp eq i64 %indvars.iv.next.2, %i.iu
  br i1 %exitcond25.not.i125.3, label %._crit_edge19.i, label %.preheader.i118, !llvm.loop !57

._crit_edge19.i:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118, %middle.block363
  %i.ke = add i32 %i.f, %.promoted20.i
  store i32 %i.ke, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit

_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit:        ; preds = %._crit_edge19.i, %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114
  %i.kf = or disjoint i32 %i.g, 1                 ; 3 uses
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !25  ; 4 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.preheader.lr.ph.i126, label %bb.j

.preheader.lr.ph.i126:                            ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !27 ; 7 uses
  %i.kk = load i32, ptr %i.cv, align 4, !tbaa !38 ; 2 uses
  %i.kl = load ptr, ptr %i.da, align 8, !tbaa !27 ; 2 uses
  %.promoted14.i = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.km = sext i32 %i.kk to i64                   ; 5 uses
  %i.kn = sext i32 %i.kf to i64
  %wide.trip.count.i127 = zext nneg i32 %i.kg to i64 ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.kl, i64 %i.kn ; 6 uses
  %min.iters.check371 = icmp ugt i32 %i.kg, 19
  %ident.check367.not = icmp eq i32 %i.kk, 1
  %or.cond429 = select i1 %min.iters.check371, i1 %ident.check367.not, i1 false
  br i1 %or.cond429, label %vector.memcheck368, label %.preheader.i128.preheader

vector.memcheck368:                               ; preds = %.preheader.lr.ph.i126
  %i.ko = ptrtoaddr ptr %i.kl to i64
  %i.kp = ptrtoaddr ptr %i.kj to i64
  %i.kq = sext i32 %i.g to i64
  %i.kr = shl nsw i64 %i.kq, 2
  %i.ks = add i64 %i.kr, %i.ko
  %i.kt = sub i64 %i.ks, %i.kp
  %i.ku = add i64 %i.kt, 3
  %diff.check369 = icmp ult i64 %i.ku, 31
  br i1 %diff.check369, label %.preheader.i128.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck368
  %n.vec373 = and i64 %wide.trip.count.i127, 2147483640 ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next378, %vector.body374 ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %index375 ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index375 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load376 = load <4 x float>, ptr %i.kv, align 4, !tbaa !9
  %wide.load377 = load <4 x float>, ptr %i.kx, align 4, !tbaa !9
  %i.ky = getelementptr i8, ptr %i.kw, i64 16
  store <4 x float> %wide.load376, ptr %i.kw, align 4, !tbaa !9
  store <4 x float> %wide.load377, ptr %i.ky, align 4, !tbaa !9
  %index.next378 = add nuw i64 %index375, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.kz, label %middle.block379, label %vector.body374, !llvm.loop !58

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %n.vec373, %wide.trip.count.i127
  br i1 %cmp.n380, label %._crit_edge.i132, label %.preheader.i128.preheader

.preheader.i128.preheader:                        ; preds = %vector.memcheck368, %.preheader.lr.ph.i126, %middle.block379
  %indvars.iv.i129.ph = phi i64 [ 0, %vector.memcheck368 ], [ 0, %.preheader.lr.ph.i126 ], [ %n.vec373, %middle.block379 ] ; 3 uses
  %xtraiter451 = and i64 %wide.trip.count.i127, 3 ; 2 uses
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.preheader.i128.prol.loopexit, label %.preheader.i128.prol

.preheader.i128.prol:                             ; preds = %.preheader.i128.preheader, %.preheader.i128.prol
  %indvars.iv.i129.prol = phi i64 [ %indvars.iv.next.i130.prol, %.preheader.i128.prol ], [ %indvars.iv.i129.ph, %.preheader.i128.preheader ] ; 3 uses
  %prol.iter453 = phi i64 [ %prol.iter453.next, %.preheader.i128.prol ], [ 0, %.preheader.i128.preheader ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.i129.prol
  %i.lb = mul nsw i64 %indvars.iv.i129.prol, %i.km
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  %i.lc = load float, ptr %i.la, align 4, !tbaa !9
  store float %i.lc, ptr %gep.i.prol, align 4, !tbaa !9
  %indvars.iv.next.i130.prol = add nuw nsw i64 %indvars.iv.i129.prol, 1 ; 2 uses
  %prol.iter453.next = add i64 %prol.iter453, 1   ; 2 uses
  %prol.iter453.cmp.not = icmp eq i64 %prol.iter453.next, %xtraiter451
  br i1 %prol.iter453.cmp.not, label %.preheader.i128.prol.loopexit, label %.preheader.i128.prol, !llvm.loop !59

.preheader.i128.prol.loopexit:                    ; preds = %.preheader.i128.prol, %.preheader.i128.preheader
  %indvars.iv.i129.unr = phi i64 [ %indvars.iv.i129.ph, %.preheader.i128.preheader ], [ %indvars.iv.next.i130.prol, %.preheader.i128.prol ]
  %i.ld = sub nsw i64 %indvars.iv.i129.ph, %wide.trip.count.i127
  %i.le = icmp ugt i64 %i.ld, -4
  br i1 %i.le, label %._crit_edge.i132, label %.preheader.i128

.preheader.i128:                                  ; preds = %.preheader.i128.prol.loopexit, %.preheader.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i130.3, %.preheader.i128 ], [ %indvars.iv.i129.unr, %.preheader.i128.prol.loopexit ] ; 6 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.i129
  %i.lg = mul nsw i64 %indvars.iv.i129, %i.km
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lg
  %i.lh = load float, ptr %i.lf, align 4, !tbaa !9
  store float %i.lh, ptr %gep.i, align 4, !tbaa !9
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130
  %i.lj = mul nsw i64 %indvars.iv.next.i130, %i.km
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lj
  %i.lk = load float, ptr %i.li, align 4, !tbaa !9
  store float %i.lk, ptr %gep.i.1, align 4, !tbaa !9
  %indvars.iv.next.i130.1 = add nuw nsw i64 %indvars.iv.i129, 2 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130.1
  %i.lm = mul nsw i64 %indvars.iv.next.i130.1, %i.km
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lm
  %i.ln = load float, ptr %i.ll, align 4, !tbaa !9
  store float %i.ln, ptr %gep.i.2, align 4, !tbaa !9
  %indvars.iv.next.i130.2 = add nuw nsw i64 %indvars.iv.i129, 3 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130.2
  %i.lp = mul nsw i64 %indvars.iv.next.i130.2, %i.km
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lp
end_hunk_0
begin_hunk_1_@_ZN16btLemkeAlgorithm5solveEj:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.0.i.i.i383 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.me to i64 ; 5 uses
  %min.iters.check386.a = icmp ult i32 %i.me, 8
  %i.mo = sub i64 %i.mf, %.0.i.i.i383
  %diff.check384 = icmp ugt i64 %i.mo, -32
  %or.cond431 = or i1 %min.iters.check386.a, %diff.check384
  br i1 %or.cond431, label %scalar.ph385.preheader.a, label %vector.ph387.a

vector.ph387.a:                                   ; preds = %.lr.ph.i.i.i
  %n.vec388.a = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body389.a

vector.body389.a:                                 ; preds = %vector.body389.a, %vector.ph387.a
  %index390.a = phi i64 [ 0, %vector.ph387.a ], [ %index.next393.a, %vector.body389.a ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index390.a ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index390.a ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load391.a = load <4 x i32>, ptr %i.mq, align 4, !tbaa !68
  %wide.load392.a = load <4 x i32>, ptr %i.mr, align 4, !tbaa !68
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <4 x i32> %wide.load391.a, ptr %i.mp, align 4, !tbaa !68
  store <4 x i32> %wide.load392.a, ptr %i.ms, align 4, !tbaa !68
  %index.next393.a = add nuw i64 %index390.a, 8   ; 2 uses
  %i.mt = icmp eq i64 %index.next393.a, %n.vec388.a
  br i1 %i.mt, label %middle.block394.a, label %vector.body389.a, !llvm.loop !69

middle.block394.a:                                ; preds = %vector.body389.a
  %cmp.n395.a = icmp eq i64 %n.vec388.a, %wide.trip.count.i.i.i
  br i1 %cmp.n395.a, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph385.preheader.a

scalar.ph385.preheader.a:                         ; preds = %.lr.ph.i.i.i, %middle.block394.a
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec388.a, %middle.block394.a ] ; 3 uses
  %xtraiter454 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod455.not.a = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod455.not.a, label %scalar.ph385.prol.loopexit, label %scalar.ph385.prol

scalar.ph385.prol:                                ; preds = %scalar.ph385.preheader.a, %scalar.ph385.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph385.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph385.preheader.a ] ; 3 uses
  %prol.iter456 = phi i64 [ %prol.iter456.next, %scalar.ph385.prol ], [ 0, %scalar.ph385.preheader.a ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i.i.i.prol
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !68
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter456.next = add i64 %prol.iter456, 1   ; 2 uses
  %prol.iter456.cmp.not = icmp eq i64 %prol.iter456.next, %xtraiter454
  br i1 %prol.iter456.cmp.not, label %scalar.ph385.prol.loopexit, label %scalar.ph385.prol, !llvm.loop !70

scalar.ph385.prol.loopexit:                       ; preds = %scalar.ph385.prol, %scalar.ph385.preheader.a
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph385.preheader.a ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph385.prol ]
  %i.mx = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.my = icmp ugt i64 %i.mx, -4
  br i1 %i.my, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph385.a

scalar.ph385.a:                                   ; preds = %scalar.ph385.prol.loopexit, %scalar.ph385.a
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph385.a ], [ %indvars.iv.i.i.i.unr, %scalar.ph385.prol.loopexit ] ; 6 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i.i.i
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !68
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !68
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i.i.i
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !68
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i.i.i.1
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !68
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i.i.i.2
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !68
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph385.a, !llvm.loop !71

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph385.prol.loopexit, %scalar.ph385.a, %middle.block394.a, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.md)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i unwind label %bb.q

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.ls, align 8, !tbaa !61
  store ptr %.0.i.i.i, ptr %i.lt, align 8, !tbaa !65
  store i32 %i.mi, ptr %i.lv, align 8, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.m, %.lr.ph
  %i.nl = phi ptr [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.md, %bb.m ], [ %i.md, %.lr.ph ] ; 9 uses
  %i.nm = phi i32 [ %i.mi, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.me, %bb.m ], [ %i.me, %.lr.ph ]
  %i.nn = sext i32 %.pre2.pre.i to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nn
  store i32 %storemerge249, ptr %i.no, align 4, !tbaa !68
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !66
  %i.nq = add nsw i32 %i.np, 1                    ; 3 uses
  store i32 %i.nq, ptr %i.lu, align 4, !tbaa !66
  %i.nr = add nuw nsw i32 %storemerge249, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.nr, %i.f
  br i1 %exitcond.not, label %.lr.ph254.a, label %.lr.ph, !llvm.loop !72

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %bb.o
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

._crit_edge.unr-lcssa:                            ; preds = %bb.r
  %lcmp.mod460.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod460.not, label %._crit_edge, label %.epil.preheader457

.epil.preheader457:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph254.a
  %indvars.iv270.epil.init = phi i64 [ 0, %.lr.ph254.a ], [ %indvars.iv.next271.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.055252.epil.init = phi i1 [ true, %.lr.ph254.a ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.056251.epil.init = phi float [ 1.000000e+30, %.lr.ph254.a ], [ %.157.1, %._crit_edge.unr-lcssa ]
  %.058250.epil.init = phi i32 [ -1, %.lr.ph254.a ], [ %.159.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod463.a = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod463.a)
  %i.nt = mul nsw i64 %indvars.iv270.epil.init, %i.ly
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.nt
  %i.nu = load float, ptr %gep.epil, align 4, !tbaa !9 ; 2 uses
  %i.nv = fcmp olt float %i.nu, %.056251.epil.init
  %i.nw = trunc nuw nsw i64 %indvars.iv270.epil.init to i32
  %.159.epil = select i1 %i.nv, i32 %i.nw, i32 %.058250.epil.init
  %i.nx = fcmp uge float %i.nu, 0.000000e+00
  %.1.epil = select i1 %i.nx, i1 %.055252.epil.init, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader457
  %.159.lcssa = phi i32 [ %.159.1, %._crit_edge.unr-lcssa ], [ %.159.epil, %.epil.preheader457 ] ; 7 uses
  %.1.lcssa = phi i1 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.1.epil, %.epil.preheader457 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %.159.lcssa, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  br i1 %.1.lcssa, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread, label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph254.new.a
  %indvars.iv270 = phi i64 [ 0, %.lr.ph254.new.a ], [ %indvars.iv.next271.1, %bb.r ] ; 4 uses
  %.055252 = phi i1 [ true, %.lr.ph254.new.a ], [ %.1.1, %bb.r ]
  %.056251 = phi float [ 1.000000e+30, %.lr.ph254.new.a ], [ %.157.1, %bb.r ] ; 2 uses
  %.058250 = phi i32 [ -1, %.lr.ph254.new.a ], [ %.159.1, %bb.r ]
  %niter465.a = phi i64 [ 0, %.lr.ph254.new.a ], [ %niter465.next.1.a, %bb.r ]
  %i.ny = mul nsw i64 %indvars.iv270, %i.ly
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ny
  %i.nz = load float, ptr %gep, align 4, !tbaa !9 ; 3 uses
  %i.oa = fcmp olt float %i.nz, %.056251          ; 2 uses
  %i.ob = trunc nuw nsw i64 %indvars.iv270 to i32
  %.159 = select i1 %i.oa, i32 %i.ob, i32 %.058250
  %.157 = select i1 %i.oa, float %i.nz, float %.056251 ; 2 uses
  %i.oc = fcmp uge float %i.nz, 0.000000e+00
  %indvars.iv.next271 = or disjoint i64 %indvars.iv270, 1 ; 2 uses
  %i.od = mul nsw i64 %indvars.iv.next271, %i.ly
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.od
  %i.oe = load float, ptr %gep.1, align 4, !tbaa !9 ; 3 uses
  %i.of = fcmp olt float %i.oe, %.157             ; 2 uses
  %i.og = trunc nuw nsw i64 %indvars.iv.next271 to i32
  %.159.1 = select i1 %i.of, i32 %i.og, i32 %.159 ; 3 uses
  %.157.1 = select i1 %i.of, float %i.oe, float %.157 ; 2 uses
  %i.oh = fcmp uge float %i.oe, 0.000000e+00
  %i.oi = select i1 %i.oh, i1 %i.oc, i1 false
  %.1.1 = select i1 %i.oi, i1 %.055252, i1 false  ; 3 uses
  %indvars.iv.next271.1 = add nuw nsw i64 %indvars.iv270, 2 ; 2 uses
  %niter465.next.1.a = add i64 %niter465.a, 2     ; 2 uses
  %niter465.ncmp.1.a = icmp eq i64 %niter465.next.1.a, %unroll_iter464.a
  br i1 %niter465.ncmp.1.a, label %._crit_edge.unr-lcssa, label %bb.r, !llvm.loop !73

bb.s:                                             ; preds = %._crit_edge
  %i.oj = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.oj, i32 100, i32 %2
  %i.ok = sub nsw i32 0, %i.f
  store i32 0, ptr %i.d, align 8, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.aq
  %.2256 = phi i32 [ %.159.lcssa, %bb.s ], [ %i.qi, %bb.aq ] ; 4 uses
  %i.ol = phi i32 [ %i.g, %bb.s ], [ %storemerge78, %bb.aq ] ; 5 uses
  %i.om = load i32, ptr %i.cv, align 4, !tbaa !38
  %.fr61.i = freeze i32 %i.om                     ; 8 uses
  %i.on = mul nsw i32 %.fr61.i, %.2256            ; 3 uses
  %i.oo = add nsw i32 %i.on, %i.ol
  %i.op = load ptr, ptr %i.da, align 8, !tbaa !27 ; 6 uses
  %i.oq = sext i32 %i.oo to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !9
  %i.ot = fdiv float -1.000000e+00, %i.os         ; 2 uses
  %i.ou = load i32, ptr %6, align 8, !tbaa !37    ; 5 uses
  %i.ov = icmp sgt i32 %i.ou, 0                   ; 2 uses
  br i1 %i.ov, label %.lr.ph54.i, label %.preheader49.i

.lr.ph54.i:                                       ; preds = %bb.t
  %i.ow = icmp sgt i32 %.fr61.i, 0
  br i1 %i.ow, label %.lr.ph54.split.us.preheader.i, label %.lr.ph60.i

.lr.ph54.split.us.preheader.i:                    ; preds = %.lr.ph54.i
  %i.ox = zext i32 %i.ol to i64
  %i.oy = sext i32 %i.on to i64
  %i.oz = zext i32 %.2256 to i64
  %i.pa = zext nneg i32 %.fr61.i to i64           ; 2 uses
  %i.pb = sext i32 %i.ol to i64
  %wide.trip.count68.i = zext nneg i32 %i.ou to i64
  %invariant.gep82.i = getelementptr [4 x i8], ptr %i.op, i64 %i.pb
  %invariant.gep80.i = getelementptr [4 x i8], ptr %i.op, i64 %i.oy
  br label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph54.split.us.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i ], [ %indvars.iv.next66.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %.not47.us.i = icmp eq i64 %indvars.iv65.i, %i.oz
  br i1 %.not47.us.i, label %..loopexit_crit_edge.us.i, label %.preheader50.us.i

bb.u:                                             ; preds = %.preheader50.us.i, %bb.w
  %indvars.iv.i143 = phi i64 [ 0, %.preheader50.us.i ], [ %indvars.iv.next.i145, %bb.w ] ; 4 uses
  %.not48.us.i = icmp eq i64 %indvars.iv.i143, %i.ox
  br i1 %.not48.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %gep.i144 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i142, i64 %indvars.iv.i143 ; 2 uses
  %i.pc = load float, ptr %gep.i144, align 4, !tbaa !9
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i143
  %i.pd = load float, ptr %gep81.i, align 4, !tbaa !9
  %i.pe = load float, ptr %gep83.i, align 4, !tbaa !9
  %i.pf = fmul float %i.pd, %i.pe
  %i.pg = call float @llvm.fmuladd.f32(float %i.pf, float %i.ot, float %i.pc)
  %8 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.ph = add nsw i32 %8, 1
  store i32 %i.ph, ptr %i.cy, align 8, !tbaa !41
  store float %i.pg, ptr %gep.i144, align 4, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %indvars.iv.next.i145, %i.pa
  br i1 %exitcond.not.i146, label %..loopexit_crit_edge.us.i, label %bb.u, !llvm.loop !74

..loopexit_crit_edge.us.i:                        ; preds = %bb.w, %.lr.ph54.split.us.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %.preheader49.i, label %.lr.ph54.split.us.i, !llvm.loop !75

.preheader50.us.i:                                ; preds = %.lr.ph54.split.us.i
  %i.pi = mul nuw nsw i64 %indvars.iv65.i, %i.pa  ; 2 uses
  %gep83.i = getelementptr [4 x i8], ptr %invariant.gep82.i, i64 %i.pi
  %invariant.gep.i142 = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.pi
  br label %bb.u

.preheader49.i:                                   ; preds = %..loopexit_crit_edge.us.i, %bb.t
  %i.pj = icmp sgt i32 %.fr61.i, 0
  br i1 %i.pj, label %.lr.ph.i139, label %.preheader.i136

.lr.ph.i139:                                      ; preds = %.preheader49.i
  %i.pk = fneg float %i.ot                        ; 2 uses
  %.promoted57.i = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.pl = sext i32 %i.on to i64
  %wide.trip.count73.i = zext nneg i32 %.fr61.i to i64 ; 3 uses
  %invariant.gep84.i = getelementptr [4 x i8], ptr %i.op, i64 %i.pl ; 2 uses
  %min.iters.check398.a = icmp ult i32 %.fr61.i, 8
  br i1 %min.iters.check398.a, label %scalar.ph397.preheader.a, label %vector.ph399.a

vector.ph399.a:                                   ; preds = %.lr.ph.i139
  %n.vec400.a = and i64 %wide.trip.count73.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.pk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399.a
  %index402 = phi i64 [ 0, %vector.ph399.a ], [ %index.next405, %vector.body401 ] ; 2 uses
  %i.pm = getelementptr [4 x i8], ptr %invariant.gep84.i, i64 %index402 ; 3 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16     ; 2 uses
  %wide.load403 = load <4 x float>, ptr %i.pm, align 4, !tbaa !9
  %wide.load404 = load <4 x float>, ptr %i.pn, align 4, !tbaa !9
  %i.po = fmul <4 x float> %wide.load403, %broadcast.splat
  %i.pp = fmul <4 x float> %wide.load404, %broadcast.splat
  store <4 x float> %i.po, ptr %i.pm, align 4, !tbaa !9
  store <4 x float> %i.pp, ptr %i.pn, align 4, !tbaa !9
  %index.next405 = add nuw i64 %index402, 8       ; 2 uses
  %i.pq = icmp eq i64 %index.next405, %n.vec400.a
  br i1 %i.pq, label %middle.block406, label %vector.body401, !llvm.loop !76

middle.block406:                                  ; preds = %vector.body401
  %cmp.n407 = icmp eq i64 %n.vec400.a, %wide.trip.count73.i
  br i1 %cmp.n407, label %..preheader_crit_edge.i, label %scalar.ph397.preheader.a

scalar.ph397.preheader.a:                         ; preds = %.lr.ph.i139, %middle.block406
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph.i139 ], [ %n.vec400.a, %middle.block406 ]
  br label %scalar.ph397.a

..preheader_crit_edge.i:                          ; preds = %scalar.ph397.a, %middle.block406
  %i.pr = add i32 %.promoted57.i, %.fr61.i
  store i32 %i.pr, ptr %i.cy, align 8, !tbaa !41
  br label %.preheader.i136

.preheader.i136:                                  ; preds = %..preheader_crit_edge.i, %.preheader49.i
  br i1 %i.ov, label %.lr.ph60.i, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit

.lr.ph60.i:                                       ; preds = %.preheader.i136, %.lr.ph54.i
  %i.ps = sext i32 %.fr61.i to i64                ; 3 uses
  %i.pt = sext i32 %i.ol to i64
  %i.pu = zext i32 %.2256 to i64                  ; 3 uses
  %wide.trip.count78.i = zext i32 %i.ou to i64    ; 2 uses
  %invariant.gep86.i = getelementptr [4 x i8], ptr %i.op, i64 %i.pt ; 3 uses
  %xtraiter467.a = and i64 %wide.trip.count78.i, 1
  %i.pv = icmp eq i32 %i.ou, 1
  br i1 %i.pv, label %.epil.preheader466.a, label %.lr.ph60.i.new

.lr.ph60.i.new:                                   ; preds = %.lr.ph60.i
  %unroll_iter471.a = and i64 %wide.trip.count78.i, 4294967294
  br label %bb.x

scalar.ph397.a:                                   ; preds = %scalar.ph397.preheader.a, %scalar.ph397.a
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph397.a ], [ %indvars.iv70.i.ph, %scalar.ph397.preheader.a ] ; 2 uses
  %gep85.i = getelementptr [4 x i8], ptr %invariant.gep84.i, i64 %indvars.iv70.i ; 2 uses
  %i.pw = load float, ptr %gep85.i, align 4, !tbaa !9
  %i.px = fmul float %i.pw, %i.pk
  store float %i.px, ptr %gep85.i, align 4, !tbaa !9
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %..preheader_crit_edge.i, label %scalar.ph397.a, !llvm.loop !77

bb.x:                                             ; preds = %bb.ab, %.lr.ph60.i.new
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph60.i.new ], [ %indvars.iv.next76.i.1, %bb.ab ] ; 4 uses
  %niter472.a = phi i64 [ 0, %.lr.ph60.i.new ], [ %niter472.next.1, %bb.ab ]
  %.not.i138 = icmp eq i64 %indvars.iv75.i, %i.pu
  br i1 %.not.i138, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %9 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.py = add nsw i32 %9, 1
  store i32 %i.py, ptr %i.cy, align 8, !tbaa !41
  %i.pz = mul nsw i64 %indvars.iv75.i, %i.ps
  %gep87.i = getelementptr [4 x i8], ptr %invariant.gep86.i, i64 %i.pz
  store float 0.000000e+00, ptr %gep87.i, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %.not.i138.1 = icmp eq i64 %indvars.iv.next76.i, %i.pu
  br i1 %.not.i138.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %10 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.qa = add nsw i32 %10, 1
  store i32 %i.qa, ptr %i.cy, align 8, !tbaa !41
  %i.qb = mul nsw i64 %indvars.iv.next76.i, %i.ps
  %gep87.i.1 = getelementptr [4 x i8], ptr %invariant.gep86.i, i64 %i.qb
  store float 0.000000e+00, ptr %gep87.i.1, align 4, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %niter472.next.1 = add i64 %niter472.a, 2       ; 2 uses
  %niter472.ncmp.1 = icmp eq i64 %niter472.next.1, %unroll_iter471.a
  br i1 %niter472.ncmp.1, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !78

_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod469.not.a = icmp eq i64 %xtraiter467.a, 0
  br i1 %lcmp.mod469.not.a, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit, label %.epil.preheader466.a

.epil.preheader466.a:                             ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, %.lr.ph60.i
  %indvars.iv75.i.epil.init = phi i64 [ 0, %.lr.ph60.i ], [ %indvars.iv.next76.i.1, %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod470.a = trunc i32 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod470.a)
  %.not.i138.epil = icmp eq i64 %indvars.iv75.i.epil.init, %i.pu
  br i1 %.not.i138.epil, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit, label %bb.ac

bb.ac:                                            ; preds = %.epil.preheader466.a
  %11 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.qc = add nsw i32 %11, 1
  store i32 %i.qc, ptr %i.cy, align 8, !tbaa !41
  %i.qd = mul nsw i64 %indvars.iv75.i.epil.init, %i.ps
  %gep87.i.epil = getelementptr [4 x i8], ptr %invariant.gep86.i, i64 %i.qd
  store float 0.000000e+00, ptr %gep87.i.epil, align 4, !tbaa !9
  br label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit

_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit: ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, %bb.ac, %.epil.preheader466.a, %.preheader.i136
  %i.qe = sext i32 %.2256 to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.qe ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !68 ; 2 uses
  %i.qh = icmp slt i32 %i.qg, %i.f
  %storemerge78.p = select i1 %i.qh, i32 %i.f, i32 %i.ok
  %storemerge78 = add i32 %storemerge78.p, %i.qg  ; 7 uses
  store i32 %storemerge78, ptr %i.b, align 4, !tbaa !68
  store i32 %i.ol, ptr %i.qf, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 0, ptr %i.c, align 1, !tbaa !79
  %i.qi = invoke noundef i32 @_ZN16btLemkeAlgorithm24findLexicographicMinimumERK9btMatrixXIfERKiS5_Rb(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit
  %i.qj = load i8, ptr %i.c, align 1, !tbaa !79, !range !35, !noundef !36
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %.thread, label %bb.af

bb.ae:                                            ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bs

bb.af:                                            ; preds = %bb.ad
  %i.qm = icmp eq i32 %.159.lcssa, %i.qi
  br i1 %i.qm, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.qn = load i32, ptr %i.cv, align 4, !tbaa !38
  %.fr61.i147 = freeze i32 %i.qn                  ; 8 uses
  %i.qo = mul nsw i32 %.fr61.i147, %.159.lcssa    ; 3 uses
  %i.qp = add nsw i32 %i.qo, %storemerge78
  %i.qq = load ptr, ptr %i.da, align 8, !tbaa !27 ; 6 uses
  %i.qr = sext i32 %i.qp to i64
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !9
  %i.qu = fdiv float -1.000000e+00, %i.qt         ; 2 uses
  %i.qv = load i32, ptr %6, align 8, !tbaa !37    ; 5 uses
  %i.qw = icmp sgt i32 %i.qv, 0                   ; 2 uses
  br i1 %i.qw, label %.lr.ph54.i168, label %.preheader49.i148

.lr.ph54.i168:                                    ; preds = %bb.ag
  %i.qx = icmp sgt i32 %.fr61.i147, 0
  br i1 %i.qx, label %.lr.ph54.split.us.preheader.i169, label %.lr.ph60.i151

.lr.ph54.split.us.preheader.i169:                 ; preds = %.lr.ph54.i168
  %i.qy = zext i32 %storemerge78 to i64
  %i.qz = sext i32 %i.qo to i64
  %i.ra = zext i32 %.159.lcssa to i64
  %i.rb = zext nneg i32 %.fr61.i147 to i64        ; 2 uses
  %i.rc = sext i32 %storemerge78 to i64
  %wide.trip.count68.i171 = zext nneg i32 %i.qv to i64
  %invariant.gep82.i172 = getelementptr [4 x i8], ptr %i.qq, i64 %i.rc
  %invariant.gep80.i174 = getelementptr [4 x i8], ptr %i.qq, i64 %i.qz
  br label %.lr.ph54.split.us.i175

.lr.ph54.split.us.i175:                           ; preds = %..loopexit_crit_edge.us.i187, %.lr.ph54.split.us.preheader.i169
  %indvars.iv65.i176 = phi i64 [ 0, %.lr.ph54.split.us.preheader.i169 ], [ %indvars.iv.next66.i188, %..loopexit_crit_edge.us.i187 ] ; 3 uses
  %.not47.us.i177 = icmp eq i64 %indvars.iv65.i176, %i.ra
  br i1 %.not47.us.i177, label %..loopexit_crit_edge.us.i187, label %.preheader50.us.i178

bb.ah:                                            ; preds = %.preheader50.us.i178, %bb.aj
  %indvars.iv.i181 = phi i64 [ 0, %.preheader50.us.i178 ], [ %indvars.iv.next.i185, %bb.aj ] ; 4 uses
  %.not48.us.i182 = icmp eq i64 %indvars.iv.i181, %i.qy
  br i1 %.not48.us.i182, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %gep.i183 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i180, i64 %indvars.iv.i181 ; 2 uses
  %i.rd = load float, ptr %gep.i183, align 4, !tbaa !9
  %gep81.i184 = getelementptr [4 x i8], ptr %invariant.gep80.i174, i64 %indvars.iv.i181
  %i.re = load float, ptr %gep81.i184, align 4, !tbaa !9
  %i.rf = load float, ptr %gep83.i179, align 4, !tbaa !9
  %i.rg = fmul float %i.re, %i.rf
  %i.rh = call float @llvm.fmuladd.f32(float %i.rg, float %i.qu, float %i.rd)
  %12 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.ri = add nsw i32 %12, 1
  store i32 %i.ri, ptr %i.cy, align 8, !tbaa !41
  store float %i.rh, ptr %gep.i183, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i181, 1 ; 2 uses
  %exitcond.not.i186 = icmp eq i64 %indvars.iv.next.i185, %i.rb
  br i1 %exitcond.not.i186, label %..loopexit_crit_edge.us.i187, label %bb.ah, !llvm.loop !74

..loopexit_crit_edge.us.i187:                     ; preds = %bb.aj, %.lr.ph54.split.us.i175
  %indvars.iv.next66.i188 = add nuw nsw i64 %indvars.iv65.i176, 1 ; 2 uses
  %exitcond69.not.i189 = icmp eq i64 %indvars.iv.next66.i188, %wide.trip.count68.i171
  br i1 %exitcond69.not.i189, label %.preheader49.i148, label %.lr.ph54.split.us.i175, !llvm.loop !75

.preheader50.us.i178:                             ; preds = %.lr.ph54.split.us.i175
  %i.rj = mul nuw nsw i64 %indvars.iv65.i176, %i.rb ; 2 uses
  %gep83.i179 = getelementptr [4 x i8], ptr %invariant.gep82.i172, i64 %i.rj
  %invariant.gep.i180 = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rj
  br label %bb.ah

.preheader49.i148:                                ; preds = %..loopexit_crit_edge.us.i187, %bb.ag
  %i.rk = icmp sgt i32 %.fr61.i147, 0
  br i1 %i.rk, label %.lr.ph.i159, label %.preheader.i149

.lr.ph.i159:                                      ; preds = %.preheader49.i148
  %i.rl = fneg float %i.qu                        ; 2 uses
  %.promoted57.i160 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.rm = sext i32 %i.qo to i64
  %wide.trip.count73.i161 = zext nneg i32 %.fr61.i147 to i64 ; 3 uses
  %invariant.gep84.i162 = getelementptr [4 x i8], ptr %i.qq, i64 %i.rm ; 2 uses
  %min.iters.check410 = icmp ult i32 %.fr61.i147, 8
  br i1 %min.iters.check410, label %scalar.ph409.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph.i159
  %n.vec412 = and i64 %wide.trip.count73.i161, 2147483640 ; 3 uses
  %broadcast.splatinsert413 = insertelement <4 x float> poison, float %i.rl, i64 0
  %broadcast.splat414 = shufflevector <4 x float> %broadcast.splatinsert413, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph411
  %index416 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body415 ] ; 2 uses
  %i.rn = getelementptr [4 x i8], ptr %invariant.gep84.i162, i64 %index416 ; 3 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 16     ; 2 uses
  %wide.load417 = load <4 x float>, ptr %i.rn, align 4, !tbaa !9
  %wide.load418 = load <4 x float>, ptr %i.ro, align 4, !tbaa !9
  %i.rp = fmul <4 x float> %wide.load417, %broadcast.splat414
  %i.rq = fmul <4 x float> %wide.load418, %broadcast.splat414
  store <4 x float> %i.rp, ptr %i.rn, align 4, !tbaa !9
  store <4 x float> %i.rq, ptr %i.ro, align 4, !tbaa !9
  %index.next419 = add nuw i64 %index416, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.rr, label %middle.block420, label %vector.body415, !llvm.loop !80

middle.block420:                                  ; preds = %vector.body415
  %cmp.n421 = icmp eq i64 %n.vec412, %wide.trip.count73.i161
  br i1 %cmp.n421, label %..preheader_crit_edge.i167, label %scalar.ph409.preheader

scalar.ph409.preheader:                           ; preds = %.lr.ph.i159, %middle.block420
  %indvars.iv70.i163.ph = phi i64 [ 0, %.lr.ph.i159 ], [ %n.vec412, %middle.block420 ]
  br label %scalar.ph409

..preheader_crit_edge.i167:                       ; preds = %scalar.ph409, %middle.block420
  %i.rs = add i32 %.promoted57.i160, %.fr61.i147
  store i32 %i.rs, ptr %i.cy, align 8, !tbaa !41
  br label %.preheader.i149

.preheader.i149:                                  ; preds = %..preheader_crit_edge.i167, %.preheader49.i148
  br i1 %i.qw, label %.lr.ph60.i151, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190

.lr.ph60.i151:                                    ; preds = %.preheader.i149, %.lr.ph54.i168
  %i.rt = sext i32 %.fr61.i147 to i64             ; 3 uses
  %i.ru = sext i32 %storemerge78 to i64
  %i.rv = zext i32 %.159.lcssa to i64             ; 3 uses
  %wide.trip.count78.i152 = zext i32 %i.qv to i64 ; 2 uses
  %invariant.gep86.i153 = getelementptr [4 x i8], ptr %i.qq, i64 %i.ru ; 3 uses
  %xtraiter474 = and i64 %wide.trip.count78.i152, 1
  %i.rw = icmp eq i32 %i.qv, 1
  br i1 %i.rw, label %.epil.preheader473, label %.lr.ph60.i151.new

.lr.ph60.i151.new:                                ; preds = %.lr.ph60.i151
  %unroll_iter480 = and i64 %wide.trip.count78.i152, 4294967294
  br label %bb.ak

scalar.ph409:                                     ; preds = %scalar.ph409.preheader, %scalar.ph409
  %indvars.iv70.i163 = phi i64 [ %indvars.iv.next71.i165, %scalar.ph409 ], [ %indvars.iv70.i163.ph, %scalar.ph409.preheader ] ; 2 uses
  %gep85.i164 = getelementptr [4 x i8], ptr %invariant.gep84.i162, i64 %indvars.iv70.i163 ; 2 uses
  %i.rx = load float, ptr %gep85.i164, align 4, !tbaa !9
  %i.ry = fmul float %i.rx, %i.rl
  store float %i.ry, ptr %gep85.i164, align 4, !tbaa !9
  %indvars.iv.next71.i165 = add nuw nsw i64 %indvars.iv70.i163, 1 ; 2 uses
  %exitcond74.not.i166 = icmp eq i64 %indvars.iv.next71.i165, %wide.trip.count73.i161
  br i1 %exitcond74.not.i166, label %..preheader_crit_edge.i167, label %scalar.ph409, !llvm.loop !81

bb.ak:                                            ; preds = %bb.ao, %.lr.ph60.i151.new
  %indvars.iv75.i154 = phi i64 [ 0, %.lr.ph60.i151.new ], [ %indvars.iv.next76.i157.1, %bb.ao ] ; 4 uses
  %niter481 = phi i64 [ 0, %.lr.ph60.i151.new ], [ %niter481.next.1, %bb.ao ]
  %.not.i155 = icmp eq i64 %indvars.iv75.i154, %i.rv
  br i1 %.not.i155, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %13 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.rz = add nsw i32 %13, 1
  store i32 %i.rz, ptr %i.cy, align 8, !tbaa !41
  %i.sa = mul nsw i64 %indvars.iv75.i154, %i.rt
  %gep87.i156 = getelementptr [4 x i8], ptr %invariant.gep86.i153, i64 %i.sa
  store float 0.000000e+00, ptr %gep87.i156, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next76.i157 = or disjoint i64 %indvars.iv75.i154, 1 ; 2 uses
  %.not.i155.1 = icmp eq i64 %indvars.iv.next76.i157, %i.rv
  br i1 %.not.i155.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %14 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.sb = add nsw i32 %14, 1
  store i32 %i.sb, ptr %i.cy, align 8, !tbaa !41
  %i.sc = mul nsw i64 %indvars.iv.next76.i157, %i.rt
  %gep87.i156.1 = getelementptr [4 x i8], ptr %invariant.gep86.i153, i64 %i.sc
  store float 0.000000e+00, ptr %gep87.i156.1, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %indvars.iv.next76.i157.1 = add nuw nsw i64 %indvars.iv75.i154, 2 ; 2 uses
  %niter481.next.1 = add i64 %niter481, 2         ; 2 uses
  %niter481.ncmp.1 = icmp eq i64 %niter481.next.1, %unroll_iter480
  br i1 %niter481.ncmp.1, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !78

_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod478.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod478.not, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190, label %.epil.preheader473

.epil.preheader473:                               ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190.loopexit.unr-lcssa, %.lr.ph60.i151
  %indvars.iv75.i154.epil.init = phi i64 [ 0, %.lr.ph60.i151 ], [ %indvars.iv.next76.i157.1, %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod479 = trunc i32 %i.qv to i1
  call void @llvm.assume(i1 %lcmp.mod479)
  %.not.i155.epil = icmp eq i64 %indvars.iv75.i154.epil.init, %i.rv
  br i1 %.not.i155.epil, label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190, label %bb.ap

bb.ap:                                            ; preds = %.epil.preheader473
  %15 = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.sd = add nsw i32 %15, 1
  store i32 %i.sd, ptr %i.cy, align 8, !tbaa !41
  %i.se = mul nsw i64 %indvars.iv75.i154.epil.init, %i.rt
  %gep87.i156.epil = getelementptr [4 x i8], ptr %invariant.gep86.i153, i64 %i.se
  store float 0.000000e+00, ptr %gep87.i156.epil, align 4, !tbaa !9
  br label %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190

_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190: ; preds = %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190.loopexit.unr-lcssa, %bb.ap, %.epil.preheader473, %.preheader.i149
  %i.sf = sext i32 %.159.lcssa to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.sf
  store i32 %storemerge78, ptr %i.sg, align 4, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %bb.ad, %_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE.exit190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.loopexit

bb.aq:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.sh = load i32, ptr %i.d, align 8, !tbaa !13
  %i.si = add i32 %i.sh, 1                        ; 2 uses
  store i32 %i.si, ptr %i.d, align 8, !tbaa !13
  %i.sj = icmp ult i32 %i.si, %spec.store.select
  br i1 %i.sj, label %bb.t, label %.loopexit, !llvm.loop !82

.loopexit:                                        ; preds = %bb.aq, %.thread
  %i.sk = load i32, ptr %i.lu, align 4, !tbaa !66 ; 4 uses
  %i.sl = icmp slt i32 %i.sk, 1
  br i1 %i.sl, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.loopexit
  %i.sm = shl nuw nsw i32 %i.sk, 1
  %wide.trip.count.i192 = zext nneg i32 %i.sk to i64
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next.i196 = add nuw nsw i64 %indvars.iv.i193, 1 ; 2 uses
  %exitcond.not.i197 = icmp eq i64 %indvars.iv.next.i196, %wide.trip.count.i192
  br i1 %exitcond.not.i197, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread, label %bb.as, !llvm.loop !83

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i191
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next.i196, %bb.ar ] ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.i193
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !68
  %.not.i194 = icmp slt i32 %i.so, %i.sm
  br i1 %.not.i194, label %bb.ar, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit

_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread.critedge: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  br label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread

_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread: ; preds = %bb.ar, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread.critedge, %._crit_edge
  %i.sp = phi ptr [ %i.nl, %._crit_edge ], [ null, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread.critedge ], [ %i.nl, %bb.ar ] ; 8 uses
  %i.sq = phi i32 [ %i.nq, %._crit_edge ], [ 0, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread.critedge ], [ %i.sk, %bb.ar ] ; 3 uses
  %i.sr = icmp sgt i32 %i.sq, 0
  br i1 %i.sr, label %.lr.ph259, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit

.lr.ph259:                                        ; preds = %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread
  %i.ss = load i32, ptr %i.cv, align 4, !tbaa !38
  %i.st = load ptr, ptr %i.da, align 8, !tbaa !27
  %i.su = load ptr, ptr %i.i, align 8, !tbaa !27  ; 5 uses
  %i.sv = sext i32 %i.ss to i64                   ; 5 uses
  %i.sw = sext i32 %i.kf to i64
  %wide.trip.count276 = zext nneg i32 %i.sq to i64 ; 2 uses
  %invariant.gep315 = getelementptr [4 x i8], ptr %i.st, i64 %i.sw ; 5 uses
  %xtraiter483 = and i64 %wide.trip.count276, 3   ; 3 uses
  %i.sx = icmp ult i32 %i.sq, 4
  br i1 %i.sx, label %.epil.preheader482, label %.lr.ph259.new

.lr.ph259.new:                                    ; preds = %.lr.ph259
  %unroll_iter487 = and i64 %wide.trip.count276, 2147483644
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph259.new
  %indvars.iv273 = phi i64 [ 0, %.lr.ph259.new ], [ %indvars.iv.next274.3, %bb.at ] ; 6 uses
  %niter488 = phi i64 [ 0, %.lr.ph259.new ], [ %niter488.next.3, %bb.at ]
  %i.sy = mul nsw i64 %indvars.iv273, %i.sv
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.sy
  %i.sz = load float, ptr %gep316, align 4, !tbaa !9
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv273
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !68
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.tc
  store float %i.sz, ptr %i.td, align 4, !tbaa !9
  %indvars.iv.next274 = or disjoint i64 %indvars.iv273, 1 ; 2 uses
  %i.te = mul nsw i64 %indvars.iv.next274, %i.sv
  %gep316.1 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.te
  %i.tf = load float, ptr %gep316.1, align 4, !tbaa !9
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv.next274
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !68
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.ti
  store float %i.tf, ptr %i.tj, align 4, !tbaa !9
  %indvars.iv.next274.1 = or disjoint i64 %indvars.iv273, 2 ; 2 uses
  %i.tk = mul nsw i64 %indvars.iv.next274.1, %i.sv
  %gep316.2 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.tk
  %i.tl = load float, ptr %gep316.2, align 4, !tbaa !9
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv.next274.1
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !68
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.to
  store float %i.tl, ptr %i.tp, align 4, !tbaa !9
  %indvars.iv.next274.2 = or disjoint i64 %indvars.iv273, 3 ; 2 uses
  %i.tq = mul nsw i64 %indvars.iv.next274.2, %i.sv
  %gep316.3 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.tq
  %i.tr = load float, ptr %gep316.3, align 4, !tbaa !9
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv.next274.2
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !68
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.tu
  store float %i.tr, ptr %i.tv, align 4, !tbaa !9
  %indvars.iv.next274.3 = add nuw nsw i64 %indvars.iv273, 4 ; 2 uses
  %niter488.next.3 = add i64 %niter488, 4         ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, label %bb.at, !llvm.loop !84

_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa: ; preds = %bb.at
  %lcmp.mod485.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod485.not, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit, label %.epil.preheader482

.epil.preheader482:                               ; preds = %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, %.lr.ph259
  %indvars.iv273.epil.init = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next274.3, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter483, 0
  call void @llvm.assume(i1 %lcmp.mod486)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader482
  %indvars.iv273.epil = phi i64 [ %indvars.iv273.epil.init, %.epil.preheader482 ], [ %indvars.iv.next274.epil, %bb.au ] ; 3 uses
  %epil.iter484 = phi i64 [ 0, %.epil.preheader482 ], [ %epil.iter484.next, %bb.au ]
  %i.tw = mul nsw i64 %indvars.iv273.epil, %i.sv
  %gep316.epil = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.tw
  %i.tx = load float, ptr %gep316.epil, align 4, !tbaa !9
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv273.epil
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !68
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.ua
  store float %i.tx, ptr %i.ub, align 4, !tbaa !9
  %indvars.iv.next274.epil = add nuw nsw i64 %indvars.iv273.epil, 1
  %epil.iter484.next = add i64 %epil.iter484, 1   ; 2 uses
  %epil.iter484.cmp.not = icmp eq i64 %epil.iter484.next, %xtraiter483
  br i1 %epil.iter484.cmp.not, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit, label %bb.au, !llvm.loop !85

_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit: ; preds = %bb.as, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa, %bb.au, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread, %.loopexit
  %.sink = phi i32 [ 0, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa ], [ 0, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread ], [ 0, %.loopexit ], [ 0, %bb.au ], [ -1, %bb.as ]
  %i.uc = phi ptr [ %i.sp, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.loopexit.unr-lcssa ], [ %i.sp, %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread ], [ %i.nl, %.loopexit ], [ %i.sp, %bb.au ], [ %i.nl, %bb.as ] ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %.sink, ptr %i.ud, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i198 = icmp ne ptr %i.uc, null
  %i.ue = load i8, ptr %i.ls, align 8, !range !35
  %i.uf = trunc nuw i8 %i.ue to i1
  %or.cond.i.i = select i1 %.not.i.i.i198, i1 %i.uf, i1 false
  br i1 %or.cond.i.i, label %bb.av, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.av:                                            ; preds = %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uc)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  call void @__clang_call_terminate(ptr %i.uh) #16
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ui = load i32, ptr %i.df, align 4, !tbaa !44 ; 2 uses
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %.lr.ph.i.i.i.i199, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i

.lr.ph.i.i.i.i199:                                ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  %zext.i.i.i = zext nneg i32 %i.ui to i64
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i199
  %indvars.iv.i.i.i.i200 = phi i64 [ 0, %.lr.ph.i.i.i.i199 ], [ %indvars.iv.next.i.i.i.i201, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.uk = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.ul = getelementptr inbounds nuw [32 x i8], ptr %i.uk, i64 %indvars.iv.i.i.i.i200 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.un, null
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %i.up = load i8, ptr %i.uo, align 8, !range !35
  %i.uq = trunc nuw i8 %i.up to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.uq, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ay, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.un)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #16
end_hunk_1
begin_hunk_2_@_ZN16btLemkeAlgorithm5solveEj:bb.a
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i212: ; preds = %bb.bf, %bb.be
  %indvars.iv.next.i.i.i.i213 = add nuw nsw i64 %indvars.iv.i.i.i.i209, 1 ; 2 uses
  %i.vr = icmp eq i64 %indvars.iv.next.i.i.i.i213, %zext.i.i.i208
  br i1 %i.vr, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i202, label %bb.be, !llvm.loop !87

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i202: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i212, %_ZN9btMatrixXIfED2Ev.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i203 = icmp ne ptr %i.vt, null
  %i.vu = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.vv = load i8, ptr %i.vu, align 8, !range !35
  %i.vw = trunc nuw i8 %i.vv to i1
  %or.cond239 = select i1 %.not.i.i.i.i203, i1 %i.vw, i1 false
  br i1 %or.cond239, label %bb.bh, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i204

bb.bh:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i202
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.vt)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i204 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vx = landingpad { ptr, i32 }
          catch ptr null
  %i.vy = extractvalue { ptr, i32 } %i.vx, 0
  call void @__clang_call_terminate(ptr %i.vy) #16
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i204:   ; preds = %bb.bh, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i202
  %i.vz = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i1.i205 = icmp ne ptr %i.wa, null
  %i.wb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.wc = load i8, ptr %i.wb, align 8, !range !35
  %i.wd = trunc nuw i8 %i.wc to i1
  %or.cond.i.i.i206 = select i1 %.not.i.i.i1.i205, i1 %i.wd, i1 false
  br i1 %or.cond.i.i.i206, label %bb.bj, label %_ZN9btMatrixXIfED2Ev.exit214

bb.bj:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i204
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.wa)
          to label %_ZN9btMatrixXIfED2Ev.exit214 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.we = landingpad { ptr, i32 }
          catch ptr null
  %i.wf = extractvalue { ptr, i32 } %i.we, 0
  call void @__clang_call_terminate(ptr %i.wf) #16
  unreachable

_ZN9btMatrixXIfED2Ev.exit214:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i204, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.wg = load i32, ptr %i.bg, align 4, !tbaa !44 ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.i.i.i.i220, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i215

.lr.ph.i.i.i.i220:                                ; preds = %_ZN9btMatrixXIfED2Ev.exit214
  %zext.i.i.i221 = zext nneg i32 %i.wg to i64
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225, %.lr.ph.i.i.i.i220
  %indvars.iv.i.i.i.i222 = phi i64 [ 0, %.lr.ph.i.i.i.i220 ], [ %indvars.iv.next.i.i.i.i226, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225 ] ; 2 uses
  %i.wi = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.wj = getelementptr inbounds nuw [32 x i8], ptr %i.wi, i64 %indvars.iv.i.i.i.i222 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i.i.i.i223 = icmp ne ptr %i.wl, null
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wn = load i8, ptr %i.wm, align 8, !range !35
  %i.wo = trunc nuw i8 %i.wn to i1
  %or.cond.i.i.i.i.i.i224 = select i1 %.not.i.i.i.i.i.i.i223, i1 %i.wo, i1 false
  br i1 %or.cond.i.i.i.i.i.i224, label %bb.bm, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.wl)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #16
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225: ; preds = %bb.bm, %bb.bl
  %indvars.iv.next.i.i.i.i226 = add nuw nsw i64 %indvars.iv.i.i.i.i222, 1 ; 2 uses
  %i.wr = icmp eq i64 %indvars.iv.next.i.i.i.i226, %zext.i.i.i221
  br i1 %i.wr, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i215, label %bb.bl, !llvm.loop !87

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i215: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i225, %_ZN9btMatrixXIfED2Ev.exit214
  %i.ws = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i216 = icmp ne ptr %i.ws, null
  %i.wt = load i8, ptr %i.be, align 8, !range !35
  %i.wu = trunc nuw i8 %i.wt to i1
  %or.cond242 = select i1 %.not.i.i.i.i216, i1 %i.wu, i1 false
  br i1 %or.cond242, label %bb.bo, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i217

bb.bo:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i215
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ws)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i217 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.wv = landingpad { ptr, i32 }
          catch ptr null
  %i.ww = extractvalue { ptr, i32 } %i.wv, 0
  call void @__clang_call_terminate(ptr %i.ww) #16
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i217:   ; preds = %bb.bo, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i215
  %i.wx = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i1.i218 = icmp ne ptr %i.wx, null
  %i.wy = load i8, ptr %i.ba, align 8, !range !35
  %i.wz = trunc nuw i8 %i.wy to i1
  %or.cond.i.i.i219 = select i1 %.not.i.i.i1.i218, i1 %i.wz, i1 false
  br i1 %or.cond.i.i.i219, label %bb.bq, label %_ZN9btMatrixXIfED2Ev.exit227

bb.bq:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i217
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.wx)
          to label %_ZN9btMatrixXIfED2Ev.exit227 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xa = landingpad { ptr, i32 }
          catch ptr null
  %i.xb = extractvalue { ptr, i32 } %i.xa, 0
  call void @__clang_call_terminate(ptr %i.xb) #16
  unreachable

_ZN9btMatrixXIfED2Ev.exit227:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i217, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.bs:                                            ; preds = %bb.ae, %bb.q
  %.pn82 = phi { ptr, i32 } [ %i.ns, %bb.q ], [ %i.ql, %bb.ae ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #15
  br label %.body91

.body91:                                          ; preds = %bb.i, %bb.bs
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82, %bb.bs ], [ %i.dh, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #15
  br label %bb.bt

bb.bt:                                            ; preds = %.body91, %bb.l
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %.body91 ], [ %i.mc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.k
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn, %bb.bt ], [ %i.mb, %bb.k ]
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #15
  br label %.body

.body:                                            ; preds = %bb.e, %bb.bu
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn, %bb.bu ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN9btVectorXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btMatrixXIfE8negativeEv(ptr dead_on_unwind noalias writable sret(%struct.btMatrixX) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !45
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.a, i32 noundef %i.c)
          to label %_ZN9btMatrixXIfEC2Eii.exit.preheader unwind label %bb.b

_ZN9btMatrixXIfEC2Eii.exit.preheader:             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN9btMatrixXIfEC2Eii.exit.preheader
  %i.r = load i32, ptr %i.b, align 4, !tbaa !38   ; 5 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = load ptr, ptr %i.i, align 8              ; 3 uses
  br i1 %i.s, label %.preheader.lr.ph.split, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.u = load i32, ptr %i.d, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 3 uses
  %.promoted15 = load i32, ptr %i.g, align 8, !tbaa !41
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %i.y = zext nneg i32 %i.r to i64
  %wide.trip.count19 = zext nneg i32 %i.p to i64  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 7 uses
  %i.z = add nuw nsw i64 %wide.trip.count19, 4611686018427387903
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = add i64 %i.aa, %wide.trip.count
  %i.ac = shl i64 %i.ab, 2
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ad = mul nuw nsw i64 %wide.trip.count19, %wide.trip.count
  %i.ae = shl nuw i64 %i.ad, 2
  %scevgep23 = getelementptr i8, ptr %i.w, i64 %i.ae
  %min.iters.check = icmp ult i32 %i.r, 8
  %bound0 = icmp ult ptr %i.t, %scevgep23
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.u, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ah) #15
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ai) #15
  resume { ptr, i32 } %i.ag

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv16 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next17, %._crit_edge ] ; 3 uses
  %i.aj = mul nuw nsw i64 %indvars.iv16, %i.y
  %i.ak = mul nsw i64 %indvars.iv16, %i.x
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aj ; 6 uses
  %i.am = getelementptr [4 x i8], ptr %i.t, i64 %i.ak ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x float>, ptr %i.an, align 4, !tbaa !9, !alias.scope !88
  %wide.load24 = load <4 x float>, ptr %i.ao, align 4, !tbaa !9, !alias.scope !88
  %i.ap = fneg <4 x float> %wide.load
  %i.aq = fneg <4 x float> %wide.load24
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store <4 x float> %i.ap, ptr %i.ar, align 4, !tbaa !9, !alias.scope !91, !noalias !88
  store <4 x float> %i.aq, ptr %i.as, align 4, !tbaa !9, !alias.scope !91, !noalias !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.av = load float, ptr %i.au, align 4, !tbaa !9
  %i.aw = fneg float %i.av
  %i.ax = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.prol
  store float %i.aw, ptr %i.ax, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split.loopexit, label %.preheader, !llvm.loop !95

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9
  %i.bc = fneg float %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  store float %i.bc, ptr %i.bd, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9
  %i.bg = fneg float %i.bf
  %i.bh = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next
  store float %i.bg, ptr %i.bh, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store float %i.bk, ptr %i.bl, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !9
  %i.bo = fneg float %i.bn
  %i.bp = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store float %i.bo, ptr %i.bp, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !96

_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split.loopexit: ; preds = %._crit_edge
  %2 = mul i32 %i.r, %i.p
  %3 = add i32 %.promoted15, %2
  store i32 %3, ptr %i.g, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split:      ; preds = %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split.loopexit, %.preheader.lr.ph, %_ZN9btMatrixXIfEC2Eii.exit.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %.fr61 = freeze i32 %i.b                        ; 9 uses
  %i.c = mul nsw i32 %.fr61, %2                   ; 3 uses
  %i.d = add nsw i32 %i.c, %3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 6 uses
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !9
  %i.j = fdiv float -1.000000e+00, %i.i           ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph54, label %.preheader49

.lr.ph54:                                         ; preds = %bb.a
  %i.m = icmp sgt i32 %.fr61, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.m, label %.lr.ph54.split.us.preheader, label %.lr.ph60

.lr.ph54.split.us.preheader:                      ; preds = %.lr.ph54
  %i.o = zext i32 %3 to i64
  %i.p = sext i32 %i.c to i64
  %i.q = zext i32 %2 to i64
  %i.r = zext nneg i32 %.fr61 to i64
  %i.s = sext i32 %3 to i64
  %wide.trip.count68 = zext nneg i32 %i.k to i64
  %invariant.gep82 = getelementptr [4 x i8], ptr %i.f, i64 %i.s
  %wide.trip.count = zext nneg i32 %.fr61 to i64
  %invariant.gep80 = getelementptr [4 x i8], ptr %i.f, i64 %i.p
  br label %.lr.ph54.split.us

.lr.ph54.split.us:                                ; preds = %.lr.ph54.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv65 = phi i64 [ 0, %.lr.ph54.split.us.preheader ], [ %indvars.iv.next66, %..loopexit_crit_edge.us ] ; 3 uses
  %.not47.us = icmp eq i64 %indvars.iv65, %i.q
  br i1 %.not47.us, label %..loopexit_crit_edge.us, label %.preheader50.us

bb.b:                                             ; preds = %.preheader50.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader50.us ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.not48.us = icmp eq i64 %indvars.iv, %i.o
  br i1 %.not48.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %gep, align 4, !tbaa !9
  %gep81 = getelementptr [4 x i8], ptr %invariant.gep80, i64 %indvars.iv
  %i.u = load float, ptr %gep81, align 4, !tbaa !9
  %i.v = load float, ptr %gep83, align 4, !tbaa !9
  %i.w = fmul float %i.u, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.j, float %i.t)
  %5 = load i32, ptr %i.n, align 8, !tbaa !41
  %i.y = add nsw i32 %5, 1
  store i32 %i.y, ptr %i.n, align 8, !tbaa !41
  store float %i.x, ptr %gep, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !74

..loopexit_crit_edge.us:                          ; preds = %bb.d, %.lr.ph54.split.us
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.preheader49, label %.lr.ph54.split.us, !llvm.loop !75

.preheader50.us:                                  ; preds = %.lr.ph54.split.us
  %i.z = mul nuw nsw i64 %indvars.iv65, %i.r      ; 2 uses
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %i.z
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.z
  br label %bb.b

.preheader49:                                     ; preds = %..loopexit_crit_edge.us, %bb.a
  %i.aa = icmp sgt i32 %.fr61, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader49
  %i.ab = fneg float %i.j                         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted57 = load i32, ptr %i.ac, align 8, !tbaa !41
  %i.ad = sext i32 %i.c to i64
  %wide.trip.count73 = zext nneg i32 %.fr61 to i64 ; 3 uses
  %invariant.gep84 = getelementptr [4 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %min.iters.check = icmp ult i32 %.fr61, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count73, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep84, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !9
  %wide.load88 = load <4 x float>, ptr %i.af, align 4, !tbaa !9
  %i.ag = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ah = fmul <4 x float> %wide.load88, %broadcast.splat
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !9
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73
  br i1 %cmp.n, label %..preheader_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv70.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

..preheader_crit_edge:                            ; preds = %scalar.ph, %middle.block
  %i.aj = add i32 %.fr61, %.promoted57
  store i32 %i.aj, ptr %i.ac, align 8, !tbaa !41
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader49
  br i1 %i.l, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.lr.ph54, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.al = sext i32 %.fr61 to i64                  ; 3 uses
  %i.am = sext i32 %3 to i64
  %i.an = zext i32 %2 to i64                      ; 3 uses
  %wide.trip.count78 = zext i32 %i.k to i64       ; 2 uses
  %invariant.gep86 = getelementptr [4 x i8], ptr %i.f, i64 %i.am ; 3 uses
  %xtraiter = and i64 %wide.trip.count78, 1
  %i.ao = icmp eq i32 %i.k, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %wide.trip.count78, 4294967294
  br label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %scalar.ph ], [ %indvars.iv70.ph, %scalar.ph.preheader ] ; 2 uses
  %gep85 = getelementptr [4 x i8], ptr %invariant.gep84, i64 %indvars.iv70 ; 2 uses
  %i.ap = load float, ptr %gep85, align 4, !tbaa !9
  %i.aq = fmul float %i.ap, %i.ab
  store float %i.aq, ptr %gep85, align 4, !tbaa !9
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %..preheader_crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph60
  %indvars.iv75.epil.init = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next76.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %.not.epil = icmp eq i64 %indvars.iv75.epil.init, %i.an
  br i1 %.not.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !41
  %i.at = mul nsw i64 %indvars.iv75.epil.init, %i.al
  %gep87.epil = getelementptr [4 x i8], ptr %invariant.gep86, i64 %i.at
  store float 0.000000e+00, ptr %gep87.epil, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %.preheader
  ret void

bb.f:                                             ; preds = %bb.j, %.lr.ph60.new
  %indvars.iv75 = phi i64 [ 0, %.lr.ph60.new ], [ %indvars.iv.next76.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.j ]
  %.not = icmp eq i64 %indvars.iv75, %i.an
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %6 = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.au = add nsw i32 %6, 1
  store i32 %i.au, ptr %i.ak, align 8, !tbaa !41
  %i.av = mul nsw i64 %indvars.iv75, %i.al
  %gep87 = getelementptr [4 x i8], ptr %invariant.gep86, i64 %i.av
  store float 0.000000e+00, ptr %gep87, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next76 = or disjoint i64 %indvars.iv75, 1 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next76, %i.an
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %7 = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.aw = add nsw i32 %7, 1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !41
  %i.ax = mul nsw i64 %indvars.iv.next76, %i.al
  %gep87.1 = getelementptr [4 x i8], ptr %invariant.gep86, i64 %i.ax
  store float 0.000000e+00, ptr %gep87.1, align 4, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !78
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN16btLemkeAlgorithm24findLexicographicMinimumERK9btMatrixXIfERKiS5_Rb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btAlignedObjectArray.2, align 8 ; 8 uses
  %6 = alloca %class.btAlignedObjectArray.2, align 8 ; 8 uses
  store i8 0, ptr %4, align 1, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 16 uses
  store i8 1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  store ptr null, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 21 uses
  store i32 0, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  store i32 0, ptr %i.d, align 8, !tbaa !67
  %i.e = load i32, ptr %1, align 8, !tbaa !37     ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = shl nuw nsw i32 %i.e, 1
  %i.j = or disjoint i32 %i.i, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.u
  switch i32 %i.ev, label %.preheader223 [
    i32 0, label %._crit_edge.thread
    i32 1, label %bb.v
  ]

.preheader223:                                    ; preds = %._crit_edge
  %.not234 = icmp sgt i32 %i.ev, 0
  br i1 %.not234, label %.lr.ph236, label %.lr.ph247

.lr.ph236:                                        ; preds = %.preheader223
  %i.k = load i32, ptr %3, align 4, !tbaa !68     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ev to i64
  br label %bb.x

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.et, %bb.u ] ; 8 uses
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.eu, %bb.u ] ; 5 uses
  %i.n = phi i32 [ 0, %.lr.ph ], [ %i.ev, %bb.u ] ; 16 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ew, %bb.u ] ; 5 uses
  %.060233 = phi float [ 0.000000e+00, %.lr.ph ], [ %.262, %bb.u ] ; 8 uses
  %.065232 = phi i1 [ true, %.lr.ph ], [ %.267, %bb.u ] ; 2 uses
  %storemerge231 = phi i32 [ 0, %.lr.ph ], [ %i.ex, %bb.u ] ; 3 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !68
  %i.q = load i32, ptr %i.g, align 4, !tbaa !38
  %i.r = mul nsw i32 %i.q, %storemerge231         ; 2 uses
  %i.s = add nsw i32 %i.r, %i.p
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !9  ; 2 uses
  %.b.i = load i1, ptr @_ZZ9btMachEpsvE10calculated, align 1
  %.pre.i = load float, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9 ; 2 uses
  br i1 %.b.i, label %_Z9btMachEpsv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %i.x = phi float [ %i.y, %.preheader.i ], [ %.pre.i, %bb.b ]
  %i.y = fmul float %i.x, 5.000000e-01            ; 4 uses
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = fadd float %i.z, 1.000000e+00
  %i.ab = fcmp une float %i.aa, 1.000000e+00
  br i1 %i.ab, label %.preheader.i, label %bb.c, !llvm.loop !11

bb.c:                                             ; preds = %.preheader.i
  store float %i.y, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9
  store i1 true, ptr @_ZZ9btMachEpsvE10calculated, align 1
  br label %_Z9btMachEpsv.exit

_Z9btMachEpsv.exit:                               ; preds = %bb.b, %bb.c
  %.pre.i93 = phi float [ %i.y, %bb.c ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.ac = fcmp ogt float %i.w, %.pre.i93
  br i1 %i.ac, label %bb.d, label %bb.u

bb.d:                                             ; preds = %_Z9btMachEpsv.exit
  %i.ad = add nsw i32 %i.j, %i.r
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !9
  %i.ah = fdiv float %i.ag, %i.w                  ; 8 uses
  br i1 %.065232, label %bb.e, label %_Z9btMachEpsv.exit95

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !67
  %i.aj = icmp eq i32 %i.n, %i.ai
  br i1 %i.aj, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.ak = shl nsw i32 %i.n, 1
  %i.al = select i1 %.not.i.i, i32 1, i32 %i.ak   ; 5 uses
  %i.am = icmp slt i32 %i.n, %i.al
  br i1 %i.am, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sext i32 %i.al to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ao, i32 noundef 16)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i90 = load i32, ptr %i.c, align 4, !tbaa !66
  %.pre259 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.g
  %i.aq = phi ptr [ %.pre259, %.noexc ], [ %i.m, %bb.g ] ; 9 uses
  %i.ar = phi i32 [ %.pre.i90, %.noexc ], [ %i.n, %bb.g ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ap, %.noexc ], [ null, %bb.g ] ; 9 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.at = ptrtoaddr ptr %i.aq to i64
  %.0.i.i.i332 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  %i.au = sub i64 %i.at, %.0.i.i.i332
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !68
  %wide.load333 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !68
  store <4 x i32> %wide.load333, ptr %i.ay, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter440 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  br i1 %lcmp.mod441.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter442 = phi i64 [ %prol.iter442.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i.prol
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !68
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !68
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !68
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !68
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i.1
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !68
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
end_hunk_2
