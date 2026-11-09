Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_antiunify?download=true
inline.NumInlined: 3258
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE11process_varILb1EEEvP3var:bb.a
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !47
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !225
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !131
  %i.r = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !136  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !134
  %i.y = load i64, ptr %i.s, align 8, !tbaa !135
  store i64 %i.y, ptr %i.q, align 8, !tbaa !135
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !136
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !136
  store ptr %i.s, ptr %1, align 8, !tbaa !134
  store i64 0, ptr %i.aa, align 8, !tbaa !136
  store i8 0, ptr %i.s, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !134   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !135
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !225
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable320 [
    i32 0, label %bb.b
    i32 1, label %bb.ba
    i32 2, label %bb.ch
    i32 3, label %bb.ci
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252, !llvm.loop !363

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !152 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !152 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !47
  store ptr %1, ptr %3, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !47
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !92
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !92
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !225
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !152
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !47
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !92
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !142, !nonnull !44, !align !45 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39 ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i, label %bb.t

._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i: ; preds = %bb.s
  %.pre.i = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !40
  %.pre18.i = add i32 %.pre.i, -1
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %bb.t, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre18.i, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i ], [ %i.cf, %bb.t ]
  %.0.i.i.i = phi i64 [ 4294967295, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i ], [ %i.cg, %bb.t ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0.i.i.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 -4
  store i32 %.pre-phi.i, ptr %i.cj, align 4, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 65535
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit

bb.u:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !59 ; 2 uses
  %.not15.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not15.not.i, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %wide.trip.count.i = zext i32 %i.cp to i64
  br label %bb.w

bb.v:                                             ; preds = %.noexc88
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %bb.w, !llvm.loop !11

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41
  %i.cu = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef %i.ct)
end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.ni, label %bb.ce, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit248

bb.ce:                                            ; preds = %bb.cd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i244
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
  %.pre.i.i245 = load ptr, ptr %i.le, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i246 = getelementptr inbounds i8, ptr %.pre.i.i245, i64 -4
  %.pre2.i.i247 = load i32, ptr %.phi.trans.insert.i.i246, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit248

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit248: ; preds = %bb.cd, %bb.ce
  %i.nj = phi i32 [ %.pre2.i.i247, %bb.ce ], [ %i.nf, %bb.cd ] ; 2 uses
  %i.nk = phi ptr [ %.pre.i.i245, %bb.ce ], [ %i.nc, %bb.cd ] ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 -4
  %i.nm = zext i32 %i.nj to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nm
  store ptr %i.my, ptr %i.nn, align 8, !tbaa !41
  %i.no = add i32 %i.nj, 1
  store i32 %i.no, ptr %i.nl, align 4, !tbaa !40
  %i.np = load i32, ptr %i.a, align 8
  %i.nq = trunc i32 %i.np to i1
  br i1 %i.nq, label %bb.cf, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i250

bb.cf:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit248
  %i.nr = load ptr, ptr %i.jq, align 8, !tbaa !92
  %i.ns = load ptr, ptr %i.ln, align 8, !tbaa !53
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.ns, ptr noundef %i.nr)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i250

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i250: ; preds = %bb.cf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit248
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !128 ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -4 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !40 ; 2 uses
  %i.nx = add i32 %i.nw, -1                       ; 2 uses
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !40
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i251

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i251: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i250
  %i.nz = add i32 %i.nw, -2
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.nu, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 8
  %i.oe = or i32 %i.od, 2
  store i32 %i.oe, ptr %i.oc, align 8
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252

bb.cg:                                            ; preds = %bb.bo, %bb.bk, %bb.bg, %bb.be, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit205
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cj

bb.ch:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 515, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252

bb.ci:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252

default.unreachable320:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit252: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i251, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i250, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ci, %bb.ch
  ret void

bb.cj:                                            ; preds = %bb.cg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp330, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.of, %bb.cg ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.80, align 8          ; 6 uses
  %8 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !364

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !365

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a

bb.dr:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #18
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4exprS4_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.se = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.sg = getelementptr inbounds i8, ptr %i.se, i64 -4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !40 ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = shl nuw nsw i64 %i.si, 3
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sj
  %.not.i257 = icmp eq i32 %i.sh, 0
  br i1 %.not.i257, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265, label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.06.i.i259 = phi ptr [ %i.sr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ] ; 2 uses
  %i.sl = load ptr, ptr %.06.i.i259, align 8, !tbaa !41 ; 3 uses
  %i.sm = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i260 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i258
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !47
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !47
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.du, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sm, ptr noundef nonnull %i.sl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 unwind label %bb.dw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261: ; preds = %bb.du, %bb.dt, %.lr.ph.i.i258
  %i.sr = getelementptr inbounds nuw i8, ptr %.06.i.i259, i64 8 ; 2 uses
  %i.ss = icmp ult ptr %i.sr, %i.sk
  br i1 %i.ss, label %.lr.ph.i.i258, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.pre.i263 = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.pre.i263, null
  br i1 %.not.i.i.i264, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256
  %i.st = phi ptr [ %.pre.i263, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ]
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.su)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #18
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit288

.loopexit288:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266
  ret void

bb.dx:                                            ; preds = %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dx ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dy, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.dy ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

declare void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager15mk_transitivityEP3appS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager10is_patternEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #2

declare void @_Z14verbose_unlockv() local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager17update_quantifierEP10quantifierjPKP4exprjS5_S3_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager13mk_bind_proofEP10quantifierP3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager14mk_quant_introEP10quantifierS1_P3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !266    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !368, !nonnull !44, !align !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !47
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18
  unreachable
}

declare void @_ZN13rewriter_core9end_scopeEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.w
    i32 2, label %bb.ah
    i32 3, label %bb.bg
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit169, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit169, !llvm.loop !369

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !152 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127, !nonnull !44, !align !45
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !142, !nonnull !44, !align !45 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i, label %bb.g

._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.pre.i = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !40
  %.pre18.i = add i32 %.pre.i, -1
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  %i.at = zext i32 %i.as to i64
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %bb.g, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre18.i, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i ], [ %i.as, %bb.g ]
  %.0.i.i.i = phi i64 [ 4294967295, %._ZN6vectorIP4exprLb0EjE4backEv.exit_crit_edge.i ], [ %i.at, %bb.g ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i32 %.pre-phi.i, ptr %i.aw, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 65535
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit

bb.h:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !59 ; 2 uses
  %.not15.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not15.not.i, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %wide.trip.count.i = zext i32 %i.bc to i64
  br label %bb.j

bb.i:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %bb.j, !llvm.loop !11

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef %i.bg)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  br i1 %i.bh, label %bb.k, label %bb.i

bb.k:                                             ; preds = %.noexc
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull %i.av, i1 noundef zeroext true)
          to label %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.j, %.invoke, %bb.k, %bb.v, %bb.t, %bb.r, %bb.l
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bh

_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit: ; preds = %bb.i, %bb.k, %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, %bb.h
  %i.bi = load i32, ptr %i.a, align 8
  %i.bj = and i32 %i.bi, 2
  %.not83 = icmp eq i32 %i.bj, 0
  br i1 %.not83, label %.invoke, label %bb.l

bb.l:                                             ; preds = %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bl = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bk, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, %bb.l
  %i.bm = phi ptr [ %i.bl, %bb.l ], [ %1, %_ZN6spacer16var_abs_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit ]
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef %i.bm)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %.invoke
  %i.bo = load i32, ptr %i.ac, align 4, !tbaa !152 ; 3 uses
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !39  ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i115

_ZN6vectorIP4exprLb0EjE3endEv.exit.i115:          ; preds = %bb.m
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = icmp ugt i32 %i.bs, %i.bo
  br i1 %i.bv, label %.lr.ph.i.i117.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116

.lr.ph.i.i117.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i115
  %i.bw = zext i32 %i.bo to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bw
  br label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.lr.ph.i.i117.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120
  %.06.i.i118 = phi ptr [ %i.ce, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120 ], [ %i.bx, %.lr.ph.i.i117.preheader ] ; 2 uses
  %i.by = load ptr, ptr %.06.i.i118, align 8, !tbaa !41 ; 3 uses
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i119 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i117
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !47
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !47
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bz, ptr noundef nonnull %i.by)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120: ; preds = %bb.o, %bb.n, %.lr.ph.i.i117
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i118, i64 8 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.bu
  br i1 %i.cf, label %.lr.ph.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i120
  %.pre.i122 = load ptr, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.not.i.i123 = icmp eq ptr %.pre.i122, null
  br i1 %.not.i.i123, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i115
  %i.cg = phi ptr [ %.pre.i122, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121 ], [ %i.bp, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i115 ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store i32 %i.bo, ptr %i.ch, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121, %bb.m
  %i.ci = phi ptr [ %i.cg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i121 ], [ null, %bb.m ] ; 4 uses
  %i.cj = load ptr, ptr %i.am, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i126 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i126, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i127, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !47
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i127

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i127: ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit125
  %i.cn = icmp eq ptr %i.ci, null
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i127
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !40 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !40
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i127
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
end_hunk_2
begin_hunk_3_@_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -4
  %i.kn = zext i32 %i.kk to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kn
  store ptr %i.ka, ptr %i.ko, align 8, !tbaa !41
  %i.kp = add i32 %i.kk, 1
  store i32 %i.kp, ptr %i.km, align 4, !tbaa !40
  %i.kq = load i32, ptr %i.a, align 8
  %i.kr = trunc i32 %i.kq to i1
  br i1 %i.kr, label %bb.bc, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i205

bb.bc:                                            ; preds = %bb.bb
  %i.ks = load ptr, ptr %i.ib, align 8, !tbaa !53
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.ks)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i205 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i205: ; preds = %bb.bc, %bb.bb
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !128 ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -4 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !40 ; 2 uses
  %i.kx = add i32 %i.kw, -1                       ; 2 uses
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !40
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit207, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i206

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i206: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i205
  %i.kz = add i32 %i.kw, -2
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8
  %i.le = or i32 %i.ld, 2
  store i32 %i.le, ptr %i.lc, align 8
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit207

_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit207: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i206, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i205
  %i.lf = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %.not.i.i208 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i208, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit207
  %i.lg = load ptr, ptr %i.gz, align 8, !tbaa !54, !nonnull !44, !align !45
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !47
  %i.lj = add i32 %i.li, -1                       ; 2 uses
  store i32 %i.lj, ptr %i.lh, align 4, !tbaa !47
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.be, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lg, ptr noundef nonnull %i.lf)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit207, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit169

bb.bg:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit169

default.unreachable263:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18set_new_child_flagEP4expr.exit169: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i168, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i167, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bg, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bh:                                            ; preds = %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp271, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !370

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer16var_abs_rewriterEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !371

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_3
begin_hunk_4_@_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE11process_varILb1EEEvP3var:bb.a

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i.i, %bb.a
  %i.r = phi ptr [ %i.n, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i ], [ null, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i4.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !47
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.u, ptr noundef nonnull %i.s)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i
  %i.z = phi ptr [ %.pre, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i ] ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !92
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.thread

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.thread: ; preds = %bb.i
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.am
  store ptr %i.z, ptr %i.an, align 8, !tbaa !41
  %i.ao = add i32 %i.ah, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, %bb.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !40 ; 2 uses
  %.pre63 = load ptr, ptr %i.d, align 8, !tbaa !92 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %i.aq = zext i32 %.pre2.i.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.aq
  store ptr %i.z, ptr %i.ar, align 8, !tbaa !41
  %i.as = add i32 %.pre2.i.i, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !40
  %.not.i.i.i.i26 = icmp eq ptr %.pre63, null
  br i1 %.not.i.i.i.i26, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.pre63, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !47
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.thread, %bb.j, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.aw = phi ptr [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.thread ], [ %.pre63, %bb.j ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !225 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.l, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  %.pre.i.i27 = load ptr, ptr %i.ax, align 8, !tbaa !225 ; 2 uses
  %.phi.trans.insert.i.i28 = getelementptr inbounds i8, ptr %.pre.i.i27, i64 -4
  %.pre2.i.i29 = load i32, ptr %.phi.trans.insert.i.i28, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.k, %bb.l
  %i.bf = phi i32 [ %.pre2.i.i29, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i27, %bb.l ], [ %i.ay, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi
  store ptr %i.aw, ptr %i.bj, align 8, !tbaa !209
  %i.bk = add i32 %i.bf, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !40
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !92  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.bl, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !47
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bn, ptr noundef nonnull %i.bl)
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.m, %bb.n
  store ptr null, ptr %i.d, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !128 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i: ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !40 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i
  %i.by = add i32 %i.bw, -1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = or i32 %i.cc, 2
  store i32 %i.cd, ptr %i.cb, align 8
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit: ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !53  ; 3 uses
  %.not.i4.i30 = icmp eq ptr %i.ce, null
  br i1 %.not.i4.i30, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54, !nonnull !44, !align !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !47
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cg, ptr noundef nonnull %i.ce)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit
  store ptr null, ptr %i.c, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable306 [
    i32 0, label %bb.b
    i32 1, label %bb.av
    i32 2, label %bb.cc
    i32 3, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245, !llvm.loop !374

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !152 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !152 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !47
  store ptr %1, ptr %3, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !47
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !92
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !92
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !225
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !152
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !47
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !92
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.aa, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.aq, %bb.an, %bb.ak, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ce

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = and i32 %i.by, 2
  %.not67 = icmp eq i32 %i.bz, 0
  br i1 %.not67, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef %i.cb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.cf = invoke noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, ptr noundef nonnull %1, ptr noundef %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI3app11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cf)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull %1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cj = load i32, ptr %i.z, align 4, !tbaa !152 ; 3 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !39  ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit138, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128

_ZN6vectorIP4exprLb0EjE3endEv.exit.i128:          ; preds = %bb.y
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = icmp ugt i32 %i.cn, %i.cj
  br i1 %i.cq, label %.lr.ph.i.i130.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i129

.lr.ph.i.i130.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128
  %i.cr = zext i32 %i.cj to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  br label %.lr.ph.i.i130
end_hunk_4
begin_hunk_5_@_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.ml, label %bb.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.bz:                                            ; preds = %bb.by, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kh)
  %.pre.i.i238 = load ptr, ptr %i.kh, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.by, %bb.bz
  %i.mm = phi i32 [ %.pre2.i.i240, %bb.bz ], [ %i.mi, %bb.by ] ; 2 uses
  %i.mn = phi ptr [ %.pre.i.i238, %bb.bz ], [ %i.mf, %bb.by ] ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -4
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mp
  store ptr %i.mb, ptr %i.mq, align 8, !tbaa !41
  %i.mr = add i32 %i.mm, 1
  store i32 %i.mr, ptr %i.mo, align 4, !tbaa !40
  %i.ms = load i32, ptr %i.a, align 8
  %i.mt = trunc i32 %i.ms to i1
  br i1 %i.mt, label %bb.ca, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mu = load ptr, ptr %i.it, align 8, !tbaa !92
  %i.mv = load ptr, ptr %i.kq, align 8, !tbaa !53
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.mv, ptr noundef %i.mu)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.ca, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !128 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -4 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !40 ; 2 uses
  %i.na = add i32 %i.mz, -1                       ; 2 uses
  store i32 %i.na, ptr %i.my, align 4, !tbaa !40
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.nc = add i32 %i.mz, -2
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8
  %i.nh = or i32 %i.ng, 2
  store i32 %i.nh, ptr %i.nf, align 8
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

bb.cb:                                            ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ce

bb.cc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 515, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

bb.cd:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

default.unreachable306:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.cd, %bb.cc
  ret void

bb.ce:                                            ; preds = %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ni, %bb.cb ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.80, align 8          ; 6 uses
  %8 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !375

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !376

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_5
begin_hunk_6_@_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a
  %i.rc = icmp eq i32 %i.rb, 0
  %or.cond = select i1 %.not.i247, i1 true, i1 %i.rc
  br i1 %or.cond, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %bb.do
  %i.rd = add i32 %i.ra, -2
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = or i32 %i.rh, 2
  store i32 %i.ri, ptr %i.rg, align 8
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %bb.do
  %i.rj = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 5 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 -4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !40 ; 2 uses
  %i.rn = zext i32 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rn, 3
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ro
  %.not.i248 = icmp eq i32 %i.rm, 0
  br i1 %.not.i248, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255, label %.lr.ph.i.i249

.lr.ph.i.i249:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252
  %.06.i.i250 = phi ptr [ %i.rw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252 ], [ %i.rj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.rq = load ptr, ptr %.06.i.i250, align 8, !tbaa !41 ; 3 uses
  %i.rr = load ptr, ptr %4, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i251 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i251, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i249
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !47
  %i.ru = add i32 %i.rt, -1                       ; 2 uses
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !47
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.dq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rr, ptr noundef nonnull %i.rq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252 unwind label %bb.ds

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252: ; preds = %bb.dq, %bb.dp, %.lr.ph.i.i249
  %i.rw = getelementptr inbounds nuw i8, ptr %.06.i.i250, i64 8 ; 2 uses
  %i.rx = icmp ult ptr %i.rw, %i.rp
  br i1 %i.rx, label %.lr.ph.i.i249, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252
  %.pre.i254 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i254, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ry = phi ptr [ %.pre.i254, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253 ], [ %i.rj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.rz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.dr

bb.dr:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #18
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.se = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.sg = getelementptr inbounds i8, ptr %i.se, i64 -4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !40 ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = shl nuw nsw i64 %i.si, 3
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sj
  %.not.i257 = icmp eq i32 %i.sh, 0
  br i1 %.not.i257, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265, label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.06.i.i259 = phi ptr [ %i.sr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ] ; 2 uses
  %i.sl = load ptr, ptr %.06.i.i259, align 8, !tbaa !41 ; 3 uses
  %i.sm = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i260 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i258
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !47
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !47
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.du, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sm, ptr noundef nonnull %i.sl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 unwind label %bb.dw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261: ; preds = %bb.du, %bb.dt, %.lr.ph.i.i258
  %i.sr = getelementptr inbounds nuw i8, ptr %.06.i.i259, i64 8 ; 2 uses
  %i.ss = icmp ult ptr %i.sr, %i.sk
  br i1 %i.ss, label %.lr.ph.i.i258, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.pre.i263 = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.pre.i263, null
  br i1 %.not.i.i.i264, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256
  %i.st = phi ptr [ %.pre.i263, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ]
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.su)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #18
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit288

.loopexit288:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266
  ret void

bb.dx:                                            ; preds = %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dx ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dy, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.dy ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable250 [
    i32 0, label %bb.b
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.bc
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit162, !llvm.loop !379

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %.invoke, %bb.r, %bb.p, %bb.n, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bd

bb.g:                                             ; preds = %bb.f, %_ZNK9func_decl14is_associativeEv.exit.thread
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ai = and i32 %i.h, 2
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aj
  %i.al = sub i32 %.0.i.i, %i.ad
  %i.am = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.v, i32 noundef %i.al, ptr noundef %i.ak)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %1, %bb.g ]
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.invoke
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !152 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !39  ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111

_ZN6vectorIP4exprLb0EjE3endEv.exit.i111:          ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i113.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

.lr.ph.i.i113.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.06.i.i114 = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 ], [ %i.ay, %.lr.ph.i.i113.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i114, align 8, !tbaa !41 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i115 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !47
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116: ; preds = %bb.k, %bb.j, %.lr.ph.i.i113
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i114, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i113, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.pre.i118 = load ptr, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.bh = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %bb.i
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ null, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.n
  %.pre.i.i124 = load ptr, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i125 = getelementptr inbounds i8, ptr %.pre.i.i124, i64 -4
  %.pre2.i.i126 = load i32, ptr %.phi.trans.insert.i.i125, align 4, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %.noexc127, %bb.m
  %i.bu = phi i32 [ %.pre2.i.i126, %.noexc127 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i124, %.noexc127 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !41
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !40
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !53
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130: ; preds = %bb.o, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !128 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !40 ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !40
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %.not.i131 = icmp eq ptr %1, %i.ci
  %i.cj = icmp eq i32 %i.ch, 0
  %or.cond = select i1 %.not.i131, i1 true, i1 %i.cj
  br i1 %or.cond, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130
  %i.ck = add i32 %i.cg, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !53
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130
  %i.cq = phi ptr [ %.pr, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ], [ %i.ci, %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130 ] ; 3 uses
  %.not.i4.i132 = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i132, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54, !nonnull !44, !align !45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !47
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !47
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.r:                                             ; preds = %bb.q
end_hunk_6
begin_hunk_7_@_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %i.jo = zext i32 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jo
  store ptr %i.jb, ptr %i.jp, align 8, !tbaa !41
  %i.jq = add i32 %i.jl, 1
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !40
  %i.jr = load i32, ptr %i.a, align 8
  %i.js = trunc i32 %i.jr to i1
  br i1 %i.js, label %bb.ay, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.ay:                                            ; preds = %bb.ax
  %i.jt = load ptr, ptr %i.hc, align 8, !tbaa !53
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.jt)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.ay, %bb.ax
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !128 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -4 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !40 ; 2 uses
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !40
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.ka = add i32 %i.jx, -2
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = or i32 %i.ke, 2
  store i32 %i.kf, ptr %i.kd, align 8
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.kg = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit200
  %i.kh = load ptr, ptr %i.ga, align 8, !tbaa !54, !nonnull !44, !align !45
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !47
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !47
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.ba, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, ptr noundef nonnull %i.kg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit200, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit162

bb.bc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit162

default.unreachable250:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bc, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bd:                                            ; preds = %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !380

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer17subs_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !381

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_7
begin_hunk_8_@_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE11process_varILb1EEEvP3var:bb.a
_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39
  %i.am = sub i32 %i.u, %i.al                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !222
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !41
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !40
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127, !nonnull !44, !align !45
  store ptr null, ptr %2, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !53
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !53
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !40
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !41
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !128 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !47
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable315 [
    i32 0, label %bb.b
    i32 1, label %bb.az
    i32 2, label %bb.cg
    i32 3, label %bb.ch
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248, !llvm.loop !385

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !152 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !152 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !47
  store ptr %1, ptr %3, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !47
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !92
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !92
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !225
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !152
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93, !nonnull !44, !align !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !47
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !92
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !241, !nonnull !44, !align !45 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 168 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !68
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41 ; 4 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 65535
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.t, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %.not.i88 = icmp eq i32 %i.cn, 0
  br i1 %.not.i88, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %wide.trip.count.i = zext i32 %i.cn to i64
  br label %bb.v

bb.u:                                             ; preds = %.noexc89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %bb.v, !llvm.loop !12

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !41
  %i.cs = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef %i.cr)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.v
  br i1 %i.cs, label %bb.w, label %bb.u

bb.w:                                             ; preds = %.noexc89
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull %i.ch, i1 noundef zeroext true)
          to label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.al, %bb.v, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.w, %bb.au, %bb.ar, %bb.ao, %bb.aj, %bb.ah, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %lpad.loopexit.split-lp325 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ci
end_hunk_8
begin_hunk_9_@_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.ng, label %bb.cd, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit244

bb.cd:                                            ; preds = %bb.cc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i240
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lc)
  %.pre.i.i241 = load ptr, ptr %i.lc, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i242 = getelementptr inbounds i8, ptr %.pre.i.i241, i64 -4
  %.pre2.i.i243 = load i32, ptr %.phi.trans.insert.i.i242, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit244

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit244: ; preds = %bb.cc, %bb.cd
  %i.nh = phi i32 [ %.pre2.i.i243, %bb.cd ], [ %i.nd, %bb.cc ] ; 2 uses
  %i.ni = phi ptr [ %.pre.i.i241, %bb.cd ], [ %i.na, %bb.cc ] ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.nk = zext i32 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nk
  store ptr %i.mw, ptr %i.nl, align 8, !tbaa !41
  %i.nm = add i32 %i.nh, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !40
  %i.nn = load i32, ptr %i.a, align 8
  %i.no = trunc i32 %i.nn to i1
  br i1 %i.no, label %bb.ce, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i246

bb.ce:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit244
  %i.np = load ptr, ptr %i.jo, align 8, !tbaa !92
  %i.nq = load ptr, ptr %i.ll, align 8, !tbaa !53
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.nq, ptr noundef %i.np)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i246

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i246: ; preds = %bb.ce, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit244
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !128 ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -4 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !40 ; 2 uses
  %i.nv = add i32 %i.nu, -1                       ; 2 uses
  store i32 %i.nv, ptr %i.nt, align 4, !tbaa !40
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i247

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i247: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i246
  %i.nx = add i32 %i.nu, -2
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 8
  %i.oc = or i32 %i.ob, 2
  store i32 %i.oc, ptr %i.oa, align 8
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248

bb.cf:                                            ; preds = %bb.bn, %bb.bj, %bb.bf, %bb.bd, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit203
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ci

bb.cg:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 515, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248

bb.ch:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248

default.unreachable315:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit248: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i247, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i246, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ch, %bb.cg
  ret void

bb.ci:                                            ; preds = %bb.cf, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp325, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.od, %bb.cf ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.80, align 8          ; 6 uses
  %8 = alloca %class.obj_ref.54, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !386

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !387

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_9
begin_hunk_10_@_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a
  %i.rc = icmp eq i32 %i.rb, 0
  %or.cond = select i1 %.not.i247, i1 true, i1 %i.rc
  br i1 %or.cond, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4exprS4_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %bb.do
  %i.rd = add i32 %i.ra, -2
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = or i32 %i.rh, 2
  store i32 %i.ri, ptr %i.rg, align 8
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4exprS4_.exit

_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4exprS4_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %bb.do
  %i.rj = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 5 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4exprS4_.exit
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 -4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !40 ; 2 uses
  %i.rn = zext i32 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rn, 3
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ro
  %.not.i248 = icmp eq i32 %i.rm, 0
  br i1 %.not.i248, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255, label %.lr.ph.i.i249

.lr.ph.i.i249:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252
  %.06.i.i250 = phi ptr [ %i.rw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252 ], [ %i.rj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.rq = load ptr, ptr %.06.i.i250, align 8, !tbaa !41 ; 3 uses
  %i.rr = load ptr, ptr %4, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i251 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i251, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i249
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !47
  %i.ru = add i32 %i.rt, -1                       ; 2 uses
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !47
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.dq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rr, ptr noundef nonnull %i.rq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252 unwind label %bb.ds

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252: ; preds = %bb.dq, %bb.dp, %.lr.ph.i.i249
  %i.rw = getelementptr inbounds nuw i8, ptr %.06.i.i250, i64 8 ; 2 uses
  %i.rx = icmp ult ptr %i.rw, %i.rp
  br i1 %i.rx, label %.lr.ph.i.i249, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i252
  %.pre.i254 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i254, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ry = phi ptr [ %.pre.i254, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253 ], [ %i.rj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.rz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.dr

bb.dr:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #18
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4exprS4_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i253, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.se = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.sg = getelementptr inbounds i8, ptr %i.se, i64 -4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !40 ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = shl nuw nsw i64 %i.si, 3
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sj
  %.not.i257 = icmp eq i32 %i.sh, 0
  br i1 %.not.i257, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265, label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.06.i.i259 = phi ptr [ %i.sr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ] ; 2 uses
  %i.sl = load ptr, ptr %.06.i.i259, align 8, !tbaa !41 ; 3 uses
  %i.sm = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i260 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i258
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !47
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !47
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.du, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sm, ptr noundef nonnull %i.sl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261 unwind label %bb.dw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261: ; preds = %bb.du, %bb.dt, %.lr.ph.i.i258
  %i.sr = getelementptr inbounds nuw i8, ptr %.06.i.i259, i64 8 ; 2 uses
  %i.ss = icmp ult ptr %i.sr, %i.sk
  br i1 %i.ss, label %.lr.ph.i.i258, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i261
  %.pre.i263 = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.pre.i263, null
  br i1 %.not.i.i.i264, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256
  %i.st = phi ptr [ %.pre.i263, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262 ], [ %i.se, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i256 ]
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.su)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #18
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i262, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit288

.loopexit288:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit266
  ret void

bb.dx:                                            ; preds = %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dx ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dy, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.dy ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.54, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable258 [
    i32 0, label %bb.b
    i32 1, label %bb.v
    i32 2, label %bb.ag
    i32 3, label %bb.bf
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit165, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit165, !llvm.loop !390

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !152 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127, !nonnull !44, !align !45
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !241, !nonnull !44, !align !45 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 168 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !68
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41 ; 4 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 65535
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %.not.i92 = icmp eq i32 %i.ba, 0
  br i1 %.not.i92, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %wide.trip.count.i = zext i32 %i.ba to i64
  br label %bb.i

bb.h:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, label %bb.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bf = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  br i1 %i.bf, label %bb.j, label %bb.h

bb.j:                                             ; preds = %.noexc
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %i.au, i1 noundef zeroext true)
          to label %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.i, %.invoke, %bb.j, %bb.u, %bb.s, %bb.q, %bb.k
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bg

_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit: ; preds = %bb.h, %bb.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.g
  %i.bg = load i32, ptr %i.a, align 8
  %i.bh = and i32 %i.bg, 2
  %.not83 = icmp eq i32 %i.bh, 0
  br i1 %.not83, label %.invoke, label %bb.k

bb.k:                                             ; preds = %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.bj = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bi, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit, %bb.k
  %i.bk = phi ptr [ %i.bj, %bb.k ], [ %1, %_ZN6spacer19mk_num_pat_rewriter10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit ]
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef %i.bk)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.invoke
  %i.bm = load i32, ptr %i.ac, align 4, !tbaa !152 ; 3 uses
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !39  ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i114

_ZN6vectorIP4exprLb0EjE3endEv.exit.i114:          ; preds = %bb.l
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.br
  %i.bt = icmp ugt i32 %i.bq, %i.bm
  br i1 %i.bt, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i114
  %i.bu = zext i32 %i.bm to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bu
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119
  %.06.i.i117 = phi ptr [ %i.cc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119 ], [ %i.bv, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %.06.i.i117, align 8, !tbaa !41 ; 3 uses
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i118 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i118, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i116
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !47
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bx, ptr noundef nonnull %i.bw)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119: ; preds = %bb.n, %bb.m, %.lr.ph.i.i116
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i117, i64 8 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bs
  br i1 %i.cd, label %.lr.ph.i.i116, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i119
  %.pre.i121 = load ptr, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.not.i.i122 = icmp eq ptr %.pre.i121, null
  br i1 %.not.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i114
  %i.ce = phi ptr [ %.pre.i121, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120 ], [ %i.bn, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i114 ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %i.bm, ptr %i.cf, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120, %bb.l
  %i.cg = phi ptr [ %i.ce, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i120 ], [ null, %bb.l ] ; 4 uses
  %i.ch = load ptr, ptr %i.am, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i125, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i126, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !47
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i126

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i126: ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit124
  %i.cl = icmp eq ptr %i.cg, null
  br i1 %i.cl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i126
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !40
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i126
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %bb.q
  %.pre.i.i127 = load ptr, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i128 = getelementptr inbounds i8, ptr %.pre.i.i127, i64 -4
  %.pre2.i.i129 = load i32, ptr %.phi.trans.insert.i.i128, align 4, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %.noexc130, %bb.p
  %i.cr = phi i32 [ %.pre2.i.i129, %.noexc130 ], [ %i.cn, %bb.p ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i.i127, %.noexc130 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  store ptr %i.ch, ptr %i.cv, align 8, !tbaa !41
end_hunk_10
begin_hunk_11_@_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -4
  %i.kl = zext i32 %i.ki to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kl
  store ptr %i.jy, ptr %i.km, align 8, !tbaa !41
  %i.kn = add i32 %i.ki, 1
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !40
  %i.ko = load i32, ptr %i.a, align 8
  %i.kp = trunc i32 %i.ko to i1
  br i1 %i.kp, label %bb.bb, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201

bb.bb:                                            ; preds = %bb.ba
  %i.kq = load ptr, ptr %i.hz, align 8, !tbaa !53
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.kq)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201 unwind label %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201: ; preds = %bb.bb, %bb.ba
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !128 ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -4 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !40 ; 2 uses
  %i.kv = add i32 %i.ku, -1                       ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !40
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit203, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.kx = add i32 %i.ku, -2
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8
  %i.lc = or i32 %i.lb, 2
  store i32 %i.lc, ptr %i.la, align 8
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit203

_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit203: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.ld = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i204, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit203
  %i.le = load ptr, ptr %i.gx, align 8, !tbaa !54, !nonnull !44, !align !45
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !47
  %i.lh = add i32 %i.lg, -1                       ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !47
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.le, ptr noundef nonnull %i.ld)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit203, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit165

bb.bf:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 520, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit165

default.unreachable258:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18set_new_child_flagEP4expr.exit165: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i164, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i163, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bf, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bg:                                            ; preds = %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp266, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !259  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !232
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !232
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !40
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !89  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !40
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !40
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !40
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !391

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !261
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !259
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !41
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN6spacer19mk_num_pat_rewriterEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !392

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !261 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !127, !nonnull !44, !align !45
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !259
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !39
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !41
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !127
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !259
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !41
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !39 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !43, !nonnull !44, !align !45
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_11
