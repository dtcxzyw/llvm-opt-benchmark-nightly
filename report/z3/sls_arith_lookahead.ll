Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_lookahead?download=true
inline.NumInlined: 1523
inline.NumDeleted: 614
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE19get_candidate_unsatEv:bb.a
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load double, ptr %i.af, align 8, !tbaa !308
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !309
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = tail call double @log(double noundef %i.ai) #20
  %i.ak = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.p)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21
  %i.an = uitofp i32 %i.am to double
  %i.ao = fdiv double %i.aj, %i.an
  %i.ap = tail call double @sqrt(double noundef %i.ao) #20
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ap, double %i.ad)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.at = load double, ptr %i.as, align 8, !tbaa !310
  %i.au = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !195
  %i.ax = mul i32 %i.aw, 214013
  %i.ay = add i32 %i.ax, 2531011                  ; 2 uses
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !195
  %i.az = lshr i32 %i.ay, 16
  %.zext = and i32 %i.az, 511
  %i.ba = uitofp nneg i32 %.zext to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ba, double %i.aq) ; 2 uses
  %i.bc = fcmp ogt double %i.bb, %.03456          ; 2 uses
  %.137 = select i1 %i.bc, ptr %i.p, ptr %.03655
  %.135 = select i1 %i.bc, double %i.bb, double %.03456
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit
  %.339 = phi ptr [ %.03655, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit ], [ %.137, %bb.e ], [ %.03655, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.03655, %bb.c ], [ %.03655, %bb.d ] ; 4 uses
  %.3 = phi double [ %.03456, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit ], [ %.135, %bb.e ], [ %.03456, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.03456, %bb.c ], [ %.03456, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.03357, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bd, %i.n
  br i1 %.not41, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !309
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !309
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %.339)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !21
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !21
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  br i1 %i.i, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44: ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bo
  %.not50 = icmp eq i32 %i.bm, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread
  %.053 = phi ptr [ %i.cm, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ %i.h, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 2 uses
  %.03152 = phi i32 [ %.1, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 5 uses
  %.451 = phi ptr [ %.5, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 5 uses
  %i.bq = load ptr, ptr %.053, align 8, !tbaa !108 ; 4 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.bq), !inline_history !114
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !89
  switch i32 %i.bt, label %bb.h [
    i32 0, label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47
    i32 1, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread
  ]

_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47: ; preds = %.lr.ph
  %i.bu = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.bq), !inline_history !114 ; 2 uses
  %i.bv = select i1 %i.bu, i32 1, i32 -1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !89
  br i1 %i.bu, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE17get_fixable_exprsEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.bq)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !194 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48:          ; preds = %bb.h
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48
  %i.cc = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !195
  %i.cf = mul i32 %i.ce, 214013
  %i.cg = add i32 %i.cf, 2531011                  ; 2 uses
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !195
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = and i32 %i.ch, 32767
  %i.cj = add i32 %.03152, 1                      ; 2 uses
  %i.ck = urem i32 %i.ci, %i.cj
  %i.cl = icmp eq i32 %i.ck, 0
  %spec.select = select i1 %i.cl, ptr %i.bq, ptr %.451
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread:   ; preds = %.lr.ph, %bb.h, %bb.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47
  %.5 = phi ptr [ %.451, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47 ], [ %.451, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48 ], [ %spec.select, %bb.i ], [ %.451, %.lr.ph ], [ %.451, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.03152, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit47 ], [ %.03152, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48 ], [ %i.cj, %bb.i ], [ %.03152, %.lr.ph ], [ %.03152, %bb.h ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cm, %i.bp
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, %bb.g, %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44, %._crit_edge, %bb.f
  %.6 = phi ptr [ null, %._crit_edge ], [ %.339, %bb.f ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ], [ null, %bb.b ], [ null, %bb.g ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %.5, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.6, ptr %i.cn, align 8, !tbaa !311
  ret ptr %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13check_restartEv(ptr noundef nonnull align 8 dereferenceable(196) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !312  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !313
  %i.g = urem i32 %i.d, %i.f
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !314
  %i.k = fcmp ult double %i.j, 1.000000e+00
  br i1 %i.k, label %bb.c, label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !194  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i: ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %.not12.i = icmp eq i32 %i.q, 0
  br i1 %.not12.i, label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.013.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.al, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.013.i, align 8, !tbaa !108 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = add i32 %i.y, -1
  %i.aa = uitofp i32 %i.z to double
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !314
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ad, double 1.000000e+00)
  %i.af = fptoui double %i.ae to i32              ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.v)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !21
  %i.ai = sub i32 %i.af, %i.y
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !309
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !309
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.t
  br i1 %.not.i, label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit, label %bb.d

_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit: ; preds = %bb.d, %bb.b, %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  tail call void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE7rescoreEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !312
  br label %bb.e

bb.e:                                             ; preds = %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit, %bb.a
  %i.am = phi i32 [ %.pre1, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %.pre, %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 148 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !315
  %i.aq = icmp ult i32 %i.am, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !316 ; 2 uses
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !316
  %i.au = and i32 %i.as, 1
  %.not.not = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !313
  %i.ax = select i1 %.not.not, i32 1, i32 %i.at
  %.pn = mul i32 %i.aw, %i.ax
  %storemerge = add i32 %.pn, %i.am
  store i32 %storemerge, ptr %i.ao, align 4, !tbaa !315
  tail call void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE7rescoreEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE10ucb_forgetEv(ptr noundef nonnull align 8 dereferenceable(196) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load double, ptr %i.c, align 8, !tbaa !314
  %i.e = fcmp ult double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !194  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.af, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.013, align 8, !tbaa !108 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = add i32 %i.s, -1
  %i.u = uitofp i32 %i.t to double
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load double, ptr %i.w, align 8, !tbaa !314
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.x, double 1.000000e+00)
  %i.z = fptoui double %i.y to i32                ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !21
  %i.ac = sub i32 %i.z, %i.s
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !309
  %i.ae = add i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %i.o, align 8, !tbaa !309
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.n
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE26initialize_bool_assignmentEv(ptr noundef nonnull align 8 dereferenceable(196) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls7context8subtermsEv(ptr noundef nonnull align 8 dereferenceable(321) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit

_ZNK6vectorIP4exprLb0EjE3endEv.exit:              ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a, %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.011 = phi ptr [ %i.c, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %.011, align 8, !tbaa !108 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !119, !nonnull !55, !align !56
  %i.m = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef %i.k)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.k)
  %i.o = select i1 %i.n, i32 1, i32 -1
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.o, ptr %i.q, align 4, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls7context8subtermsEv(ptr noundef nonnull align 8 dereferenceable(321)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE24finalize_bool_assignmentEv(ptr noundef nonnull align 8 dereferenceable(196) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !317 ; 2 uses
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.l = add i32 %i.g, -1
  %i.m = zext i32 %i.l to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN3sls7context4atomEj.exit.thread, %.lr.ph, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN3sls7context4atomEj.exit.thread
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN3sls7context4atomEj.exit.thread ] ; 5 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN3sls7context4atomEj.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %.lr.ph.split
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !49
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ult i64 %indvars.iv, %i.t
  br i1 %.not.i.i.i, label %_ZN3sls7context4atomEj.exit, label %_ZN3sls7context4atomEj.exit.thread

_ZN3sls7context4atomEj.exit:                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.u, align 8, !tbaa !108 ; 3 uses
  %.not7 = icmp eq ptr %.0.i.sroa.speculate.load..i.i, null
  br i1 %.not7, label %_ZN3sls7context4atomEj.exit.thread, label %bb.b, !llvm.loop !318

bb.b:                                             ; preds = %_ZN3sls7context4atomEj.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i), !inline_history !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.x, 1
  br label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i), !inline_history !114 ; 2 uses
  %i.aa = select i1 %i.z, i32 1, i32 -1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !89
  br label %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit

_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ %i.y, %bb.c ], [ %i.z, %bb.d ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.af = shl i32 %i.ae, 1
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 %i.af), !inline_history !319
  %i.ak = xor i1 %.0.i, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN3sls7context4atomEj.exit.thread

bb.e:                                             ; preds = %_ZN3sls15arith_lookaheadI13checked_int64ILb1EEE14get_bool_valueEP4expr.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !55, !align !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !188
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
end_hunk_0
begin_hunk_1_@_ZN3sls15arith_lookaheadI8rationalE19get_candidate_unsatEv:bb.a
  br i1 %i.aa, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.p)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !331
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load double, ptr %i.af, align 8, !tbaa !457
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !458
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = tail call double @log(double noundef %i.ai) #20
  %i.ak = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.p)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !332
  %i.an = uitofp i32 %i.am to double
  %i.ao = fdiv double %i.aj, %i.an
  %i.ap = tail call double @sqrt(double noundef %i.ao) #20
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ap, double %i.ad)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.at = load double, ptr %i.as, align 8, !tbaa !459
  %i.au = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !195
  %i.ax = mul i32 %i.aw, 214013
  %i.ay = add i32 %i.ax, 2531011                  ; 2 uses
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !195
  %i.az = lshr i32 %i.ay, 16
  %.zext = and i32 %i.az, 511
  %i.ba = uitofp nneg i32 %.zext to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ba, double %i.aq) ; 2 uses
  %i.bc = fcmp ogt double %i.bb, %.03456          ; 2 uses
  %.137 = select i1 %i.bc, ptr %i.p, ptr %.03655
  %.135 = select i1 %i.bc, double %i.bb, double %.03456
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit
  %.339 = phi ptr [ %.03655, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit ], [ %.137, %bb.e ], [ %.03655, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.03655, %bb.c ], [ %.03655, %bb.d ] ; 4 uses
  %.3 = phi double [ %.03456, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit ], [ %.135, %bb.e ], [ %.03456, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.03456, %bb.c ], [ %.03456, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.03357, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bd, %i.n
  br i1 %.not41, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !458
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !458
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull %.339)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !332
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !332
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  br i1 %i.i, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44: ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bo
  %.not50 = icmp eq i32 %i.bm, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread
  %.053 = phi ptr [ %i.cm, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ %i.h, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 2 uses
  %.03152 = phi i32 [ %.1, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 5 uses
  %.451 = phi ptr [ %.5, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ] ; 5 uses
  %i.bq = load ptr, ptr %.053, align 8, !tbaa !108 ; 4 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.bq), !inline_history !375
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !370
  switch i32 %i.bt, label %bb.h [
    i32 0, label %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47
    i32 1, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread
  ]

_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47: ; preds = %.lr.ph
  %i.bu = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI8rationalE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.bq), !inline_history !375 ; 2 uses
  %i.bv = select i1 %i.bu, i32 1, i32 -1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !370
  br i1 %i.bu, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls15arith_lookaheadI8rationalE17get_fixable_exprsEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.bq)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !194 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48:          ; preds = %bb.h
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48
  %i.cc = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !195
  %i.cf = mul i32 %i.ce, 214013
  %i.cg = add i32 %i.cf, 2531011                  ; 2 uses
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !195
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = and i32 %i.ch, 32767
  %i.cj = add i32 %.03152, 1                      ; 2 uses
  %i.ck = urem i32 %i.ci, %i.cj
  %i.cl = icmp eq i32 %i.ck, 0
  %spec.select = select i1 %i.cl, ptr %i.bq, ptr %.451
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread:   ; preds = %.lr.ph, %bb.h, %bb.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47
  %.5 = phi ptr [ %.451, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47 ], [ %.451, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48 ], [ %spec.select, %bb.i ], [ %.451, %.lr.ph ], [ %.451, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.03152, %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit47 ], [ %.03152, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48 ], [ %i.cj, %bb.i ], [ %.03152, %.lr.ph ], [ %.03152, %bb.h ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cm, %i.bp
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread, %bb.g, %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44, %._crit_edge, %bb.f
  %.6 = phi ptr [ null, %._crit_edge ], [ %.339, %bb.f ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit44 ], [ null, %bb.b ], [ null, %bb.g ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %.5, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit48.thread ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.6, ptr %i.cn, align 8, !tbaa !460
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI8rationalE13check_restartEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !461  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !462
  %i.g = urem i32 %i.d, %i.f
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !463
  %i.k = fcmp ult double %i.j, 1.000000e+00
  br i1 %i.k, label %bb.c, label %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !194  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i: ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %.not12.i = icmp eq i32 %i.q, 0
  br i1 %.not12.i, label %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.013.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.al, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.013.i, align 8, !tbaa !108 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !332  ; 2 uses
  %i.z = add i32 %i.y, -1
  %i.aa = uitofp i32 %i.z to double
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !463
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ad, double 1.000000e+00)
  %i.af = fptoui double %i.ae to i32              ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.v)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !332
  %i.ai = sub i32 %i.af, %i.y
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !458
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !458
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.t
  br i1 %.not.i, label %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit, label %bb.d

_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit: ; preds = %bb.d, %bb.b, %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  tail call void @_ZN3sls15arith_lookaheadI8rationalE7rescoreEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !348 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !461
  br label %bb.e

bb.e:                                             ; preds = %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit, %bb.a
  %i.am = phi i32 [ %.pre1, %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %.pre, %_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 148 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !464
  %i.aq = icmp ult i32 %i.am, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !465 ; 2 uses
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !465
  %i.au = and i32 %i.as, 1
  %.not.not = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !462
  %i.ax = select i1 %.not.not, i32 1, i32 %i.at
  %.pn = mul i32 %i.aw, %i.ax
  %storemerge = add i32 %.pn, %i.am
  store i32 %storemerge, ptr %i.ao, align 4, !tbaa !464
  tail call void @_ZN3sls15arith_lookaheadI8rationalE7rescoreEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI8rationalE10ucb_forgetEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load double, ptr %i.c, align 8, !tbaa !463
  %i.e = fcmp ult double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !194  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.af, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.013, align 8, !tbaa !108 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !332  ; 2 uses
  %i.t = add i32 %i.s, -1
  %i.u = uitofp i32 %i.t to double
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !55, !align !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load double, ptr %i.w, align 8, !tbaa !463
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.x, double 1.000000e+00)
  %i.z = fptoui double %i.y to i32                ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !332
  %i.ac = sub i32 %i.z, %i.s
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !458
  %i.ae = add i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %i.o, align 8, !tbaa !458
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.n
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI8rationalE26initialize_bool_assignmentEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls7context8subtermsEv(ptr noundef nonnull align 8 dereferenceable(321) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit

_ZNK6vectorIP4exprLb0EjE3endEv.exit:              ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a, %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.011 = phi ptr [ %i.c, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %.011, align 8, !tbaa !108 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !379, !nonnull !55, !align !56
  %i.m = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef %i.k)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI8rationalE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.k)
  %i.o = select i1 %i.n, i32 1, i32 -1
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.o, ptr %i.q, align 4, !tbaa !370
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls15arith_lookaheadI8rationalE24finalize_bool_assignmentEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !317 ; 2 uses
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.l = add i32 %i.g, -1
  %i.m = zext i32 %i.l to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN3sls7context4atomEj.exit.thread, %.lr.ph, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN3sls7context4atomEj.exit.thread
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN3sls7context4atomEj.exit.thread ] ; 5 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN3sls7context4atomEj.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %.lr.ph.split
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !49
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ult i64 %indvars.iv, %i.t
  br i1 %.not.i.i.i, label %_ZN3sls7context4atomEj.exit, label %_ZN3sls7context4atomEj.exit.thread

_ZN3sls7context4atomEj.exit:                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.u, align 8, !tbaa !108 ; 3 uses
  %.not7 = icmp eq ptr %.0.i.sroa.speculate.load..i.i, null
  br i1 %.not7, label %_ZN3sls7context4atomEj.exit.thread, label %bb.b, !llvm.loop !466

bb.b:                                             ; preds = %_ZN3sls7context4atomEj.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN3sls15arith_lookaheadI8rationalE13get_bool_infoEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i), !inline_history !375
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !370  ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.x, 1
  br label %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef zeroext i1 @_ZN3sls15arith_lookaheadI8rationalE18get_bool_value_recEP4expr(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i), !inline_history !375 ; 2 uses
  %i.aa = select i1 %i.z, i32 1, i32 -1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !370
  br label %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit

_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ %i.y, %bb.c ], [ %i.z, %bb.d ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.af = shl i32 %i.ae, 1
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 %i.af), !inline_history !319
  %i.ak = xor i1 %.0.i, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN3sls7context4atomEj.exit.thread

bb.e:                                             ; preds = %_ZN3sls15arith_lookaheadI8rationalE14get_bool_valueEP4expr.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !371, !nonnull !55, !align !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236, !nonnull !55, !align !56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !188
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %i.ae), !inline_history !320
end_hunk_1
