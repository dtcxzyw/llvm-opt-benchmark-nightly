Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/marginal_covariance_cholesky?download=true
inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceEPPdRKSt6vectorIiSaIiEE:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.am, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %i.ap, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %spec.select149 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.11.2183, %.sroa.17.2184
  br i1 %.not.i.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0.insert.ext = zext i32 %spec.select149 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0103.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0103.0.insert.ext
  store i64 %.sroa.0103.0.insert.insert, ptr %.sroa.11.2183, align 4
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = ptrtoint ptr %.sroa.17.2184 to i64      ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0118.2182 to i64    ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #22
          to label %.noexc89 unwind label %.loopexit ; 8 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %.sroa.6.0.insert.ext109 = zext i32 %spec.select149 to i64
  %.sroa.6.0.insert.shift110 = shl nuw i64 %.sroa.6.0.insert.ext109, 32
  %.sroa.0103.0.insert.ext105 = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert107 = or disjoint i64 %.sroa.6.0.insert.shift110, %.sroa.0103.0.insert.ext105
  store i64 %.sroa.0103.0.insert.insert107, ptr %i.bf, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0118.2182, %.sroa.17.2184
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc89
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = add i64 %i.au, -8
  %i.bi = sub i64 %i.bh, %i.av                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 24
  %i.bl = sub i64 %i.av, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader334, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.0118.2182, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bp ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.sroa.0118.2182, i64 %i.bp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bq = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep329, align 4, !alias.scope !62, !noalias !59
  %wide.load330 = load <2 x i64>, ptr %i.bq, align 4, !alias.scope !62, !noalias !59
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !59, !noalias !62
  store <2 x i64> %wide.load330, ptr %i.br, align 4, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader334

.lr.ph.i.i.i.i.i.i.preheader334:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0118.2182, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader334, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader334 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader334 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !62, !noalias !59
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !59, !noalias !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %.sroa.17.2184
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !67

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc89
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc89 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0118.2182, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.2182, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %.sroa.0118.4 = phi ptr [ %i.be, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0118.2182, %bb.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2183, %bb.i ]
  %.sroa.17.4 = phi ptr [ %i.bw, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.2184, %bb.i ] ; 3 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count225
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.preheader154:                                    ; preds = %bb.n, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread
  %.pre-phi264302 = phi i64 [ %.pre263, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %i.n, %bb.n ]
  %.sroa.0118.0.lcssa288301 = phi ptr [ %.sroa.0118.0.lcssa289, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.0118.1.lcssa, %bb.n ] ; 2 uses
  %.sroa.17.0.lcssa291300 = phi ptr [ %.sroa.17.0.lcssa292, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.17.1.lcssa, %bb.n ]
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !56    ; 3 uses
  %.not213 = icmp eq ptr %i.bx, %i.by
  br i1 %.not213, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader154
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.p

bb.m:                                             ; preds = %.noexc, %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph202:                                        ; preds = %.noexc, %bb.n
  %.068201 = phi i64 [ %i.cl, %bb.n ], [ 0, %.noexc ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0118.1.lcssa, i64 %.068201 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !71
  %i.ck = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ch, i32 noundef %i.cj)
          to label %bb.n unwind label %.thread135 ; 0 uses

bb.n:                                             ; preds = %.lr.ph202
  %i.cl = add nuw i64 %.068201, 1                 ; 2 uses
  %exitcond227.not = icmp eq i64 %i.cl, %i.p
  br i1 %exitcond227.not, label %.preheader154, label %.lr.ph202, !llvm.loop !72

.thread135:                                       ; preds = %.lr.ph202
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge210:                                   ; preds = %._crit_edge206, %.preheader154
  %.not.i.i.i90 = icmp eq ptr %.sroa.0118.0.lcssa288301, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge210
  %i.cn = ptrtoint ptr %.sroa.17.0.lcssa291300 to i64
  %i.co = sub i64 %i.cn, %.pre-phi264302
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0.lcssa288301, i64 noundef %i.co) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge210, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph209, %._crit_edge206
  %.067208 = phi i64 [ 0, %.lr.ph209 ], [ %i.eg, %._crit_edge206 ] ; 3 uses
  %.1207 = phi i32 [ 0, %.lr.ph209 ], [ %i.cq, %._crit_edge206 ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.067208
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40 ; 2 uses
  %i.cr = sub nsw i32 %i.cq, %.1207               ; 8 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.067208
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !73 ; 6 uses
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.preheader153.lr.ph, label %._crit_edge206

.preheader153.lr.ph:                              ; preds = %bb.p
  %i.cv = load ptr, ptr %i.cd, align 8, !tbaa !38 ; 5 uses
  %.not = icmp eq ptr %i.cv, null                 ; 2 uses
  %i.cw = load i32, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.cx = load i64, ptr %i.ce, align 8, !tbaa !46
  %.not.not.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i.i, label %.preheader153.lr.ph.split.us, label %.preheader153.lr.ph.split

.preheader153.lr.ph.split.us:                     ; preds = %.preheader153.lr.ph
  br i1 %.not, label %.preheader153.us.us.preheader, label %.preheader153.us.preheader

.preheader153.us.preheader:                       ; preds = %.preheader153.lr.ph.split.us
  %i.cy = sext i32 %.1207 to i64                  ; 2 uses
  %3 = zext nneg i32 %i.cr to i64
  %wide.trip.count246 = zext nneg i32 %i.cr to i64 ; 2 uses
  %invariant.gep316.a = getelementptr [4 x i8], ptr %i.cv, i64 %i.cy
  %invariant.gep312 = getelementptr [4 x i8], ptr %i.cv, i64 %i.cy
  br label %.preheader153.us

.preheader153.us.us.preheader:                    ; preds = %.preheader153.lr.ph.split.us
  %i.cz = zext nneg i32 %i.cr to i64              ; 4 uses
  br label %.preheader153.us.us

.preheader153.us.us:                              ; preds = %.preheader153.us.us.preheader, %.split.us.us.split.us.us
  %indvars.iv248 = phi i64 [ 0, %.preheader153.us.us.preheader ], [ %indvars.iv.next249, %.split.us.us.split.us.us ] ; 6 uses
  %i.da = mul nuw nsw i64 %indvars.iv248, %i.cz
  %4 = trunc i64 %indvars.iv248 to i32
  %5 = add i32 %.1207, %4                         ; 2 uses
  %invariant.gep318 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %invariant.gep320.a = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv248
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %bb.s, %.preheader153.us.us
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.a, %bb.s ], [ %indvars.iv248, %.preheader153.us.us ] ; 5 uses
  %6 = trunc i64 %indvars.iv250 to i32
  %7 = add i32 %.1207, %6                         ; 2 uses
  %spec.select150.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %5, i32 %7)
  %spec.select151.us.us.us.us = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %8 = mul nsw i32 %i.cw, %spec.select150.us.us.us.us
  %9 = add nsw i32 %8, %spec.select151.us.us.us.us
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.q ], [ %i.b, %.preheader.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !32, !nonnull !74, !noundef !74 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %9, %i.dc
  br i1 %i.dd, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, label %bb.q, !llvm.loop !47

bb.r:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %i.de = mul nuw nsw i64 %indvars.iv250, %i.cz
  %gep321.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep320.a, i64 %i.de
  store double %i.dg, ptr %gep321.a, align 8, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, %bb.r
  %indvars.iv.next251.a = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251.a, %i.cz
  br i1 %exitcond254.not, label %.split.us.us.split.us.us, label %.preheader.us.us.us.us, !llvm.loop !75

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us: ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !50 ; 2 uses
  %gep319.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep318, i64 %indvars.iv250
  store double %i.dg, ptr %gep319.a, align 8, !tbaa !41
  %.not82.us.us.us.us = icmp eq i64 %indvars.iv248, %indvars.iv250
  br i1 %.not82.us.us.us.us, label %bb.s, label %bb.r

.split.us.us.split.us.us:                         ; preds = %bb.s
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next249, %i.cz
  br i1 %exitcond257.not, label %._crit_edge206, label %.preheader153.us.us, !llvm.loop !76

.preheader153.us:                                 ; preds = %.preheader153.us.preheader, %.split.us.us.split
  %indvars.iv238 = phi i64 [ 0, %.preheader153.us.preheader ], [ %indvars.iv.next239, %.split.us.us.split ] ; 6 uses
  %gep317.a = getelementptr [4 x i8], ptr %invariant.gep316.a, i64 %indvars.iv238
  %i.dh = mul nuw nsw i64 %indvars.iv238, %3
  %i.di = load i32, ptr %gep317.a, align 4, !tbaa !40 ; 2 uses
  %invariant.gep314 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv238 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.v, %.preheader153.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %bb.v ], [ %indvars.iv238, %.preheader153.us ] ; 5 uses
  %gep313 = getelementptr [4 x i8], ptr %invariant.gep312, i64 %indvars.iv240
  %i.dk = load i32, ptr %gep313, align 4, !tbaa !40 ; 2 uses
  %spec.select150.us.us = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dk)
  %spec.select151.us.us = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.dk)
  %i.dl = mul nsw i32 %i.cw, %spec.select150.us.us
  %i.dm = add nsw i32 %i.dl, %spec.select151.us.us
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.us.us
  %.sroa.06.0.in.i.i.us.us = phi ptr [ %.sroa.06.0.i.i.us.us, %bb.t ], [ %i.b, %.preheader.us.us ]
  %.sroa.06.0.i.i.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us, align 8, !tbaa !32, !nonnull !74, !noundef !74 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us, label %bb.t, !llvm.loop !47

bb.u:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us
  %i.dq = trunc nuw nsw i64 %indvars.iv240 to i32
  %i.dr = mul nuw nsw i32 %i.cr, %i.dq
  %i.ds = add nuw nsw i32 %i.dr, %i.dj
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store double %i.dw, ptr %i.du, align 8, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us, %bb.u
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count246
  br i1 %exitcond244.not, label %.split.us.us.split, label %.preheader.us.us, !llvm.loop !75

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us: ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !50 ; 2 uses
  %gep315 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv240
  store double %i.dw, ptr %gep315, align 8, !tbaa !41
  %.not82.us.us = icmp eq i64 %indvars.iv238, %indvars.iv240
  br i1 %.not82.us.us, label %bb.v, label %bb.u

.split.us.us.split:                               ; preds = %bb.v
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge206, label %.preheader153.us, !llvm.loop !76

.preheader153.lr.ph.split:                        ; preds = %.preheader153.lr.ph
  %i.dx = load i64, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.dz = sext i32 %.1207 to i64                  ; 2 uses
  %i.ea = zext nneg i32 %i.cr to i64
  %wide.trip.count236 = zext nneg i32 %i.cr to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cv, i64 %i.dz
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.lr.ph.split, %.split
  %indvars.iv228 = phi i64 [ 0, %.preheader153.lr.ph.split ], [ %indvars.iv.next229, %.split ] ; 6 uses
  %i.eb = add nsw i64 %indvars.iv228, %i.dz       ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.eb
  %i.ed = mul nuw nsw i64 %indvars.iv228, %i.ea
  %i.ee = trunc nsw i64 %i.eb to i32
  %invariant.gep310 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv228 to i32
  br label %bb.w

._crit_edge206:                                   ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us, %bb.p
  %i.eg = add nuw i64 %.067208, 1                 ; 2 uses
  %exitcond259.not = icmp eq i64 %i.eg, %i.cc
  br i1 %exitcond259.not, label %._crit_edge210, label %bb.p, !llvm.loop !77

.split:                                           ; preds = %bb.ab
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count236
  br i1 %exitcond237.not, label %._crit_edge206, label %.preheader153, !llvm.loop !76

bb.w:                                             ; preds = %.preheader153, %bb.ab
  %indvars.iv230 = phi i64 [ %indvars.iv228, %.preheader153 ], [ %indvars.iv.next231, %bb.ab ] ; 6 uses
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load i32, ptr %i.ec, align 4, !tbaa !40
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv230
  %i.ei = load i32, ptr %gep, align 4, !tbaa !40
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ej = trunc i64 %indvars.iv230 to i32
  %i.ek = add i32 %.1207, %i.ej
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.el = phi i32 [ %i.eh, %bb.x ], [ %i.ee, %bb.y ] ; 2 uses
  %i.em = phi i32 [ %i.ei, %bb.x ], [ %i.ek, %bb.y ] ; 2 uses
  %spec.select150 = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.em)
  %spec.select151 = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %i.em)
  %i.en = mul nsw i32 %i.cw, %spec.select150
  %i.eo = add nsw i32 %i.en, %spec.select151      ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = urem i64 %i.ep, %i.dx                   ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !48, !nonnull !74, !noundef !74
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !32 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !40
  %i.ew = icmp eq i32 %i.eo, %i.ev
  br i1 %i.ew, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i ], [ %i.et, %bb.z ]
  %i.ex = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !32, !nonnull !74, !noundef !74 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !40 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = urem i64 %i.fa, %i.dx
  %.not19.i.i.i.i = icmp eq i64 %i.fb, %i.eq
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.fc = icmp eq i32 %i.eo, %i.ez
  br i1 %i.fc, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !49

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.z
  %.sroa.06.1.i.i = phi ptr [ %i.et, %bb.z ], [ %i.ex, %.lr.ph.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !50 ; 2 uses
  %gep311 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep310, i64 %indvars.iv230
  store double %i.fe, ptr %gep311, align 8, !tbaa !41
  %.not82 = icmp eq i64 %indvars.iv228, %indvars.iv230
  br i1 %.not82, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %i.ff = trunc nuw nsw i64 %indvars.iv230 to i32
  %i.fg = mul nuw nsw i32 %i.cr, %i.ff
  %i.fh = add nuw nsw i32 %i.fg, %i.ef
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.fi
  store double %i.fe, ptr %i.fj, align 8, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count236
  br i1 %exitcond234.not, label %.split, label %bb.w, !llvm.loop !75

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.sroa.0118.3 = phi ptr [ %.sroa.0118.1.lcssa, %bb.m ], [ %.sroa.0118.2182, %.loopexit ], [ %.sroa.0118.2182, %.loopexit.split-lp ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.1.lcssa, %bb.m ], [ %.sroa.17.2184, %.loopexit ], [ %.sroa.17.2184, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.sroa.0118.3, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94, label %._crit_edge261

._crit_edge261:                                   ; preds = %bb.ac
  %.pre269 = ptrtoint ptr %.sroa.0118.3 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge261, %.thread135
  %.pre-phi270 = phi i64 [ %.pre269, %._crit_edge261 ], [ %i.n, %.thread135 ]
  %.pn142 = phi { ptr, i32 } [ %.pn, %._crit_edge261 ], [ %i.cm, %.thread135 ]
  %.sroa.17.3141 = phi ptr [ %.sroa.17.3, %._crit_edge261 ], [ %.sroa.17.1.lcssa, %.thread135 ]
  %.sroa.0118.3140 = phi ptr [ %.sroa.0118.3, %._crit_edge261 ], [ %.sroa.0118.1.lcssa, %.thread135 ]
  %i.fk = ptrtoint ptr %.sroa.17.3141 to i64
  %i.fl = sub i64 %i.fk, %.pre-phi270
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.3140, i64 noundef %i.fl) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94: ; preds = %bb.ac, %bb.ad
  %.pn143 = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %.pn142, %bb.ad ]
  resume { ptr, i32 } %.pn143
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorIiSaIiEERKS7_ISt4pairIiiESaISD_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.g2o::SparseBlockMatrix", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i32 noundef %i.h, i32 noundef %i.h, i1 noundef zeroext true)
  %i.i = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_0
