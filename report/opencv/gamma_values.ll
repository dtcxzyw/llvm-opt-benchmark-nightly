Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gamma_values?download=true
inline.NumInlined: 262
inline.NumDeleted: 134
begin_hunk_0_@_ZN2cv4usac15GammaValuesImplC2Eii:bb.a
  %i.bb = shl nuw nsw i64 %i.aq, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #12
          to label %.noexc115 unwind label %bb.u  ; 8 uses

.noexc115:                                        ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.aq
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr i8, ptr %i.bc, i64 8      ; 3 uses
  %i.bf = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110: ; preds = %.noexc115
  %.idx.i.i.i.i.i.i.i111 = shl nuw nsw i64 %i.bf, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %.idx.i.i.i.i.i.i.i111, i1 false), !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i111
  br label %bb.s

_ZNSt6vectorIdSaIdEED2Ev.exit133.thread:          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  br label %.split.us

bb.s:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110, %.noexc115
  %.ph378 = phi ptr [ %i.be, %.noexc115 ], [ %i.bh, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !46
  store ptr %.ph378, ptr %i.bi, align 8, !tbaa !47
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !48
  %i.bk = shl nuw nsw i64 %i.aq, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #12
          to label %.noexc128 unwind label %bb.v  ; 8 uses

.noexc128:                                        ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.aq
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  %i.bo = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZNSt6vectorIdSaIdEED2Ev.exit133, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123: ; preds = %.noexc128
  %.idx.i.i.i.i.i.i.i124 = shl nuw nsw i64 %i.bo, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %.idx.i.i.i.i.i.i.i124, i1 false), !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i124
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit133

_ZNSt6vectorIdSaIdEED2Ev.exit133:                 ; preds = %.noexc128, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123
  %i.br = phi ptr [ %i.bq, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123 ], [ %i.bn, %.noexc128 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !46
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !47
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !48
  %i.bu = udiv i32 %2, 49                         ; 3 uses
  %i.bv = uitofp nneg i32 %i.bu to double         ; 2 uses
  %i.bw = icmp samesign ugt i32 %2, 48
  br i1 %i.bw, label %.lr.ph.us.preheader, label %.split.us

.lr.ph.us.preheader:                              ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit133
  %i.bx = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ap, i64 1
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.ca, 0
  %n.vec = and i64 %i.cc, 8589934590              ; 4 uses
  %i.cd = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %i.ce = phi double [ %i.cp, %..loopexit_crit_edge.us ], [ %i.ao, %.lr.ph.us.preheader ] ; 3 uses
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %..loopexit_crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.067355.us = phi i64 [ %indvars.iv.next.lcssa, %..loopexit_crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.cf = phi <2 x double> [ %i.cl, %..loopexit_crit_edge.us ], [ %i.bx, %.lr.ph.us.preheader ] ; 4 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0, i64 %indvars.iv.next360
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.0, i64 %indvars.iv.next360
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !41
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1 ; 2 uses
  %i.cm = fsub <2 x double> %i.cl, %i.cf
  %i.cn = fdiv <2 x double> %i.cm, %i.bz          ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0, i64 %indvars.iv.next360
  %i.cp = load double, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.cq = fsub double %i.cp, %i.ce
  %i.cr = fdiv double %i.cq, %i.bv                ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.cs = add i64 %.067355.us, %n.vec             ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat382 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat384 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat386 = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat388 = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat390 = shufflevector <2 x double> %broadcast.splatinsert389, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ct = add i64 %.067355.us, %index             ; 3 uses
  %i.cu = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat386, <2 x double> %broadcast.splat384)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ct
  store <2 x double> %i.cv, ptr %i.cw, align 8, !tbaa !41
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat388, <2 x double> %broadcast.splat382)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  store <2 x double> %i.cx, ptr %i.cy, align 8, !tbaa !41
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat390, <2 x double> %broadcast.splat)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ct
  store <2 x double> %i.cz, ptr %i.da, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %.067355.us, %.lr.ph.us ], [ %i.cs, %middle.block ]
  %.065354.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %i.cd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.065354.us = phi i32 [ %i.dm, %scalar.ph ], [ %.065354.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = uitofp nneg i32 %.065354.us to double   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cn, <2 x double> %i.cf) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 1
  store double %i.dh, ptr %i.dd, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.dj = extractelement <2 x double> %i.dg, i64 0
  store double %i.dj, ptr %i.di, align 8, !tbaa !41
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cr, double %i.ce)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  store double %i.dk, ptr %i.dl, align 8, !tbaa !41
  %i.dm = add nuw nsw i32 %.065354.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dm, %i.bu
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !53

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cs, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next360, 49
  br i1 %exitcond362.not, label %.split.us.loopexit, label %.lr.ph.us, !llvm.loop !54

.split.us.loopexit:                               ; preds = %..loopexit_crit_edge.us
  %i.dn = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit133, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread, %.split.us.loopexit
  %i.do = phi ptr [ %i.br, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.br, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dp = phi ptr [ %i.bl, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.bl, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dq = phi ptr [ %.ph, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dr = phi ptr [ %i.at, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.at, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.ds = phi ptr [ %i.bc, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.bc, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dt = phi ptr [ %.ph378, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %.ph378, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %.us-phi = phi i32 [ %i.dn, %.split.us.loopexit ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.du = icmp slt i32 %.us-phi, %2
  br i1 %i.du, label %bb.w, label %_ZNSt6vectorIdSaIdEED2Ev.exit150

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.u:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.v:                                             ; preds = %bb.s
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.w:                                             ; preds = %.split.us
  %i.dy = sext i32 %.us-phi to i64                ; 6 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dy ; 4 uses
  %i.ea = add nsw i32 %.us-phi, -1
  %i.eb = sext i32 %i.ea to i64                   ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dz, %i.dq
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.w
  %i.ee = ptrtoaddr ptr %i.dq to i64
  %i.ef = ptrtoaddr ptr %i.dr to i64
  %5 = shl nsw i64 %i.dy, 3
  %6 = add i64 %i.ee, -8
  %i.eg = add i64 %5, %i.ef
  %i.eh = sub i64 %6, %i.eg                       ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.eh, 24
  br i1 %min.iters.check393, label %.lr.ph.i.i.i.i.preheader432, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec395 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec395, 3
  %i.el = getelementptr i8, ptr %i.dz, i64 %i.ek
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body398 ] ; 2 uses
  %i.em = shl i64 %index399, 3
  %next.gep = getelementptr i8, ptr %i.dz, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat397, ptr %next.gep, align 8, !tbaa !41
  store <2 x double> %broadcast.splat397, ptr %i.en, align 8, !tbaa !41
  %index.next400 = add nuw i64 %index399, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.eo, label %middle.block401, label %vector.body398, !llvm.loop !55

middle.block401:                                  ; preds = %vector.body398
  %cmp.n402 = icmp eq i64 %i.ej, %n.vec395
  br i1 %cmp.n402, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader432

.lr.ph.i.i.i.i.preheader432:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block401
  %.07.i.i.i.i.ph = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.preheader ], [ %i.el, %middle.block401 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader432, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader432 ] ; 2 uses
  store double %i.ed, ptr %.07.i.i.i.i, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.ep, %i.dq
  br i1 %.not.i.i.i.i134, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block401, %bb.w
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dy ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eb
  %i.es = load double, ptr %i.er, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i135 = icmp eq ptr %i.eq, %i.dt
  br i1 %.not6.i.i.i.i135, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136.preheader

.lr.ph.i.i.i.i136.preheader:                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %i.et = ptrtoaddr ptr %i.dt to i64
  %i.eu = ptrtoaddr ptr %i.ds to i64
  %7 = shl nsw i64 %i.dy, 3
  %8 = add i64 %i.et, -8
  %i.ev = add i64 %7, %i.eu
  %i.ew = sub i64 %8, %i.ev                       ; 2 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.ew, 24
  br i1 %min.iters.check405, label %.lr.ph.i.i.i.i136.preheader431, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i.i.i136.preheader
  %n.vec407 = and i64 %i.ey, 4611686018427387900  ; 3 uses
  %i.ez = shl i64 %n.vec407, 3
  %i.fa = getelementptr i8, ptr %i.eq, i64 %i.ez
  %broadcast.splatinsert408 = insertelement <2 x double> poison, double %i.es, i64 0
  %broadcast.splat409 = shufflevector <2 x double> %broadcast.splatinsert408, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next413, %vector.body410 ] ; 2 uses
  %i.fb = shl i64 %index411, 3
  %next.gep412 = getelementptr i8, ptr %i.eq, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep412, i64 16
  store <2 x double> %broadcast.splat409, ptr %next.gep412, align 8, !tbaa !41
  store <2 x double> %broadcast.splat409, ptr %i.fc, align 8, !tbaa !41
  %index.next413 = add nuw i64 %index411, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next413, %n.vec407
  br i1 %i.fd, label %middle.block414, label %vector.body410, !llvm.loop !57

middle.block414:                                  ; preds = %vector.body410
  %cmp.n415 = icmp eq i64 %i.ey, %n.vec407
  br i1 %cmp.n415, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136.preheader431

.lr.ph.i.i.i.i136.preheader431:                   ; preds = %.lr.ph.i.i.i.i136.preheader, %middle.block414
  %.07.i.i.i.i137.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i136.preheader ], [ %i.fa, %middle.block414 ]
  br label %.lr.ph.i.i.i.i136

.lr.ph.i.i.i.i136:                                ; preds = %.lr.ph.i.i.i.i136.preheader431, %.lr.ph.i.i.i.i136
  %.07.i.i.i.i137 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i136 ], [ %.07.i.i.i.i137.ph, %.lr.ph.i.i.i.i136.preheader431 ] ; 2 uses
  store double %i.es, ptr %.07.i.i.i.i137, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i137, i64 8 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.fe, %i.dt
  br i1 %.not.i.i.i.i138, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136, !llvm.loop !58

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139: ; preds = %.lr.ph.i.i.i.i136, %middle.block414, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dy ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.eb
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i140 = icmp eq ptr %i.ff, %i.do
  br i1 %.not6.i.i.i.i140, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141.preheader

.lr.ph.i.i.i.i141.preheader:                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139
  %i.fi = ptrtoaddr ptr %i.do to i64
  %i.fj = ptrtoaddr ptr %i.dp to i64
  %9 = shl nsw i64 %i.dy, 3
  %10 = add i64 %i.fi, -8
  %i.fk = add i64 %9, %i.fj
  %i.fl = sub i64 %10, %i.fk                      ; 2 uses
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.fl, 24
  br i1 %min.iters.check418, label %.lr.ph.i.i.i.i141.preheader430, label %vector.ph419

vector.ph419:                                     ; preds = %.lr.ph.i.i.i.i141.preheader
  %n.vec420 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fo = shl i64 %n.vec420, 3
  %i.fp = getelementptr i8, ptr %i.ff, i64 %i.fo
  %broadcast.splatinsert421 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat422 = shufflevector <2 x double> %broadcast.splatinsert421, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 2 uses
  %i.fq = shl i64 %index424, 3
  %next.gep425 = getelementptr i8, ptr %i.ff, i64 %i.fq ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep425, i64 16
  store <2 x double> %broadcast.splat422, ptr %next.gep425, align 8, !tbaa !41
  store <2 x double> %broadcast.splat422, ptr %i.fr, align 8, !tbaa !41
  %index.next426 = add nuw i64 %index424, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.fs, label %middle.block427, label %vector.body423, !llvm.loop !59

middle.block427:                                  ; preds = %vector.body423
  %cmp.n428 = icmp eq i64 %i.fn, %n.vec420
  br i1 %cmp.n428, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141.preheader430

.lr.ph.i.i.i.i141.preheader430:                   ; preds = %.lr.ph.i.i.i.i141.preheader, %middle.block427
  %.07.i.i.i.i142.ph = phi ptr [ %i.ff, %.lr.ph.i.i.i.i141.preheader ], [ %i.fp, %middle.block427 ]
  br label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %.lr.ph.i.i.i.i141.preheader430, %.lr.ph.i.i.i.i141
  %.07.i.i.i.i142 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i141 ], [ %.07.i.i.i.i142.ph, %.lr.ph.i.i.i.i141.preheader430 ] ; 2 uses
  store double %i.fh, ptr %.07.i.i.i.i142, align 8, !tbaa !41
  %i.ft = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i142, i64 8 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.ft, %i.do
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141, !llvm.loop !60

_ZNSt6vectorIdSaIdEED2Ev.exit150:                 ; preds = %.lr.ph.i.i.i.i141, %middle.block427, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, %.split.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef 400) #13
  %i.fu = ptrtoint ptr %.sroa.14231.0 to i64
  %i.fv = ptrtoint ptr %.sroa.0224.0 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.0, i64 noundef %i.fw) #13
  %i.fx = ptrtoint ptr %.sroa.14242.0 to i64
  %i.fy = ptrtoint ptr %.sroa.0235.0 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.0, i64 noundef %i.fz) #13
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314:       ; preds = %bb.v, %bb.t, %bb.u
  %.pn75.pn276.ph = phi { ptr, i32 } [ %i.dw, %bb.u ], [ %i.dv, %bb.t ], [ %i.dx, %bb.v ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef 400) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread

_ZNSt6vectorIdSaIdEED2Ev.exit154.thread:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314, %bb.i, %bb.e
  %.sroa.14231.1254312 = phi ptr [ %.sroa.14231.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.o, %bb.e ], [ %i.ac, %bb.i ]
  %.sroa.0224.1255311 = phi ptr [ %.sroa.0224.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.n, %bb.e ], [ %i.ab, %bb.i ] ; 2 uses
  %.sroa.14242.1256310 = phi ptr [ %.sroa.14242.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.m, %bb.e ], [ %i.aa, %bb.i ]
  %.sroa.0235.1257309 = phi ptr [ %.sroa.0235.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.l, %bb.e ], [ %i.z, %bb.i ]
  %.pn75.pn258308 = phi { ptr, i32 } [ %.pn75.pn276.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.s, %bb.e ], [ %i.ag, %bb.i ]
  %i.ga = ptrtoint ptr %.sroa.14231.1254312 to i64
  %i.gb = ptrtoint ptr %.sroa.0224.1255311 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.1255311, i64 noundef %i.gc) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154

_ZNSt6vectorIdSaIdEED2Ev.exit154:                 ; preds = %bb.d, %bb.h, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread
  %.pn75.pn258294340 = phi { ptr, i32 } [ %.pn75.pn258308, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.af, %bb.h ], [ %i.r, %bb.d ]
  %.sroa.0235.1257295339 = phi ptr [ %.sroa.0235.1257309, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.z, %bb.h ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.14242.1256296338 = phi ptr [ %.sroa.14242.1256310, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.aa, %bb.h ], [ %i.m, %bb.d ]
  %i.gd = ptrtoint ptr %.sroa.14242.1256296338 to i64
  %i.ge = ptrtoint ptr %.sroa.0235.1257295339 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.1257295339, i64 noundef %i.gf) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

_ZNSt6vectorIdSaIdEED2Ev.exit156:                 ; preds = %bb.g, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit154
  %.pn75.pn258294341 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn75.pn258294340, %_ZNSt6vectorIdSaIdEED2Ev.exit154 ], [ %i.q, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIdSaIdEED2Ev.exit158, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit156
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !48
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit158

_ZNSt6vectorIdSaIdEED2Ev.exit158:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit156, %bb.x
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIdSaIdEED2Ev.exit160, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !48
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit160

_ZNSt6vectorIdSaIdEED2Ev.exit160:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158, %bb.y
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIdSaIdEED2Ev.exit162, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit160
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !48
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit162

_ZNSt6vectorIdSaIdEED2Ev.exit162:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit160, %bb.z
  call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn75.pn258294341
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !61
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !42
  %i.g = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac15GammaValuesImplD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN2cv4usac15GammaValuesImplE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
end_hunk_0
