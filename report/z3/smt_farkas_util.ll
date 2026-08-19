inline.NumInlined: 655
inline.NumDeleted: 303
begin_hunk_0_@_ZN3smt11farkas_util8fix_signEbP3app:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

_ZNK17arith_recognizers5is_ltEPK4expr.exit.i32:   ; preds = %bb.n, %_ZNK17arith_recognizers5is_leEPK4expr.exit.i28
  %i.dw = load i32, ptr %i.de, align 8, !tbaa !42
  %i.dx = icmp eq i32 %i.dw, 5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = icmp eq i32 %i.dz, 4
  %i.eb = select i1 %i.dx, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.p, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i36

bb.p:                                             ; preds = %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !78
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.q, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i36

bb.q:                                             ; preds = %bb.p
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ef, ptr %i.c, align 8, !tbaa !34
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !34
  call void @_ZN3smt11farkas_util9mk_coerceERP4exprS3_(ptr noundef nonnull readonly align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.em = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.el, i32 noundef 5, i32 noundef 3, ptr noundef %i.ej, ptr noundef %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_ZNK17arith_recognizers5is_geEPK4expr.exit.i36:   ; preds = %bb.p, %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i32
  %i.en = load i32, ptr %i.de, align 8, !tbaa !42
  %i.eo = icmp eq i32 %i.en, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = icmp eq i32 %i.eq, 3
  %i.es = select i1 %i.eo, i1 %i.er, i1 false
  br i1 %i.es, label %bb.r, label %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i40

bb.r:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i36
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !78
  %i.ev = icmp eq i32 %i.eu, 2
  br i1 %i.ev, label %bb.s, label %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i40

bb.s:                                             ; preds = %bb.r
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !34
  store ptr %i.ey, ptr %i.b, align 8, !tbaa !34
  call void @_ZN3smt11farkas_util9mk_coerceERP4exprS3_(ptr noundef nonnull readonly align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.fd = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fc, i32 noundef 5, i32 noundef 4, ptr noundef %i.fa, ptr noundef %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

_ZNK17arith_recognizers5is_gtEPK4expr.exit.i40:   ; preds = %bb.r, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i36
  %i.fe = load i32, ptr %i.de, align 8, !tbaa !42
  %i.ff = icmp eq i32 %i.fe, 5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp eq i32 %i.fh, 5
  %i.fj = select i1 %i.ff, i1 %i.fi, i1 false
  br i1 %i.fj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i40
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !78
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fn = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34
  %i.fq = tail call noundef ptr @_ZN3smt11farkas_util5mk_leEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.fn, ptr noundef %i.fp)
  br label %bb.w

bb.v:                                             ; preds = %bb.m, %bb.t, %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i40, %bb.l
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.w

bb.w:                                             ; preds = %.thread75, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.k, %bb.f
  %.0 = phi ptr [ %i.bk, %bb.f ], [ %i.cw, %bb.k ], [ %i.dv, %bb.o ], [ %i.em, %bb.q ], [ %i.fd, %bb.s ], [ %i.fq, %bb.u ], [ %2, %bb.v ], [ %2, %.thread75 ]
  ret ptr %.0
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11farkas_util15partition_ineqsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %class.obj_ref.24, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %.not.i32 = icmp eq ptr %i.e, null
  br i1 %.not.i32, label %_ZN6vectorIjLb0EjE5resetEv.exit33, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  store i32 0, ptr %i.f, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE5resetEv.exit33

_ZN6vectorIjLb0EjE5resetEv.exit33:                ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !80
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge122, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35.lr.ph: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit33, %_ZN6vectorIjLb0EjE9push_backEOj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6vectorIjLb0EjE9push_backEOj.exit ], [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit33 ] ; 3 uses
  %i.s = phi ptr [ %i.an, %_ZN6vectorIjLb0EjE9push_backEOj.exit ], [ %i.k, %_ZN6vectorIjLb0EjE5resetEv.exit33 ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !62
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %i.w, label %bb.d, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35.lr.ph

bb.d:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = tail call noundef i32 @_ZN3smt11farkas_util12process_termEP4expr(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.y)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !79  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !62 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !62
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit

_ZN6vectorIjLb0EjE9push_backEOj.exit:             ; preds = %bb.e, %bb.f
  %i.ah = phi i32 [ %.pre2.i, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.z, ptr %i.al, align 4, !tbaa !62
  %i.am = add i32 %i.ah, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !56  ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.critedge122, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !81

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.ap = phi ptr [ %i.s, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35.lr.ph ], [ %i.bm, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %.0136 = phi i32 [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35.lr.ph ], [ %i.be, %_ZN6vectorIjLb0EjE9push_backERKj.exit ] ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !62
  %i.as = icmp ult i32 %.0136, %i.ar
  br i1 %i.as, label %bb.g, label %.critedge122

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.au = zext i32 %.0136 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !62
  %i.ax = tail call noundef i32 @_ZN3smt11farkas_util4findEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.aw)
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !56  ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37: ; preds = %bb.g, %bb.bb
  %5 = phi ptr [ %i.jv, %bb.bb ], [ %i.ay, %bb.g ] ; 2 uses
  %.023.in133 = phi i32 [ %.023134, %bb.bb ], [ %.0136, %bb.g ] ; 2 uses
  %.024132 = phi i32 [ %.125, %bb.bb ], [ %.0136, %bb.g ] ; 4 uses
  %.023134 = add nuw i32 %.023.in133, 1           ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %5, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !62
  %i.bc = icmp ult i32 %.023134, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37, %bb.bb, %bb.g
  %i.bd = phi ptr [ null, %bb.g ], [ null, %bb.bb ], [ %5, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37 ]
  %.024.lcssa = phi i32 [ %.0136, %bb.g ], [ %.125, %bb.bb ], [ %.024132, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37 ]
  %i.be = add i32 %.024.lcssa, 1                  ; 2 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !79  ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !62 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !62
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.i:                                             ; preds = %bb.h, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i38 = load ptr, ptr %i.d, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds i8, ptr %.pre.i38, i64 -4
  %.pre2.i40 = load i32, ptr %.phi.trans.insert.i39, align 4, !tbaa !62
  %.pre145 = load ptr, ptr %i.j, align 8, !tbaa !56
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.h, %bb.i
  %i.bm = phi ptr [ %.pre145, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bn = phi i32 [ %.pre2.i40, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i38, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.be, ptr %i.br, align 4, !tbaa !62
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !62
  %i.bt = icmp eq ptr %i.bm, null
  br i1 %i.bt, label %.critedge122, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35, !llvm.loop !82

bb.j:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !79
  %6 = zext i32 %.023134 to i64                   ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %6
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !62 ; 9 uses
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !79  ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.j
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !62
  %.not.i41 = icmp ugt i32 %i.ca, %i.bw
  br i1 %.not.i41, label %bb.ah, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.j
  %i.cb = add i32 %i.bw, 1                        ; 21 uses
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !79  ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.not.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.not.i.i, label %_ZN6vectorIjLb0EjE6resizeEj.exit.thread.i, label %thread-pre-split.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !62 ; 2 uses
  %.not15.i.i = icmp ugt i32 %i.cb, %i.cf
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.k

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %.ph199 = phi ptr [ %i.cc, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.cf, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.backedge, %thread-pre-split.i.i.preheader
  %i.cg = phi ptr [ %.ph199, %thread-pre-split.i.i.preheader ], [ %.be200, %thread-pre-split.i.i.backedge ] ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.l, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !62
  %i.ck = icmp ugt i32 %i.cb, %i.cj
  br i1 %i.ck, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.r

bb.l:                                             ; preds = %thread-pre-split.i.i
  %i.cl = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.cl, align 4, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 0, ptr %i.cm, align 4, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.p, align 8, !tbaa !79
  br label %thread-pre-split.i.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 -8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !62 ; 3 uses
  %i.cq = mul i32 %i.cp, 3
  %i.cr = add i32 %i.cq, 1
  %i.cs = lshr i32 %i.cr, 1                       ; 3 uses
  %i.ct = shl i32 %i.cs, 2
  %i.cu = add i32 %i.ct, 8                        ; 2 uses
  %.not.i75 = icmp ugt i32 %i.cs, %i.cp
  br i1 %.not.i75, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i98

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.cv = shl i32 %i.cp, 2
  %i.cw = add i32 %i.cv, 8
  %.not27.i84 = icmp ugt i32 %i.cu, %i.cw
  br i1 %.not27.i84, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i98: ; preds = %bb.m, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 40) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cz = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #18
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80 unwind label %bb.o ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i98
  store i64 0, ptr %i.cy, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.cz, ptr noundef nonnull align 1 dereferenceable(42) @.str.5, i64 42, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 42
  store i8 0, ptr %i.db, align 1, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cx, align 8, !tbaa !84
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !86
  store i64 42, ptr %i.dd, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 42, ptr %i.de, align 8, !tbaa !90
  store ptr %i.cy, ptr %1, align 8, !tbaa !86
  store i64 0, ptr %i.da, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cy
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i81: ; preds = %bb.n
  %i.di = load i64, ptr %i.cy, align 8, !tbaa !83
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i98
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  tail call void @__cxa_free_exception(ptr %i.cx) #16
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i71, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, %bb.o, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %.pn30, %bb.ba ], [ %i.dk, %bb.o ], [ %i.fd, %bb.v ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i71 ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gv, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.m
  %i.dl = zext i32 %i.cu to i64
  %i.dm = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.co, i64 noundef %i.dl) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.p, align 8, !tbaa !79
  store i32 %i.cs, ptr %i.dm, align 4, !tbaa !62
  br label %thread-pre-split.i.i.backedge

thread-pre-split.i.i.backedge:                    ; preds = %bb.p, %bb.l
  %.be200 = phi ptr [ %i.cn, %bb.l ], [ %i.dn, %bb.p ]
  br label %thread-pre-split.i.i, !llvm.loop !91

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80
  unreachable

bb.r:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.do = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store i32 %i.cb, ptr %i.do, align 4, !tbaa !62
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.cb
  br i1 %.not1218.i.i, label %_ZN6vectorIjLb0EjE6resizeEj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.dp = zext i32 %i.cb to i64
  %i.dq = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.cg, i64 %i.dq
  %i.ds = sub nsw i64 %i.dp, %i.dq
  %i.dt = shl nsw i64 %i.ds, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.dt, i1 false), !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit.i

_ZN6vectorIjLb0EjE6resizeEj.exit.i:               ; preds = %.lr.ph.preheader.i.i, %bb.r, %bb.k
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !79  ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i34.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i

_ZN6vectorIjLb0EjE6resizeEj.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !79  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN6vectorIjLb0EjE6resizeEj.exit36.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i34.i:            ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit.i
  %.not.not.i35.i = icmp eq i32 %i.cb, 0
  br i1 %.not.not.i35.i, label %_ZN6vectorIjLb0EjE6resizeEj.exit36.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i:     ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit.thread.i, %_ZN6vectorIjLb0EjE6resizeEj.exit.i
  %i.dy = phi ptr [ %i.dw, %_ZN6vectorIjLb0EjE6resizeEj.exit.thread.i ], [ %i.du, %_ZN6vectorIjLb0EjE6resizeEj.exit.i ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !62 ; 2 uses
  %.not15.i24.i = icmp ugt i32 %i.cb, %i.ea
  br i1 %.not15.i24.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i.preheader, label %bb.s

bb.s:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i
  store i32 %i.cb, ptr %i.dz, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit36.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i:        ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i.preheader, %bb.w
  %.pr = phi ptr [ %i.fg, %bb.w ], [ %.pr.ph, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.pr, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !62
  %i.ed = icmp ugt i32 %i.cb, %i.ec
  br i1 %i.ed, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i, label %bb.y

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i.thread: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i34.i
  %i.ee = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.ee, align 4, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 0, ptr %i.ef, align 4, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.o, align 8, !tbaa !79
  br label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i.preheader, !llvm.loop !91

_ZNK6vectorIjLb0EjE8capacityEv.exit.i29.i.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i.thread
  %.pr.ph = phi ptr [ %i.eg, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i.thread ], [ %i.dy, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i ]
  %.0.i16.ph.i27.i.ph = phi i32 [ 0, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i32.i.thread ], [ %i.ea, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i23.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3smt11farkas_util15partition_ineqsEv:bb.a
  %i.fj = zext i32 %.0.i16.ph.i27.i.ph to i64     ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %.pr, i64 %i.fj
  %i.fl = sub nsw i64 %i.fi, %i.fj
  %i.fm = shl nsw i64 %i.fl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 0, i64 %i.fm, i1 false), !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit36.i

_ZN6vectorIjLb0EjE6resizeEj.exit36.i:             ; preds = %.lr.ph.preheader.i31.i, %bb.y, %bb.s, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i34.i, %_ZN6vectorIjLb0EjE6resizeEj.exit.thread.i
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !79  ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i48.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i48.i:            ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit36.i
  %.not.not.i49.i = icmp ne i32 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.not.i49.i)
  br label %thread-pre-split.i39.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i:     ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit36.i
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !62 ; 2 uses
  %.not15.i38.i = icmp ugt i32 %i.cb, %i.fq
  br i1 %.not15.i38.i, label %thread-pre-split.i39.i.preheader, label %bb.z

thread-pre-split.i39.i.preheader:                 ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i48.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i
  %.ph198 = phi ptr [ %i.fn, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i48.i ]
  %.0.i16.i42.i.ph = phi i32 [ %i.fq, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i48.i ] ; 2 uses
  br label %thread-pre-split.i39.i

bb.z:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i37.i
  store i32 %i.cb, ptr %i.fp, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit50.i

thread-pre-split.i39.i:                           ; preds = %thread-pre-split.i39.i.backedge, %thread-pre-split.i39.i.preheader
  %i.fr = phi ptr [ %.ph198, %thread-pre-split.i39.i.preheader ], [ %.be, %thread-pre-split.i39.i.backedge ] ; 7 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.aa, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i43.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i43.i:        ; preds = %thread-pre-split.i39.i
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !62
  %i.fv = icmp ugt i32 %i.cb, %i.fu
  br i1 %i.fv, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i46.i, label %bb.ag

bb.aa:                                            ; preds = %thread-pre-split.i39.i
  %i.fw = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.fw, align 4, !tbaa !62
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 0, ptr %i.fx, align 4, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  store ptr %i.fy, ptr %i.n, align 8, !tbaa !79
  br label %thread-pre-split.i39.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i46.i: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i43.i
  %i.fz = getelementptr inbounds i8, ptr %i.fr, i64 -8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !62 ; 3 uses
  %i.gb = mul i32 %i.ga, 3
  %i.gc = add i32 %i.gb, 1
  %i.gd = lshr i32 %i.gc, 1                       ; 3 uses
  %i.ge = shl i32 %i.gd, 2
  %i.gf = add i32 %i.ge, 8                        ; 2 uses
  %.not.i61 = icmp ugt i32 %i.gd, %i.ga
  br i1 %.not.i61, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.ab:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i46.i
  %i.gg = shl i32 %i.ga, 2
  %i.gh = add i32 %i.gg, 8
  %.not27.i = icmp ugt i32 %i.gf, %i.gh
  br i1 %.not27.i, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ab, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i46.i
  %i.gi = tail call ptr @__cxa_allocate_exception(i64 40) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.gk = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #18
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.ad ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.gj, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.gk, ptr noundef nonnull align 1 dereferenceable(42) @.str.5, i64 42, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 42
  store i8 0, ptr %i.gm, align 1, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gi, align 8, !tbaa !84
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store ptr %i.gk, ptr %i.gn, align 8, !tbaa !86
  store i64 42, ptr %i.go, align 8, !tbaa !83
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 42, ptr %i.gp, align 8, !tbaa !90
  store ptr %i.gj, ptr %3, align 8, !tbaa !86
  store i64 0, ptr %i.gl, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.gi, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.af unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %3, align 8, !tbaa !86    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gj
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ac
  %i.gt = load i64, ptr %i.gj, align 8, !tbaa !83
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  tail call void @__cxa_free_exception(ptr %i.gi) #16
  br label %common.resume

bb.ae:                                            ; preds = %bb.ab
  %i.gw = zext i32 %i.gf to i64
  %i.gx = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gw) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.n, align 8, !tbaa !79
  store i32 %i.gd, ptr %i.gx, align 4, !tbaa !62
  br label %thread-pre-split.i39.i.backedge

thread-pre-split.i39.i.backedge:                  ; preds = %bb.ae, %bb.aa
  %.be = phi ptr [ %i.fy, %bb.aa ], [ %i.gy, %bb.ae ]
  br label %thread-pre-split.i39.i, !llvm.loop !91

bb.af:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.ag:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i43.i
  %i.gz = getelementptr inbounds i8, ptr %i.fr, i64 -4
  store i32 %i.cb, ptr %i.gz, align 4, !tbaa !62
  %.not1218.i44.i = icmp eq i32 %.0.i16.i42.i.ph, %i.cb
  br i1 %.not1218.i44.i, label %_ZN6vectorIjLb0EjE6resizeEj.exit50.i, label %.lr.ph.preheader.i45.i

.lr.ph.preheader.i45.i:                           ; preds = %bb.ag
  %i.ha = zext i32 %i.cb to i64
  %i.hb = zext i32 %.0.i16.i42.i.ph to i64        ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.fr, i64 %i.hb
  %i.hd = sub nsw i64 %i.ha, %i.hb
  %i.he = shl nsw i64 %i.hd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hc, i8 0, i64 %i.he, i1 false), !tbaa !62
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit50.i

_ZN6vectorIjLb0EjE6resizeEj.exit50.i:             ; preds = %.lr.ph.preheader.i45.i, %bb.ag, %bb.z
  %i.hf = phi ptr [ %i.fr, %.lr.ph.preheader.i45.i ], [ %i.fn, %bb.z ], [ %i.fr, %bb.ag ]
  %i.hg = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.hh = zext i32 %i.bw to i64                   ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hh
  store i32 %i.bw, ptr %i.hi, align 4, !tbaa !62
  %i.hj = load i32, ptr %i.g, align 4, !tbaa !80
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hh
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !62
  %i.hl = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hh
  store i32 1, ptr %i.hm, align 4, !tbaa !62
  br label %_ZN3smt11farkas_util4findEj.exit

bb.ah:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.hn = zext i32 %i.bw to i64                   ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !62
  %i.hq = load i32, ptr %i.g, align 4, !tbaa !80
  %.not22.i = icmp eq i32 %i.hp, %i.hq
  br i1 %.not22.i, label %.preheader.i, label %bb.ai

.preheader.i:                                     ; preds = %bb.ah
  %i.hr = load ptr, ptr %i.p, align 8, !tbaa !79
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hs = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hn
  store i32 1, ptr %i.ht, align 4, !tbaa !62
  %i.hu = load i32, ptr %i.g, align 4, !tbaa !80
  store i32 %i.hu, ptr %i.ho, align 4, !tbaa !62
  %i.hv = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hn
  store i32 %i.bw, ptr %i.hw, align 4, !tbaa !62
  br label %_ZN3smt11farkas_util4findEj.exit

bb.aj:                                            ; preds = %bb.aj, %.preheader.i
  %.0.i = phi i32 [ %i.hz, %bb.aj ], [ %i.bw, %.preheader.i ] ; 3 uses
  %i.hx = zext i32 %.0.i to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !62 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, %.0.i
  br i1 %i.ia, label %_ZN3smt11farkas_util4findEj.exit, label %bb.aj, !llvm.loop !92

_ZN3smt11farkas_util4findEj.exit:                 ; preds = %bb.aj, %_ZN6vectorIjLb0EjE6resizeEj.exit50.i, %bb.ai
  %.020.i = phi i32 [ %i.bw, %_ZN6vectorIjLb0EjE6resizeEj.exit50.i ], [ %i.bw, %bb.ai ], [ %.0.i, %bb.aj ]
  %i.ib = icmp eq i32 %.020.i, %i.ax
  br i1 %i.ib, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %_ZN3smt11farkas_util4findEj.exit
  %i.ic = add i32 %.024132, 1                     ; 3 uses
  %.not = icmp eq i32 %.024132, %.023.in133
  br i1 %.not, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.ie = zext i32 %i.ic to i64                   ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %6 ; 2 uses
  %i.ih = load i32, ptr %i.if, align 4, !tbaa !62
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !62
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !62
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ij = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !48, !align !49 ; 2 uses
  store ptr %i.ij, ptr %i.q, align 8, !tbaa !8
  %i.ik = load ptr, ptr %i.j, align 8, !tbaa !56  ; 4 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %6 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !57 ; 9 uses
  %.not.i44 = icmp eq ptr %i.im, null             ; 3 uses
  br i1 %.not.i44, label %bb.am, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !54
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !54
  br label %bb.am

bb.am:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.al
  store ptr %i.im, ptr %4, align 8, !tbaa !93
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ie
  %i.ir = load ptr, ptr %i.m, align 8, !tbaa !95, !nonnull !48, !align !49 ; 3 uses
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !57 ; 4 uses
  %.not.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i49, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !54
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !54
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i49

_ZN11ast_manager7inc_refEP3ast.exit.i49:          ; preds = %bb.an, %bb.am
  br i1 %.not.i44, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i49
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !54
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !54
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ir, ptr noundef nonnull %i.im)
          to label %._crit_edge unwind label %bb.ay

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !56
  %.pre143 = load ptr, ptr %i.m, align 8, !tbaa !95
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i49
  store ptr %i.is, ptr %i.il, align 8, !tbaa !57
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i55

bb.ar:                                            ; preds = %._crit_edge, %bb.ao
  %.ph = phi ptr [ %i.ir, %bb.ao ], [ %.pre143, %._crit_edge ]
  %.ph191 = phi ptr [ %i.ik, %bb.ao ], [ %.pre, %._crit_edge ]
  store ptr %i.is, ptr %i.il, align 8, !tbaa !57
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !54
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !54
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i55

_ZN11ast_manager7inc_refEP3ast.exit.i55:          ; preds = %bb.aq, %bb.ar
  %.ph191.pn = phi ptr [ %.ph191, %bb.ar ], [ %i.ik, %bb.aq ]
  %i.jd = phi ptr [ %.ph, %bb.ar ], [ %i.ir, %bb.aq ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.ph191.pn, i64 %i.ie ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !57 ; 3 uses
  %.not.i3.i56 = icmp eq ptr %i.jf, null
  br i1 %.not.i3.i56, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i55
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !54
  %i.ji = add i32 %i.jh, -1                       ; 2 uses
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !54
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jd, ptr noundef nonnull %i.jf)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.as, %_ZN11ast_manager7inc_refEP3ast.exit.i55, %bb.at
  store ptr %i.im, ptr %i.je, align 8, !tbaa !57
  %i.jk = load ptr, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.ie
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %6
  tail call void @_ZSt4swapI8rationalENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(ptr noundef nonnull align 8 dereferenceable(32) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %i.jm) #16
  br i1 %.not.i44, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jn = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !54
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !54
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.aw, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ij, ptr noundef nonnull %i.im)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  tail call void @__clang_call_terminate(ptr %i.js) #17
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ap
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.at
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.pn30 = phi { ptr, i32 } [ %i.ju, %bb.az ], [ %i.jt, %bb.ay ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

bb.bb:                                            ; preds = %_ZN3smt11farkas_util4findEj.exit, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ak
  %.125 = phi i32 [ %i.ic, %_ZN7obj_refI3app11ast_managerED2Ev.exit ], [ %i.ic, %bb.ak ], [ %.024132, %_ZN3smt11farkas_util4findEj.exit ] ; 2 uses
  %i.jv = load ptr, ptr %i.j, align 8, !tbaa !56  ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit37, !llvm.loop !96

.critedge122:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit35, %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZN6vectorIjLb0EjE5resetEv.exit33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3smt11farkas_util12process_termEP4expr(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.37", align 1 ; 4 uses
  %4 = alloca %class.ptr_vector.25, align 8       ; 12 uses
  %5 = alloca %class.ast_mark, align 8            ; 12 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !97     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %5, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph unwind label %.loopexit.split-lp

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !98  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !62 ; 2 uses
  %i.d = zext i32 %.pre2.i to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.d
  store ptr %1, ptr %i.e, align 8, !tbaa !34
  %i.f = add i32 %.pre2.i, 1
  store i32 %i.f, ptr %.phi.trans.insert.i, align 4, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %.backedge
  %i.i = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.dd, %.backedge ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.m = add i32 %i.k, -1                         ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 7 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !62
  %i.q = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.p)
          to label %bb.c unwind label %.loopexit32

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %.backedge, label %bb.d

.loopexit32:                                      ; preds = %bb.b, %bb.d, %_Z11is_uninterpPK4expr.exit.thread, %.noexc14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.p, i1 noundef zeroext true)
          to label %bb.e unwind label %.loopexit32

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 65535
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN3smt11farkas_util5mergeEjj.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_Z11is_uninterpPK4expr.exit.thread, label %_Z11is_uninterpPK4expr.exit

_Z11is_uninterpPK4expr.exit:                      ; preds = %bb.f
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !42
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %_Z11is_uninterpPK4expr.exit.thread, label %_ZN3smt11farkas_util5mergeEjj.exit

_Z11is_uninterpPK4expr.exit.thread:               ; preds = %bb.f, %_Z11is_uninterpPK4expr.exit
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !97
  %i.ad = invoke noundef i32 @_ZN3smt11farkas_util4findEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.a)
          to label %.noexc14 unwind label %.loopexit32 ; 4 uses

.noexc14:                                         ; preds = %_Z11is_uninterpPK4expr.exit.thread
  %i.ae = invoke noundef i32 @_ZN3smt11farkas_util4findEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.ac)
          to label %.noexc15 unwind label %.loopexit32 ; 4 uses

.noexc15:                                         ; preds = %.noexc14
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZN3smt11farkas_util5mergeEjj.exit, label %bb.g

bb.g:                                             ; preds = %.noexc15
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !79  ; 4 uses
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.ak = zext i32 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62
  %i.an = icmp ugt i32 %i.aj, %i.am               ; 2 uses
  %spec.select.i = select i1 %i.an, i32 %i.ae, i32 %i.ad
  %spec.select10.i = select i1 %i.an, i32 %i.ad, i32 %i.ae ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ap = zext i32 %spec.select.i to i64          ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %spec.select10.i, ptr %i.aq, align 4, !tbaa !62
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = zext i32 %spec.select10.i to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !62
  %i.aw = add i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !62
  br label %_ZN3smt11farkas_util5mergeEjj.exit

_ZN3smt11farkas_util5mergeEjj.exit:               ; preds = %bb.e, %bb.g, %.noexc15, %_Z11is_uninterpPK4expr.exit
  %i.ax = load i32, ptr %i.r, align 4
  %i.ay = and i32 %i.ax, 65535
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.preheader, label %.backedge

.preheader:                                       ; preds = %_ZN3smt11farkas_util5mergeEjj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !78
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre = load ptr, ptr %4, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %i.bd = phi ptr [ %.pre, %.lr.ph ], [ %i.ct, %bb.t ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = icmp eq ptr %i.bd, null
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_1
