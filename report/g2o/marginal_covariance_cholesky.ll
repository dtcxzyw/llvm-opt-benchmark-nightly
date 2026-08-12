inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceEPPdRKSt6vectorIiSaIiEE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.am, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %i.ap, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %spec.select148 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.11.2182, %.sroa.17.2181
  br i1 %.not.i.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0103.0.insert.ext = zext i32 %spec.select148 to i64
  %.sroa.0103.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0103.0.insert.ext
  store i64 %.sroa.0103.0.insert.insert, ptr %.sroa.11.2182, align 4
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = ptrtoint ptr %.sroa.11.2182 to i64      ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0118.2183 to i64    ; 3 uses
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
  %.sroa.6.0.insert.ext109 = zext i32 %spec.select to i64
  %.sroa.6.0.insert.shift110 = shl nuw i64 %.sroa.6.0.insert.ext109, 32
  %.sroa.0103.0.insert.ext105 = zext i32 %spec.select148 to i64
  %.sroa.0103.0.insert.insert107 = or disjoint i64 %.sroa.6.0.insert.shift110, %.sroa.0103.0.insert.ext105
  store i64 %.sroa.0103.0.insert.insert107, ptr %i.bf, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0118.2183, %.sroa.11.2182
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
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader333, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.0118.2183, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bp ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.sroa.0118.2183, i64 %i.bp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bq = getelementptr i8, ptr %next.gep328, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep328, align 4, !alias.scope !62, !noalias !59
  %wide.load329 = load <2 x i64>, ptr %i.bq, align 4, !alias.scope !62, !noalias !59
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !59, !noalias !62
  store <2 x i64> %wide.load329, ptr %i.br, align 4, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader333

.lr.ph.i.i.i.i.i.i.preheader333:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0118.2183, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader333, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader333 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader333 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !62, !noalias !59
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !59, !noalias !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %.sroa.11.2182
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !67

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc89
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc89 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0118.2183, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.2183, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %.sroa.17.4 = phi ptr [ %i.bw, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.2181, %bb.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2182, %bb.i ]
  %.sroa.0118.4 = phi ptr [ %i.be, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0118.2183, %bb.i ] ; 3 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count224
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.preheader153:                                    ; preds = %bb.n, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread
  %.pre-phi263301 = phi i64 [ %.pre262, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %i.n, %bb.n ]
  %.sroa.17.0.lcssa287300 = phi ptr [ %.sroa.17.0.lcssa288, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.17.1.lcssa, %bb.n ]
  %.sroa.0118.0.lcssa290299 = phi ptr [ %.sroa.0118.0.lcssa291, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.0118.1.lcssa, %bb.n ] ; 2 uses
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !56    ; 3 uses
  %.not212 = icmp eq ptr %i.bx, %i.by
  br i1 %.not212, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader153
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

.lr.ph201:                                        ; preds = %.noexc, %bb.n
  %.071200 = phi i64 [ %i.cl, %bb.n ], [ 0, %.noexc ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0118.1.lcssa, i64 %.071200 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !71
  %i.ck = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ch, i32 noundef %i.cj)
          to label %bb.n unwind label %.thread134 ; 0 uses

bb.n:                                             ; preds = %.lr.ph201
  %i.cl = add nuw i64 %.071200, 1                 ; 2 uses
  %exitcond226.not = icmp eq i64 %i.cl, %i.p
  br i1 %exitcond226.not, label %.preheader153, label %.lr.ph201, !llvm.loop !72

.thread134:                                       ; preds = %.lr.ph201
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge209:                                   ; preds = %._crit_edge205, %.preheader153
  %.not.i.i.i90 = icmp eq ptr %.sroa.0118.0.lcssa290299, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge209
  %i.cn = ptrtoint ptr %.sroa.17.0.lcssa287300 to i64
  %i.co = sub i64 %i.cn, %.pre-phi263301
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0.lcssa290299, i64 noundef %i.co) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge209, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph208, %._crit_edge205
  %.1207 = phi i32 [ 0, %.lr.ph208 ], [ %i.cq, %._crit_edge205 ] ; 5 uses
  %.069206 = phi i64 [ 0, %.lr.ph208 ], [ %i.eg, %._crit_edge205 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.069206
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40 ; 2 uses
  %i.cr = sub nsw i32 %i.cq, %.1207               ; 7 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.069206
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !73 ; 6 uses
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.preheader152.lr.ph, label %._crit_edge205

.preheader152.lr.ph:                              ; preds = %bb.p
  %i.cv = load ptr, ptr %i.cd, align 8, !tbaa !38 ; 5 uses
  %.not = icmp eq ptr %i.cv, null                 ; 2 uses
  %i.cw = load i32, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.cx = load i64, ptr %i.ce, align 8, !tbaa !46
  %.not.not.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i.i, label %.preheader152.lr.ph.split.us, label %.preheader152.lr.ph.split

.preheader152.lr.ph.split.us:                     ; preds = %.preheader152.lr.ph
  %3 = zext nneg i32 %i.cr to i64                 ; 5 uses
  br i1 %.not, label %.preheader152.us.us.preheader, label %.preheader152.us.preheader

.preheader152.us.preheader:                       ; preds = %.preheader152.lr.ph.split.us
  %i.cy = sext i32 %.1207 to i64                  ; 2 uses
  %wide.trip.count245 = zext nneg i32 %i.cr to i64 ; 2 uses
  %invariant.gep315.a = getelementptr [4 x i8], ptr %i.cv, i64 %i.cy
  %invariant.gep311 = getelementptr [4 x i8], ptr %i.cv, i64 %i.cy
  br label %.preheader152.us

.preheader152.us.us.preheader:                    ; preds = %.preheader152.lr.ph.split.us
  %4 = zext i32 %.1207 to i64                     ; 2 uses
  %i.cz = zext i32 %i.cw to i64
  br label %.preheader152.us.us

.preheader152.us.us:                              ; preds = %.preheader152.us.us.preheader, %.split.us.us.split.us.us
  %indvars.iv256 = phi i64 [ %4, %.preheader152.us.us.preheader ], [ %indvars.iv.next257, %.split.us.us.split.us.us ] ; 2 uses
  %indvars.iv247 = phi i64 [ 0, %.preheader152.us.us.preheader ], [ %indvars.iv.next248, %.split.us.us.split.us.us ] ; 5 uses
  %i.da = mul nuw nsw i64 %indvars.iv247, %3
  %5 = mul i64 %indvars.iv256, %i.cz
  %invariant.op = add i64 %5, %4
  %invariant.gep317 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da
  %invariant.gep319.a = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv247
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %bb.s, %.preheader152.us.us
  %indvars.iv249 = phi i64 [ %indvars.iv.next250.a, %bb.s ], [ %indvars.iv247, %.preheader152.us.us ] ; 5 uses
  %.reass = add i64 %indvars.iv249, %invariant.op
  %6 = trunc i64 %.reass to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.q ], [ %i.b, %.preheader.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !32, !nonnull !74, !noundef !74 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.dc, %6
  br i1 %i.dd, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, label %bb.q, !llvm.loop !47

bb.r:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %i.de = mul nuw nsw i64 %indvars.iv249, %3
  %gep320.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep319.a, i64 %i.de
  store double %i.dg, ptr %gep320.a, align 8, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, %bb.r
  %indvars.iv.next250.a = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250.a, %3
  br i1 %exitcond253.not, label %.split.us.us.split.us.us, label %.preheader.us.us.us.us, !llvm.loop !75

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us: ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !50 ; 2 uses
  %gep318.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep317, i64 %indvars.iv249
  store double %i.dg, ptr %gep318.a, align 8, !tbaa !41
  %.not82.us.us.us.us = icmp eq i64 %indvars.iv247, %indvars.iv249
  br i1 %.not82.us.us.us.us, label %bb.s, label %bb.r

.split.us.us.split.us.us:                         ; preds = %bb.s
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %exitcond256.not = icmp eq i64 %indvars.iv.next248, %3
  br i1 %exitcond256.not, label %._crit_edge205, label %.preheader152.us.us, !llvm.loop !76

.preheader152.us:                                 ; preds = %.preheader152.us.preheader, %.split.us.us.split
  %indvars.iv237 = phi i64 [ 0, %.preheader152.us.preheader ], [ %indvars.iv.next238, %.split.us.us.split ] ; 6 uses
  %gep316.a = getelementptr [4 x i8], ptr %invariant.gep315.a, i64 %indvars.iv237
  %i.dh = mul nuw nsw i64 %indvars.iv237, %3
  %i.di = load i32, ptr %gep316.a, align 4, !tbaa !40 ; 2 uses
  %invariant.gep313 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv237 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.v, %.preheader152.us
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %bb.v ], [ %indvars.iv237, %.preheader152.us ] ; 5 uses
  %gep312 = getelementptr [4 x i8], ptr %invariant.gep311, i64 %indvars.iv239
  %i.dk = load i32, ptr %gep312, align 4, !tbaa !40 ; 2 uses
  %spec.select149.us.us = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dk)
  %spec.select150.us.us = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.dk)
  %i.dl = mul nsw i32 %i.cw, %spec.select149.us.us
  %i.dm = add nsw i32 %i.dl, %spec.select150.us.us
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.us.us
  %.sroa.06.0.in.i.i.us.us = phi ptr [ %.sroa.06.0.i.i.us.us, %bb.t ], [ %i.b, %.preheader.us.us ]
  %.sroa.06.0.i.i.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us, align 8, !tbaa !32, !nonnull !74, !noundef !74 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us, label %bb.t, !llvm.loop !47

bb.u:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us
  %i.dq = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.dr = mul nuw nsw i32 %i.cr, %i.dq
  %i.ds = add nuw nsw i32 %i.dr, %i.dj
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store double %i.dw, ptr %i.du, align 8, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us, %bb.u
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count245
  br i1 %exitcond243.not, label %.split.us.us.split, label %.preheader.us.us, !llvm.loop !75

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us: ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !50 ; 2 uses
  %gep314 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep313, i64 %indvars.iv239
  store double %i.dw, ptr %gep314, align 8, !tbaa !41
  %.not82.us.us = icmp eq i64 %indvars.iv237, %indvars.iv239
  br i1 %.not82.us.us, label %bb.v, label %bb.u

.split.us.us.split:                               ; preds = %bb.v
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count245
  br i1 %exitcond246.not, label %._crit_edge205, label %.preheader152.us, !llvm.loop !76

.preheader152.lr.ph.split:                        ; preds = %.preheader152.lr.ph
  %i.dx = load i64, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.dz = sext i32 %.1207 to i64                  ; 2 uses
  %i.ea = zext nneg i32 %i.cr to i64
  %wide.trip.count235 = zext nneg i32 %i.cr to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cv, i64 %i.dz
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader152.lr.ph.split, %.split
  %indvars.iv227 = phi i64 [ 0, %.preheader152.lr.ph.split ], [ %indvars.iv.next228, %.split ] ; 6 uses
  %i.eb = add nsw i64 %indvars.iv227, %i.dz       ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.eb
  %i.ed = mul nuw nsw i64 %indvars.iv227, %i.ea
  %i.ee = trunc nsw i64 %i.eb to i32
  %invariant.gep309 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv227 to i32
  br label %bb.w

._crit_edge205:                                   ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us, %bb.p
  %i.eg = add nuw i64 %.069206, 1                 ; 2 uses
  %exitcond258.not = icmp eq i64 %i.eg, %i.cc
  br i1 %exitcond258.not, label %._crit_edge209, label %bb.p, !llvm.loop !77

.split:                                           ; preds = %bb.ab
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count235
  br i1 %exitcond236.not, label %._crit_edge205, label %.preheader152, !llvm.loop !76

bb.w:                                             ; preds = %.preheader152, %bb.ab
  %indvars.iv229 = phi i64 [ %indvars.iv227, %.preheader152 ], [ %indvars.iv.next230, %bb.ab ] ; 6 uses
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load i32, ptr %i.ec, align 4, !tbaa !40
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv229
  %i.ei = load i32, ptr %gep, align 4, !tbaa !40
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ej = trunc i64 %indvars.iv229 to i32
  %i.ek = add i32 %.1207, %i.ej
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.el = phi i32 [ %i.eh, %bb.x ], [ %i.ee, %bb.y ] ; 2 uses
  %i.em = phi i32 [ %i.ei, %bb.x ], [ %i.ek, %bb.y ] ; 2 uses
  %spec.select149 = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.em)
  %spec.select150 = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %i.em)
  %i.en = mul nsw i32 %i.cw, %spec.select149
  %i.eo = add nsw i32 %i.en, %spec.select150      ; 3 uses
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
  %gep310 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep309, i64 %indvars.iv229
  store double %i.fe, ptr %gep310, align 8, !tbaa !41
  %.not82 = icmp eq i64 %indvars.iv227, %indvars.iv229
  br i1 %.not82, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %i.ff = trunc nuw nsw i64 %indvars.iv229 to i32
  %i.fg = mul nuw nsw i32 %i.cr, %i.ff
  %i.fh = add nuw nsw i32 %i.fg, %i.ef
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.fi
  store double %i.fe, ptr %i.fj, align 8, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count235
  br i1 %exitcond233.not, label %.split, label %bb.w, !llvm.loop !75

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.sroa.17.3 = phi ptr [ %.sroa.17.1.lcssa, %bb.m ], [ %.sroa.11.2182, %.loopexit ], [ %.sroa.11.2182, %.loopexit.split-lp ]
  %.sroa.0118.3 = phi ptr [ %.sroa.0118.1.lcssa, %bb.m ], [ %.sroa.0118.2183, %.loopexit ], [ %.sroa.0118.2183, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.sroa.0118.3, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.ac
  %.pre268 = ptrtoint ptr %.sroa.0118.3 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge260, %.thread134
  %.pre-phi269 = phi i64 [ %.pre268, %._crit_edge260 ], [ %i.n, %.thread134 ]
  %.pn141 = phi { ptr, i32 } [ %.pn, %._crit_edge260 ], [ %i.cm, %.thread134 ]
  %.sroa.0118.3140 = phi ptr [ %.sroa.0118.3, %._crit_edge260 ], [ %.sroa.0118.1.lcssa, %.thread134 ]
  %.sroa.17.3139 = phi ptr [ %.sroa.17.3, %._crit_edge260 ], [ %.sroa.17.1.lcssa, %.thread134 ]
  %i.fk = ptrtoint ptr %.sroa.17.3139 to i64
  %i.fl = sub i64 %i.fk, %.pre-phi269
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.3140, i64 noundef %i.fl) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94: ; preds = %bb.ac, %bb.ad
  %.pn142 = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %.pn141, %bb.ad ]
  resume { ptr, i32 } %.pn142
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
