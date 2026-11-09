Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/th_rewriter?download=true
inline.NumInlined: 2507
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEEclEP4exprR7obj_refIS3_11ast_managerERS5_I3appS6_E:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTI18rewriter_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ml unwind label %bb.as, !inline_history !415

.thread906:                                       ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %23, align 8, !tbaa !301  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hu
  br i1 %i.ih, label %.thread912, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.as
  %i.ii = load i64, ptr %i.hu, align 8, !tbaa !303
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #22, !inline_history !415
  br label %.thread912

.thread912:                                       ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %common.resume

bb.at:                                            ; preds = %bb.ap
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread906
  %.pn.pn.i23910 = phi { ptr, i32 } [ %i.ie, %.thread906 ], [ %i.ik, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @__cxa_free_exception(ptr %i.hp) #19, !inline_history !415
  br label %common.resume

bb.av:                                            ; preds = %bb.an, %bb.am
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !287 ; 3 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !281
  %i.ip = add i32 %i.io, -1
  %i.iq = zext i32 %i.ip to i64
  br label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i = phi i64 [ %i.iq, %bb.aw ], [ 4294967295, %bb.av ]
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %.0.i.i.i ; 4 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !441 ; 38 uses
  %i.it = load i32, ptr %i.dc, align 8, !tbaa !278
  %i.iu = add i32 %i.it, 1                        ; 2 uses
  store i32 %i.iu, ptr %i.dc, align 8, !tbaa !278
  %.val36.i = load ptr, ptr %i.dh, align 8, !tbaa !276
  call fastcc void @_ZNK12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE15check_max_stepsEv(ptr %.val36.i, i32 %i.iu), !inline_history !415
  %i.iv = getelementptr i8, ptr %i.ir, i64 8      ; 14 uses
  %.val38.i = load i32, ptr %i.iv, align 8
  %i.iw = and i32 %.val38.i, -51
  %or.cond.not = icmp eq i32 %i.iw, 1
  br i1 %or.cond.not, label %bb.ax, label %.critedge.i

bb.ax:                                            ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i
  %i.ix = load ptr, ptr %i.di, align 8, !tbaa !288
  %i.iy = call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ix, ptr noundef %i.is, i32 noundef 0), !inline_history !415 ; 4 uses
  %.not32.i = icmp eq ptr %i.iy, null
  br i1 %.not32.i, label %.critedge.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !286
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !286
  %i.jc = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 4 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !281 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jc, i64 -8
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !281
  %i.ji = icmp eq i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.ba, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !415
  %.pre.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.ba, %bb.az
  %i.jj = phi i32 [ %.pre2.i.i.i, %bb.ba ], [ %i.jf, %bb.az ] ; 2 uses
  %i.jk = phi ptr [ %.pre.i.i.i, %bb.ba ], [ %i.jc, %bb.az ] ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %i.jm = zext i32 %i.jj to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jm
  store ptr %i.iy, ptr %i.jn, align 8, !tbaa !289
  %i.jo = add i32 %i.jj, 1
  store i32 %i.jo, ptr %i.jl, align 4, !tbaa !281
  %i.jp = load ptr, ptr %i.dk, align 8, !tbaa !304
  %i.jq = call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.jp, ptr noundef %i.is, i32 noundef 0), !inline_history !415 ; 3 uses
  %.not.i.i.i.i39.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i39.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !286
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.bb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.ju = load ptr, ptr %i.dl, align 8, !tbaa !292 ; 4 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !281 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !281
  %i.ka = icmp eq i32 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bd, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.bd:                                            ; preds = %bb.bc, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl), !inline_history !415
  %.pre.i.i40.i = load ptr, ptr %i.dl, align 8, !tbaa !292 ; 2 uses
  %.phi.trans.insert.i.i41.i = getelementptr inbounds i8, ptr %.pre.i.i40.i, i64 -4
  %.pre2.i.i42.i = load i32, ptr %.phi.trans.insert.i.i41.i, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.bd, %bb.bc
  %i.kb = phi i32 [ %.pre2.i.i42.i, %bb.bd ], [ %i.jx, %bb.bc ] ; 2 uses
  %i.kc = phi ptr [ %.pre.i.i40.i, %bb.bd ], [ %i.ju, %bb.bc ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %i.ke = zext i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ke
  store ptr %i.jq, ptr %i.kf, align 8, !tbaa !293
  %i.kg = add i32 %i.kb, 1
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !281
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -4 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !281
  %i.kk = add i32 %i.kj, -1
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !281
  %.val35.i = load ptr, ptr %i.a, align 8         ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.is, %i.iy
  %i.kl = icmp eq ptr %.val35.i, null
  %or.cond.i.i = select i1 %.not.i.i22, i1 true, i1 %i.kl
  br i1 %or.cond.i.i, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.km = getelementptr inbounds i8, ptr %.val35.i, i64 -4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !281 ; 2 uses
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i.i: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i
  %i.kp = add i32 %i.kn, -1
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %.val35.i, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8
  %i.ku = or i32 %i.kt, 2
  store i32 %i.ku, ptr %i.ks, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split

.critedge.i:                                      ; preds = %bb.ax, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.kw = load i32, ptr %i.kv, align 4
  %trunc958 = trunc i32 %i.kw to i16
  switch i16 %trunc958, label %bb.lw [
    i16 0, label %bb.be
    i16 2, label %bb.go
    i16 1, label %bb.lv
  ]

bb.be:                                            ; preds = %.critedge.i
  %i.kx = load i32, ptr %i.iv, align 8
  %i.ky = lshr i32 %i.kx, 2
  %i.kz = and i32 %i.ky, 3
  switch i32 %i.kz, label %.unreachabledefault [
    i32 0, label %bb.bf
    i32 1, label %bb.ff
    i32 2, label %bb.gm
    i32 3, label %bb.gn
  ]

bb.bf:                                            ; preds = %bb.be
  %i.la = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !308
  %i.lc = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.ld = load i32, ptr %i.iv, align 8            ; 3 uses
  %i.le = lshr i32 %i.ld, 6                       ; 2 uses
  %i.lf = icmp ult i32 %i.le, %i.lb
  br i1 %i.lf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lg = zext nneg i32 %i.le to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lg
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !289
  %i.lj = add i32 %i.ld, 64
  store i32 %i.lj, ptr %i.iv, align 8
  %i.lk = lshr i32 %i.ld, 4
  %i.ll = and i32 %i.lk, 3
  %i.lm = call fastcc noundef zeroext i1 @_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.li, i32 noundef %i.ll), !inline_history !416
  br i1 %i.lm, label %bb.bg, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split, !llvm.loop !417

bb.bi:                                            ; preds = %bb.bg
  %i.ln = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !309 ; 3 uses
  %i.lp = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 3 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lr = getelementptr inbounds i8, ptr %i.lp, i64 -4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !281
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.bi, %bb.bj
  %.0.i.i524 = phi i32 [ %i.ls, %bb.bj ], [ 0, %bb.bi ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 7 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !442 ; 3 uses
  %i.lv = sub i32 %.0.i.i524, %i.lu               ; 3 uses
  %i.lw = zext i32 %i.lu to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %.val86.i.i = load ptr, ptr %i.bp, align 8, !tbaa !273
  store ptr null, ptr %18, align 8, !tbaa !296
  store ptr %.val86.i.i, ptr %i.ec, align 8, !tbaa !85
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.lu)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !416

bb.bk:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ly = load ptr, ptr %i.dl, align 8, !tbaa !292 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !281
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.bk, %bb.bl
  %.0.i.i522 = phi i32 [ %i.mb, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %i.mc = load i32, ptr %i.lt, align 4, !tbaa !442 ; 2 uses
  %i.md = sub i32 %.0.i.i522, %i.mc
  %i.me = icmp eq i32 %.0.i.i522, %i.mc
  br i1 %i.me, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !286
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.mf, align 8, !tbaa !286
  store ptr %i.is, ptr %18, align 8, !tbaa !296
  %i.mi = load ptr, ptr %i.du, align 8, !tbaa !296 ; 3 uses
  %.not.i4.i513 = icmp eq ptr %i.mi, null
  br i1 %.not.i4.i513, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mj = load ptr, ptr %i.dv, align 8, !tbaa !297, !nonnull !279, !align !280
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !286
  %i.mm = add i32 %i.ml, -1                       ; 2 uses
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !286
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.bo, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.mj, ptr noundef nonnull %i.mi)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.val85.i.i = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.mo = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %.val85.i.i, ptr noundef %i.lo, i32 noundef %i.lv, ptr noundef %i.lx)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !416 ; 7 uses

bb.bq:                                            ; preds = %bb.bp
  %.not.i508 = icmp eq ptr %i.mo, null
  br i1 %.not.i508, label %bb.br, label %_ZN11ast_manager7inc_refEP3ast.exit.i509

_ZN11ast_manager7inc_refEP3ast.exit.i509:         ; preds = %bb.bq
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !286
  %i.mr = add i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !286
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN11ast_manager7inc_refEP3ast.exit.i509
  store ptr %i.mo, ptr %18, align 8, !tbaa !296
  %.val84.i.i = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.ms = load ptr, ptr %i.dl, align 8, !tbaa !292
  %i.mt = load i32, ptr %i.lt, align 4, !tbaa !442
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mu
  %i.mw = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %.val84.i.i, ptr noundef nonnull %i.is, ptr noundef %i.mo, i32 noundef %i.md, ptr noundef %i.mv)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !416 ; 5 uses

bb.bs:                                            ; preds = %bb.br
  %.not.i503 = icmp eq ptr %i.mw, null
  br i1 %.not.i503, label %bb.bt, label %_ZN11ast_manager7inc_refEP3ast.exit.i504

_ZN11ast_manager7inc_refEP3ast.exit.i504:         ; preds = %bb.bs
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !286
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !286
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i504, %bb.bs
  %i.na = load ptr, ptr %i.du, align 8, !tbaa !296 ; 3 uses
  %.not.i4.i505 = icmp eq ptr %i.na, null
  br i1 %.not.i4.i505, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nb = load ptr, ptr %i.dv, align 8, !tbaa !297, !nonnull !279, !align !280
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !286
  %i.ne = add i32 %i.nd, -1                       ; 2 uses
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !286
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.bv, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nb, ptr noundef nonnull %i.na)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515:    ; preds = %bb.bu, %bb.bt, %bb.bv, %bb.bn, %bb.bm, %bb.bo
  %storemerge1515 = phi ptr [ null, %bb.bn ], [ null, %bb.bo ], [ null, %bb.bm ], [ %i.mw, %bb.bv ], [ %i.mw, %bb.bt ], [ %i.mw, %bb.bu ]
  %i.ng = phi ptr [ %i.is, %bb.bn ], [ %i.is, %bb.bo ], [ %i.is, %bb.bm ], [ %i.mo, %bb.bv ], [ %i.mo, %bb.bt ], [ %i.mo, %bb.bu ] ; 3 uses
  store ptr %storemerge1515, ptr %i.du, align 8, !tbaa !296
  %i.nh = load ptr, ptr %i.dh, align 8, !tbaa !276, !nonnull !279, !align !280
  %i.ni = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E(ptr noundef nonnull align 8 dereferenceable(4610) %i.nh, ptr noundef %i.lo, i32 noundef %i.lv, ptr noundef %i.lx, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.ed)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !416 ; 4 uses

bb.bw:                                            ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit515
  %.not.i43.i = icmp eq i32 %i.ni, 5
  br i1 %.not.i43.i, label %bb.eb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nj = load i32, ptr %i.lt, align 4, !tbaa !442 ; 3 uses
  %i.nk = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 5 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit502, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i492

_ZN6vectorIP4exprLb0EjE3endEv.exit.i492:          ; preds = %bb.bx
  %i.nm = getelementptr inbounds i8, ptr %i.nk, i64 -4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !281 ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.no
  %i.nq = icmp ugt i32 %i.nn, %i.nj
  br i1 %i.nq, label %.lr.ph.i.i494.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i493

.lr.ph.i.i494.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i492
  %i.nr = zext i32 %i.nj to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nr
  br label %.lr.ph.i.i494

.lr.ph.i.i494:                                    ; preds = %.lr.ph.i.i494.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497
  %.06.i.i495 = phi ptr [ %i.nz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497 ], [ %i.ns, %.lr.ph.i.i494.preheader ] ; 2 uses
  %i.nt = load ptr, ptr %.06.i.i495, align 8, !tbaa !289 ; 3 uses
  %i.nu = load ptr, ptr %i.do, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i.i496 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i496, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i494
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !286
  %i.nx = add i32 %i.nw, -1                       ; 2 uses
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !286
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nu, ptr noundef nonnull %i.nt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497: ; preds = %bb.bz, %bb.by, %.lr.ph.i.i494
  %i.nz = getelementptr inbounds nuw i8, ptr %.06.i.i495, i64 8 ; 2 uses
  %i.oa = icmp ult ptr %i.nz, %i.np
  br i1 %i.oa, label %.lr.ph.i.i494, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i497
  %.pre.i499 = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i500 = icmp eq ptr %.pre.i499, null
  br i1 %.not.i.i500, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit502, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i493

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i493: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i492
  %i.ob = phi ptr [ %.pre.i499, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498 ], [ %i.nk, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i492 ] ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.ob, i64 -4
  store i32 %i.nj, ptr %i.oc, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit502

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit502: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i493, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498, %bb.bx
  %i.od = phi ptr [ %i.ob, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i493 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i498 ], [ null, %bb.bx ] ; 4 uses
  %i.oe = load ptr, ptr %i.dw, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i485 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i.i485, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i486, label %bb.ca

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit502
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEEclEP4exprR7obj_refIS3_11ast_managerERS5_I3appS6_E:bb.a
bb.gi:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i306
  %i.aek = getelementptr inbounds i8, ptr %i.aei, i64 -4
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !281 ; 2 uses
  %i.aem = getelementptr inbounds i8, ptr %i.aei, i64 -8
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !281
  %i.aeo = icmp eq i32 %i.ael, %i.aen
  br i1 %i.aeo, label %bb.gj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit310

bb.gj:                                            ; preds = %bb.gi, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i306
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
  %.pre.i.i307 = load ptr, ptr %i.dj, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i308 = getelementptr inbounds i8, ptr %.pre.i.i307, i64 -4
  %.pre2.i.i309 = load i32, ptr %.phi.trans.insert.i.i308, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit310

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit310: ; preds = %bb.gi, %bb.gj
  %i.aep = phi i32 [ %.pre2.i.i309, %bb.gj ], [ %i.ael, %bb.gi ] ; 2 uses
  %i.aeq = phi ptr [ %.pre.i.i307, %bb.gj ], [ %i.aei, %bb.gi ] ; 2 uses
  %i.aer = getelementptr inbounds i8, ptr %i.aeq, i64 -4
  %i.aes = zext i32 %i.aep to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aes
  store ptr %i.aee, ptr %i.aet, align 8, !tbaa !289
  %i.aeu = add i32 %i.aep, 1
  store i32 %i.aeu, ptr %i.aer, align 4, !tbaa !281
  %i.aev = load i32, ptr %i.iv, align 8
  %i.aew = trunc i32 %i.aev to i1
  br i1 %i.aew, label %bb.gk, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i302

bb.gk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit310
  %i.aex = load ptr, ptr %i.du, align 8, !tbaa !296
  %i.aey = load ptr, ptr %i.dw, align 8, !tbaa !284
  call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.is, ptr noundef %i.aey, ptr noundef %i.aex)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i302

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i302: ; preds = %bb.gk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit310
  %i.aez = load ptr, ptr %i.a, align 8, !tbaa !287 ; 2 uses
  %i.afa = getelementptr inbounds i8, ptr %i.aez, i64 -4 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !281 ; 2 uses
  %i.afc = add i32 %i.afb, -1                     ; 2 uses
  store i32 %i.afc, ptr %i.afa, align 4, !tbaa !281
  %i.afd = icmp eq i32 %i.afc, 0
  br i1 %i.afd, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i303

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i303: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i302
  %i.afe = add i32 %i.afb, -2
  %i.aff = zext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %i.aez, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 8
  %i.afj = or i32 %i.afi, 2
  store i32 %i.afj, ptr %i.afh, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split

bb.gl:                                            ; preds = %bb.fj, %bb.fl, %bb.fp, %bb.ft, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit357
  %i.afk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #19, !inline_history !416
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #19, !inline_history !416
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %common.resume

bb.gm:                                            ; preds = %bb.be
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.48, i32 noundef 515, ptr noundef nonnull @.str.49), !inline_history !416
  call void @_Z18invoke_exit_actionj(i32 noundef 107), !inline_history !416
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split

bb.gn:                                            ; preds = %bb.be
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.48, i32 noundef 520, ptr noundef nonnull @.str.49), !inline_history !416
  call void @_Z18invoke_exit_actionj(i32 noundef 107), !inline_history !416
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split

.unreachabledefault:                              ; preds = %bb.be
  unreachable

default.unreachable:                              ; preds = %bb.ny
  unreachable

common.resume:                                    ; preds = %bb.mx, %.thread926, %bb.nr, %.thread935, %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %.thread903, %bb.au, %.thread912, %.loopexit.split-lp, %bb.gl, %.body667, %bb.su, %.body, %bb.hh
  %common.resume.op = phi { ptr, i32 } [ %i.bhg, %.thread935 ], [ %i.ajt, %bb.hh ], [ %.pn105.pn.pn.pn.i.i, %.body ], [ %i.afk, %bb.gl ], [ %i.if, %.thread912 ], [ %i.ck, %.thread903 ], [ %i.cig, %bb.su ], [ %.pn96.pn.pn.pn.i.i, %.body667 ], [ %lpad.loopexit.split-lp1645, %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn70.pn.i.i, %.loopexit.split-lp ], [ %.pn.pn.i23910, %bb.au ], [ %.pn.pn.i902, %bb.r ], [ %lpad.loopexit.split-lp1642, %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.i77933, %bb.nr ], [ %.pn.pn.i16924, %bb.mx ], [ %i.bdn, %.thread926 ]
  resume { ptr, i32 } %common.resume.op

bb.go:                                            ; preds = %.critedge.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.is, i64 20 ; 5 uses
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !312 ; 5 uses
  %i.afn = load i32, ptr %i.iv, align 8
  %i.afo = icmp ult i32 %i.afn, 64
  br i1 %i.afo, label %bb.gp, label %bb.gv

bb.gp:                                            ; preds = %bb.go
  call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.afp = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !313
  store ptr %i.afq, ptr %i.da, align 8, !tbaa !438
  %i.afr = load ptr, ptr %i.dm, align 8, !tbaa !105 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, null
  br i1 %i.afs, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aft = getelementptr inbounds i8, ptr %i.afr, i64 -4
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !281
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301:          ; preds = %bb.gp, %bb.gq
  %.0.i300 = phi i32 [ %i.afu, %bb.gq ], [ 0, %bb.gp ]
  %.not1067 = icmp eq i32 %i.afm, 0
  br i1 %.not1067, label %._crit_edge1052, label %.lr.ph1051

._crit_edge1052:                                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301
  %i.afv = load i32, ptr %i.db, align 8, !tbaa !439
  %i.afw = add i32 %i.afv, %i.afm
  store i32 %i.afw, ptr %i.db, align 8, !tbaa !439
  br label %bb.gv

.lr.ph1051:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075.i.i1050 = phi i32 [ %i.agx, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit301 ]
  %i.afx = load ptr, ptr %i.dm, align 8, !tbaa !105 ; 4 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.lr.ph1051
  %i.afz = getelementptr inbounds i8, ptr %i.afx, i64 -4
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !281 ; 2 uses
  %i.agb = getelementptr inbounds i8, ptr %i.afx, i64 -8
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !281
  %i.agd = icmp eq i32 %i.aga, %i.agc
  br i1 %i.agd, label %bb.gs, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.gs:                                            ; preds = %bb.gr, %.lr.ph1051
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  %.pre.i297 = load ptr, ptr %i.dm, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i298 = getelementptr inbounds i8, ptr %.pre.i297, i64 -4
  %.pre2.i299 = load i32, ptr %.phi.trans.insert.i298, align 4, !tbaa !281
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.gr, %bb.gs
  %i.age = phi i32 [ %.pre2.i299, %bb.gs ], [ %i.aga, %bb.gr ] ; 2 uses
  %i.agf = phi ptr [ %.pre.i297, %bb.gs ], [ %i.afx, %bb.gr ] ; 2 uses
  %i.agg = getelementptr inbounds i8, ptr %i.agf, i64 -4
  %i.agh = zext i32 %i.age to i64
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %i.agh
  store ptr null, ptr %i.agi, align 8, !tbaa !289
  %i.agj = add i32 %i.age, 1
  store i32 %i.agj, ptr %i.agg, align 4, !tbaa !281
  %i.agk = load ptr, ptr %i.dn, align 8, !tbaa !282 ; 4 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.agm = getelementptr inbounds i8, ptr %i.agk, i64 -4
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !281 ; 2 uses
  %i.ago = getelementptr inbounds i8, ptr %i.agk, i64 -8
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !281
  %i.agq = icmp eq i32 %i.agn, %i.agp
  br i1 %i.agq, label %bb.gu, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.gu:                                            ; preds = %bb.gt, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
  %.pre.i295 = load ptr, ptr %i.dn, align 8, !tbaa !282 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i295, i64 -4
  %.pre2.i296 = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !281
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.gt, %bb.gu
  %i.agr = phi i32 [ %.pre2.i296, %bb.gu ], [ %i.agn, %bb.gt ] ; 2 uses
  %i.ags = phi ptr [ %.pre.i295, %bb.gu ], [ %i.agk, %bb.gt ] ; 2 uses
  %i.agt = getelementptr inbounds i8, ptr %i.ags, i64 -4
  %i.agu = zext i32 %i.agr to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.agu
  store i32 %.0.i300, ptr %i.agv, align 4, !tbaa !281
  %i.agw = add i32 %i.agr, 1
  store i32 %i.agw, ptr %i.agt, align 4, !tbaa !281
  %i.agx = add nuw i32 %.075.i.i1050, 1           ; 2 uses
  %exitcond1132.not = icmp eq i32 %i.agx, %i.afm
  br i1 %exitcond1132.not, label %._crit_edge1052, label %.lr.ph1051, !llvm.loop !418

bb.gv:                                            ; preds = %._crit_edge1052, %bb.go
  %.val118.i.i = load ptr, ptr %i.dh, align 8, !tbaa !276
  %i.agy = getelementptr i8, ptr %.val118.i.i, i64 4606
  %.val118.val.i.i = load i8, ptr %i.agy, align 2, !tbaa !314, !range !295, !noundef !279
  %i.agz = trunc nuw i8 %.val118.val.i.i to i1
  br i1 %i.agz, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.aha = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !315
  %i.ahc = add i32 %i.ahb, 1
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.is, i64 76
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !316
  %i.ahf = add i32 %i.ahc, %i.ahe
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.ahg = phi i32 [ %i.ahf, %bb.gw ], [ 1, %bb.gv ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.is, i64 72 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.is, i64 80 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  br label %bb.gy

bb.gy:                                            ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.gx
  %i.ahk = load i32, ptr %i.iv, align 8           ; 3 uses
  %i.ahl = lshr i32 %i.ahk, 6                     ; 5 uses
  %i.ahm = icmp ult i32 %i.ahl, %i.ahg
  br i1 %i.ahm, label %bb.gz, label %bb.hd

bb.gz:                                            ; preds = %bb.gy
  %i.ahn = icmp eq i32 %i.ahl, 0
  br i1 %i.ahn, label %_ZNK10quantifier9get_childEj.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aho = load i32, ptr %i.ahh, align 8, !tbaa !315 ; 2 uses
  %.not.i293 = icmp ugt i32 %i.ahl, %i.aho
  br i1 %.not.i293, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahp = load i32, ptr %i.afl, align 4, !tbaa !312
  %i.ahq = zext i32 %i.ahp to i64                 ; 2 uses
  %i.ahr = getelementptr [8 x i8], ptr %i.is, i64 %i.ahq
  %i.ahs = getelementptr [8 x i8], ptr %i.ahr, i64 %i.ahq
  %i.aht = zext nneg i32 %i.ahl to i64
  %i.ahu = getelementptr [8 x i8], ptr %i.ahs, i64 %i.aht
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.hc:                                            ; preds = %bb.ha
  %i.ahw = xor i32 %i.aho, -1
  %i.ahx = add nsw i32 %i.ahl, %i.ahw
  %i.ahy = load i32, ptr %i.afl, align 4, !tbaa !312
  %i.ahz = zext i32 %i.ahy to i64                 ; 2 uses
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %i.ahz
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %i.ahz
  %i.aic = zext i32 %i.ahx to i64
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %i.aic
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.gz, %bb.hb, %bb.hc
  %.0.in.i = phi ptr [ %i.aid, %bb.hc ], [ %i.ahv, %bb.hb ], [ %i.ahj, %bb.gz ]
  %.0.i294 = load ptr, ptr %.0.in.i, align 8, !tbaa !289
  %i.aie = add i32 %i.ahk, 64
  store i32 %i.aie, ptr %i.iv, align 8
  %i.aif = lshr i32 %i.ahk, 4
  %i.aig = and i32 %i.aif, 3
  %i.aih = call fastcc noundef zeroext i1 @_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i294, i32 noundef %i.aig), !inline_history !419
  br i1 %i.aih, label %bb.gy, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.ithread-pre-split, !llvm.loop !420

bb.hd:                                            ; preds = %bb.gy
  %i.aii = load ptr, ptr %i.dj, align 8, !tbaa !105
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 4 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !442
  %i.ail = zext i32 %i.aik to i64
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %i.ail ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !289 ; 2 uses
  %i.aio = load i32, ptr %i.ahh, align 8, !tbaa !315 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.is, i64 76
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !316 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.air = load ptr, ptr %i.bp, align 8, !tbaa !273, !nonnull !279, !align !280
  %i.ais = load i32, ptr %i.afl, align 4, !tbaa !312
  %i.ait = zext i32 %i.ais to i64                 ; 2 uses
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %i.ait
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %i.ait ; 2 uses
  %i.aiw = ptrtoint ptr %i.air to i64             ; 2 uses
  store i64 %i.aiw, ptr %12, align 8, !tbaa !85
  store ptr null, ptr %i.dp, align 8, !tbaa !105
  %i.aix = zext i32 %i.aio to i64                 ; 3 uses
  %.idx.i.i282 = shl nuw nsw i64 %i.aix, 3
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %.idx.i.i282
  %i.aiz = icmp eq i32 %i.aio, 0                  ; 2 uses
  br i1 %i.aiz, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292, label %.lr.ph.i.i283

.lr.ph.i.i283:                                    ; preds = %bb.hd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287
  %i.aja = phi ptr [ %i.ajl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287 ], [ null, %bb.hd ] ; 4 uses
  %.sroa.04.09.i.i284 = phi ptr [ %i.ajr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287 ], [ %i.aiv, %bb.hd ] ; 2 uses
  %i.ajb = load ptr, ptr %.sroa.04.09.i.i284, align 8, !tbaa !289 ; 3 uses
  %.not.i.i.i.i.i.i285 = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i.i.i.i.i285, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i286, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i.i283
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !286
  %i.aje = add i32 %i.ajd, 1
  store i32 %i.aje, ptr %i.ajc, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i286

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i286: ; preds = %bb.he, %.lr.ph.i.i283
  %i.ajf = icmp eq ptr %i.aja, null
  br i1 %i.ajf, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i286
  %i.ajg = getelementptr inbounds i8, ptr %i.aja, i64 -4
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !281 ; 2 uses
  %i.aji = getelementptr inbounds i8, ptr %i.aja, i64 -8
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !281
  %i.ajk = icmp eq i32 %i.ajh, %i.ajj
  br i1 %i.ajk, label %bb.hg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287

bb.hg:                                            ; preds = %bb.hf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i286
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i288 unwind label %bb.hh

.noexc.i288:                                      ; preds = %bb.hg
  %.pre.i.i.i.i289 = load ptr, ptr %i.dp, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i.i290 = getelementptr inbounds i8, ptr %.pre.i.i.i.i289, i64 -4
  %.pre2.i.i.i.i291 = load i32, ptr %.phi.trans.insert.i.i.i.i290, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287: ; preds = %.noexc.i288, %bb.hf
  %i.ajl = phi ptr [ %.pre.i.i.i.i289, %.noexc.i288 ], [ %i.aja, %bb.hf ] ; 3 uses
  %i.ajm = phi i32 [ %.pre2.i.i.i.i291, %.noexc.i288 ], [ %i.ajh, %bb.hf ] ; 2 uses
  %i.ajn = getelementptr inbounds i8, ptr %i.ajl, i64 -4
  %i.ajo = zext i32 %i.ajm to i64
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajo
  store ptr %i.ajb, ptr %i.ajp, align 8, !tbaa !289
  %i.ajq = add i32 %i.ajm, 1
  store i32 %i.ajq, ptr %i.ajn, align 4, !tbaa !281
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i284, i64 8 ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.aiy
  br i1 %i.ajs, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292.loopexit, label %.lr.ph.i.i283

bb.hh:                                            ; preds = %bb.hg
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #19
  br label %common.resume

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i287
  %.pre1160 = load ptr, ptr %i.bp, align 8, !tbaa !273
  %.pre1181 = ptrtoint ptr %.pre1160 to i64
  br label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292: ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292.loopexit, %bb.hd
  %.pre-phi = phi i64 [ %.pre1181, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292.loopexit ], [ %i.aiw, %bb.hd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.aju = load i32, ptr %i.afl, align 4, !tbaa !312
  %i.ajv = zext i32 %i.aju to i64                 ; 2 uses
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %i.ajv
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %i.ajv ; 2 uses
  store i64 %.pre-phi, ptr %13, align 8, !tbaa !85
  store ptr null, ptr %i.dq, align 8, !tbaa !105
  %i.ajy = zext i32 %i.aiq to i64                 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ajy, 3
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %.idx.i.i
  %i.aka = icmp eq i32 %i.aiq, 0                  ; 2 uses
  br i1 %i.aka, label %.loopexit986, label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.akb = phi ptr [ %i.akm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292 ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.aks, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.ajx, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292 ] ; 2 uses
  %i.akc = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !289 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph.i.i281
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8 ; 2 uses
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !286
  %i.akf = add i32 %i.ake, 1
  store i32 %i.akf, ptr %i.akd, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.hi, %.lr.ph.i.i281
  %i.akg = icmp eq ptr %i.akb, null
  br i1 %i.akg, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.akh = getelementptr inbounds i8, ptr %i.akb, i64 -4
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !281 ; 2 uses
  %i.akj = getelementptr inbounds i8, ptr %i.akb, i64 -8
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !281
  %i.akl = icmp eq i32 %i.aki, %i.akk
  br i1 %i.akl, label %bb.hk, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.hk:                                            ; preds = %bb.hj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %.noexc.i unwind label %.loopexit.split-lp968.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.hk
  %.pre.i.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.hj
  %i.akm = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.akb, %bb.hj ] ; 4 uses
  %i.akn = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.aki, %bb.hj ] ; 2 uses
  %i.ako = getelementptr inbounds i8, ptr %i.akm, i64 -4
  %i.akp = zext i32 %i.akn to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %i.akp
  store ptr %i.akc, ptr %i.akq, align 8, !tbaa !289
  %i.akr = add i32 %i.akn, 1
  store i32 %i.akr, ptr %i.ako, align 4, !tbaa !281
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.akt = icmp eq ptr %i.aks, %i.ajz
  br i1 %i.akt, label %.loopexit986, label %.lr.ph.i.i281

.loopexit986:                                     ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292
  %i.aku = phi ptr [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit292 ], [ %i.akm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ]
  %.val117.i.i = load ptr, ptr %i.dh, align 8, !tbaa !276
  %i.akv = getelementptr i8, ptr %.val117.i.i, i64 4606
  %.val117.val.i.i = load i8, ptr %i.akv, align 2, !tbaa !314, !range !295, !noundef !279
  %i.akw = trunc nuw i8 %.val117.val.i.i to i1
  br i1 %i.akw, label %bb.hl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit231

bb.hl:                                            ; preds = %.loopexit986
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 2 uses
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %i.aix
  br i1 %i.aiz, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.hl
  %i.akz = getelementptr inbounds nuw i8, ptr %i.is, i64 56 ; 2 uses
  br label %bb.ho

._crit_edge1057:                                  ; preds = %bb.is, %bb.hl
  %.077.i.i.lcssa = phi i32 [ 0, %bb.hl ], [ %.1.i.i, %bb.is ] ; 6 uses
  %i.ala = load ptr, ptr %i.dp, align 8, !tbaa !105 ; 5 uses
  %i.alb = icmp eq ptr %i.ala, null
  br i1 %i.alb, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit280, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i270

_ZN6vectorIP4exprLb0EjE3endEv.exit.i270:          ; preds = %._crit_edge1057
  %i.alc = getelementptr inbounds i8, ptr %i.ala, i64 -4
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !281 ; 2 uses
  %i.ale = zext i32 %i.ald to i64
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %i.ale
  %i.alg = icmp ugt i32 %i.ald, %.077.i.i.lcssa
  br i1 %i.alg, label %.lr.ph.i.i272.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i271

.lr.ph.i.i272.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i270
  %i.alh = zext i32 %.077.i.i.lcssa to i64
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %i.alh
  br label %.lr.ph.i.i272

.lr.ph.i.i272:                                    ; preds = %.lr.ph.i.i272.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i275
  %.06.i.i273 = phi ptr [ %i.alp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i275 ], [ %i.ali, %.lr.ph.i.i272.preheader ] ; 2 uses
  %i.alj = load ptr, ptr %.06.i.i273, align 8, !tbaa !289 ; 3 uses
  %i.alk = load ptr, ptr %12, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i.i274 = icmp eq ptr %i.alj, null
  br i1 %.not.i.i.i.i.i274, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i275, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph.i.i272
  %i.all = getelementptr inbounds nuw i8, ptr %i.alj, i64 8 ; 2 uses
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !286
end_hunk_1
begin_hunk_2_@_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEEclEP4exprR7obj_refIS3_11ast_managerERS5_I3appS6_E:bb.a
  %i.bgu = load ptr, ptr %10, align 8, !tbaa !301 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bgw = icmp eq ptr %i.bgu, %i.bgv
  br i1 %i.bgw, label %bb.no, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80

bb.no:                                            ; preds = %bb.nn
  %i.bgx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bgy = load i64, ptr %i.bgx, align 8, !tbaa !302 ; 3 uses
  %i.bgz = icmp ult i64 %i.bgy, 16
  call void @llvm.assume(i1 %i.bgz)
  %i.bha = add nuw nsw i64 %i.bgy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bgt, ptr noundef nonnull align 8 dereferenceable(1) %i.bgv, i64 %i.bha, i1 false)
  br label %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80: ; preds = %bb.nn
  store ptr %i.bgu, ptr %i.bgs, align 8, !tbaa !301
  %i.bhb = load i64, ptr %i.bgv, align 8, !tbaa !303
  store i64 %i.bhb, ptr %i.bgt, align 8, !tbaa !303
  %.phi.trans.insert1143 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre1144 = load i64, ptr %.phi.trans.insert1143, align 8, !tbaa !302
  br label %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81

_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80, %bb.no
  %i.bhc = phi i64 [ %.pre1144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80 ], [ %i.bgy, %bb.no ]
  %i.bhd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16
  store i64 %i.bhc, ptr %i.bhe, align 8, !tbaa !302
  store ptr %i.bgv, ptr %10, align 8, !tbaa !301
  store i64 0, ptr %i.bhd, align 8, !tbaa !302
  store i8 0, ptr %i.bgv, align 8, !tbaa !303
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18rewriter_exception, i64 16), ptr %i.bgq, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.bgq, ptr nonnull @_ZTI18rewriter_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.vv unwind label %bb.np, !inline_history !424

.thread929:                                       ; preds = %bb.nl
  %i.bhf = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.np:                                            ; preds = %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81
  %i.bhg = landingpad { ptr, i32 }
          cleanup
  %i.bhh = load ptr, ptr %10, align 8, !tbaa !301 ; 2 uses
  %i.bhi = icmp eq ptr %i.bhh, %i.bgv
  br i1 %i.bhi, label %.thread935, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.np
  %i.bhj = load i64, ptr %i.bgv, align 8, !tbaa !303
  %i.bhk = add i64 %i.bhj, 1
  call void @_ZdlPvm(ptr noundef %i.bhh, i64 noundef %i.bhk) #22, !inline_history !424
  br label %.thread935

.thread935:                                       ; preds = %bb.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume

bb.nq:                                            ; preds = %bb.nm
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %.thread929
  %.pn.pn.i77933 = phi { ptr, i32 } [ %i.bhf, %.thread929 ], [ %i.bhl, %bb.nq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @__cxa_free_exception(ptr %i.bgq) #19, !inline_history !424
  br label %common.resume

bb.ns:                                            ; preds = %bb.nk, %bb.nj
  %i.bhm = load ptr, ptr %i.a, align 8, !tbaa !287 ; 3 uses
  %i.bhn = icmp eq ptr %i.bhm, null
  br i1 %i.bhn, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i51, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bho = getelementptr inbounds i8, ptr %i.bhm, i64 -4
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !281
  %i.bhq = add i32 %i.bhp, -1
  %i.bhr = zext i32 %i.bhq to i64
  br label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i51

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i51: ; preds = %bb.nt, %bb.ns
  %.0.i.i.i52 = phi i64 [ %i.bhr, %bb.nt ], [ 4294967295, %bb.ns ]
  %i.bhs = getelementptr inbounds nuw [16 x i8], ptr %i.bhm, i64 %.0.i.i.i52 ; 5 uses
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !441 ; 32 uses
  %i.bhu = load i32, ptr %i.bef, align 8, !tbaa !278
  %i.bhv = add i32 %i.bhu, 1                      ; 2 uses
  store i32 %i.bhv, ptr %i.bef, align 8, !tbaa !278
  %.val30.i = load ptr, ptr %i.bek, align 8, !tbaa !276
  call fastcc void @_ZNK12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE15check_max_stepsEv(ptr %.val30.i, i32 %i.bhv), !inline_history !424
  %i.bhw = getelementptr i8, ptr %i.bhs, i64 8    ; 18 uses
  %.val32.i = load i32, ptr %i.bhw, align 8
  %i.bhx = and i32 %.val32.i, -51
  %or.cond957.not = icmp eq i32 %i.bhx, 1
  br i1 %or.cond957.not, label %bb.nu, label %.critedge.i54

bb.nu:                                            ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i51
  %i.bhy = load ptr, ptr %i.bel, align 8, !tbaa !288
  %i.bhz = call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.bhy, ptr noundef %i.bht, i32 noundef 0), !inline_history !424 ; 4 uses
  %.not27.i = icmp eq ptr %i.bhz, null
  br i1 %.not27.i, label %.critedge.i54, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 8 ; 2 uses
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !286
  %i.bic = add i32 %i.bib, 1
  store i32 %i.bic, ptr %i.bia, align 4, !tbaa !286
  %i.bid = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 4 uses
  %i.bie = icmp eq ptr %i.bid, null
  br i1 %i.bie, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bif = getelementptr inbounds i8, ptr %i.bid, i64 -4
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !281 ; 2 uses
  %i.bih = getelementptr inbounds i8, ptr %i.bid, i64 -8
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !281
  %i.bij = icmp eq i32 %i.big, %i.bii
  br i1 %i.bij, label %bb.nx, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i67

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bem), !inline_history !424
  %.pre.i.i.i73 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i74 = getelementptr inbounds i8, ptr %.pre.i.i.i73, i64 -4
  %.pre2.i.i.i75 = load i32, ptr %.phi.trans.insert.i.i.i74, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i67

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i67: ; preds = %bb.nx, %bb.nw
  %i.bik = phi i32 [ %.pre2.i.i.i75, %bb.nx ], [ %i.big, %bb.nw ] ; 2 uses
  %i.bil = phi ptr [ %.pre.i.i.i73, %bb.nx ], [ %i.bid, %bb.nw ] ; 2 uses
  %i.bim = getelementptr inbounds i8, ptr %i.bil, i64 -4
  %i.bin = zext i32 %i.bik to i64
  %i.bio = getelementptr inbounds nuw [8 x i8], ptr %i.bil, i64 %i.bin
  store ptr %i.bhz, ptr %i.bio, align 8, !tbaa !289
  %i.bip = add i32 %i.bik, 1
  store i32 %i.bip, ptr %i.bim, align 4, !tbaa !281
  %i.biq = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.bir = getelementptr inbounds i8, ptr %i.biq, i64 -4 ; 2 uses
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !281
  %i.bit = add i32 %i.bis, -1
  store i32 %i.bit, ptr %i.bir, align 4, !tbaa !281
  %.val29.i = load ptr, ptr %i.a, align 8         ; 4 uses
  %.not.i.i68 = icmp eq ptr %i.bht, %i.bhz
  %i.biu = icmp eq ptr %.val29.i, null
  %or.cond.i.i69 = select i1 %.not.i.i68, i1 true, i1 %i.biu
  br i1 %or.cond.i.i69, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i70

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i70: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i67
  %i.biv = getelementptr inbounds i8, ptr %.val29.i, i64 -4
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !281 ; 2 uses
  %i.bix = icmp eq i32 %i.biw, 0
  br i1 %i.bix, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i.i71

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i.i71: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i.i70
  %i.biy = add i32 %i.biw, -1
  %i.biz = zext i32 %i.biy to i64
  %i.bja = getelementptr inbounds nuw [16 x i8], ptr %.val29.i, i64 %i.biz
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8 ; 2 uses
  %i.bjc = load i32, ptr %i.bjb, align 8
  %i.bjd = or i32 %i.bjc, 2
  store i32 %i.bjd, ptr %i.bjb, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split

.critedge.i54:                                    ; preds = %bb.nu, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i51
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bht, i64 4 ; 2 uses
  %i.bjf = load i32, ptr %i.bje, align 4
  %trunc = trunc i32 %i.bjf to i16
  switch i16 %trunc, label %bb.vp [
    i16 0, label %bb.ny
    i16 2, label %bb.sb
    i16 1, label %bb.vo
  ]

bb.ny:                                            ; preds = %.critedge.i54
  %i.bjg = load i32, ptr %i.bhw, align 8
  %i.bjh = lshr i32 %i.bjg, 2
  %i.bji = and i32 %i.bjh, 3
  switch i32 %i.bji, label %default.unreachable [
    i32 0, label %bb.nz
    i32 1, label %bb.qq
    i32 2, label %bb.rb
    i32 3, label %bb.sa
  ]

bb.nz:                                            ; preds = %bb.ny
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bht, i64 24
  %i.bjk = load i32, ptr %i.bjj, align 8, !tbaa !308
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bht, i64 16 ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bhs, i64 12 ; 4 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bht, i64 48
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bht, i64 40
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bht, i64 32
  br label %bb.oa

bb.oa:                                            ; preds = %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit, %bb.nz
  %i.bjq = load i32, ptr %i.bhw, align 8          ; 4 uses
  %i.bjr = lshr i32 %i.bjq, 6                     ; 2 uses
  %i.bjs = icmp ult i32 %i.bjr, %i.bjk
  br i1 %i.bjs, label %bb.ob, label %bb.oz

bb.ob:                                            ; preds = %bb.oa
  %.mask.i = and i32 %i.bjq, -64
  %i.bjt = icmp eq i32 %.mask.i, 64
  br i1 %i.bjt, label %bb.oc, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit

bb.oc:                                            ; preds = %bb.ob
  %i.bju = load i32, ptr %i.bje, align 4
  %i.bjv = and i32 %i.bju, 65535
  %i.bjw = icmp eq i32 %i.bjv, 0
  br i1 %i.bjw, label %bb.od, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit

bb.od:                                            ; preds = %bb.oc
  %i.bjx = load ptr, ptr %i.bjl, align 8, !tbaa !309
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 24
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !323 ; 3 uses
  %.not.i.i.i.i.i877 = icmp eq ptr %i.bjz, null
  br i1 %.not.i.i.i.i.i877, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.od
  %i.bka = load i32, ptr %i.bjz, align 8, !tbaa !325
  %i.bkb = icmp eq i32 %i.bka, 0
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjz, i64 4
  %i.bkd = load i32, ptr %i.bkc, align 4
  %i.bke = icmp eq i32 %i.bkd, 4
  %i.bkf = select i1 %i.bkb, i1 %i.bke, i1 false
  br i1 %i.bkf, label %bb.oe, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit

bb.oe:                                            ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.bkg = load i32, ptr %i.bjm, align 4, !tbaa !442 ; 4 uses
  %i.bkh = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 5 uses
  %i.bki = zext i32 %i.bkg to i64                 ; 2 uses
  %i.bkj = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bki
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !289 ; 2 uses
  %.val20.i = load ptr, ptr %i.bcs, align 8, !tbaa !273 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %.val20.i, i64 832
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !326
  %i.bkn = icmp eq ptr %i.bkk, %i.bkm
  br i1 %i.bkn, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.bko = getelementptr inbounds nuw i8, ptr %.val20.i, i64 840
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !327
  %i.bkq = icmp eq ptr %i.bkk, %i.bkp
  br i1 %i.bkq, label %bb.og, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit

bb.og:                                            ; preds = %bb.of, %bb.oe
  %.018.i.in = phi ptr [ %i.bjo, %bb.oe ], [ %i.bjn, %bb.of ]
  %.018.i = load ptr, ptr %.018.i.in, align 8, !tbaa !289 ; 5 uses
  %.not.i855.not = icmp eq ptr %.018.i, null
  br i1 %.not.i855.not, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i.i:           ; preds = %bb.og
  %i.bkr = getelementptr inbounds i8, ptr %i.bkh, i64 -4 ; 2 uses
  %i.bks = load i32, ptr %i.bkr, align 4, !tbaa !281 ; 2 uses
  %i.bkt = zext i32 %i.bks to i64
  %i.bku = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bkt
  %i.bkv = icmp ugt i32 %i.bks, %i.bkg
  br i1 %i.bkv, label %.lr.ph.i.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i.i
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bki
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bld, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i ], [ %i.bkw, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bkx = load ptr, ptr %.06.i.i.i, align 8, !tbaa !289 ; 3 uses
  %i.bky = load ptr, ptr %i.bep, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i.i.i874 = icmp eq ptr %i.bkx, null
  br i1 %.not.i.i.i.i.i.i874, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, label %bb.oh

bb.oh:                                            ; preds = %.lr.ph.i.i.i
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkx, i64 8 ; 2 uses
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !286
  %i.blb = add i32 %i.bla, -1                     ; 2 uses
  store i32 %i.blb, ptr %i.bkz, align 4, !tbaa !286
  %i.blc = icmp eq i32 %i.blb, 0
  br i1 %i.blc, label %bb.oi, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

bb.oi:                                            ; preds = %bb.oh
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bky, ptr noundef nonnull %i.bkx), !inline_history !425
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i: ; preds = %bb.oi, %bb.oh, %.lr.ph.i.i.i
  %i.bld = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.ble = icmp ult ptr %i.bld, %i.bku
  br i1 %i.ble, label %.lr.ph.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.pre.i.i875 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i876 = icmp eq ptr %.pre.i.i875, null
  br i1 %.not.i.i.i876, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread943

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread943: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i
  %i.blf = getelementptr inbounds i8, ptr %.pre.i.i875, i64 -4
  store i32 %i.bkg, ptr %i.blf, align 4, !tbaa !281
  br label %bb.oj

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i
  %i.blg = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !286
  %i.bli = add i32 %i.blh, 1
  store i32 %i.bli, ptr %i.blg, align 4, !tbaa !286
  br label %bb.ok

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i.i
  store i32 %i.bkg, ptr %i.bkr, align 4, !tbaa !281
  br label %bb.oj

bb.oj:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread943
  %.pr942945 = phi ptr [ %.pre.i.i875, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread943 ], [ %i.bkh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ] ; 3 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !286
  %i.bll = add i32 %i.blk, 1
  store i32 %i.bll, ptr %i.blj, align 4, !tbaa !286
  %i.blm = getelementptr inbounds i8, ptr %.pr942945, i64 -4
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !281 ; 2 uses
  %i.blo = getelementptr inbounds i8, ptr %.pr942945, i64 -8
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !281
  %i.blq = icmp eq i32 %i.bln, %i.blp
  br i1 %i.blq, label %bb.ok, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i856

bb.ok:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.thread, %bb.oj
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bem), !inline_history !425
  %.pre.i.i.i871 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i872 = getelementptr inbounds i8, ptr %.pre.i.i.i871, i64 -4
  %.pre2.i.i.i873 = load i32, ptr %.phi.trans.insert.i.i.i872, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i856

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i856: ; preds = %bb.ok, %bb.oj
  %i.blr = phi i32 [ %.pre2.i.i.i873, %bb.ok ], [ %i.bln, %bb.oj ] ; 2 uses
  %i.bls = phi ptr [ %.pre.i.i.i871, %bb.ok ], [ %.pr942945, %bb.oj ] ; 2 uses
  %i.blt = getelementptr inbounds i8, ptr %i.bls, i64 -4
  %i.blu = zext i32 %i.blr to i64
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr %i.bls, i64 %i.blu
  store ptr %.018.i, ptr %i.blv, align 8, !tbaa !289
  %i.blw = add i32 %i.blr, 1
  store i32 %i.blw, ptr %i.blt, align 4, !tbaa !281
  %i.blx = load i32, ptr %i.bhw, align 8          ; 2 uses
  %i.bly = and i32 %i.blx, -13
  %i.blz = or disjoint i32 %i.bly, 4
  store i32 %i.blz, ptr %i.bhw, align 8
  %i.bma = lshr i32 %i.blx, 4
  %i.bmb = and i32 %i.bma, 3
  %i.bmc = call fastcc noundef zeroext i1 @_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.018.i, i32 noundef %i.bmb), !inline_history !425
  br i1 %i.bmc, label %bb.ol, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i

bb.ol:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i856
  %i.bmd = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 5 uses
  %i.bme = icmp eq ptr %i.bmd, null
  br i1 %i.bme, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit.i857, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bmf = getelementptr inbounds i8, ptr %i.bmd, i64 -4
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !281
  %i.bmh = add i32 %i.bmg, -1
  %i.bmi = zext i32 %i.bmh to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit.i857

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit.i857: ; preds = %bb.om, %bb.ol
  %.0.i.i.i.i858 = phi i64 [ %i.bmi, %bb.om ], [ 4294967295, %bb.ol ]
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %i.bmd, i64 %.0.i.i.i.i858
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !289 ; 3 uses
  %.not.i.i859 = icmp eq ptr %i.bmk, null
  br i1 %.not.i.i859, label %bb.on, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i860

_ZN11ast_manager7inc_refEP3ast.exit.i.i860:       ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit.i857
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8 ; 2 uses
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !286
  %i.bmn = add i32 %i.bmm, 1
  store i32 %i.bmn, ptr %i.bml, align 4, !tbaa !286
  br label %bb.on

bb.on:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i860, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit.i857
  %i.bmo = load ptr, ptr %i.beu, align 8, !tbaa !284 ; 3 uses
  %.not.i4.i.i861 = icmp eq ptr %i.bmo, null
  br i1 %.not.i4.i.i861, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bmp = load ptr, ptr %i.bew, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmo, i64 8 ; 2 uses
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !286
  %i.bms = add i32 %i.bmr, -1                     ; 2 uses
  store i32 %i.bms, ptr %i.bmq, align 4, !tbaa !286
  %i.bmt = icmp eq i32 %i.bms, 0
  br i1 %i.bmt, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i862, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i862: ; preds = %bb.oo
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bmp, ptr noundef nonnull %i.bmo), !inline_history !425
  %.pre1152 = load ptr, ptr %i.bem, align 8, !tbaa !105, !nonnull !279, !noundef !279
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863

_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863:       ; preds = %bb.on, %bb.oo, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i862
  %i.bmu = phi ptr [ %.pre1152, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i862 ], [ %i.bmd, %bb.oo ], [ %i.bmd, %bb.on ] ; 5 uses
  store ptr %i.bmk, ptr %i.beu, align 8, !tbaa !284
  %i.bmv = getelementptr inbounds i8, ptr %i.bmu, i64 -4
  %i.bmw = load i32, ptr %i.bmv, align 4, !tbaa !281
  %i.bmx = add i32 %i.bmw, -1                     ; 2 uses
  %i.bmy = zext i32 %i.bmx to i64
  %i.bmz = getelementptr inbounds nuw [8 x i8], ptr %i.bmu, i64 %i.bmy
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !289 ; 3 uses
  %i.bnb = getelementptr inbounds i8, ptr %i.bmu, i64 -4
  store i32 %i.bmx, ptr %i.bnb, align 4, !tbaa !281
  %i.bnc = load ptr, ptr %i.bep, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i25.i = icmp eq ptr %i.bna, null
  br i1 %.not.i.i.i.i25.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread, label %bb.op

bb.op:                                            ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 8 ; 2 uses
  %i.bne = load i32, ptr %i.bnd, align 4, !tbaa !286
  %i.bnf = add i32 %i.bne, -1                     ; 2 uses
  store i32 %i.bnf, ptr %i.bnd, align 4, !tbaa !286
  %i.bng = icmp eq i32 %i.bnf, 0
  br i1 %i.bng, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865: ; preds = %bb.op
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bnc, ptr noundef nonnull %i.bna), !inline_history !425
  %.pre1153 = load ptr, ptr %i.bem, align 8, !tbaa !105, !nonnull !279, !noundef !279
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865, %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863, %bb.op
  %i.bnh = phi ptr [ %.pre1153, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865 ], [ %i.bmu, %bb.op ], [ %i.bmu, %_ZN6vectorIP4exprLb0EjE4backEv.exit.i.i863 ] ; 3 uses
  %i.bni = getelementptr inbounds i8, ptr %i.bnh, i64 -4
  %i.bnj = load i32, ptr %i.bni, align 4, !tbaa !281
  %i.bnk = add i32 %i.bnj, -1                     ; 2 uses
  %i.bnl = zext i32 %i.bnk to i64
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.bnh, i64 %i.bnl
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !289 ; 3 uses
  %i.bno = getelementptr inbounds i8, ptr %i.bnh, i64 -4
  store i32 %i.bnk, ptr %i.bno, align 4, !tbaa !281
  %i.bnp = load ptr, ptr %i.bep, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i30.i = icmp eq ptr %i.bnn, null
  br i1 %.not.i.i.i.i30.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i, label %bb.oq

bb.oq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnn, i64 8 ; 2 uses
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !286
  %i.bns = add i32 %i.bnr, -1                     ; 2 uses
  store i32 %i.bns, ptr %i.bnq, align 4, !tbaa !286
  %i.bnt = icmp eq i32 %i.bns, 0
  br i1 %i.bnt, label %bb.or, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i

bb.or:                                            ; preds = %bb.oq
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bnp, ptr noundef nonnull %i.bnn), !inline_history !425
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i: ; preds = %bb.or, %bb.oq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.i865.thread
  %i.bnu = load ptr, ptr %i.beu, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i35.i = icmp eq ptr %i.bnu, null
  br i1 %.not.i.i.i.i35.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i36.i, label %bb.os

bb.os:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8 ; 2 uses
  %i.bnw = load i32, ptr %i.bnv, align 4, !tbaa !286
  %i.bnx = add i32 %i.bnw, 1
  store i32 %i.bnx, ptr %i.bnv, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i36.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i36.i: ; preds = %bb.os, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit34.i
  %i.bny = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 4 uses
  %i.bnz = icmp eq ptr %i.bny, null
  br i1 %i.bnz, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i36.i
  %i.boa = getelementptr inbounds i8, ptr %i.bny, i64 -4
  %i.bob = load i32, ptr %i.boa, align 4, !tbaa !281 ; 2 uses
  %i.boc = getelementptr inbounds i8, ptr %i.bny, i64 -8
  %i.bod = load i32, ptr %i.boc, align 4, !tbaa !281
  %i.boe = icmp eq i32 %i.bob, %i.bod
  br i1 %i.boe, label %bb.ou, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit40.i

bb.ou:                                            ; preds = %bb.ot, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i36.i
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bem), !inline_history !425
  %.pre.i.i37.i = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i38.i = getelementptr inbounds i8, ptr %.pre.i.i37.i, i64 -4
  %.pre2.i.i39.i = load i32, ptr %.phi.trans.insert.i.i38.i, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit40.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit40.i: ; preds = %bb.ou, %bb.ot
  %i.bof = phi i32 [ %.pre2.i.i39.i, %bb.ou ], [ %i.bob, %bb.ot ] ; 2 uses
  %i.bog = phi ptr [ %.pre.i.i37.i, %bb.ou ], [ %i.bny, %bb.ot ] ; 2 uses
  %i.boh = getelementptr inbounds i8, ptr %i.bog, i64 -4
  %i.boi = zext i32 %i.bof to i64
  %i.boj = getelementptr inbounds nuw [8 x i8], ptr %i.bog, i64 %i.boi
  store ptr %i.bnu, ptr %i.boj, align 8, !tbaa !289
  %i.bok = add i32 %i.bof, 1
  store i32 %i.bok, ptr %i.boh, align 4, !tbaa !281
  %i.bol = load i32, ptr %i.bhw, align 8
  %i.bom = trunc i32 %i.bol to i1
  br i1 %i.bom, label %bb.ov, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i867

bb.ov:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit40.i
  %i.bon = load ptr, ptr %i.beu, align 8, !tbaa !284
  call void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.bht, i32 noundef 0, ptr noundef %i.bon), !inline_history !425
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i867

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i867: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit40.i, %bb.ov
  %i.boo = load ptr, ptr %i.a, align 8, !tbaa !287 ; 2 uses
  %i.bop = getelementptr inbounds i8, ptr %i.boo, i64 -4 ; 2 uses
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !281 ; 2 uses
  %i.bor = add i32 %i.boq, -1                     ; 2 uses
  store i32 %i.bor, ptr %i.bop, align 4, !tbaa !281
  %i.bos = icmp eq i32 %i.bor, 0
  br i1 %i.bos, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i868

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i868: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i867
  %i.bot = add i32 %i.boq, -2
  %i.bou = zext i32 %i.bot to i64
  %i.bov = getelementptr inbounds nuw [16 x i8], ptr %i.boo, i64 %i.bou
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 8 ; 2 uses
  %i.box = load i32, ptr %i.bow, align 8
  %i.boy = or i32 %i.box, 2
  store i32 %i.boy, ptr %i.bow, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i

_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i867, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i868, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i856
  %i.boz = load ptr, ptr %i.beu, align 8, !tbaa !284 ; 3 uses
  %.not.i4.i41.i = icmp eq ptr %i.boz, null
  br i1 %.not.i4.i41.i, label %bb.oy, label %bb.ow

bb.ow:                                            ; preds = %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i
  %i.bpa = load ptr, ptr %i.bew, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.boz, i64 8 ; 2 uses
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !286
  %i.bpd = add i32 %i.bpc, -1                     ; 2 uses
  store i32 %i.bpd, ptr %i.bpb, align 4, !tbaa !286
  %i.bpe = icmp eq i32 %i.bpd, 0
  br i1 %i.bpe, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bpa, ptr noundef nonnull %i.boz), !inline_history !425
  br label %bb.oy

bb.oy:                                            ; preds = %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit.i, %bb.ow, %bb.ox
  store ptr null, ptr %i.beu, align 8, !tbaa !284
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split

_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE.exit: ; preds = %bb.of, %bb.og, %bb.od, %bb.oc, %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %bb.ob
  %i.bpf = zext nneg i32 %i.bjr to i64
  %i.bpg = getelementptr inbounds nuw [8 x i8], ptr %i.bjp, i64 %i.bpf
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !289
  %i.bpi = add i32 %i.bjq, 64
  store i32 %i.bpi, ptr %i.bhw, align 8
  %i.bpj = lshr i32 %i.bjq, 4
  %i.bpk = and i32 %i.bpj, 3
  %i.bpl = call fastcc noundef zeroext i1 @_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.bph, i32 noundef %i.bpk), !inline_history !426
  br i1 %i.bpl, label %bb.oa, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split, !llvm.loop !427

bb.oz:                                            ; preds = %bb.oa
  %i.bpm = load ptr, ptr %i.bjl, align 8, !tbaa !309 ; 5 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 24
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !323 ; 2 uses
  %.not.i851 = icmp eq ptr %i.bpo, null
  br i1 %.not.i851, label %_ZNK9func_decl14is_associativeEv.exit.thread, label %_ZNK9func_decl14is_associativeEv.exit

_ZNK9func_decl14is_associativeEv.exit:            ; preds = %bb.oz
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 17
  %i.bpq = load i16, ptr %i.bpp, align 1
  %i.bpr = and i16 %i.bpq, 3
  %i.bps = icmp eq i16 %i.bpr, 3
  br i1 %i.bps, label %bb.pa, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.pa:                                            ; preds = %_ZNK9func_decl14is_associativeEv.exit
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bht, i64 8
  %i.bpu = load i32, ptr %i.bpt, align 8, !tbaa !286
  %i.bpv = icmp ult i32 %i.bpu, 2
  br i1 %i.bpv, label %bb.pb, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.pb:                                            ; preds = %bb.pa
  %i.bpw = load ptr, ptr %i.a, align 8, !tbaa !287 ; 3 uses
  %i.bpx = icmp eq ptr %i.bpw, null
  br i1 %i.bpx, label %_ZNK9func_decl14is_associativeEv.exit.thread, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit850

_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit850: ; preds = %bb.pb
  %i.bpy = getelementptr inbounds i8, ptr %i.bpw, i64 -4 ; 2 uses
  %i.bpz = load i32, ptr %i.bpy, align 4, !tbaa !281 ; 3 uses
  %i.bqa = icmp ugt i32 %i.bpz, 1
  br i1 %i.bqa, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit, label %_ZNK9func_decl14is_associativeEv.exit.thread

_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit850
  %i.bqb = add i32 %i.bpz, -2
  %i.bqc = zext i32 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw [16 x i8], ptr %i.bpw, i64 %i.bqc ; 2 uses
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !441 ; 2 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 4
  %i.bqg = load i32, ptr %i.bqf, align 4
  %i.bqh = and i32 %i.bqg, 65535
  %i.bqi = icmp eq i32 %i.bqh, 0
  br i1 %i.bqi, label %bb.pc, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.pc:                                            ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqe, i64 16
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !309
  %i.bql = icmp eq ptr %i.bqk, %i.bpm
  br i1 %i.bql, label %bb.pd, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.pd:                                            ; preds = %bb.pc
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 8 ; 2 uses
  %i.bqn = load i32, ptr %i.bqm, align 8          ; 2 uses
  %i.bqo = and i32 %i.bqn, 12
  %i.bqp = icmp eq i32 %i.bqo, 0
  br i1 %i.bqp, label %bb.pe, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.pe:                                            ; preds = %bb.pd
  %.val99.i.i = load ptr, ptr %i.bek, align 8, !tbaa !276 ; 2 uses
  %i.bqq = getelementptr i8, ptr %.val99.i.i, i64 472
  %.val99.val.i.i = load i32, ptr %i.bqq, align 4
  %i.bqr = getelementptr i8, ptr %.val99.i.i, i64 4601
  %.val99.val100.i.i = load i8, ptr %i.bqr, align 1, !tbaa !269, !range !295, !noundef !279
  %i.bqs = call fastcc noundef zeroext i1 @_ZNK12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE10flat_assocEP9func_decl(i32 %.val99.val.i.i, i8 %.val99.val100.i.i, ptr noundef nonnull %i.bpm), !inline_history !426
  br i1 %i.bqs, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i846, label %_ZNK9func_decl14is_associativeEv.exit.thread

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i846: ; preds = %bb.pe
  %i.bqt = add i32 %i.bpz, -1
  store i32 %i.bqt, ptr %i.bpy, align 4, !tbaa !281
  %i.bqu = or i32 %i.bqn, 2
  store i32 %i.bqu, ptr %i.bqm, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.pb, %bb.oz, %bb.pe, %bb.pd, %bb.pc, %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit, %_ZNK6vectorIN13rewriter_core5frameELb0EjE4sizeEv.exit850, %bb.pa, %_ZNK9func_decl14is_associativeEv.exit
  %i.bqv = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 3 uses
  %i.bqw = icmp eq ptr %i.bqv, null
  br i1 %i.bqw, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit844, label %bb.pf

bb.pf:                                            ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.bqx = getelementptr inbounds i8, ptr %i.bqv, i64 -4
  %i.bqy = load i32, ptr %i.bqx, align 4, !tbaa !281
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit844

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit844: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.pf
  %.0.i.i843 = phi i32 [ %i.bqy, %bb.pf ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.bqz = load i32, ptr %i.bjm, align 4, !tbaa !442 ; 2 uses
  %i.bra = sub i32 %.0.i.i843, %i.bqz             ; 2 uses
  %i.brb = zext i32 %i.bqz to i64
  %i.brc = getelementptr inbounds nuw [8 x i8], ptr %i.bqv, i64 %i.brb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %.val91.i.i = load ptr, ptr %i.bcs, align 8, !tbaa !273
  store ptr null, ptr %8, align 8, !tbaa !296
  store ptr %.val91.i.i, ptr %i.bfa, align 8, !tbaa !85
  %i.brd = load ptr, ptr %i.bek, align 8, !tbaa !276, !nonnull !279, !align !280
  %i.bre = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E(ptr noundef nonnull align 8 dereferenceable(4610) %i.brd, ptr noundef nonnull %i.bpm, i32 noundef %i.bra, ptr noundef %i.brc, ptr noundef nonnull align 8 dereferenceable(16) %i.beu, ptr noundef nonnull align 8 dereferenceable(16) %i.bfb)
          to label %bb.pg unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !426 ; 4 uses

bb.pg:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit844
  %.not.i33.i = icmp eq i32 %i.bre, 5
  br i1 %.not.i33.i, label %bb.qa, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.brf = load i32, ptr %i.bjm, align 4, !tbaa !442 ; 3 uses
  %i.brg = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 5 uses
  %i.brh = icmp eq ptr %i.brg, null
  br i1 %i.brh, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i831

_ZN6vectorIP4exprLb0EjE3endEv.exit.i831:          ; preds = %bb.ph
  %i.bri = getelementptr inbounds i8, ptr %i.brg, i64 -4
  %i.brj = load i32, ptr %i.bri, align 4, !tbaa !281 ; 2 uses
  %i.brk = zext i32 %i.brj to i64
  %i.brl = getelementptr inbounds nuw [8 x i8], ptr %i.brg, i64 %i.brk
  %i.brm = icmp ugt i32 %i.brj, %i.brf
  br i1 %i.brm, label %.lr.ph.i.i833.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i832

.lr.ph.i.i833.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i831
  %i.brn = zext i32 %i.brf to i64
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.brg, i64 %i.brn
  br label %.lr.ph.i.i833

.lr.ph.i.i833:                                    ; preds = %.lr.ph.i.i833.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836
  %.06.i.i834 = phi ptr [ %i.brv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836 ], [ %i.bro, %.lr.ph.i.i833.preheader ] ; 2 uses
  %i.brp = load ptr, ptr %.06.i.i834, align 8, !tbaa !289 ; 3 uses
  %i.brq = load ptr, ptr %i.bep, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i.i835 = icmp eq ptr %i.brp, null
  br i1 %.not.i.i.i.i.i835, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph.i.i833
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brp, i64 8 ; 2 uses
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !286
  %i.brt = add i32 %i.brs, -1                     ; 2 uses
  store i32 %i.brt, ptr %i.brr, align 4, !tbaa !286
  %i.bru = icmp eq i32 %i.brt, 0
  br i1 %i.bru, label %bb.pj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836

bb.pj:                                            ; preds = %bb.pi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.brq, ptr noundef nonnull %i.brp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836 unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836: ; preds = %bb.pj, %bb.pi, %.lr.ph.i.i833
  %i.brv = getelementptr inbounds nuw i8, ptr %.06.i.i834, i64 8 ; 2 uses
  %i.brw = icmp ult ptr %i.brv, %i.brl
  br i1 %i.brw, label %.lr.ph.i.i833, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i836
  %.pre.i838 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.not.i.i839 = icmp eq ptr %.pre.i838, null
  br i1 %.not.i.i839, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i832

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i832: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i831
  %i.brx = phi ptr [ %.pre.i838, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837 ], [ %i.brg, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i831 ] ; 2 uses
  %i.bry = getelementptr inbounds i8, ptr %i.brx, i64 -4
  store i32 %i.brf, ptr %i.bry, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i832, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837, %bb.ph
  %i.brz = phi ptr [ %i.brx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i832 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i837 ], [ null, %bb.ph ] ; 4 uses
  %i.bsa = load ptr, ptr %i.beu, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i824 = icmp eq ptr %i.bsa, null
  br i1 %.not.i.i.i.i824, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i825, label %bb.pk

bb.pk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bsa, i64 8 ; 2 uses
  %i.bsc = load i32, ptr %i.bsb, align 4, !tbaa !286
  %i.bsd = add i32 %i.bsc, 1
  store i32 %i.bsd, ptr %i.bsb, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i825

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i825: ; preds = %bb.pk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit841
  %i.bse = icmp eq ptr %i.brz, null
  br i1 %i.bse, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i825
  %i.bsf = getelementptr inbounds i8, ptr %i.brz, i64 -4
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !281 ; 2 uses
  %i.bsh = getelementptr inbounds i8, ptr %i.brz, i64 -8
  %i.bsi = load i32, ptr %i.bsh, align 4, !tbaa !281
  %i.bsj = icmp eq i32 %i.bsg, %i.bsi
  br i1 %i.bsj, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i825
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bem)
          to label %.noexc829 unwind label %.loopexit.split-lp989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc829:                                        ; preds = %bb.pm
  %.pre.i.i826 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i827 = getelementptr inbounds i8, ptr %.pre.i.i826, i64 -4
  %.pre2.i.i828 = load i32, ptr %.phi.trans.insert.i.i827, align 4, !tbaa !281
  br label %bb.pn

bb.pn:                                            ; preds = %.noexc829, %bb.pl
  %i.bsk = phi i32 [ %.pre2.i.i828, %.noexc829 ], [ %i.bsg, %bb.pl ] ; 2 uses
  %i.bsl = phi ptr [ %.pre.i.i826, %.noexc829 ], [ %i.brz, %bb.pl ] ; 2 uses
  %i.bsm = getelementptr inbounds i8, ptr %i.bsl, i64 -4
  %i.bsn = zext i32 %i.bsk to i64
  %i.bso = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %i.bsn
  store ptr %i.bsa, ptr %i.bso, align 8, !tbaa !289
end_hunk_2
begin_hunk_3_@_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEEclEP4exprR7obj_refIS3_11ast_managerERS5_I3appS6_E:bb.a

bb.ru:                                            ; preds = %bb.rt, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i702
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bem)
          to label %.noexc706 unwind label %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc706:                                        ; preds = %bb.ru
  %.pre.i.i703 = load ptr, ptr %i.bem, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i704 = getelementptr inbounds i8, ptr %.pre.i.i703, i64 -4
  %.pre2.i.i705 = load i32, ptr %.phi.trans.insert.i.i704, align 4, !tbaa !281
  br label %bb.rv

bb.rv:                                            ; preds = %.noexc706, %bb.rt
  %i.ccw = phi i32 [ %.pre2.i.i705, %.noexc706 ], [ %i.ccs, %bb.rt ] ; 2 uses
  %i.ccx = phi ptr [ %.pre.i.i703, %.noexc706 ], [ %i.ccl, %bb.rt ] ; 2 uses
  %i.ccy = getelementptr inbounds i8, ptr %i.ccx, i64 -4
  %i.ccz = zext i32 %i.ccw to i64
  %i.cda = getelementptr inbounds nuw [8 x i8], ptr %i.ccx, i64 %i.ccz
  store ptr %i.ccm, ptr %i.cda, align 8, !tbaa !289
  %i.cdb = add i32 %i.ccw, 1
  store i32 %i.cdb, ptr %i.ccy, align 4, !tbaa !281
  %i.cdc = load i32, ptr %i.bhw, align 8
  %i.cdd = trunc i32 %i.cdc to i1
  br i1 %i.cdd, label %bb.rw, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i696

bb.rw:                                            ; preds = %bb.rv
  %i.cde = load ptr, ptr %i.beu, align 8, !tbaa !284
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.bht, i32 noundef 0, ptr noundef %i.cde)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i696 unwind label %.loopexit.split-lp997.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i696: ; preds = %bb.rw, %bb.rv
  %i.cdf = load ptr, ptr %i.a, align 8, !tbaa !287 ; 2 uses
  %i.cdg = getelementptr inbounds i8, ptr %i.cdf, i64 -4 ; 2 uses
  %i.cdh = load i32, ptr %i.cdg, align 4, !tbaa !281 ; 2 uses
  %i.cdi = add i32 %i.cdh, -1                     ; 2 uses
  store i32 %i.cdi, ptr %i.cdg, align 4, !tbaa !281
  %i.cdj = icmp eq i32 %i.cdi, 0
  br i1 %i.cdj, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit698, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i697

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i697: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i696
  %i.cdk = add i32 %i.cdh, -2
  %i.cdl = zext i32 %i.cdk to i64
  %i.cdm = getelementptr inbounds nuw [16 x i8], ptr %i.cdf, i64 %i.cdl
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 8 ; 2 uses
  %i.cdo = load i32, ptr %i.cdn, align 8
  %i.cdp = or i32 %i.cdo, 2
  store i32 %i.cdp, ptr %i.cdn, align 8
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit698

_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit698: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i697, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i696
  %i.cdq = load ptr, ptr %9, align 8, !tbaa !284  ; 3 uses
  %.not.i.i695 = icmp eq ptr %i.cdq, null
  br i1 %.not.i.i695, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.rx

bb.rx:                                            ; preds = %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit698
  %i.cdr = load ptr, ptr %i.bey, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdq, i64 8 ; 2 uses
  %i.cdt = load i32, ptr %i.cds, align 4, !tbaa !286
  %i.cdu = add i32 %i.cdt, -1                     ; 2 uses
  store i32 %i.cdu, ptr %i.cds, align 4, !tbaa !286
  %i.cdv = icmp eq i32 %i.cdu, 0
  br i1 %i.cdv, label %bb.ry, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ry:                                            ; preds = %bb.rx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cdr, ptr noundef nonnull %i.cdq)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.cdw = landingpad { ptr, i32 }
          catch ptr null
  %i.cdx = extractvalue { ptr, i32 } %i.cdw, 0
  call void @__clang_call_terminate(ptr %i.cdx) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4expr.exit698, %bb.rx, %bb.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split

bb.sa:                                            ; preds = %bb.ny
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.48, i32 noundef 520, ptr noundef nonnull @.str.49), !inline_history !426
  call void @_Z18invoke_exit_actionj(i32 noundef 107), !inline_history !426
  br label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split

bb.sb:                                            ; preds = %.critedge.i54
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bht, i64 20 ; 5 uses
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !312 ; 5 uses
  %i.cea = load i32, ptr %i.bhw, align 8
  %i.ceb = icmp ult i32 %i.cea, 64
  br i1 %i.ceb, label %bb.sc, label %bb.si

bb.sc:                                            ; preds = %bb.sb
  call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.cec = getelementptr inbounds nuw i8, ptr %i.bht, i64 24
  %i.ced = load ptr, ptr %i.cec, align 8, !tbaa !313
  store ptr %i.ced, ptr %i.bed, align 8, !tbaa !438
  %i.cee = load ptr, ptr %i.ben, align 8, !tbaa !105 ; 2 uses
  %i.cef = icmp eq ptr %i.cee, null
  br i1 %i.cef, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.ceg = getelementptr inbounds i8, ptr %i.cee, i64 -4
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !281
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694:          ; preds = %bb.sc, %bb.sd
  %.0.i693 = phi i32 [ %i.ceh, %bb.sd ], [ 0, %bb.sc ]
  %.not1064 = icmp eq i32 %i.cdz, 0
  br i1 %.not1064, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit688, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694
  %i.cei = load i32, ptr %i.bee, align 8, !tbaa !439
  %i.cej = add i32 %i.cei, %i.cdz
  store i32 %i.cej, ptr %i.bee, align 8, !tbaa !439
  br label %bb.si

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694, %_ZN6vectorIjLb0EjE9push_backERKj.exit688
  %.072.i.i1037 = phi i32 [ %i.cfk, %_ZN6vectorIjLb0EjE9push_backERKj.exit688 ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit694 ]
  %i.cek = load ptr, ptr %i.ben, align 8, !tbaa !105 ; 4 uses
  %i.cel = icmp eq ptr %i.cek, null
  br i1 %i.cel, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %.lr.ph
  %i.cem = getelementptr inbounds i8, ptr %i.cek, i64 -4
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !281 ; 2 uses
  %i.ceo = getelementptr inbounds i8, ptr %i.cek, i64 -8
  %i.cep = load i32, ptr %i.ceo, align 4, !tbaa !281
  %i.ceq = icmp eq i32 %i.cen, %i.cep
  br i1 %i.ceq, label %bb.sf, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit692

bb.sf:                                            ; preds = %bb.se, %.lr.ph
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ben)
  %.pre.i689 = load ptr, ptr %i.ben, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i690 = getelementptr inbounds i8, ptr %.pre.i689, i64 -4
  %.pre2.i691 = load i32, ptr %.phi.trans.insert.i690, align 4, !tbaa !281
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit692

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit692:   ; preds = %bb.se, %bb.sf
  %i.cer = phi i32 [ %.pre2.i691, %bb.sf ], [ %i.cen, %bb.se ] ; 2 uses
  %i.ces = phi ptr [ %.pre.i689, %bb.sf ], [ %i.cek, %bb.se ] ; 2 uses
  %i.cet = getelementptr inbounds i8, ptr %i.ces, i64 -4
  %i.ceu = zext i32 %i.cer to i64
  %i.cev = getelementptr inbounds nuw [8 x i8], ptr %i.ces, i64 %i.ceu
  store ptr null, ptr %i.cev, align 8, !tbaa !289
  %i.cew = add i32 %i.cer, 1
  store i32 %i.cew, ptr %i.cet, align 4, !tbaa !281
  %i.cex = load ptr, ptr %i.beo, align 8, !tbaa !282 ; 4 uses
  %i.cey = icmp eq ptr %i.cex, null
  br i1 %i.cey, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit692
  %i.cez = getelementptr inbounds i8, ptr %i.cex, i64 -4
  %i.cfa = load i32, ptr %i.cez, align 4, !tbaa !281 ; 2 uses
  %i.cfb = getelementptr inbounds i8, ptr %i.cex, i64 -8
  %i.cfc = load i32, ptr %i.cfb, align 4, !tbaa !281
  %i.cfd = icmp eq i32 %i.cfa, %i.cfc
  br i1 %i.cfd, label %bb.sh, label %_ZN6vectorIjLb0EjE9push_backERKj.exit688

bb.sh:                                            ; preds = %bb.sg, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit692
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.beo)
  %.pre.i685 = load ptr, ptr %i.beo, align 8, !tbaa !282 ; 2 uses
  %.phi.trans.insert.i686 = getelementptr inbounds i8, ptr %.pre.i685, i64 -4
  %.pre2.i687 = load i32, ptr %.phi.trans.insert.i686, align 4, !tbaa !281
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit688

_ZN6vectorIjLb0EjE9push_backERKj.exit688:         ; preds = %bb.sg, %bb.sh
  %i.cfe = phi i32 [ %.pre2.i687, %bb.sh ], [ %i.cfa, %bb.sg ] ; 2 uses
  %i.cff = phi ptr [ %.pre.i685, %bb.sh ], [ %i.cex, %bb.sg ] ; 2 uses
  %i.cfg = getelementptr inbounds i8, ptr %i.cff, i64 -4
  %i.cfh = zext i32 %i.cfe to i64
  %i.cfi = getelementptr inbounds nuw [4 x i8], ptr %i.cff, i64 %i.cfh
  store i32 %.0.i693, ptr %i.cfi, align 4, !tbaa !281
  %i.cfj = add i32 %i.cfe, 1
  store i32 %i.cfj, ptr %i.cfg, align 4, !tbaa !281
  %i.cfk = add nuw i32 %.072.i.i1037, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.cfk, %i.cdz
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !428

bb.si:                                            ; preds = %._crit_edge, %bb.sb
  %.val102.i.i = load ptr, ptr %i.bek, align 8, !tbaa !276
  %i.cfl = getelementptr i8, ptr %.val102.i.i, i64 4606
  %.val102.val.i.i = load i8, ptr %i.cfl, align 2, !tbaa !314, !range !295, !noundef !279
  %i.cfm = trunc nuw i8 %.val102.val.i.i to i1
  br i1 %i.cfm, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.bht, i64 72
  %i.cfo = load i32, ptr %i.cfn, align 8, !tbaa !315
  %i.cfp = add i32 %i.cfo, 1
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.bht, i64 76
  %i.cfr = load i32, ptr %i.cfq, align 4, !tbaa !316
  %i.cfs = add i32 %i.cfp, %i.cfr
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.cft = phi i32 [ %i.cfs, %bb.sj ], [ 1, %bb.si ]
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.bht, i64 72 ; 2 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.bht, i64 80 ; 3 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.bht, i64 24
  br label %bb.sl

bb.sl:                                            ; preds = %_ZNK10quantifier9get_childEj.exit684, %bb.sk
  %i.cfx = load i32, ptr %i.bhw, align 8          ; 3 uses
  %i.cfy = lshr i32 %i.cfx, 6                     ; 5 uses
  %i.cfz = icmp ult i32 %i.cfy, %i.cft
  br i1 %i.cfz, label %bb.sm, label %bb.sq

bb.sm:                                            ; preds = %bb.sl
  %i.cga = icmp eq i32 %i.cfy, 0
  br i1 %i.cga, label %_ZNK10quantifier9get_childEj.exit684, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.cgb = load i32, ptr %i.cfu, align 8, !tbaa !315 ; 2 uses
  %.not.i681 = icmp ugt i32 %i.cfy, %i.cgb
  br i1 %.not.i681, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.cgc = load i32, ptr %i.cdy, align 4, !tbaa !312
  %i.cgd = zext i32 %i.cgc to i64                 ; 2 uses
  %i.cge = getelementptr [8 x i8], ptr %i.bht, i64 %i.cgd
  %i.cgf = getelementptr [8 x i8], ptr %i.cge, i64 %i.cgd
  %i.cgg = zext nneg i32 %i.cfy to i64
  %i.cgh = getelementptr [8 x i8], ptr %i.cgf, i64 %i.cgg
  %i.cgi = getelementptr i8, ptr %i.cgh, i64 72
  br label %_ZNK10quantifier9get_childEj.exit684

bb.sp:                                            ; preds = %bb.sn
  %i.cgj = xor i32 %i.cgb, -1
  %i.cgk = add nsw i32 %i.cfy, %i.cgj
  %i.cgl = load i32, ptr %i.cdy, align 4, !tbaa !312
  %i.cgm = zext i32 %i.cgl to i64                 ; 2 uses
  %i.cgn = getelementptr inbounds nuw [8 x i8], ptr %i.cfv, i64 %i.cgm
  %i.cgo = getelementptr inbounds nuw [8 x i8], ptr %i.cgn, i64 %i.cgm
  %i.cgp = zext i32 %i.cgk to i64
  %i.cgq = getelementptr inbounds nuw [8 x i8], ptr %i.cgo, i64 %i.cgp
  br label %_ZNK10quantifier9get_childEj.exit684

_ZNK10quantifier9get_childEj.exit684:             ; preds = %bb.sm, %bb.so, %bb.sp
  %.0.in.i682 = phi ptr [ %i.cgq, %bb.sp ], [ %i.cgi, %bb.so ], [ %i.cfw, %bb.sm ]
  %.0.i683 = load ptr, ptr %.0.in.i682, align 8, !tbaa !289
  %i.cgr = add i32 %i.cfx, 64
  store i32 %i.cgr, ptr %i.bhw, align 8
  %i.cgs = lshr i32 %i.cfx, 4
  %i.cgt = and i32 %i.cgs, 3
  %i.cgu = call fastcc noundef zeroext i1 @_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i683, i32 noundef %i.cgt), !inline_history !429
  br i1 %i.cgu, label %bb.sl, label %_ZN12rewriter_tplIN12_GLOBAL__N_115th_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit.i72thread-pre-split, !llvm.loop !430

bb.sq:                                            ; preds = %bb.sl
  %i.cgv = load ptr, ptr %i.bem, align 8, !tbaa !105
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.bhs, i64 12 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !442
  %i.cgy = zext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw [8 x i8], ptr %i.cgv, i64 %i.cgy ; 2 uses
  %i.cha = load ptr, ptr %i.cgz, align 8, !tbaa !289
  %i.chb = load i32, ptr %i.cfu, align 8, !tbaa !315 ; 2 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.bht, i64 76
  %i.chd = load i32, ptr %i.chc, align 4, !tbaa !316 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.che = load ptr, ptr %i.bcs, align 8, !tbaa !273, !nonnull !279, !align !280
  %i.chf = load i32, ptr %i.cdy, align 4, !tbaa !312
  %i.chg = zext i32 %i.chf to i64                 ; 2 uses
  %i.chh = getelementptr inbounds nuw [8 x i8], ptr %i.cfv, i64 %i.chg
  %i.chi = getelementptr inbounds nuw [8 x i8], ptr %i.chh, i64 %i.chg ; 2 uses
  %i.chj = ptrtoint ptr %i.che to i64             ; 2 uses
  store i64 %i.chj, ptr %4, align 8, !tbaa !85
  store ptr null, ptr %i.beq, align 8, !tbaa !105
  %i.chk = zext i32 %i.chb to i64                 ; 3 uses
  %.idx.i.i670 = shl nuw nsw i64 %i.chk, 3
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 %.idx.i.i670
  %i.chm = icmp eq i32 %i.chb, 0                  ; 2 uses
  br i1 %i.chm, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680, label %.lr.ph.i.i671

.lr.ph.i.i671:                                    ; preds = %bb.sq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675
  %i.chn = phi ptr [ %i.chy, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675 ], [ null, %bb.sq ] ; 4 uses
  %.sroa.04.09.i.i672 = phi ptr [ %i.cie, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675 ], [ %i.chi, %bb.sq ] ; 2 uses
  %i.cho = load ptr, ptr %.sroa.04.09.i.i672, align 8, !tbaa !289 ; 3 uses
  %.not.i.i.i.i.i.i673 = icmp eq ptr %i.cho, null
  br i1 %.not.i.i.i.i.i.i673, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i674, label %bb.sr

bb.sr:                                            ; preds = %.lr.ph.i.i671
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 8 ; 2 uses
  %i.chq = load i32, ptr %i.chp, align 4, !tbaa !286
  %i.chr = add i32 %i.chq, 1
  store i32 %i.chr, ptr %i.chp, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i674

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i674: ; preds = %bb.sr, %.lr.ph.i.i671
  %i.chs = icmp eq ptr %i.chn, null
  br i1 %i.chs, label %bb.st, label %bb.ss

bb.ss:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i674
  %i.cht = getelementptr inbounds i8, ptr %i.chn, i64 -4
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !281 ; 2 uses
  %i.chv = getelementptr inbounds i8, ptr %i.chn, i64 -8
  %i.chw = load i32, ptr %i.chv, align 4, !tbaa !281
  %i.chx = icmp eq i32 %i.chu, %i.chw
  br i1 %i.chx, label %bb.st, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675

bb.st:                                            ; preds = %bb.ss, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i674
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.beq)
          to label %.noexc.i676 unwind label %bb.su

.noexc.i676:                                      ; preds = %bb.st
  %.pre.i.i.i.i677 = load ptr, ptr %i.beq, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i.i678 = getelementptr inbounds i8, ptr %.pre.i.i.i.i677, i64 -4
  %.pre2.i.i.i.i679 = load i32, ptr %.phi.trans.insert.i.i.i.i678, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675: ; preds = %.noexc.i676, %bb.ss
  %i.chy = phi ptr [ %.pre.i.i.i.i677, %.noexc.i676 ], [ %i.chn, %bb.ss ] ; 3 uses
  %i.chz = phi i32 [ %.pre2.i.i.i.i679, %.noexc.i676 ], [ %i.chu, %bb.ss ] ; 2 uses
  %i.cia = getelementptr inbounds i8, ptr %i.chy, i64 -4
  %i.cib = zext i32 %i.chz to i64
  %i.cic = getelementptr inbounds nuw [8 x i8], ptr %i.chy, i64 %i.cib
  store ptr %i.cho, ptr %i.cic, align 8, !tbaa !289
  %i.cid = add i32 %i.chz, 1
  store i32 %i.cid, ptr %i.cia, align 4, !tbaa !281
  %i.cie = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i672, i64 8 ; 2 uses
  %i.cif = icmp eq ptr %i.cie, %i.chl
  br i1 %i.cif, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680.loopexit, label %.lr.ph.i.i671

bb.su:                                            ; preds = %bb.st
  %i.cig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  br label %common.resume

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i675
  %.pre1145 = load ptr, ptr %i.bcs, align 8, !tbaa !273
  %.pre1182 = ptrtoint ptr %.pre1145 to i64
  br label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680: ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680.loopexit, %bb.sq
  %.pre-phi1183 = phi i64 [ %.pre1182, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680.loopexit ], [ %i.chj, %bb.sq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cih = load i32, ptr %i.cdy, align 4, !tbaa !312
  %i.cii = zext i32 %i.cih to i64                 ; 2 uses
  %i.cij = getelementptr inbounds nuw [8 x i8], ptr %i.cfv, i64 %i.cii
  %i.cik = getelementptr inbounds nuw [8 x i8], ptr %i.cij, i64 %i.cii ; 2 uses
  store i64 %.pre-phi1183, ptr %5, align 8, !tbaa !85
  store ptr null, ptr %i.ber, align 8, !tbaa !105
  %i.cil = zext i32 %i.chd to i64                 ; 2 uses
  %.idx.i.i657 = shl nuw nsw i64 %i.cil, 3
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cik, i64 %.idx.i.i657
  %i.cin = icmp eq i32 %i.chd, 0                  ; 2 uses
  br i1 %i.cin, label %.loopexit1018, label %.lr.ph.i.i658

.lr.ph.i.i658:                                    ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662
  %i.cio = phi ptr [ %i.ciz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662 ], [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680 ] ; 4 uses
  %.sroa.04.09.i.i659 = phi ptr [ %i.cjf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662 ], [ %i.cik, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680 ] ; 2 uses
  %i.cip = load ptr, ptr %.sroa.04.09.i.i659, align 8, !tbaa !289 ; 3 uses
  %.not.i.i.i.i.i.i660 = icmp eq ptr %i.cip, null
  br i1 %.not.i.i.i.i.i.i660, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i661, label %bb.sv

bb.sv:                                            ; preds = %.lr.ph.i.i658
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 8 ; 2 uses
  %i.cir = load i32, ptr %i.ciq, align 4, !tbaa !286
  %i.cis = add i32 %i.cir, 1
  store i32 %i.cis, ptr %i.ciq, align 4, !tbaa !286
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i661

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i661: ; preds = %bb.sv, %.lr.ph.i.i658
  %i.cit = icmp eq ptr %i.cio, null
  br i1 %i.cit, label %bb.sx, label %bb.sw

bb.sw:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i661
  %i.ciu = getelementptr inbounds i8, ptr %i.cio, i64 -4
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !281 ; 2 uses
  %i.ciw = getelementptr inbounds i8, ptr %i.cio, i64 -8
  %i.cix = load i32, ptr %i.ciw, align 4, !tbaa !281
  %i.ciy = icmp eq i32 %i.civ, %i.cix
  br i1 %i.ciy, label %bb.sx, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662

bb.sx:                                            ; preds = %bb.sw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i661
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ber)
          to label %.noexc.i663 unwind label %.loopexit.split-lp1002.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i663:                                      ; preds = %bb.sx
  %.pre.i.i.i.i664 = load ptr, ptr %i.ber, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i.i.i.i665 = getelementptr inbounds i8, ptr %.pre.i.i.i.i664, i64 -4
  %.pre2.i.i.i.i666 = load i32, ptr %.phi.trans.insert.i.i.i.i665, align 4, !tbaa !281
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662: ; preds = %.noexc.i663, %bb.sw
  %i.ciz = phi ptr [ %.pre.i.i.i.i664, %.noexc.i663 ], [ %i.cio, %bb.sw ] ; 4 uses
  %i.cja = phi i32 [ %.pre2.i.i.i.i666, %.noexc.i663 ], [ %i.civ, %bb.sw ] ; 2 uses
  %i.cjb = getelementptr inbounds i8, ptr %i.ciz, i64 -4
  %i.cjc = zext i32 %i.cja to i64
  %i.cjd = getelementptr inbounds nuw [8 x i8], ptr %i.ciz, i64 %i.cjc
  store ptr %i.cip, ptr %i.cjd, align 8, !tbaa !289
  %i.cje = add i32 %i.cja, 1
  store i32 %i.cje, ptr %i.cjb, align 4, !tbaa !281
  %i.cjf = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i659, i64 8 ; 2 uses
  %i.cjg = icmp eq ptr %i.cjf, %i.cim
  br i1 %i.cjg, label %.loopexit1018, label %.lr.ph.i.i658

.loopexit1018:                                    ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680
  %i.cjh = phi ptr [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit680 ], [ %i.ciz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i662 ]
  %.val101.i.i = load ptr, ptr %i.bek, align 8, !tbaa !276
  %i.cji = getelementptr i8, ptr %.val101.i.i, i64 4606
  %.val101.val.i.i = load i8, ptr %i.cji, align 2, !tbaa !314, !range !295, !noundef !279
  %i.cjj = trunc nuw i8 %.val101.val.i.i to i1
  br i1 %i.cjj, label %bb.sy, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit603

bb.sy:                                            ; preds = %.loopexit1018
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cgz, i64 8 ; 2 uses
  %i.cjl = getelementptr inbounds nuw [8 x i8], ptr %i.cjk, i64 %i.chk
  br i1 %i.chm, label %._crit_edge1042, label %.lr.ph1041

.lr.ph1041:                                       ; preds = %bb.sy
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.bht, i64 56 ; 2 uses
  br label %bb.tb

._crit_edge1042:                                  ; preds = %bb.uf, %bb.sy
  %.074.i.i.lcssa = phi i32 [ 0, %bb.sy ], [ %.1.i.i57, %bb.uf ] ; 3 uses
  %i.cjn = load ptr, ptr %i.beq, align 8, !tbaa !105 ; 5 uses
  %i.cjo = icmp eq ptr %i.cjn, null
  br i1 %i.cjo, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit656, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i646

_ZN6vectorIP4exprLb0EjE3endEv.exit.i646:          ; preds = %._crit_edge1042
  %i.cjp = getelementptr inbounds i8, ptr %i.cjn, i64 -4
  %i.cjq = load i32, ptr %i.cjp, align 4, !tbaa !281 ; 2 uses
  %i.cjr = zext i32 %i.cjq to i64
  %i.cjs = getelementptr inbounds nuw [8 x i8], ptr %i.cjn, i64 %i.cjr
  %i.cjt = icmp ugt i32 %i.cjq, %.074.i.i.lcssa
  br i1 %i.cjt, label %.lr.ph.i.i648.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i647

.lr.ph.i.i648.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i646
  %i.cju = zext i32 %.074.i.i.lcssa to i64
  %i.cjv = getelementptr inbounds nuw [8 x i8], ptr %i.cjn, i64 %i.cju
  br label %.lr.ph.i.i648

.lr.ph.i.i648:                                    ; preds = %.lr.ph.i.i648.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i651
  %.06.i.i649 = phi ptr [ %i.ckc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i651 ], [ %i.cjv, %.lr.ph.i.i648.preheader ] ; 2 uses
  %i.cjw = load ptr, ptr %.06.i.i649, align 8, !tbaa !289 ; 3 uses
  %i.cjx = load ptr, ptr %4, align 8, !tbaa !290, !nonnull !279, !align !280
  %.not.i.i.i.i.i650 = icmp eq ptr %i.cjw, null
  br i1 %.not.i.i.i.i.i650, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i651, label %bb.sz

bb.sz:                                            ; preds = %.lr.ph.i.i648
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjw, i64 8 ; 2 uses
  %i.cjz = load i32, ptr %i.cjy, align 4, !tbaa !286
end_hunk_3
