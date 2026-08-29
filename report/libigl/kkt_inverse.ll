Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/kkt_inverse?download=true
inline.NumInlined: 10943
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3igl11kkt_inverseIdEEvRKN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_bRS4_:bb.a
.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bh = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.an
  %i.bi = getelementptr [8 x i8], ptr %i.ap, i64 %i.bh ; 6 uses
  %i.bj = getelementptr [8 x i8], ptr %i.aq, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %or.cond184.not = xor i1 %or.cond184, true
  %brmerge = select i1 %or.cond184.not, i1 true, i1 %i.bf
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %wide.load = load <2 x double>, ptr %i.bl, align 8, !tbaa !47, !alias.scope !49
  %wide.load170 = load <2 x double>, ptr %i.bm, align 8, !tbaa !47, !alias.scope !49
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  store <2 x double> %wide.load, ptr %i.bk, align 8, !tbaa !47, !alias.scope !52, !noalias !49
  store <2 x double> %wide.load170, ptr %i.bn, align 8, !tbaa !47, !alias.scope !52, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bp = sub i64 %i.b, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bu, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bq = getelementptr [8 x i8], ptr %i.bi, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.br = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, %i.ar
  %i.bs = getelementptr [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !47
  store double %i.bt, ptr %i.bq, align 8, !tbaa !47
  %i.bu = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !58

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %i.bv = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.z
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bx = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.al
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit131, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !60

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr [8 x i8], ptr %i.bi, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.bz = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %i.ar
  %i.ca = getelementptr [8 x i8], ptr %i.bj, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !47
  store double %i.cb, ptr %i.by, align 8, !tbaa !47
  %i.cc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bi, i64 %i.cc
  %i.ce = mul nsw i64 %i.cc, %i.ar
  %i.cf = getelementptr [8 x i8], ptr %i.bj, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !47
  store double %i.cg, ptr %i.cd, align 8, !tbaa !47
  %i.ch = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = mul nsw i64 %i.ch, %i.ar
  %i.ck = getelementptr [8 x i8], ptr %i.bj, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !47
  store double %i.cl, ptr %i.ci, align 8, !tbaa !47
  %i.cm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bi, i64 %i.cm
  %i.co = mul nsw i64 %i.cm, %i.ar
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !47
  store double %i.cq, ptr %i.cn, align 8, !tbaa !47
  %i.cr = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cr, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !61

.loopexit131:                                     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.z ; 2 uses
  store ptr %i.cs, ptr %16, align 8, !tbaa !18, !alias.scope !62
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.al, ptr %i.ct, align 8, !tbaa !24, !alias.scope !62
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.z, ptr %i.cu, align 8, !tbaa !24, !alias.scope !62
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %14, ptr %i.cv, align 8, !tbaa !25, !alias.scope !62
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 %i.z, ptr %i.cw, align 8, !tbaa !24, !alias.scope !62
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.cx, align 8, !tbaa !24, !alias.scope !62
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 %i.an, ptr %i.cy, align 8, !tbaa !27, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.aq, ptr %6, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ar, ptr %i.cz, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.cs, ptr %7, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.an, ptr %i.da, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %7, ptr %8, align 8, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.db, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %i.dc, align 8, !tbaa !40
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %16, ptr %i.dd, align 8, !tbaa !42
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.de = load ptr, ptr %14, align 8, !tbaa !16, !noalias !65
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.z
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !9, !noalias !65 ; 14 uses
  %i.dh = mul nsw i64 %i.dg, %i.z
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dh ; 13 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.as, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %.loopexit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:   ; preds = %bb.h
  %i.dl = lshr exact i64 %sext129, 29             ; 9 uses
  %xtraiter187 = and i64 %i.e, 7                  ; 4 uses
  %i.dm = icmp ult i64 %i.al, 8
  br i1 %i.dm, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %unroll_iter = sub nuw nsw i64 %i.al, %xtraiter187
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %i.ek, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %niter.next.7, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dn = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  %i.do = getelementptr [8 x i8], ptr %i.di, i64 %i.dn
  call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.dp = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.dq = mul nsw i64 %i.dp, %i.dg
  %i.dr = getelementptr [8 x i8], ptr %i.di, i64 %i.dq
  call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.ds = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.dt = mul nsw i64 %i.ds, %i.dg
  %i.du = getelementptr [8 x i8], ptr %i.di, i64 %i.dt
  call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.dv = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.dw = mul nsw i64 %i.dv, %i.dg
  %i.dx = getelementptr [8 x i8], ptr %i.di, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.dy = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.dz = mul nsw i64 %i.dy, %i.dg
  %i.ea = getelementptr [8 x i8], ptr %i.di, i64 %i.dz
  call void @llvm.memset.p0.i64(ptr align 8 %i.ea, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.eb = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.ec = mul nsw i64 %i.eb, %i.dg
  %i.ed = getelementptr [8 x i8], ptr %i.di, i64 %i.ec
  call void @llvm.memset.p0.i64(ptr align 8 %i.ed, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.ee = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ef = mul nsw i64 %i.ee, %i.dg
  %i.eg = getelementptr [8 x i8], ptr %i.di, i64 %i.ef
  call void @llvm.memset.p0.i64(ptr align 8 %i.eg, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.eh = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.ei = mul nsw i64 %i.eh, %i.dg
  %i.ej = getelementptr [8 x i8], ptr %i.di, i64 %i.ei
  call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.ek = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit186.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !68

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  br i1 %i.as, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = lshr exact i64 %i.dj, 3
  %i.em = and i64 %i.el, 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i
  %.03451.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.03550.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.en = sub nuw nsw i64 %i.al, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.eo = and i64 %i.en, 9223372036854775806
  %i.ep = add nuw nsw i64 %i.eo, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eq = icmp sgt i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eq, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.i
  %i.er = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  %i.es = getelementptr [8 x i8], ptr %i.di, i64 %i.er
  store double 0.000000e+00, ptr %i.es, align 8, !tbaa !47
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.et = icmp sgt i64 %i.en, 1
  br i1 %i.et, label %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  %i.ev = getelementptr [8 x i8], ptr %i.di, i64 %i.eu
  %i.ew = shl nuw nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.ev, i64 %i.ew
  %22 = add nuw nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.ep, i64 %22)
  %23 = xor i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %24 = add nsw i64 %smax.i, %23
  %i.ex = shl nuw nsw i64 %24, 3
  %i.ey = and i64 %i.ex, 9223372036854775792
  %25 = add nuw nsw i64 %i.ey, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i, i8 0, i64 %25, i1 false), !tbaa !69
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = icmp slt i64 %i.ep, %i.al
  br i1 %i.ez, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fa = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  %i.fb = getelementptr [8 x i8], ptr %i.di, i64 %i.fa
  %i.fc = and i64 %i.en, 2305843009213693950
  %i.fd = add nuw nsw i64 %i.fc, %.03550.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = shl nuw nsw i64 %i.fd, 3
  %scevgep3.i = getelementptr i8, ptr %i.fb, i64 %i.fe
  %i.ff = shl nuw nsw i64 %i.en, 3
  %i.fg = and i64 %i.ff, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.fg, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = add i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  %i.fi = and i64 %i.fh, 1
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.al, i64 %i.fi)
  %i.fj = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fj, %i.al
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.i, !llvm.loop !70

.loopexit.loopexit186.unr-lcssa:                  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.loopexit.loopexit186.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.ek, %.loopexit.loopexit186.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter187, 0
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.fm, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.fk = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dg
  %i.fl = getelementptr [8 x i8], ptr %i.di, i64 %i.fk
  call void @llvm.memset.p0.i64(ptr align 8 %i.fl, i8 0, i64 %i.dl, i1 false), !tbaa !47
  %i.fm = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter187
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !71

.loopexit:                                        ; preds = %.loopexit.loopexit186.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %2, label %bb.j, label %bb.r

bb.j:                                             ; preds = %.loopexit
  %i.fn = load i64, ptr %i.w, align 8, !tbaa !17  ; 4 uses
  %i.fo = load i64, ptr %i.x, align 8, !tbaa !9   ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fn, 0        ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.fo, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_7InverseIS2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fr = sdiv i64 9223372036854775807, %i.fo
  %i.fs = icmp sgt i64 %i.fn, %i.fr
  br i1 %i.fs, label %.invoke159, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.ft = mul nsw i64 %i.fo, %i.fn                ; 4 uses
  %.not.i90 = icmp eq i64 %i.ft, 0
  br i1 %.not.i90, label %.noexc77, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.fu = icmp sgt i64 %i.ft, 0
  br i1 %i.fu, label %bb.n, label %.sink.split.i91

bb.n:                                             ; preds = %bb.m
  %i.fv = icmp samesign ugt i64 %i.ft, 2305843009213693951
  br i1 %i.fv, label %.invoke159, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i93

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i93: ; preds = %bb.n
  %i.fw = shl nuw i64 %i.ft, 3
  %i.fx = call noalias ptr @malloc(i64 noundef %i.fw) #21 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %.invoke159, label %.sink.split.i91

.invoke159:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i93, %bb.n, %bb.l
  %i.fz = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fz, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont160 unwind label %bb.q

.cont160:                                         ; preds = %.invoke159
  unreachable

.sink.split.i91:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i93, %bb.m
  %.sink.i92 = phi ptr [ %i.fx, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i93 ], [ null, %bb.m ]
  store ptr %.sink.i92, ptr %17, align 8, !tbaa !16
  br label %.noexc77

.noexc77:                                         ; preds = %.sink.split.i91, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.fn, ptr %i.fp, align 8, !tbaa !9
  store i64 %i.fo, ptr %i.fq, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_7InverseIS2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_7InverseIS2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc77, %bb.j
  invoke void @_ZN5Eigen8internal15compute_inverseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lin1EE3runERKS3_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.aj unwind label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.an

bb.p:                                             ; preds = %.loopexit131
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.an

bb.q:                                             ; preds = %.invoke159, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_7InverseIS2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 76
  store i32 0, ptr %i.gd, align 4, !tbaa !72
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %18, i8 0, i64 75, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %18, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.gf, align 8, !tbaa !81
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 304
  %i.gi = getelementptr inbounds nuw i8, ptr %18, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(146) %i.gg, i8 0, i64 146, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(162) %i.gh, i8 0, i64 162, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gi, i8 0, i64 40, i1 false)
  %i.gj = invoke noundef nonnull align 8 dereferenceable(544) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j(ptr noundef nonnull align 8 dereferenceable(544) %18, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef 20)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.gm = icmp sgt i32 %i.g, 0
  br i1 %i.gm, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.gn = shl nuw nsw i64 %i.h, 3
  %i.go = call noalias ptr @malloc(i64 noundef %i.gn) #21 ; 5 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.u, label %.lr.ph

bb.u:                                             ; preds = %bb.t
  %i.gq = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gq, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.gq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc.i79 unwind label %bb.v

.noexc.i79:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.t
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !82 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %min.iters.check172 = icmp ult i32 %i.g, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph
  %n.vec174 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next180, %vector.body175 ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph173 ], [ %i.hd, %vector.body175 ]
  %vec.phi177 = phi <2 x i32> [ zeroinitializer, %vector.ph173 ], [ %i.he, %vector.body175 ]
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %index176 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load178 = load <2 x double>, ptr %i.gt, align 8, !tbaa !47 ; 2 uses
  %wide.load179 = load <2 x double>, ptr %i.gu, align 8, !tbaa !47 ; 2 uses
  %i.gv = fcmp ule <2 x double> %wide.load178, splat (double f0x3E7AD7F2A0000000) ; 2 uses
  %i.gw = fcmp ule <2 x double> %wide.load179, splat (double f0x3E7AD7F2A0000000) ; 2 uses
  %i.gx = fdiv <2 x double> splat (double 1.000000e+00), %wide.load178
  %i.gy = fdiv <2 x double> splat (double 1.000000e+00), %wide.load179
  %i.gz = select <2 x i1> %i.gv, <2 x double> zeroinitializer, <2 x double> %i.gx
  %i.ha = select <2 x i1> %i.gw, <2 x double> zeroinitializer, <2 x double> %i.gy
  %i.hb = zext <2 x i1> %i.gv to <2 x i32>
  %i.hc = zext <2 x i1> %i.gw to <2 x i32>
end_hunk_0
