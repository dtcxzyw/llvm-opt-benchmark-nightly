Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/model_reconstruction_trail?download=true
inline.NumInlined: 645
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN26model_reconstruction_trail6replayEjR10ref_vectorI4expr11ast_managerER20dependent_expr_state:bb.a
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !179

_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392: ; preds = %.critedge
  %i.wf = getelementptr inbounds i8, ptr %i.ur, i64 -4
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !62
  %.not526 = icmp eq i32 %i.wg, 0
  br i1 %.not526, label %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread, label %bb.eb

bb.eb:                                            ; preds = %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392
  %i.wh = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !88 ; 4 uses
  %i.wj = icmp eq ptr %i.wi, null
  br i1 %i.wj, label %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread, label %_ZN6vectorISt5tupleIJ7obj_refI9func_decl11ast_managerES1_I4exprS3_ES1_IN18dependency_managerINS3_22expr_dependency_configEE10dependencyES3_EEELb1EjE3endEv.exit404

_ZN6vectorISt5tupleIJ7obj_refI9func_decl11ast_managerES1_I4exprS3_ES1_IN18dependency_managerINS3_22expr_dependency_configEE10dependencyES3_EEELb1EjE3endEv.exit404: ; preds = %bb.eb
  %i.wk = getelementptr inbounds i8, ptr %i.wi, i64 -4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !62 ; 2 uses
  %i.wm = zext i32 %i.wl to i64
  %i.wn = mul nuw nsw i64 %i.wm, 48
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wn
  %.not250616 = icmp eq i32 %i.wl, 0
  br i1 %.not250616, label %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread, label %.lr.ph618

.lr.ph618:                                        ; preds = %_ZN6vectorISt5tupleIJ7obj_refI9func_decl11ast_managerES1_I4exprS3_ES1_IN18dependency_managerINS3_22expr_dependency_configEE10dependencyES3_EEELb1EjE3endEv.exit404, %_ZN14dependent_exprD2Ev.exit418
  %.0176617 = phi ptr [ %i.xz, %_ZN14dependent_exprD2Ev.exit418 ], [ %i.wi, %_ZN6vectorISt5tupleIJ7obj_refI9func_decl11ast_managerES1_I4exprS3_ES1_IN18dependency_managerINS3_22expr_dependency_configEE10dependencyES3_EEELb1EjE3endEv.exit404 ] ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.0176617, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.wq = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !36, !align !37 ; 3 uses
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !87
  %i.ws = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.wq, ptr noundef %i.wr, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager8mk_constEP9func_decl.exit unwind label %bb.el

_ZN11ast_manager8mk_constEP9func_decl.exit:       ; preds = %.lr.ph618
  %i.wt = getelementptr inbounds nuw i8, ptr %.0176617, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !40
  %i.wv = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.wq, i32 noundef 0, i32 noundef 2, ptr noundef %i.ws, ptr noundef %i.wu)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit407 unwind label %bb.el ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit407:         ; preds = %_ZN11ast_manager8mk_constEP9func_decl.exit
  store ptr %i.wq, ptr %18, align 8, !tbaa !41
  store ptr %i.wv, ptr %i.cc, align 8, !tbaa !73
  %.not.i.i408 = icmp eq ptr %i.wv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br i1 %.not.i.i408, label %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit410, label %bb.ec

bb.ec:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit407
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !43
  %i.wy = add i32 %i.wx, 1
  store i32 %i.wy, ptr %i.ww, align 4, !tbaa !43
  br label %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit410

_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit410: ; preds = %bb.ec, %_ZN11ast_manager5mk_eqEP4exprS1_.exit407
  %i.wz = load ptr, ptr %3, align 8, !tbaa !59
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 40
  %i.xb = load ptr, ptr %i.xa, align 8
  invoke void %i.xb(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ed unwind label %bb.em

bb.ed:                                            ; preds = %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit410
  %i.xc = load ptr, ptr %18, align 8, !tbaa !103, !nonnull !36, !align !37 ; 3 uses
  %i.xd = load ptr, ptr %i.cc, align 8, !tbaa !73 ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i411, label %_ZN11ast_manager7dec_refEP3ast.exit.i412, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !43
  %i.xg = add i32 %i.xf, -1                       ; 2 uses
  store i32 %i.xg, ptr %i.xe, align 4, !tbaa !43
  %i.xh = icmp eq i32 %i.xg, 0
  br i1 %i.xh, label %bb.ef, label %_ZN11ast_manager7dec_refEP3ast.exit.i412

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.xc, ptr noundef nonnull %i.xd)
          to label %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i416 unwind label %bb.ek

._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i416: ; preds = %bb.ef
  %.pre.i417 = load ptr, ptr %18, align 8, !tbaa !103
  br label %_ZN11ast_manager7dec_refEP3ast.exit.i412

_ZN11ast_manager7dec_refEP3ast.exit.i412:         ; preds = %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i416, %bb.ee, %bb.ed
  %i.xi = phi ptr [ %.pre.i417, %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i416 ], [ %i.xc, %bb.ee ], [ %i.xc, %bb.ed ]
  %i.xj = load ptr, ptr %i.ce, align 8, !tbaa !104 ; 4 uses
  %.not.i1.i413 = icmp eq ptr %i.xj, null
  br i1 %.not.i1.i413, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414, label %bb.eg

bb.eg:                                            ; preds = %_ZN11ast_manager7dec_refEP3ast.exit.i412
  %i.xk = load i32, ptr %i.xj, align 4            ; 2 uses
  %i.xl = add i32 %i.xk, 1073741823
  %i.xm = and i32 %i.xl, 1073741823               ; 2 uses
  %i.xn = and i32 %i.xk, -1073741824
  %i.xo = or disjoint i32 %i.xm, %i.xn
  store i32 %i.xo, ptr %i.xj, align 4
  %i.xp = icmp eq i32 %i.xm, 0
  br i1 %i.xp, label %bb.eh, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414

bb.eh:                                            ; preds = %bb.eg
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.xq, ptr noundef nonnull %i.xj)
          to label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414 unwind label %bb.ek

_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414: ; preds = %bb.eh, %bb.eg, %_ZN11ast_manager7dec_refEP3ast.exit.i412
  %i.xr = load ptr, ptr %18, align 8, !tbaa !103, !nonnull !36, !align !37
  %i.xs = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 3 uses
  %.not.i3.i415 = icmp eq ptr %i.xs, null
  br i1 %.not.i3.i415, label %_ZN14dependent_exprD2Ev.exit418, label %bb.ei

bb.ei:                                            ; preds = %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !43
  %i.xv = add i32 %i.xu, -1                       ; 2 uses
  store i32 %i.xv, ptr %i.xt, align 4, !tbaa !43
  %i.xw = icmp eq i32 %i.xv, 0
  br i1 %i.xw, label %bb.ej, label %_ZN14dependent_exprD2Ev.exit418

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.xr, ptr noundef nonnull %i.xs)
          to label %_ZN14dependent_exprD2Ev.exit418 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eh, %bb.ef
  %i.xx = landingpad { ptr, i32 }
          catch ptr null
  %i.xy = extractvalue { ptr, i32 } %i.xx, 0
  call void @__clang_call_terminate(ptr %i.xy) #16
  unreachable

_ZN14dependent_exprD2Ev.exit418:                  ; preds = %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i414, %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.xz = getelementptr inbounds nuw i8, ptr %.0176617, i64 48 ; 2 uses
  %.not250 = icmp eq ptr %i.xz, %i.wo
  br i1 %.not250, label %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread, label %.lr.ph618

bb.el:                                            ; preds = %_ZN11ast_manager8mk_constEP9func_decl.exit, %.lr.ph618
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit410
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14dependent_exprD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %18) #15
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn251 = phi { ptr, i32 } [ %i.yb, %bb.em ], [ %i.ya, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %bb.eo

_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread: ; preds = %_ZN14dependent_exprD2Ev.exit418, %bb.eb, %_ZN6vectorISt5tupleIJ7obj_refI9func_decl11ast_managerES1_I4exprS3_ES1_IN18dependency_managerINS3_22expr_dependency_configEE10dependencyES3_EEELb1EjE3endEv.exit404, %.critedge, %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392
  call void @_ZN14macro_replacerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNK26model_reconstruction_trail5entry7is_hideEv.exit.thread

bb.eo:                                            ; preds = %bb.dk, %bb.dt, %bb.ds, %bb.en, %.loopexit.split-lp529
  %.pn266.pn = phi { ptr, i32 } [ %.pn266, %.loopexit.split-lp529 ], [ %i.vi, %bb.ds ], [ %i.vj, %bb.dt ], [ %.pn251, %bb.en ], [ %.pn259.pn, %bb.dk ]
  call void @_ZN14macro_replacerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #15
  br label %.body

.body:                                            ; preds = %bb.bq, %bb.eo
  %.pn266.pn.pn = phi { ptr, i32 } [ %.pn266.pn, %bb.eo ], [ %i.mz, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.loopexit.split-lp536

_ZNK26model_reconstruction_trail5entry6is_defEv.exit345.thread: ; preds = %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit.thread, %_ZNK26model_reconstruction_trail5entry6is_defEv.exit345
  %i.yc = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !89
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !59
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8
  invoke void %i.yh(ptr noundef nonnull align 8 dereferenceable(8) %i.yc, ptr noundef %i.ye)
          to label %bb.ep unwind label %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %_ZNK26model_reconstruction_trail5entry6is_defEv.exit345.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  store ptr null, ptr %19, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.yi = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.yj = ptrtoint ptr %i.yi to i64
  store i64 %i.yj, ptr %20, align 8, !tbaa !41
  store ptr null, ptr %i.cf, align 8, !tbaa !48
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462
  %.0175 = phi i32 [ %i.agm, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462 ], [ %1, %bb.ep ] ; 4 uses
  %i.yk = load ptr, ptr %3, align 8, !tbaa !59
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8
  %i.yn = invoke noundef i32 %i.ym(ptr noundef nonnull align 8 dereferenceable(152) %3)
          to label %bb.er unwind label %bb.he

bb.er:                                            ; preds = %bb.eq
  %i.yo = icmp ult i32 %.0175, %i.yn
  br i1 %i.yo, label %bb.es, label %.preheader

.preheader:                                       ; preds = %bb.er
  %i.yp = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %.critedge527, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit465

bb.es:                                            ; preds = %bb.er
  %i.yr = load ptr, ptr %3, align 8, !tbaa !59
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8
  %i.yu = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.yt(ptr noundef nonnull align 8 dereferenceable(152) %3, i32 noundef %.0175)
          to label %bb.et unwind label %bb.he     ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !121, !noalias !203 ; 4 uses
  %i.yy = load ptr, ptr %i.yv, align 8, !tbaa !63, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.yz = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  invoke void @_ZN13expr_replacer16replace_with_depEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef %i.yy)
          to label %bb.eu unwind label %bb.fa

bb.eu:                                            ; preds = %bb.et
  %.not236 = icmp eq ptr %i.yx, null
  br i1 %.not236, label %.thread520, label %bb.ev

.thread520:                                       ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.za = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.zb = load ptr, ptr %21, align 8, !tbaa !40
  %i.zc = load ptr, ptr %i.cg, align 8, !tbaa !120
  br label %_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit442

bb.ev:                                            ; preds = %bb.eu
  %i.zd = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %.not.i419 = icmp eq ptr %i.zd, null
  br i1 %.not.i419, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 -4
  store i32 0, ptr %i.ze, align 4, !tbaa !62
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.ev, %bb.ew
  %i.zf = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 5 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.zh = getelementptr inbounds i8, ptr %i.zf, i64 -4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !62 ; 2 uses
  %i.zj = zext i32 %i.zi to i64
  %i.zk = shl nuw nsw i64 %i.zj, 3
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zk
  %.not.i420 = icmp eq i32 %i.zi, 0
  br i1 %.not.i420, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i421

.lr.ph.i.i421:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.zs, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.zf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.zm = load ptr, ptr %.06.i.i, align 8, !tbaa !63 ; 3 uses
  %i.zn = load ptr, ptr %20, align 8, !tbaa !64, !nonnull !36, !align !37
  %.not.i.i.i.i.i = icmp eq ptr %i.zm, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i.i421
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !43
  %i.zq = add i32 %i.zp, -1                       ; 2 uses
  store i32 %i.zq, ptr %i.zo, align 4, !tbaa !43
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %bb.ey, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.zn, ptr noundef nonnull %i.zm)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ey, %bb.ex, %.lr.ph.i.i421
  %i.zs = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.zt = icmp ult ptr %i.zs, %i.zl
  br i1 %i.zt, label %.lr.ph.i.i421, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i422 = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %.not.i.i423 = icmp eq ptr %.pre.i422, null
  br i1 %.not.i.i423, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.zu = phi ptr [ %.pre.i422, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.zf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -4
  store i32 0, ptr %i.zv, align 4, !tbaa !62
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.zw = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !36, !align !37
  invoke void @_ZN11ast_manager9linearizeEPN18dependency_managerINS_22expr_dependency_configEE10dependencyER10ptr_vectorI4exprE(ptr noundef nonnull align 8 dereferenceable(952) %i.zw, ptr noundef nonnull %i.yx, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ez:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.zx = load ptr, ptr %19, align 8, !tbaa !48   ; 4 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %._crit_edge622, label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %bb.ez
  %i.zz = getelementptr inbounds i8, ptr %i.zx, i64 -4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !62 ; 2 uses
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = shl nuw nsw i64 %i.aab, 3
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aac
  %.not237619 = icmp eq i32 %i.aaa, 0
  br i1 %.not237619, label %._crit_edge622, label %.lr.ph621

._crit_edge622:                                   ; preds = %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit, %bb.ez, %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %i.aae = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, null
  br i1 %i.aaf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

bb.fa:                                            ; preds = %bb.et
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ey, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %lpad.loopexit.split-lp821 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph621:                                        ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit
  %.0174620 = phi ptr [ %i.add, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit ], [ %i.zx, %_ZN6vectorIP4exprLb0EjE3endEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.aah = load ptr, ptr %.0174620, align 8, !tbaa !63
  invoke void @_ZN13expr_replacer16replace_with_depEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef %i.aah)
          to label %bb.fb unwind label %bb.fl

bb.fb:                                            ; preds = %.lr.ph621
  %i.aai = load ptr, ptr %22, align 8, !tbaa !40  ; 4 uses
  %i.aaj = load ptr, ptr %.0174620, align 8, !tbaa !63
  %.not240 = icmp eq ptr %i.aai, %i.aaj
  br i1 %.not240, label %bb.fn, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.not.i.i.i.i427 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i.i427, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !43
  %i.aam = add i32 %i.aal, 1
  store i32 %i.aam, ptr %i.aak, align 4, !tbaa !43
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.fd, %bb.fc
  %i.aan = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 4 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.aap = getelementptr inbounds i8, ptr %i.aan, i64 -4
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !62 ; 2 uses
  %i.aar = getelementptr inbounds i8, ptr %i.aan, i64 -8
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !62
  %i.aat = icmp eq i32 %i.aaq, %i.aas
  br i1 %i.aat, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %.noexc431 unwind label %bb.fm

.noexc431:                                        ; preds = %bb.ff
  %.pre.i.i428 = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i429 = getelementptr inbounds i8, ptr %.pre.i.i428, i64 -4
  %.pre2.i.i430 = load i32, ptr %.phi.trans.insert.i.i429, align 4, !tbaa !62
  br label %bb.fg

bb.fg:                                            ; preds = %.noexc431, %bb.fe
  %i.aau = phi i32 [ %.pre2.i.i430, %.noexc431 ], [ %i.aaq, %bb.fe ] ; 2 uses
  %i.aav = phi ptr [ %.pre.i.i428, %.noexc431 ], [ %i.aan, %bb.fe ] ; 2 uses
  %i.aaw = getelementptr inbounds i8, ptr %i.aav, i64 -4
  %i.aax = zext i32 %i.aau to i64
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %i.aax
  store ptr %i.aai, ptr %i.aay, align 8, !tbaa !63
  %i.aaz = add i32 %i.aau, 1
  store i32 %i.aaz, ptr %i.aaw, align 4, !tbaa !62
  %i.aba = load ptr, ptr %22, align 8, !tbaa !40
  store ptr %i.aba, ptr %.0174620, align 8, !tbaa !63
  %i.abb = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.abc = load ptr, ptr %i.cg, align 8, !tbaa !120 ; 6 uses
  %i.abd = load ptr, ptr %i.ch, align 8, !tbaa !120 ; 6 uses
  %i.abe = icmp eq ptr %i.abc, null
  %.not.i434 = icmp eq ptr %i.abd, null           ; 2 uses
  br i1 %i.abe, label %_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.abf = icmp eq ptr %i.abc, %i.abd
  %or.cond.i.i = or i1 %.not.i434, %i.abf
  br i1 %or.cond.i.i, label %bb.fi, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit17.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit17.i.i: ; preds = %bb.fh
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 656
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !128, !nonnull !36, !align !37
  %i.abi = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.abh, i64 noundef 24)
          to label %.noexc433 unwind label %bb.fm ; 4 uses

.noexc433:                                        ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit17.i.i
  %i.abj = load i32, ptr %i.abc, align 4          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN26model_reconstruction_trail6replayEjR10ref_vectorI4expr11ast_managerER20dependent_expr_state:bb.a
  store ptr %i.adp, ptr %i.aeh, align 8, !tbaa !121
  br label %_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit442

_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit442: ; preds = %.noexc441, %bb.fx, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, %.thread520
  %i.aei = phi ptr [ %i.ado, %.noexc441 ], [ %i.ado, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread ], [ %i.ado, %bb.fx ], [ %i.zb, %.thread520 ] ; 4 uses
  %i.aej = phi ptr [ %i.adn, %.noexc441 ], [ %i.adn, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread ], [ %i.adn, %bb.fx ], [ %i.za, %.thread520 ]
  %.0.i.i440 = phi ptr [ %i.adv, %.noexc441 ], [ %i.adp, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread ], [ %.sroa.0490.0, %bb.fx ], [ %i.zc, %.thread520 ] ; 4 uses
  store ptr %i.aej, ptr %23, align 8, !tbaa !41
  store ptr %i.aei, ptr %i.cl, align 8, !tbaa !73
  store ptr null, ptr %i.cm, align 8, !tbaa !105
  store ptr %.0.i.i440, ptr %i.cn, align 8, !tbaa !104
  %.not.i.i443 = icmp eq ptr %i.aei, null
  br i1 %.not.i.i443, label %_ZN11ast_manager7inc_refEP3ast.exit.i444, label %bb.fy

bb.fy:                                            ; preds = %_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit442
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 8 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !43
  %i.aem = add i32 %i.ael, 1
  store i32 %i.aem, ptr %i.aek, align 4, !tbaa !43
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i444

_ZN11ast_manager7inc_refEP3ast.exit.i444:         ; preds = %bb.fy, %_ZN11ast_manager7mk_joinEPN18dependency_managerINS_22expr_dependency_configEE10dependencyES4_.exit442
  %.not.i11.i445 = icmp eq ptr %.0.i.i440, null
  br i1 %.not.i11.i445, label %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit448, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i446

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i446: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i444
  %i.aen = load i32, ptr %.0.i.i440, align 4      ; 2 uses
  %i.aeo = add i32 %i.aen, 1
  %i.aep = and i32 %i.aeo, 1073741823
  %i.aeq = and i32 %i.aen, -1073741824
  %i.aer = or disjoint i32 %i.aep, %i.aeq
  store i32 %i.aer, ptr %.0.i.i440, align 4
  %.pre662 = load ptr, ptr %i.cl, align 8, !tbaa !73
  br label %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit448

_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit448: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i446, %_ZN11ast_manager7inc_refEP3ast.exit.i444
  %i.aes = phi ptr [ %.pre662, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i446 ], [ %i.aei, %_ZN11ast_manager7inc_refEP3ast.exit.i444 ]
  invoke void @_ZN26model_reconstruction_trail8add_varsEP4exprR8ast_mark(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef %i.aes, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN26model_reconstruction_trail8add_varsERK14dependent_exprR8ast_mark.exit450 unwind label %bb.go

_ZN26model_reconstruction_trail8add_varsERK14dependent_exprR8ast_mark.exit450: ; preds = %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit448
  %i.aet = load ptr, ptr %3, align 8, !tbaa !59
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 32
  %i.aev = load ptr, ptr %i.aeu, align 8
  invoke void %i.aev(ptr noundef nonnull align 8 dereferenceable(152) %3, i32 noundef %.0175, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.fz unwind label %bb.go

bb.fz:                                            ; preds = %_ZN26model_reconstruction_trail8add_varsERK14dependent_exprR8ast_mark.exit450
  %i.aew = load ptr, ptr %23, align 8, !tbaa !103, !nonnull !36, !align !37 ; 3 uses
  %i.aex = load ptr, ptr %i.cl, align 8, !tbaa !73 ; 3 uses
  %.not.i.i451 = icmp eq ptr %i.aex, null
  br i1 %.not.i.i451, label %_ZN11ast_manager7dec_refEP3ast.exit.i452, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !43
  %i.afa = add i32 %i.aez, -1                     ; 2 uses
  store i32 %i.afa, ptr %i.aey, align 4, !tbaa !43
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.gb, label %_ZN11ast_manager7dec_refEP3ast.exit.i452

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aew, ptr noundef nonnull %i.aex)
          to label %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i456 unwind label %bb.gg

._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i456: ; preds = %bb.gb
  %.pre.i457 = load ptr, ptr %23, align 8, !tbaa !103
  br label %_ZN11ast_manager7dec_refEP3ast.exit.i452

_ZN11ast_manager7dec_refEP3ast.exit.i452:         ; preds = %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i456, %bb.ga, %bb.fz
  %i.afc = phi ptr [ %.pre.i457, %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge.i456 ], [ %i.aew, %bb.ga ], [ %i.aew, %bb.fz ]
  %i.afd = load ptr, ptr %i.cn, align 8, !tbaa !104 ; 4 uses
  %.not.i1.i453 = icmp eq ptr %i.afd, null
  br i1 %.not.i1.i453, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454, label %bb.gc

bb.gc:                                            ; preds = %_ZN11ast_manager7dec_refEP3ast.exit.i452
  %i.afe = load i32, ptr %i.afd, align 4          ; 2 uses
  %i.aff = add i32 %i.afe, 1073741823
  %i.afg = and i32 %i.aff, 1073741823             ; 2 uses
  %i.afh = and i32 %i.afe, -1073741824
  %i.afi = or disjoint i32 %i.afg, %i.afh
  store i32 %i.afi, ptr %i.afd, align 4
  %i.afj = icmp eq i32 %i.afg, 0
  br i1 %i.afj, label %bb.gd, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454

bb.gd:                                            ; preds = %bb.gc
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afc, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.afk, ptr noundef nonnull %i.afd)
          to label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454 unwind label %bb.gg

_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454: ; preds = %bb.gd, %bb.gc, %_ZN11ast_manager7dec_refEP3ast.exit.i452
  %i.afl = load ptr, ptr %23, align 8, !tbaa !103, !nonnull !36, !align !37
  %i.afm = load ptr, ptr %i.cm, align 8, !tbaa !105 ; 3 uses
  %.not.i3.i455 = icmp eq ptr %i.afm, null
  br i1 %.not.i3.i455, label %_ZN14dependent_exprD2Ev.exit458, label %bb.ge

bb.ge:                                            ; preds = %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8 ; 2 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !43
  %i.afp = add i32 %i.afo, -1                     ; 2 uses
  store i32 %i.afp, ptr %i.afn, align 4, !tbaa !43
  %i.afq = icmp eq i32 %i.afp, 0
  br i1 %i.afq, label %bb.gf, label %_ZN14dependent_exprD2Ev.exit458

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.afl, ptr noundef nonnull %i.afm)
          to label %_ZN14dependent_exprD2Ev.exit458 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd, %bb.gb
  %i.afr = landingpad { ptr, i32 }
          catch ptr null
  %i.afs = extractvalue { ptr, i32 } %i.afr, 0
  call void @__clang_call_terminate(ptr %i.afs) #16
  unreachable

_ZN14dependent_exprD2Ev.exit458:                  ; preds = %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit.i454, %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.aft = load ptr, ptr %i.cg, align 8, !tbaa !120 ; 4 uses
  %.not.i.i.i459 = icmp eq ptr %i.aft, null
  br i1 %.not.i.i.i459, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460, label %bb.gh

bb.gh:                                            ; preds = %_ZN14dependent_exprD2Ev.exit458
  %i.afu = load ptr, ptr %i.ci, align 8, !tbaa !122, !nonnull !36, !align !37
  %i.afv = load i32, ptr %i.aft, align 4          ; 2 uses
  %i.afw = add i32 %i.afv, 1073741823
  %i.afx = and i32 %i.afw, 1073741823             ; 2 uses
  %i.afy = and i32 %i.afv, -1073741824
  %i.afz = or disjoint i32 %i.afx, %i.afy
  store i32 %i.afz, ptr %i.aft, align 4
  %i.aga = icmp eq i32 %i.afx, 0
  br i1 %i.aga, label %bb.gi, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460

bb.gi:                                            ; preds = %bb.gh
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.agb, ptr noundef nonnull %i.aft)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #16
  unreachable

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460: ; preds = %bb.gi, %bb.gh, %_ZN14dependent_exprD2Ev.exit458
  %i.age = load ptr, ptr %21, align 8, !tbaa !40  ; 3 uses
  %.not.i.i1.i461 = icmp eq ptr %i.age, null
  br i1 %.not.i.i1.i461, label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462, label %bb.gk

bb.gk:                                            ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460
  %i.agf = load ptr, ptr %i.co, align 8, !tbaa !44, !nonnull !36, !align !37
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !43
  %i.agi = add i32 %i.agh, -1                     ; 2 uses
  store i32 %i.agi, ptr %i.agg, align 4, !tbaa !43
  %i.agj = icmp eq i32 %i.agi, 0
  br i1 %i.agj, label %bb.gl, label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.agf, ptr noundef nonnull %i.age)
          to label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462 unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.agk = landingpad { ptr, i32 }
          catch ptr null
  %i.agl = extractvalue { ptr, i32 } %i.agk, 0
  call void @__clang_call_terminate(ptr %i.agl) #16
  unreachable

_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit462: ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i460, %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.agm = add nuw i32 %.0175, 1
  br label %bb.eq, !llvm.loop !182

bb.gn:                                            ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit17.i.i439
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.go:                                            ; preds = %_ZN14dependent_exprC2ER11ast_managerP4exprP3appPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit448, %_ZN26model_reconstruction_trail8add_varsERK14dependent_exprR8ast_mark.exit450
  %i.ago = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14dependent_exprD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #15
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.pn238 = phi { ptr, i32 } [ %i.ago, %bb.go ], [ %i.agn, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gp, %bb.fu
  %.pn241.pn = phi { ptr, i32 } [ %.pn241, %bb.fu ], [ %.pn238, %bb.gp ], [ %lpad.loopexit.split-lp821, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #15
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit.split-lp, %bb.fa
  %.pn241.pn.pn = phi { ptr, i32 } [ %.pn241.pn, %.loopexit.split-lp ], [ %i.aag, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.hp

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit465: ; preds = %.preheader, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489
  %indvars.iv649 = phi i64 [ %indvars.iv.next650, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489 ], [ 0, %.preheader ] ; 4 uses
  %i.agp = phi ptr [ %i.ajd, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489 ], [ %i.yp, %.preheader ] ; 2 uses
  %i.agq = getelementptr inbounds i8, ptr %i.agp, i64 -4
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !62
  %i.ags = zext i32 %i.agr to i64
  %i.agt = icmp samesign ult i64 %indvars.iv649, %i.ags
  br i1 %i.agt, label %bb.gx, label %.critedge527

.critedge527:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit465, %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489, %.preheader
  %i.agu = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 5 uses
  %i.agv = icmp eq ptr %i.agu, null
  br i1 %i.agv, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466:        ; preds = %.critedge527
  %i.agw = getelementptr inbounds i8, ptr %i.agu, i64 -4
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !62 ; 2 uses
  %i.agy = zext i32 %i.agx to i64
  %i.agz = shl nuw nsw i64 %i.agy, 3
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agz
  %.not.i467 = icmp eq i32 %i.agx, 0
  br i1 %.not.i467, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i475, label %.lr.ph.i.i468

.lr.ph.i.i468:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471
  %.06.i.i469 = phi ptr [ %i.ahh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471 ], [ %i.agu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466 ] ; 2 uses
  %i.ahb = load ptr, ptr %.06.i.i469, align 8, !tbaa !63 ; 3 uses
  %i.ahc = load ptr, ptr %20, align 8, !tbaa !64, !nonnull !36, !align !37
  %.not.i.i.i.i.i470 = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i.i.i.i470, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471, label %bb.gr

bb.gr:                                            ; preds = %.lr.ph.i.i468
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !43
  %i.ahf = add i32 %i.ahe, -1                     ; 2 uses
  store i32 %i.ahf, ptr %i.ahd, align 4, !tbaa !43
  %i.ahg = icmp eq i32 %i.ahf, 0
  br i1 %i.ahg, label %bb.gs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ahc, ptr noundef nonnull %i.ahb)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471 unwind label %bb.gu

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471: ; preds = %bb.gs, %bb.gr, %.lr.ph.i.i468
  %i.ahh = getelementptr inbounds nuw i8, ptr %.06.i.i469, i64 8 ; 2 uses
  %i.ahi = icmp ult ptr %i.ahh, %i.aha
  br i1 %i.ahi, label %.lr.ph.i.i468, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i472, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i472: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i471
  %.pre.i473 = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %.pre.i473, null
  br i1 %.not.i.i.i474, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i475

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i475: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i472, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466
  %i.ahj = phi ptr [ %.pre.i473, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i472 ], [ %i.agu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i466 ]
  %i.ahk = getelementptr inbounds i8, ptr %i.ahj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ahk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.gt

bb.gt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i475
  %i.ahl = landingpad { ptr, i32 }
          catch ptr null
  %i.ahm = extractvalue { ptr, i32 } %i.ahl, 0
  call void @__clang_call_terminate(ptr %i.ahm) #16
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.ahn = landingpad { ptr, i32 }
          catch ptr null
  %i.aho = extractvalue { ptr, i32 } %i.ahn, 0
  call void @__clang_call_terminate(ptr %i.aho) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.critedge527, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i472, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.ahp = load ptr, ptr %19, align 8, !tbaa !48  ; 2 uses
  %.not.i.i476 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i476, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ahq = getelementptr inbounds i8, ptr %i.ahp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ahq)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ahr = landingpad { ptr, i32 }
          catch ptr null
  %i.ahs = extractvalue { ptr, i32 } %i.ahr, 0
  call void @__clang_call_terminate(ptr %i.ahs) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %_ZNK26model_reconstruction_trail5entry7is_hideEv.exit.thread

bb.gx:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit465
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %indvars.iv649
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !63 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %25 = load ptr, ptr %5, align 8, !tbaa !69
  invoke void @_ZN13expr_replacer16replace_with_depEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %i.ahu)
          to label %bb.gy unwind label %bb.hf

bb.gy:                                            ; preds = %bb.gx
  %i.ahv = load ptr, ptr %24, align 8, !tbaa !40  ; 4 uses
  %.not232 = icmp eq ptr %i.ahu, %i.ahv
  br i1 %.not232, label %bb.hh, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ahw = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv649 ; 2 uses
  %i.ahy = load ptr, ptr %2, align 8, !tbaa !64, !nonnull !36, !align !37
  %.not.i.i479 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i479, label %_ZN11ast_manager7inc_refEP3ast.exit.i480, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8 ; 2 uses
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !43
  %i.aib = add i32 %i.aia, 1
  store i32 %i.aib, ptr %i.ahz, align 4, !tbaa !43
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i480

_ZN11ast_manager7inc_refEP3ast.exit.i480:         ; preds = %bb.ha, %bb.gz
  %i.aic = load ptr, ptr %i.ahx, align 8, !tbaa !63 ; 3 uses
  %.not.i3.i481 = icmp eq ptr %i.aic, null
  br i1 %.not.i3.i481, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i480
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 2 uses
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !43
  %i.aif = add i32 %i.aie, -1                     ; 2 uses
  store i32 %i.aif, ptr %i.aid, align 4, !tbaa !43
  %i.aig = icmp eq i32 %i.aif, 0
  br i1 %i.aig, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ahy, ptr noundef nonnull %i.aic)
          to label %bb.hd unwind label %bb.hg

bb.hd:                                            ; preds = %bb.hb, %_ZN11ast_manager7inc_refEP3ast.exit.i480, %bb.hc
  store ptr %i.ahv, ptr %i.ahx, align 8, !tbaa !63
  br label %bb.hh

bb.he:                                            ; preds = %bb.es, %bb.eq
  %i.aih = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.hf:                                            ; preds = %bb.gx
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hg:                                            ; preds = %bb.hc
  %i.aij = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #15
  br label %bb.ho

bb.hh:                                            ; preds = %bb.hd, %bb.gy
  %i.aik = load ptr, ptr %i.cp, align 8, !tbaa !120 ; 4 uses
  %.not.i.i.i486 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i486, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ail = load ptr, ptr %i.cq, align 8, !tbaa !122, !nonnull !36, !align !37
  %i.aim = load i32, ptr %i.aik, align 4          ; 2 uses
  %i.ain = add i32 %i.aim, 1073741823
  %i.aio = and i32 %i.ain, 1073741823             ; 2 uses
  %i.aip = and i32 %i.aim, -1073741824
  %i.aiq = or disjoint i32 %i.aio, %i.aip
  store i32 %i.aiq, ptr %i.aik, align 4
  %i.air = icmp eq i32 %i.aio, 0
  br i1 %i.air, label %bb.hj, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487

bb.hj:                                            ; preds = %bb.hi
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ail, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.ais, ptr noundef nonnull %i.aik)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487 unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ait = landingpad { ptr, i32 }
          catch ptr null
  %i.aiu = extractvalue { ptr, i32 } %i.ait, 0
  call void @__clang_call_terminate(ptr %i.aiu) #16
  unreachable

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487: ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.aiv = load ptr, ptr %24, align 8, !tbaa !40  ; 3 uses
  %.not.i.i1.i488 = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i1.i488, label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489, label %bb.hl

bb.hl:                                            ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487
  %i.aiw = load ptr, ptr %i.cr, align 8, !tbaa !44, !nonnull !36, !align !37
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8 ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !43
  %i.aiz = add i32 %i.aiy, -1                     ; 2 uses
  store i32 %i.aiz, ptr %i.aix, align 4, !tbaa !43
  %i.aja = icmp eq i32 %i.aiz, 0
  br i1 %i.aja, label %bb.hm, label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aiw, ptr noundef nonnull %i.aiv)
          to label %_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489 unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajb = landingpad { ptr, i32 }
          catch ptr null
  %i.ajc = extractvalue { ptr, i32 } %i.ajb, 0
  call void @__clang_call_terminate(ptr %i.ajc) #16
  unreachable

_ZNSt4pairI7obj_refI4expr11ast_managerES0_IN18dependency_managerINS2_22expr_dependency_configEE10dependencyES2_EED2Ev.exit489: ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i487, %bb.hl, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1
  %i.ajd = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %.critedge527, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit465, !llvm.loop !183

bb.ho:                                            ; preds = %bb.hg, %bb.hf
  %.pn = phi { ptr, i32 } [ %i.aij, %bb.hg ], [ %i.aii, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %bb.hp

_ZNK26model_reconstruction_trail5entry7is_hideEv.exit.thread: ; preds = %bb.o, %bb.bp, %_ZNK26model_reconstruction_trail5entry8is_looseEv.exit392.thread, %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.p, %_ZNK26model_reconstruction_trail5entry7is_hideEv.exit, %bb.m, %bb.ay, %bb.aj
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0226625, i64 8 ; 2 uses
  %.not230 = icmp eq ptr %i.ajf, %i.av
  br i1 %.not230, label %.loopexit541.loopexit, label %bb.m

bb.hp:                                            ; preds = %bb.gq, %bb.ho, %bb.he
  %.pn241.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aih, %bb.he ], [ %.pn, %bb.ho ], [ %.pn241.pn.pn, %bb.gq ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.loopexit.split-lp536

.loopexit541.loopexit:                            ; preds = %_ZNK26model_reconstruction_trail5entry7is_hideEv.exit.thread
  %.pre663 = load ptr, ptr %5, align 8, !tbaa !69
  br label %.loopexit541

.loopexit541:                                     ; preds = %bb.l, %.loopexit541.loopexit, %_ZNK17scoped_ptr_vectorIN26model_reconstruction_trail5entryEE3endEv.exit, %._crit_edge
  %i.ajg = phi ptr [ %.pre663, %.loopexit541.loopexit ], [ %i.p, %_ZNK17scoped_ptr_vectorIN26model_reconstruction_trail5entryEE3endEv.exit ], [ %i.p, %._crit_edge ], [ %i.p, %bb.l ] ; 4 uses
  %i.ajh = icmp eq ptr %i.ajg, null
  br i1 %i.ajh, label %_ZN10scoped_ptrI13expr_replacerED2Ev.exit, label %bb.hq

bb.hq:                                            ; preds = %.loopexit541
  %i.aji = load ptr, ptr %i.ajg, align 8, !tbaa !59
  %i.ajj = load ptr, ptr %i.aji, align 8
  call void %i.ajj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ajg) #15, !inline_history !184
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ajg)
          to label %_ZN10scoped_ptrI13expr_replacerED2Ev.exit unwind label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ajk = landingpad { ptr, i32 }
          catch ptr null
  %i.ajl = extractvalue { ptr, i32 } %i.ajk, 0
  call void @__clang_call_terminate(ptr %i.ajl) #16
  unreachable

_ZN10scoped_ptrI13expr_replacerED2Ev.exit:        ; preds = %.loopexit541, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %4, align 8, !tbaa !59
  %i.ajm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !45 ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, null
  br i1 %i.ajo, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.hs

bb.hs:                                            ; preds = %_ZN10scoped_ptrI13expr_replacerED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ajn)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ajp = landingpad { ptr, i32 }
          catch ptr null
  %i.ajq = extractvalue { ptr, i32 } %i.ajp, 0
  call void @__clang_call_terminate(ptr %i.ajq) #16
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.hs, %_ZN10scoped_ptrI13expr_replacerED2Ev.exit
  %i.ajr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !45 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %_ZN8ast_markD2Ev.exit, label %bb.hu

bb.hu:                                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ajs)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aju = landingpad { ptr, i32 }
          catch ptr null
  %i.ajv = extractvalue { ptr, i32 } %i.aju, 0
  call void @__clang_call_terminate(ptr %i.ajv) #16
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNK17scoped_ptr_vectorIN26model_reconstruction_trail5entryEE5emptyEv.exit.thread

end_hunk_1
