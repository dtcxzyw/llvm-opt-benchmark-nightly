Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qsat?download=true
inline.NumInlined: 1935
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE:bb.a
  br i1 %i.iu, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !71 ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 16
  call void @llvm.assume(i1 %i.ix)
  %i.iy = add nuw nsw i64 %i.iw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ir, ptr noundef nonnull align 8 dereferenceable(1) %i.it, i64 %i.iy, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.az
  store ptr %i.is, ptr %i.iq, align 8, !tbaa !137
  %i.iz = load i64, ptr %i.it, align 8, !tbaa !72
  store i64 %i.iz, ptr %i.ir, align 8, !tbaa !72
  %.phi.trans.insert.i143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i144 = load i64, ptr %.phi.trans.insert.i143, align 8, !tbaa !71
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ba
  %i.ja = phi i64 [ %i.iw, %bb.ba ], [ %.pre.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %i.ja, ptr %i.jc, align 8, !tbaa !71
  store ptr %i.it, ptr %4, align 8, !tbaa !137
  store i64 0, ptr %i.jb, align 8, !tbaa !71
  store i8 0, ptr %i.it, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.ip, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.be unwind label %bb.bb

bb.bb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %i.je = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.it
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bb
  %i.jg = load i64, ptr %i.it, align 8, !tbaa !72
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.bc:                                            ; preds = %bb.ay
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @__cxa_free_exception(ptr %i.ip) #22
  br label %.body

bb.bd:                                            ; preds = %bb.ax
  %i.jj = zext i32 %i.im to i64
  %i.jk = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ic, i64 noundef %i.jj)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc146:                                        ; preds = %bb.bd
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.e, align 8, !tbaa !59
  store i32 %i.ik, ptr %i.jk, align 4, !tbaa !100
  br label %.noexc110

bb.be:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc110:                                        ; preds = %.noexc146, %.noexc145
  %.pre.i107 = phi ptr [ %i.jl, %.noexc146 ], [ %i.ih, %.noexc145 ] ; 2 uses
  %.phi.trans.insert.i108 = getelementptr inbounds i8, ptr %.pre.i107, i64 -4
  %.pre2.i109 = load i32, ptr %.phi.trans.insert.i108, align 4, !tbaa !100
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit111

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit111:  ; preds = %bb.au, %.noexc110
  %i.jm = phi i32 [ %.pre2.i109, %.noexc110 ], [ %i.ib, %bb.au ] ; 2 uses
  %i.jn = phi ptr [ %.pre.i107, %.noexc110 ], [ %i.hy, %bb.au ] ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -4
  %i.jp = zext i32 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jp
  store ptr %i.hm, ptr %i.jq, align 8, !tbaa !101
  %i.jr = add i32 %i.jm, 1
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !100
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit111, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit106
  %i.js = getelementptr inbounds nuw i8, ptr %.0186, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.js, %i.hg
  br i1 %.not40, label %._crit_edge, label %.lr.ph

_ZNK3app13get_family_idEv.exit:                   ; preds = %._crit_edge
  %i.jt = load i32, ptr %i.hk, align 8, !tbaa !219
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %_ZNK3app13get_family_idEv.exit
  %i.jv = load i32, ptr %i.eh, align 4            ; 3 uses
  %i.jw = and i32 %i.jv, 65535
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %_ZNK11ast_manager5is_eqEPK4expr.exit, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZNK11ast_manager5is_eqEPK4expr.exit:             ; preds = %bb.bg
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = icmp eq i32 %i.jz, 2
  br i1 %i.ka, label %bb.bh, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

bb.bh:                                            ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit
  %i.kb = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.kc = load ptr, ptr %i.hc, align 8, !tbaa !101
  %i.kd = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kb, ptr noundef %i.kc)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.kd, label %._ZNK11ast_manager5is_eqEPK4expr.exit.thread_crit_edge, label %.critedge

._ZNK11ast_manager5is_eqEPK4expr.exit.thread_crit_edge: ; preds = %bb.bi
  %.pre206 = load i32, ptr %i.eh, align 4
  br label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZNK11ast_manager5is_eqEPK4expr.exit.thread:      ; preds = %._ZNK11ast_manager5is_eqEPK4expr.exit.thread_crit_edge, %bb.bg, %_ZNK11ast_manager5is_eqEPK4expr.exit
  %i.ke = phi i32 [ %.pre206, %._ZNK11ast_manager5is_eqEPK4expr.exit.thread_crit_edge ], [ %i.jv, %bb.bg ], [ %i.jv, %_ZNK11ast_manager5is_eqEPK4expr.exit ]
  %i.kf = and i32 %i.ke, 65535
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bj, label %.critedge46.backedge

bb.bj:                                            ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.thread
  %i.kh = load ptr, ptr %i.hh, align 8, !tbaa !133
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !215 ; 3 uses
  %.not.i.i.i.i113 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i113, label %.critedge46.backedge, label %_ZNK11ast_manager11is_distinctEPK4expr.exit

.critedge46.backedge:                             ; preds = %bb.an, %bb.aq, %bb.bj, %_ZNK11ast_manager5is_eqEPK4expr.exit.thread, %_ZN2qe9max_level5mergeERKS0_.exit, %bb.bm, %bb.bn, %bb.cs, %bb.bk, %_ZNK11ast_manager11is_distinctEPK4expr.exit, %bb.at, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit
  %.be = phi ptr [ %i.aw, %bb.aq ], [ %i.aw, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %i.aw, %bb.bj ], [ %i.aw, %_ZNK11ast_manager5is_eqEPK4expr.exit.thread ], [ %i.aw, %_ZN2qe9max_level5mergeERKS0_.exit ], [ %i.aw, %bb.bm ], [ %i.aw, %bb.bn ], [ %i.lk, %bb.cs ], [ %i.aw, %bb.bk ], [ %i.aw, %_ZNK11ast_manager11is_distinctEPK4expr.exit ], [ %i.aw, %bb.at ], [ %i.aw, %bb.an ]
  %.be356 = phi ptr [ %i.ax, %bb.aq ], [ %i.ax, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %i.ax, %bb.bj ], [ %i.ax, %_ZNK11ast_manager5is_eqEPK4expr.exit.thread ], [ %i.ax, %_ZN2qe9max_level5mergeERKS0_.exit ], [ %i.ax, %bb.bm ], [ %i.ax, %bb.bn ], [ %i.le, %bb.cs ], [ %i.ax, %bb.bk ], [ %i.ax, %_ZNK11ast_manager11is_distinctEPK4expr.exit ], [ %i.ax, %bb.at ], [ %i.ax, %bb.an ]
  br label %.critedge46, !llvm.loop !352

_ZNK11ast_manager11is_distinctEPK4expr.exit:      ; preds = %bb.bj
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !219
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = icmp eq i32 %i.kn, 3
  %i.kp = select i1 %i.kl, i1 %i.ko, i1 false
  br i1 %i.kp, label %bb.bk, label %.critedge46.backedge

bb.bk:                                            ; preds = %_ZNK11ast_manager11is_distinctEPK4expr.exit
  %i.kq = load i32, ptr %i.hd, align 8, !tbaa !136
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %.critedge46.backedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ks = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.kt = load ptr, ptr %i.hc, align 8, !tbaa !101
  %i.ku = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ks, ptr noundef %i.kt)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.ku, label %.critedge46.backedge, label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.bi, %_ZNK3app13get_family_idEv.exit, %bb.bm
  %i.kv = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.kw = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kv, ptr noundef nonnull %i.bf)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %.critedge
  br i1 %i.kw, label %bb.bo, label %.critedge46.backedge

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN2qe8pred_abs10fresh_boolEPKc(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.71) align 8 %12, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull @.str.2)
          to label %bb.bp unwind label %bb.co

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kx = load ptr, ptr %i.c, align 8, !tbaa !220, !nonnull !104, !align !105
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !107
  %i.la = add i32 %i.kz, -1                       ; 2 uses
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !107
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.br, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kx, ptr noundef nonnull %i.ax)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #23
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.br, %bb.bq, %bb.bp
  %i.le = load ptr, ptr %12, align 8, !tbaa !210  ; 6 uses
  store ptr %i.le, ptr %9, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.lf = invoke i64 @_ZN2qe8pred_abs13compute_levelEP3app(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %i.bf)
          to label %bb.bt unwind label %bb.cp     ; 4 uses

bb.bt:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  store i64 %i.lf, ptr %13, align 8
  %i.lg = trunc i64 %i.lf to i32                  ; 5 uses
  %i.lh = lshr i64 %i.lf, 32                      ; 3 uses
  %i.li = trunc nuw i64 %i.lh to i32              ; 4 uses
  invoke void @_ZN2qe8pred_abs8add_predEP3appS2_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %i.le, ptr noundef nonnull %i.bf)
          to label %bb.bu unwind label %bb.cp

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.le, ptr %6, align 8, !tbaa !87
  store i64 %i.lf, ptr %i.aq, align 8, !tbaa !100
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprN2qe9max_levelEE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6insertEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.bv unwind label %bb.cp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.lj = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.lk = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.lj, i32 noundef 0, i32 noundef 2, ptr noundef %i.le, ptr noundef nonnull %i.bf)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.cp ; 6 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.bv
  %.not.i118 = icmp eq ptr %i.lk, null            ; 2 uses
  br i1 %.not.i118, label %bb.bw, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !107
  %i.ln = add i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !107
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.lo = load ptr, ptr %10, align 8, !tbaa !210  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.lo, null
  br i1 %.not.i4.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lp = load ptr, ptr %i.d, align 8, !tbaa !220, !nonnull !104, !align !105
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !107
  %i.ls = add i32 %i.lr, -1                       ; 2 uses
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !107
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lp, ptr noundef nonnull %i.lo)
          to label %bb.bz unwind label %bb.cp

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %bb.by
  store ptr %i.lk, ptr %10, align 8, !tbaa !210
  br i1 %.not.i118, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !107
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121: ; preds = %bb.ca, %bb.bz
  %i.lx = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 4 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121
  %i.lz = getelementptr inbounds i8, ptr %i.lx, i64 -4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !100 ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.lx, i64 -8
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !100
  %i.md = icmp eq i32 %i.ma, %i.mc
  br i1 %i.md, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc125 unwind label %bb.cp

.noexc125:                                        ; preds = %bb.cc
  %.pre.i.i122 = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i123 = getelementptr inbounds i8, ptr %.pre.i.i122, i64 -4
  %.pre2.i.i124 = load i32, ptr %.phi.trans.insert.i.i123, align 4, !tbaa !100
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc125, %bb.cb
  %i.me = phi i32 [ %.pre2.i.i124, %.noexc125 ], [ %i.ma, %bb.cb ] ; 2 uses
  %i.mf = phi ptr [ %.pre.i.i122, %.noexc125 ], [ %i.lx, %bb.cb ] ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -4
  %i.mh = zext i32 %i.me to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mh
  store ptr %i.lk, ptr %i.mi, align 8, !tbaa !101
  %i.mj = add i32 %i.me, 1
  store i32 %i.mj, ptr %i.mg, align 4, !tbaa !100
  %i.mk = icmp eq i32 %i.lg, -1                   ; 2 uses
  br i1 %i.mk, label %_ZNK2qe9max_level3maxEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ml = icmp eq i64 %i.lh, 4294967295
  br i1 %i.ml, label %_ZNK2qe9max_level3maxEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.lg, i32 %i.li)
  br label %_ZNK2qe9max_level3maxEv.exit

_ZNK2qe9max_level3maxEv.exit:                     ; preds = %bb.cf, %bb.ce, %bb.cd
  %.0.i.i127 = phi i32 [ %.sroa.speculated.i.i, %bb.cf ], [ %i.li, %bb.cd ], [ %i.lg, %bb.ce ]
  %i.mm = load ptr, ptr %i.hh, align 8, !tbaa !133 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !129 ; 3 uses
  %i.mp = load i32, ptr %i.at, align 8, !tbaa !93 ; 3 uses
  %i.mq = add i32 %i.mp, -1
  %i.mr = and i32 %i.mq, %i.mo                    ; 3 uses
  %i.ms = load ptr, ptr %i.as, align 8, !tbaa !99 ; 3 uses
  %i.mt = zext i32 %i.mr to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.mt, 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx.i.i.i.i ; 3 uses
  %i.mv = zext i32 %i.mp to i64
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.mv
  %.not34.i.i.i.i = icmp eq i32 %i.mr, %i.mp
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ci, %_ZNK2qe9max_level3maxEv.exit
  %.not2736.i.i.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not2736.i.i.i.i, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit.thread, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK2qe9max_level3maxEv.exit, %bb.ci
  %.035.i.i.i.i = phi ptr [ %i.ne, %bb.ci ], [ %i.mu, %_ZNK2qe9max_level3maxEv.exit ] ; 3 uses
  %i.mx = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !135 ; 4 uses
  %i.my = icmp ult ptr %i.mx, inttoptr (i64 2 to ptr)
  br i1 %i.my, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !129
  %i.nb = icmp eq i32 %i.na, %i.mo
  %i.nc = icmp eq ptr %i.mx, %i.mm
  %or.cond.i.i.i.i = and i1 %i.nc, %i.nb
  br i1 %or.cond.i.i.i.i, label %.loopexit.i, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nd = icmp eq ptr %i.mx, null
  br i1 %i.nd, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ne = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.ne, %i.mw
  br i1 %.not.i.i.i.i128, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph38.i.i.i.i.backedge
  %.137.i.i.i.i = phi ptr [ %.137.i.i.i.i.be, %.lr.ph38.i.i.i.i.backedge ], [ %i.ms, %.preheader.i.i.i.i ] ; 4 uses
  %i.nf = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !135 ; 4 uses
  %i.ng = icmp ult ptr %i.nf, inttoptr (i64 2 to ptr)
  br i1 %i.ng, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph38.i.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !129
  %i.nj = icmp eq i32 %i.ni, %i.mo
  %i.nk = icmp eq ptr %i.nf, %i.mm
  %or.cond31.i.i.i.i = and i1 %i.nk, %i.nj
  br i1 %or.cond31.i.i.i.i, label %.loopexit.i, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph38.i.i.i.i
  %i.nl = icmp eq ptr %i.nf, null
  %i.nm = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.nm, %i.mu
  %or.cond43.i.i.i.i = select i1 %i.nl, i1 true, i1 %.not27.i.i.i.i
  br i1 %or.cond43.i.i.i.i, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit.thread, label %.lr.ph38.i.i.i.i.backedge

bb.cl:                                            ; preds = %bb.cj
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i = icmp eq ptr %.old.i.i.i.i, %i.mu
  br i1 %.not27.old.i.i.i.i, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit.thread, label %.lr.ph38.i.i.i.i.backedge

.lr.ph38.i.i.i.i.backedge:                        ; preds = %bb.cl, %bb.ck
  %.137.i.i.i.i.be = phi ptr [ %i.nm, %bb.ck ], [ %.old.i.i.i.i, %bb.cl ]
  br label %.lr.ph38.i.i.i.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.cg, %bb.cj
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.cj ], [ %.035.i.i.i.i, %bb.cg ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !100 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.no to i32 ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.no, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %i.np = icmp eq i32 %.sroa.0.0.extract.trunc.i, -1
  br i1 %i.np, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.i
  %i.nq = icmp eq i64 %.sroa.5.0.extract.shift.i, 4294967295
  br i1 %i.nq, label %_ZN2qe8pred_abs12is_predicateEP3appj.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
end_hunk_0
begin_hunk_1_@_ZN2qe8pred_abs21mk_assumption_literalEP4exprP5modelRKNS_9max_levelER10ref_vectorIS1_11ast_managerE:bb.a
  %i.ef = icmp eq ptr %i.dz, null
  br i1 %i.ef, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %.035.i.i.i75, i64 16 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.eg, %i.co
  br i1 %.not.i.i.i77, label %.preheader.i.i.i78, label %.lr.ph.i.i.i74, !llvm.loop !13

.lr.ph38.i.i.i80:                                 ; preds = %.preheader.i.i.i78, %.lr.ph38.i.i.i80.backedge
  %.137.i.i.i81 = phi ptr [ %.137.i.i.i81.be, %.lr.ph38.i.i.i80.backedge ], [ %i.ck, %.preheader.i.i.i78 ] ; 3 uses
  %i.eh = load ptr, ptr %.137.i.i.i81, align 8, !tbaa !113 ; 4 uses
  %i.ei = icmp ult ptr %i.eh, inttoptr (i64 2 to ptr)
  br i1 %i.ei, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph38.i.i.i80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !129
  %i.el = icmp eq i32 %i.ek, %i.dv
  %i.em = icmp eq ptr %i.eh, %i.dt
  %or.cond31.i.i.i82 = and i1 %i.em, %i.el
  br i1 %or.cond31.i.i.i82, label %.loopexit, label %bb.ag

bb.af:                                            ; preds = %.lr.ph38.i.i.i80
  %i.en = icmp eq ptr %i.eh, null
  %i.eo = getelementptr inbounds nuw i8, ptr %.137.i.i.i81, i64 16 ; 2 uses
  %.not27.i.i.i89 = icmp eq ptr %i.eo, %i.dy
  %or.cond43.i.i.i90 = select i1 %i.en, i1 true, i1 %.not27.i.i.i89
  br i1 %or.cond43.i.i.i90, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread, label %.lr.ph38.i.i.i80.backedge

bb.ag:                                            ; preds = %bb.ae
  %.old.i.i.i83 = getelementptr inbounds nuw i8, ptr %.137.i.i.i81, i64 16 ; 2 uses
  %.not27.old.i.i.i84 = icmp eq ptr %.old.i.i.i83, %i.dy
  br i1 %.not27.old.i.i.i84, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread, label %.lr.ph38.i.i.i80.backedge

.lr.ph38.i.i.i80.backedge:                        ; preds = %bb.ag, %bb.af
  %.137.i.i.i81.be = phi ptr [ %i.eo, %bb.af ], [ %.old.i.i.i83, %bb.ag ]
  br label %.lr.ph38.i.i.i80, !llvm.loop !14

.loopexit:                                        ; preds = %bb.ab, %bb.ae
  %.not.i92 = icmp eq ptr %i.c, null
  br i1 %.not.i92, label %_ZN7obj_refI3app11ast_managerED2Ev.exit136, label %_ZN7obj_refI3app11ast_managerED2Ev.exit136.sink.split

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread: ; preds = %bb.ac, %bb.ag, %bb.af, %.preheader.i.i.i78, %bb.y, %.loopexit172, %_ZNK11ast_manager6is_notEPK4expr.exit.i70, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN2qe8pred_abs10fresh_boolEPKc(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.71) align 8 %14, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull @.str.3)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.al

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread
  %i.ep = load ptr, ptr %14, align 8, !tbaa !210  ; 17 uses
  store ptr %i.ep, ptr %11, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.eq = load i32, ptr %i.ao, align 4
  %i.er = and i32 %i.eq, 65535
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !133
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !215 ; 3 uses
  %.not.i.i.i.i.i101 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i101, label %bb.an, label %_ZNK11ast_manager6is_notEPK4expr.exit.i102

_ZNK11ast_manager6is_notEPK4expr.exit.i102:       ; preds = %bb.ah
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !219
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = icmp eq i32 %i.fa, 8
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i102
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !136
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !101 ; 2 uses
  %.not15 = icmp eq ptr %3, null
  %.pre206 = load ptr, ptr %1, align 8, !tbaa !123 ; 2 uses
  br i1 %.not15, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !133
  %i.fk = getelementptr inbounds nuw i8, ptr %.pre206, i64 840
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !207
  invoke void @_ZN10model_core13register_declEP9func_declP4expr(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef %i.fj, ptr noundef %i.fl)
          to label %._crit_edge unwind label %bb.i

._crit_edge:                                      ; preds = %bb.ak
  %.pre = load ptr, ptr %1, align 8, !tbaa !123
  br label %bb.am

bb.al:                                            ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit71.thread
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bp

bb.am:                                            ; preds = %._crit_edge, %bb.aj
  %i.fn = phi ptr [ %.pre, %._crit_edge ], [ %.pre206, %bb.aj ]
  %i.fo = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fn, i32 noundef 0, i32 noundef 8, ptr noundef %i.ep)
          to label %_ZN11ast_manager6mk_notEP4expr.exit105 unwind label %bb.i ; 2 uses

_ZN11ast_manager6mk_notEP4expr.exit105:           ; preds = %bb.am
  %.not.i106 = icmp eq ptr %i.fo, null
  br i1 %.not.i106, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split

bb.an:                                            ; preds = %bb.ai, %_ZNK11ast_manager6is_notEPK4expr.exit.i102, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ah
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !133
  %i.fr = load ptr, ptr %1, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 832
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !228
  invoke void @_ZN10model_core13register_declEP9func_declP4expr(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef %i.fq, ptr noundef %i.ft)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split unwind label %bb.i

bb.ap:                                            ; preds = %bb.an
  %.not.i111 = icmp eq ptr %i.ep, null
  br i1 %.not.i111, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split: ; preds = %bb.ap, %bb.ao, %_ZN11ast_manager6mk_notEP4expr.exit105
  %.sink275 = phi ptr [ %i.fo, %_ZN11ast_manager6mk_notEP4expr.exit105 ], [ %i.ep, %bb.ao ], [ %i.ep, %bb.ap ] ; 2 uses
  %.ph = phi ptr [ %i.fh, %_ZN11ast_manager6mk_notEP4expr.exit105 ], [ %i.c, %bb.ao ], [ %i.c, %bb.ap ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink275, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !107
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !107
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110:   ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split, %bb.ap, %_ZN11ast_manager6mk_notEP4expr.exit105
  %storemerge = phi ptr [ null, %_ZN11ast_manager6mk_notEP4expr.exit105 ], [ null, %bb.ap ], [ %.sink275, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split ]
  %i.fx = phi ptr [ %i.fh, %_ZN11ast_manager6mk_notEP4expr.exit105 ], [ %i.c, %bb.ap ], [ %.ph, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110.sink.split ] ; 10 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !151
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ep, ptr %8, align 8, !tbaa !87
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ga = load i64, ptr %4, align 4, !tbaa !100
  store i64 %i.ga, ptr %i.fz, align 8, !tbaa !100
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprN2qe9max_levelEE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6insertEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.aq unwind label %bb.i

bb.aq:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN2qe8pred_abs6insertEP3appRKNS_9max_levelE(ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.ep, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.ar unwind label %bb.i

bb.ar:                                            ; preds = %bb.aq
  %.not.i117 = icmp eq ptr %i.fx, null            ; 3 uses
  br i1 %.not.i117, label %bb.as, label %_ZN11ast_manager7inc_refEP3ast.exit.i118

_ZN11ast_manager7inc_refEP3ast.exit.i118:         ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !107
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !107
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN11ast_manager7inc_refEP3ast.exit.i118
  store ptr %i.fx, ptr %12, align 8, !tbaa !151
  invoke void @_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.fx, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.at unwind label %bb.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %15, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.fx)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i117, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit126, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !107
  %i.gg = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !107
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.aw, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit126

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef nonnull %i.fx)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit126 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit126:      ; preds = %bb.aw, %bb.av, %bb.au
  %i.gk = load ptr, ptr %15, align 8, !tbaa !151  ; 5 uses
  store ptr %i.gk, ptr %12, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.gl = load ptr, ptr %1, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.gm = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gl, i32 noundef 0, i32 noundef 2, ptr noundef %i.ep, ptr noundef %i.gk)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.i ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit126
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !107
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.ay, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !59 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !100 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 -8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !100
  %i.gx = icmp eq i32 %i.gu, %i.gw
  br i1 %i.gx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gq)
          to label %.noexc128 unwind label %bb.i

.noexc128:                                        ; preds = %bb.ba
  %.pre.i.i = load ptr, ptr %i.gq, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !100
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc128, %bb.az
  %i.gy = phi i32 [ %.pre2.i.i, %.noexc128 ], [ %i.gu, %bb.az ] ; 2 uses
  %i.gz = phi ptr [ %.pre.i.i, %.noexc128 ], [ %i.gr, %bb.az ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hb = zext i32 %i.gy to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hb
  store ptr %i.gm, ptr %i.hc, align 8, !tbaa !101
  %i.hd = add i32 %i.gy, 1
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !100
  %.not.i.i129 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i129, label %_ZN11ast_manager7inc_refEP3ast.exit.i130, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !107
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !107
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i130

_ZN11ast_manager7inc_refEP3ast.exit.i130:         ; preds = %bb.bc, %bb.bb
  br i1 %.not.i117, label %_ZN11ast_manager7inc_refEP3ast.exit2.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i130
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !107
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !107
  br label %_ZN11ast_manager7inc_refEP3ast.exit2.i

_ZN11ast_manager7inc_refEP3ast.exit2.i:           ; preds = %bb.bd, %_ZN11ast_manager7inc_refEP3ast.exit.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.fx, ptr %7, align 8, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ep, ptr %i.hk, align 8, !tbaa !140
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6insertEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc131 unwind label %bb.i

.noexc131:                                        ; preds = %_ZN11ast_manager7inc_refEP3ast.exit2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.ep, ptr %6, align 8, !tbaa !45
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fx, ptr %i.hl, align 8, !tbaa !139
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.bf unwind label %bb.i

bb.be:                                            ; preds = %bb.at
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bp

bb.bf:                                            ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.not.i.i133 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i133, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit134, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !107
  %i.hp = add i32 %i.ho, -1                       ; 2 uses
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !107
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.bh, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit134

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef nonnull %i.gk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit134 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit134:      ; preds = %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.not.i.i135 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i135, label %_ZN7obj_refI3app11ast_managerED2Ev.exit136.thread, label %bb.bj

bb.bj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit134
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !107
  %i.hv = add i32 %i.hu, -1                       ; 2 uses
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !107
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bk, label %_ZN7obj_refI3app11ast_managerED2Ev.exit136.thread

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef nonnull %i.ep)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit136.thread unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #23
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit136.thread: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit134, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bm

_ZN7obj_refI3app11ast_managerED2Ev.exit136.sink.split: ; preds = %.loopexit, %.loopexit171, %_ZN11ast_manager6mk_notEP4expr.exit, %.loopexit178
  %.sink280 = phi ptr [ %i.c, %.loopexit171 ], [ %i.ce, %_ZN11ast_manager6mk_notEP4expr.exit ], [ %i.al, %.loopexit178 ], [ %i.c, %.loopexit ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sink280, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !107
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !107
  br label %_ZN7obj_refI3app11ast_managerED2Ev.exit136

_ZN7obj_refI3app11ast_managerED2Ev.exit136:       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit136.sink.split, %.loopexit, %.loopexit171, %_ZN11ast_manager6mk_notEP4expr.exit, %.loopexit178
  %.sink = phi ptr [ %i.ce, %_ZN11ast_manager6mk_notEP4expr.exit ], [ %i.c, %.loopexit171 ], [ %i.c, %.loopexit ], [ %i.al, %.loopexit178 ], [ %.sink280, %_ZN7obj_refI3app11ast_managerED2Ev.exit136.sink.split ]
  store ptr %.sink, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.not.i.i137 = icmp eq ptr %i.c, null
  br i1 %.not.i.i137, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit138, label %bb.bm

bb.bm:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit136.thread, %_ZN7obj_refI3app11ast_managerED2Ev.exit136
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !107
  %i.ie = add i32 %i.id, -1                       ; 2 uses
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !107
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bn, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit138

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef nonnull %i.c)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit138 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit138:      ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit136, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.bp:                                            ; preds = %bb.be, %bb.al, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.hm, %bb.be ], [ %i.fm, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bp ], [ %i.am, %bb.h ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #22
end_hunk_1
begin_hunk_2_@_ZN2qe8pred_abs13get_free_varsEP4exprR10ref_vectorI3app11ast_managerE:bb.a
  %i.gs = icmp eq ptr %i.gr, null
  %or.cond.i.i.i.i48 = or i1 %.not.i.i.i.i47, %i.gs
  br i1 %or.cond.i.i.i.i48, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gr)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #23
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %.loopexit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn25.pn = phi { ptr, i32 } [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ez, %bb.y ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.g = lshr exact i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !234
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65537
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !371

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -65537
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !234
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -65537
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -65537
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !231
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !232
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i.i = icmp eq ptr %i.ai, %i.aj
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ak
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2qe8pred_abs13validate_defsER5model(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref, align 8             ; 7 uses
  %3 = alloca %class.obj_ref, align 8             ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 5 uses
  %5 = alloca %class.obj_ref, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i.i.i.i, label %_ZNK7obj_mapI4exprPS0_E5beginEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !113
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %bb.b, label %_ZNK7obj_mapI4exprPS0_E5beginEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i.i, label %_ZNK7obj_mapI4exprPS0_E5beginEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNK7obj_mapI4exprPS0_E5beginEv.exit:             ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %.not35 = icmp eq ptr %.sroa.0.1.i.i, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7obj_mapI4exprPS0_E5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, %_ZNK7obj_mapI4exprPS0_E5beginEv.exit
  %.012.lcssa = phi i1 [ true, %_ZNK7obj_mapI4exprPS0_E5beginEv.exit ], [ %.1, %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit ]
  ret i1 %.012.lcssa

bb.c:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit
  %.01237 = phi i1 [ true, %.lr.ph ], [ %.1, %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit ]
  %.sroa.026.036 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph ], [ %.sroa.026.2, %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105 ; 4 uses
  store ptr null, ptr %2, align 8, !tbaa !151
  store ptr %i.m, ptr %i.k, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !151
  store ptr %i.m, ptr %i.l, align 8, !tbaa !34
  %i.n = load ptr, ptr %.sroa.026.036, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.036, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5modelclEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.n)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.c
  %i.q = load ptr, ptr %4, align 8, !tbaa !151    ; 6 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5modelclEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.p)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit20 unwind label %bb.e

_ZN7obj_refI4expr11ast_managerED2Ev.exit20:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.r = load ptr, ptr %5, align 8, !tbaa !151    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.s = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !228  ; 2 uses
  %i.v = icmp eq ptr %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 840
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !207  ; 2 uses
  %i.y = icmp eq ptr %i.r, %i.x
  %or.cond.a = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond.a, label %thread-pre-split, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit20._crit_edge

_ZN7obj_refI4expr11ast_managerED2Ev.exit20._crit_edge: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit20
  %6 = icmp ne ptr %i.q, %i.x
  %7 = icmp ne ptr %i.r, %i.u
  %or.cond55.not = select i1 %6, i1 true, i1 %7
  %spec.select = select i1 %or.cond55.not, i1 %.01237, i1 false
  br label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

thread-pre-split:                                 ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit20._crit_edge, %_ZN7obj_refI4expr11ast_managerED2Ev.exit20
  %.1 = phi i1 [ false, %_ZN7obj_refI4expr11ast_managerED2Ev.exit20 ], [ %spec.select, %_ZN7obj_refI4expr11ast_managerED2Ev.exit20._crit_edge ] ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.r, null
  br i1 %.not.i.i21, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22, label %bb.f

bb.f:                                             ; preds = %thread-pre-split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !107
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !107
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull %i.r)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit22:       ; preds = %thread-pre-split, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not.i.i23 = icmp eq ptr %i.q, null
  br i1 %.not.i.i23, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit24, label %bb.i

bb.i:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !107
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !107
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit24

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull %i.q)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit24 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit24:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit22, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.026.036, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit24, %bb.l
  %.sroa.026.1 = phi ptr [ %i.aq, %bb.l ], [ %i.an, %_ZN7obj_refI4expr11ast_managerED2Ev.exit24 ] ; 3 uses
  %i.ao = load ptr, ptr %.sroa.026.1, align 8, !tbaa !113
  %i.ap = icmp ult ptr %i.ao, inttoptr (i64 2 to ptr)
  br i1 %i.ap, label %bb.l, label %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.026.1, i64 16 ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.aq, %i.f
  br i1 %.not.i.i25, label %_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.l, %_ZN7obj_refI4expr11ast_managerED2Ev.exit24
  %.sroa.026.2 = phi ptr [ %i.an, %_ZN7obj_refI4expr11ast_managerED2Ev.exit24 ], [ %.sroa.026.1, %.lr.ph.i.i ], [ %i.aq, %bb.l ] ; 2 uses
  %.not = icmp eq ptr %.sroa.026.2, %i.j
  br i1 %.not, label %._crit_edge, label %bb.c

bb.m:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.z, %bb.d ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN5modelclEP4expr(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2qe8maximizeERK10ref_vectorI4expr11ast_managerEP3appR16inf_eps_rationalI12inf_rationalER3refI5modelERK10params_ref(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.qe::qsat", align 8          ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !103, !nonnull !104, !align !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN2qe4qsatC2ER11ast_managerRK10params_refNS_9qsat_modeE(ptr noundef nonnull align 8 dereferenceable(600) %5, ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 3)
  %i.b = invoke noundef i32 @_ZN2qe4qsat8maximizeERK10ref_vectorI4expr11ast_managerEP3appR3refI5modelER16inf_eps_rationalI12inf_rationalE(ptr noundef nonnull align 8 dereferenceable(600) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2qe4qsatD2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2qe4qsatD2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe4qsatC2ER11ast_managerRK10params_refNS_9qsat_modeE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.params_ref, align 8          ; 7 uses
  %5 = alloca %class.params_ref, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !372
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN2qe4qsatE, i64 16), ptr %0, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !149
  invoke void @_ZN2qe6mbprojC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.i, align 8, !tbaa !34
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.24, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.25, i32 noundef 0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.26, i32 noundef 2)
          to label %_ZN2qe6kernelC2ER11ast_manager.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #22
  call void @_ZN3refI6solverED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #22
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #22
  br label %.body

_ZN2qe6kernelC2ER11ast_manager.exit:              ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %1, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.o, align 8, !tbaa !34
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.24, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN2qe6kernelC2ER11ast_manager.exit
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.25, i32 noundef 0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.26, i32 noundef 2)
          to label %_ZN2qe6kernelC2ER11ast_manager.exit33 unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN2qe6kernelC2ER11ast_manager.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #22
  call void @_ZN3refI6solverED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #22
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #22
  br label %.body31

_ZN2qe6kernelC2ER11ast_manager.exit33:            ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke void @_ZN2qe8pred_absC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(216) %i.s, ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN2qe6kernelC2ER11ast_manager.exit33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.u = ptrtoint ptr %1 to i64                   ; 4 uses
  store i64 %i.u, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !244
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
end_hunk_2
begin_hunk_3_@_ZN2qe4qsatC2ER11ast_managerRK10params_refNS_9qsat_modeE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.bg, align 8, !tbaa !272
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 1, ptr %i.bh, align 8, !tbaa !271
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, -4
  store i8 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.bl, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !149
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.20, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2qe6mbproj11updt_paramsERK10params_ref(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.l:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.p

bb.m:                                             ; preds = %_ZN2qe6kernelC2ER11ast_manager.exit33
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ai) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ag) #22
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #22
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ad) #22
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ab) #22
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  call void @_ZN6vectorI10ref_vectorI3app11ast_managerELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.w) #22
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.t) #22
  call void @_ZN2qe8pred_absD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.s) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bn, %bb.m ]
  call void @_ZN2qe6kernelD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.m) #22
  br label %.body31

.body31:                                          ; preds = %bb.h, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.o ], [ %i.p, %bb.h ]
  call void @_ZN2qe6kernelD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #22
  br label %.body

.body:                                            ; preds = %bb.e, %.body31
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body31 ], [ %i.j, %bb.e ]
  call void @_ZN2qe6mbprojD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #22
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.bm, %bb.l ]
  call void @_ZN10statisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #22
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2qe4qsat8maximizeERK10ref_vectorI4expr11ast_managerEP3appR3refI5modelER16inf_eps_rationalI12inf_rationalE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.qe::max_level", align 4    ; 5 uses
  %6 = alloca %class.ref_vector, align 8          ; 12 uses
  %7 = alloca %class.obj_ref, align 8             ; 14 uses
  %8 = alloca %class.obj_ref, align 8             ; 5 uses
  %9 = alloca %class.obj_ref, align 8             ; 6 uses
  %10 = alloca %class.obj_ref, align 8            ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %6, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.e = load ptr, ptr %1, align 8, !tbaa !103, !noalias !380, !nonnull !104, !align !105
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59, !noalias !380 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100, !noalias !380
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.e, i32 noundef %.0.i.i.i, ptr noundef %i.g)
          to label %.noexc unwind label %bb.ad    ; 3 uses

.noexc:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !103, !noalias !380, !nonnull !104, !align !105
  store ptr %i.k, ptr %7, align 8, !tbaa !151, !alias.scope !380
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34, !alias.scope !380
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !107, !noalias !380
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !107, !noalias !380
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc
  invoke void @_ZN2qe4qsat5hoistER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.al

bb.c:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %2, ptr %i.q, align 8, !tbaa !274
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %4, ptr %i.r, align 8, !tbaa !275
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !276
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !244  ; 5 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !287
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !287
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.u) #22, !inline_history !375
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.u)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 -1, ptr %5, align 4, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !89
  invoke void @_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %i.ab, ptr noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.al

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ae = load ptr, ptr %7, align 8, !tbaa !151
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %8, ptr noundef nonnull align 8 dereferenceable(216) %i.ab, ptr noundef %i.ae)
          to label %bb.h unwind label %bb.ae

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i.i29, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !107
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !107
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ag, ptr noundef nonnull %i.af)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.j, %bb.i, %bb.h
  %i.an = load ptr, ptr %8, align 8, !tbaa !151
  store ptr %i.an, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ap = load ptr, ptr %6, align 8, !tbaa !103, !noalias !381, !nonnull !104, !align !105
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !59, !noalias !381 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i31, label %bb.l

bb.l:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !100, !noalias !381
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i31

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i31: ; preds = %bb.l, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.0.i.i.i32 = phi i32 [ %i.at, %bb.l ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ]
  %i.au = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ap, i32 noundef %.0.i.i.i32, ptr noundef %i.aq)
          to label %.noexc35 unwind label %bb.af  ; 7 uses

.noexc35:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i31
  %i.av = load ptr, ptr %6, align 8, !tbaa !103, !noalias !381, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.au, ptr %9, align 8, !tbaa !151, !alias.scope !381
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !34, !alias.scope !381
  %.not.i.i.i33 = icmp eq ptr %i.au, null         ; 2 uses
  br i1 %.not.i.i.i33, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit36, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i34

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i34:      ; preds = %.noexc35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !107, !noalias !381
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !107, !noalias !381
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit36

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit36: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i34, %.noexc35
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 832
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !228
  %i.bd = icmp eq ptr %i.au, %i.bc
  br i1 %i.bd, label %_ZN2qe6kernel11assert_exprEP4expr.exit, label %bb.m

bb.m:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef %i.au)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit unwind label %bb.ag

_ZN2qe6kernel11assert_exprEP4expr.exit:           ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit36, %bb.m
  br i1 %.not.i.i.i33, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39, label %bb.n

bb.n:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !107
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !107
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.av, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit39:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.bn = load ptr, ptr %6, align 8, !tbaa !103, !noalias !382, !nonnull !104, !align !105
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !59, !noalias !382 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i40, label %bb.q

bb.q:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit39
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !100, !noalias !382
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i40

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i40: ; preds = %bb.q, %_ZN7obj_refI4expr11ast_managerED2Ev.exit39
  %.0.i.i.i41 = phi i32 [ %i.br, %bb.q ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit39 ]
  %i.bs = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bn, i32 noundef %.0.i.i.i41, ptr noundef %i.bo)
          to label %.noexc44 unwind label %bb.ai  ; 7 uses

.noexc44:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i40
  %i.bt = load ptr, ptr %6, align 8, !tbaa !103, !noalias !382, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.bs, ptr %10, align 8, !tbaa !151, !alias.scope !382
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !34, !alias.scope !382
  %.not.i.i.i42 = icmp eq ptr %i.bs, null         ; 2 uses
  br i1 %.not.i.i.i42, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit45, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i43

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i43:      ; preds = %.noexc44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !107, !noalias !382
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !107, !noalias !382
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit45

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit45: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i43, %.noexc44
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 832
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !228
  %i.cb = icmp eq ptr %i.bs, %i.ca
  br i1 %i.cb, label %_ZN2qe6kernel11assert_exprEP4expr.exit47, label %bb.r

bb.r:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit45
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef %i.bs)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit47 unwind label %bb.aj

_ZN2qe6kernel11assert_exprEP4expr.exit47:         ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit45, %bb.r
  br i1 %.not.i.i.i42, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49, label %bb.s

bb.s:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !107
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !107
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bt, ptr noundef nonnull %i.bs)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit49:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit47, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ck = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %i.cl = load ptr, ptr %i.ao, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 832
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !228
  %i.co = icmp eq ptr %i.ck, %i.cn
  br i1 %i.co, label %_ZN2qe6kernel11assert_exprEP4expr.exit51, label %bb.v

bb.v:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit49
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.cq, ptr noundef %i.ck)
          to label %._ZN2qe6kernel11assert_exprEP4expr.exit51_crit_edge unwind label %bb.al

._ZN2qe6kernel11assert_exprEP4expr.exit51_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %7, align 8, !tbaa !151
  br label %_ZN2qe6kernel11assert_exprEP4expr.exit51

_ZN2qe6kernel11assert_exprEP4expr.exit51:         ; preds = %._ZN2qe6kernel11assert_exprEP4expr.exit51_crit_edge, %_ZN7obj_refI4expr11ast_managerED2Ev.exit49
  %i.cr = phi ptr [ %.pre, %._ZN2qe6kernel11assert_exprEP4expr.exit51_crit_edge ], [ %i.ck, %_ZN7obj_refI4expr11ast_managerED2Ev.exit49 ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.ct = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.cs, i32 noundef 0, i32 noundef 8, ptr noundef %i.cr)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.al ; 2 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit51
  %i.cu = load ptr, ptr %i.bm, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 832
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !228
  %i.cx = icmp eq ptr %i.ct, %i.cw
  br i1 %i.cx, label %_ZN2qe6kernel11assert_exprEP4expr.exit54, label %bb.w

bb.w:                                             ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.cz, ptr noundef %i.ct)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit54 unwind label %bb.al

_ZN2qe6kernel11assert_exprEP4expr.exit54:         ; preds = %_ZN11ast_manager6mk_notEP4expr.exit, %bb.w
  %i.da = invoke noundef i32 @_ZN2qe4qsat9check_satEv(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit54
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !244 ; 7 uses
  %.not.i = icmp eq ptr %i.dc, null               ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !287
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !287
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dg = load ptr, ptr %3, align 8, !tbaa !244   ; 5 uses
  %.not.i.i55 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i55, label %bb.ac, label %bb.aa
end_hunk_3
begin_hunk_4_@_ZN2qe4qsatclERK3refI4goalER11sref_bufferIS2_Lj16EE:bb.a
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %i.f, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !68
  %i.i = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.i, ptr %i.g, align 8, !tbaa !137
  %i.p = load i64, ptr %i.j, align 8, !tbaa !72
  store i64 %i.p, ptr %i.h, align 8, !tbaa !72
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !71
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = phi i64 [ %i.m, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.q, ptr %i.s, align 8, !tbaa !71
  store ptr %i.j, ptr %6, align 8, !tbaa !137
  store i64 0, ptr %i.r, align 8, !tbaa !71
  store i8 0, ptr %i.j, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI16tactic_exception, ptr nonnull @_ZN16tactic_exceptionD2Ev) #24
          to label %bb.ec unwind label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.f:                                             ; preds = %_ZN22model_evaluator_paramsC2ERK10params_ref.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.g:                                             ; preds = %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.g
  %i.y = load i64, ptr %i.j, align 8, !tbaa !72
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ea

bb.h:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.ea

bb.i:                                             ; preds = %_ZNK22model_evaluator_params16array_equalitiesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !273, !nonnull !104, !align !105 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %9, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr null, ptr %10, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !34
  %i.ag = load ptr, ptr %1, align 8, !tbaa !409
  invoke void @_ZNK4goal12get_formulasER10ptr_vectorI4exprE(ptr noundef nonnull align 8 dereferenceable(124) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.ai = load ptr, ptr %8, align 8, !tbaa !59    ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !100
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.al, %bb.k ], [ 0, %bb.j ]
  %i.am = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ah, i32 noundef %.0.i.i, ptr noundef %i.ai)
          to label %_Z6mk_andR11ast_managerRK10ptr_vectorI4exprE.exit unwind label %bb.aa ; 6 uses

_Z6mk_andR11ast_managerRK10ptr_vectorI4exprE.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.l, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_Z6mk_andR11ast_managerRK10ptr_vectorI4exprE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !107
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_Z6mk_andR11ast_managerRK10ptr_vectorI4exprE.exit
  %i.aq = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.aq, null
  br i1 %.not.i4.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !107
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !107
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, ptr noundef nonnull %i.aq)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  store ptr %i.am, ptr %10, align 8, !tbaa !151
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !270 ; 4 uses
  %switch = icmp ult i32 %i.ax, 2
  br i1 %switch, label %bb.p, label %.thread193

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %trunc = trunc i32 %i.az to i16
  switch i16 %trunc, label %.thread [
    i16 0, label %.split
    i16 2, label %bb.q
  ]

.split:                                           ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 30
  %i.bb = load i8, ptr %i.ba, align 2
  %i.bc = and i8 %i.bb, 2
  %.not196 = icmp eq i8 %i.bc, 0
  br i1 %.not196, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p, %.split
  store i32 2, ptr %i.aw, align 8, !tbaa !414
  br label %.thread193

bb.q:                                             ; preds = %bb.p, %.split
  %i.bd = icmp eq i32 %i.ax, 1
  br i1 %i.bd, label %bb.r, label %.thread193

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN2qe4qsat8elim_recEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %11, ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull %i.am)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !107
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !107
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bf, ptr noundef nonnull %i.be)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.u, %bb.t, %bb.s
  %i.bm = load ptr, ptr %11, align 8, !tbaa !151
  store ptr %i.bm, ptr %10, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bn = load ptr, ptr %1, align 8, !tbaa !409
  invoke void @_ZN4goal5resetEv(ptr noundef nonnull align 8 dereferenceable(124) %i.bn)
          to label %bb.w unwind label %bb.bw

bb.w:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !409
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = add i32 %i.bq, 1
  %i.bs = and i32 %i.br, 67108863
  %i.bt = and i32 %i.bq, -67108864
  %i.bu = or disjoint i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.bp, align 8
  %i.bv = load ptr, ptr %1, align 8, !tbaa !409
  %i.bw = load ptr, ptr %10, align 8, !tbaa !151
  invoke void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124) %i.bv, ptr noundef %i.bw, ptr noundef null)
          to label %_ZN4goal11assert_exprEP4expr.exit unwind label %bb.bw

_ZN4goal11assert_exprEP4expr.exit:                ; preds = %bb.w
  %i.bx = load ptr, ptr %1, align 8, !tbaa !409   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4goal11assert_exprEP4expr.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !317
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !317
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i: ; preds = %bb.x, %_ZN4goal11assert_exprEP4expr.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !320 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !321 ; 2 uses
  %.not.i.i65 = icmp ult i32 %i.cc, %i.ce
  br i1 %.not.i.i65, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !322
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit

bb.y:                                             ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ch)
          to label %.noexc66 unwind label %bb.bw  ; 4 uses

.noexc66:                                         ; preds = %bb.y
  %i.cj = load i32, ptr %i.cb, align 8, !tbaa !320 ; 4 uses
  %.not.i.i1.i = icmp eq i32 %i.cj, 0
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !322 ; 5 uses
  br i1 %.not.i.i1.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc66
  %wide.trip.count.i.i.i = zext i32 %i.cj to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.cj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !323
  %wide.load263 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !323
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %wide.load, ptr %i.ck, align 8, !tbaa !323
  store <2 x ptr> %wide.load263, ptr %i.cn, align 8, !tbaa !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block, %.noexc66
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.cp
  %i.cq = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.cq
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc67 unwind label %bb.bw

.noexc67:                                         ; preds = %bb.z
  %.pre2.pre.i.i = load i32, ptr %i.cb, align 8, !tbaa !320
  br label %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !323
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !323
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !393

_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i:    ; preds = %.noexc67, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.cj, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc67 ]
  store ptr %i.ci, ptr %2, align 8, !tbaa !322
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !321
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit: ; preds = %._crit_edge.i.i, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i
  %i.cu = phi i32 [ %i.cc, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ci, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  store ptr %i.bx, ptr %i.cx, align 8, !tbaa !323
  %i.cy = add i32 %i.cu, 1
  store i32 %i.cy, ptr %i.cb, align 8, !tbaa !320
  br label %bb.do

bb.aa:                                            ; preds = %bb.n, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ab:                                            ; preds = %bb.r
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dy

.thread193:                                       ; preds = %bb.o, %.thread, %bb.q
  %i.db = load ptr, ptr %0, align 8, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %bb.ac unwind label %bb.bw

bb.ac:                                            ; preds = %.thread193
  %i.de = load i32, ptr %i.aw, align 8, !tbaa !270
  %.not = icmp eq i32 %i.de, 2
  br i1 %.not, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_Z8push_notRK7obj_refI4expr11ast_managerEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 8)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.df = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.df, null
  br i1 %.not.i.i69, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit72, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !107
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !107
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ag, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit72

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dg, ptr noundef nonnull %i.df)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit72 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit72:       ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dn = load ptr, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %10, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dy

bb.aj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit72, %bb.ac
  invoke void @_ZN2qe4qsat5hoistER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ak unwind label %bb.bw

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = and i32 %i.dr, 65535
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_Z9is_groundPK4expr.exit, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit:                         ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 30
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %bb.ap, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit.thread:                  ; preds = %bb.ak, %_Z9is_groundPK4expr.exit
  %i.dx = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_Z9is_groundPK4expr.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %i.dx, align 8, !tbaa !65
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 3 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !68
  %i.ea = load ptr, ptr %13, align 8, !tbaa !137  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !71 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.eg, i1 false)
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.al
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !137
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !72
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !72
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre199 = load i64, ptr %.phi.trans.insert198, align 8, !tbaa !71
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74

_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %i.ei = phi i64 [ %i.ee, %bb.am ], [ %.pre199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.ei, ptr %i.ek, align 8, !tbaa !71
  store ptr %i.eb, ptr %13, align 8, !tbaa !137
  store i64 0, ptr %i.ej, align 8, !tbaa !71
  store i8 0, ptr %i.eb, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTI16tactic_exception, ptr nonnull @_ZN16tactic_exceptionD2Ev) #24
          to label %bb.ec unwind label %bb.an

bb.an:                                            ; preds = %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %13, align 8, !tbaa !137  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.eb
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.an
  %i.eo = load i64, ptr %i.eb, align 8, !tbaa !72
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dy

bb.ao:                                            ; preds = %_Z9is_groundPK4expr.exit.thread
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @__cxa_free_exception(ptr %i.dx) #22
  br label %bb.dy

bb.ap:                                            ; preds = %_Z9is_groundPK4expr.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 -1, ptr %3, align 4, !tbaa !88
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.es, align 4, !tbaa !89
  invoke void @_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %i.er, ptr noundef nonnull %i.dp, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.aq unwind label %bb.bw

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.et = load ptr, ptr %10, align 8, !tbaa !151
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %15, ptr noundef nonnull align 8 dereferenceable(216) %i.er, ptr noundef %i.et)
          to label %bb.ar unwind label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.eu = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i80, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit83, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = load ptr, ptr %i.af, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !107
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !107
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.at, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit83

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ev, ptr noundef nonnull %i.eu)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit83 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit83:       ; preds = %bb.at, %bb.as, %bb.ar
  %i.fc = load ptr, ptr %15, align 8, !tbaa !151
  store ptr %i.fc, ptr %10, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.fe = load ptr, ptr %9, align 8, !tbaa !103, !noalias !415, !nonnull !104, !align !105
  %i.ff = load ptr, ptr %i.ae, align 8, !tbaa !59, !noalias !415 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit83
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !415
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.av, %_ZN7obj_refI4expr11ast_managerED2Ev.exit83
  %.0.i.i.i = phi i32 [ %i.fi, %bb.av ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit83 ]
  %i.fj = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fe, i32 noundef %.0.i.i.i, ptr noundef %i.ff)
          to label %.noexc85 unwind label %bb.bj  ; 7 uses

.noexc85:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.fk = load ptr, ptr %9, align 8, !tbaa !103, !noalias !415, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.fj, ptr %16, align 8, !tbaa !151, !alias.scope !415
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !34, !alias.scope !415
  %.not.i.i.i84 = icmp eq ptr %i.fj, null         ; 2 uses
  br i1 %.not.i.i.i84, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc85
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !107, !noalias !415
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !107, !noalias !415
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc85
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 832
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !228
  %i.fs = icmp eq ptr %i.fj, %i.fr
  br i1 %i.fs, label %_ZN2qe6kernel11assert_exprEP4expr.exit, label %bb.aw

bb.aw:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.fu, ptr noundef %i.fj)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit unwind label %bb.bk

_ZN2qe6kernel11assert_exprEP4expr.exit:           ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, %bb.aw
  br i1 %.not.i.i.i84, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88, label %bb.ax

bb.ax:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !107
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !107
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ay, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fk, ptr noundef nonnull %i.fj)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit88:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.gc = load ptr, ptr %9, align 8, !tbaa !103, !noalias !416, !nonnull !104, !align !105
  %i.gd = load ptr, ptr %i.ae, align 8, !tbaa !59, !noalias !416 ; 3 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89, label %bb.ba

bb.ba:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit88
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !100, !noalias !416
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89: ; preds = %bb.ba, %_ZN7obj_refI4expr11ast_managerED2Ev.exit88
  %.0.i.i.i90 = phi i32 [ %i.gg, %bb.ba ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit88 ]
  %i.gh = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gc, i32 noundef %.0.i.i.i90, ptr noundef %i.gd)
          to label %.noexc93 unwind label %bb.bm  ; 7 uses

.noexc93:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89
  %i.gi = load ptr, ptr %9, align 8, !tbaa !103, !noalias !416, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.gh, ptr %17, align 8, !tbaa !151, !alias.scope !416
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !34, !alias.scope !416
  %.not.i.i.i91 = icmp eq ptr %i.gh, null         ; 2 uses
  br i1 %.not.i.i.i91, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92:      ; preds = %.noexc93
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !107, !noalias !416
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !107, !noalias !416
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92, %.noexc93
  %i.gn = load ptr, ptr %i.gb, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 832
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !228
  %i.gq = icmp eq ptr %i.gh, %i.gp
  br i1 %i.gq, label %_ZN2qe6kernel11assert_exprEP4expr.exit96, label %bb.bb

bb.bb:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gs, ptr noundef %i.gh)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit96 unwind label %bb.bn

_ZN2qe6kernel11assert_exprEP4expr.exit96:         ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94, %bb.bb
  br i1 %.not.i.i.i91, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit98, label %bb.bc

bb.bc:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit96
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !107
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !107
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit98

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gi, ptr noundef nonnull %i.gh)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit98 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit98:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit96, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.gz = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %i.ha = load ptr, ptr %i.fd, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 832
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !228
  %i.hd = icmp eq ptr %i.gz, %i.hc
  br i1 %i.hd, label %_ZN2qe6kernel11assert_exprEP4expr.exit100, label %bb.bf

bb.bf:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit98
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.hf, ptr noundef %i.gz)
          to label %._ZN2qe6kernel11assert_exprEP4expr.exit100_crit_edge unwind label %bb.bw

._ZN2qe6kernel11assert_exprEP4expr.exit100_crit_edge: ; preds = %bb.bf
  %.pre200 = load ptr, ptr %10, align 8, !tbaa !151
  br label %_ZN2qe6kernel11assert_exprEP4expr.exit100

_ZN2qe6kernel11assert_exprEP4expr.exit100:        ; preds = %._ZN2qe6kernel11assert_exprEP4expr.exit100_crit_edge, %_ZN7obj_refI4expr11ast_managerED2Ev.exit98
  %i.hg = phi ptr [ %.pre200, %._ZN2qe6kernel11assert_exprEP4expr.exit100_crit_edge ], [ %i.gz, %_ZN7obj_refI4expr11ast_managerED2Ev.exit98 ]
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.hi = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hh, i32 noundef 0, i32 noundef 8, ptr noundef %i.hg)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.bw ; 2 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit100
  %i.hj = load ptr, ptr %i.gb, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 832
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !228
  %i.hm = icmp eq ptr %i.hi, %i.hl
  br i1 %i.hm, label %_ZN2qe6kernel11assert_exprEP4expr.exit103, label %bb.bg

bb.bg:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ho, ptr noundef %i.hi)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit103 unwind label %bb.bw

_ZN2qe6kernel11assert_exprEP4expr.exit103:        ; preds = %_ZN11ast_manager6mk_notEP4expr.exit, %bb.bg
  %i.hp = invoke noundef i32 @_ZN2qe4qsat9check_satEv(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %bb.bh unwind label %bb.bw

bb.bh:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit103
  switch i32 %i.hp, label %bb.do [
    i32 -1, label %bb.bp
    i32 1, label %bb.cb
    i32 0, label %bb.da
  ]

bb.bi:                                            ; preds = %bb.aq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.dy

bb.bj:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.aw
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn45 = phi { ptr, i32 } [ %i.hs, %bb.bk ], [ %i.hr, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.dy

bb.bm:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bb
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn47 = phi { ptr, i32 } [ %i.hu, %bb.bn ], [ %i.ht, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dy

bb.bp:                                            ; preds = %bb.bh
  %i.hv = load ptr, ptr %1, align 8, !tbaa !409
  invoke void @_ZN4goal5resetEv(ptr noundef nonnull align 8 dereferenceable(124) %i.hv)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.hw = load ptr, ptr %1, align 8, !tbaa !409
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 120 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8            ; 2 uses
  %i.hz = add i32 %i.hy, 1
  %i.ia = and i32 %i.hz, 67108863
  %i.ib = and i32 %i.hy, -67108864
  %i.ic = or disjoint i32 %i.ia, %i.ib
  store i32 %i.ic, ptr %i.hx, align 8
  %i.id = load i32, ptr %i.aw, align 8, !tbaa !270
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !103, !noalias !417, !nonnull !104, !align !105
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !59, !noalias !417 ; 3 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i104, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ik = getelementptr inbounds i8, ptr %i.ii, i64 -4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !100, !noalias !417
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i104

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i104: ; preds = %bb.bs, %bb.br
  %.0.i.i.i105 = phi i32 [ %i.il, %bb.bs ], [ 0, %bb.br ]
  %i.im = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ig, i32 noundef %.0.i.i.i105, ptr noundef %i.ii)
          to label %.noexc108 unwind label %bb.bw ; 4 uses

.noexc108:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i104
  %.not.i.i.i106 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i106, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit109, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i107

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i107:     ; preds = %.noexc108
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !107, !noalias !417
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !107, !noalias !417
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit109

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit109: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i107, %.noexc108
  %i.iq = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i111 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i111, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114, label %bb.bt

bb.bt:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit109
  %i.ir = load ptr, ptr %i.af, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !107
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !107
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bu, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ir, ptr noundef nonnull %i.iq)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit114:      ; preds = %bb.bu, %bb.bt, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit109
  store ptr %i.im, ptr %10, align 8, !tbaa !151
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114.invoke

_ZN7obj_refI4expr11ast_managerED2Ev.exit114.invoke: ; preds = %bb.bx, %_ZN7obj_refI4expr11ast_managerED2Ev.exit114
  %i.iy = phi ptr [ %i.im, %_ZN7obj_refI4expr11ast_managerED2Ev.exit114 ], [ %i.jd, %bb.bx ]
  %i.iz = load ptr, ptr %1, align 8, !tbaa !409
  invoke void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124) %i.iz, ptr noundef %i.iy, ptr noundef null)
          to label %_ZN4goal11assert_exprEP4expr.exit116 unwind label %bb.bw

bb.bw:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit114.invoke, %_ZN2qe6kernel11assert_exprEP4expr.exit103, %bb.bp, %bb.cb, %bb.da, %bb.aj, %.thread193, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.w, %bb.y, %bb.z, %bb.ap, %bb.bf, %_ZN2qe6kernel11assert_exprEP4expr.exit100, %bb.bg, %bb.bz, %bb.ca, %bb.ce, %bb.cf, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i104
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.bx:                                            ; preds = %bb.bq
  %i.jb = load ptr, ptr %i.ab, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 840
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !207
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114.invoke

_ZN4goal11assert_exprEP4expr.exit116:             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit114.invoke
  %i.je = load ptr, ptr %1, align 8, !tbaa !409   ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i119, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i120, label %bb.by

bb.by:                                            ; preds = %_ZN4goal11assert_exprEP4expr.exit116
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !317
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 8, !tbaa !317
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i120

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i120: ; preds = %bb.by, %_ZN4goal11assert_exprEP4expr.exit116
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !320 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !321 ; 2 uses
  %.not.i.i121 = icmp ult i32 %i.jj, %i.jl
  br i1 %.not.i.i121, label %._crit_edge.i.i135, label %bb.bz

._crit_edge.i.i135:                               ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i120
  %.pre.i.i136 = load ptr, ptr %2, align 8, !tbaa !322
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit139

bb.bz:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i120
  %i.jm = shl i32 %i.jl, 1                        ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %i.jp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.jo)
          to label %.noexc137 unwind label %bb.bw ; 4 uses

.noexc137:                                        ; preds = %bb.bz
  %i.jq = load i32, ptr %i.ji, align 8, !tbaa !320 ; 4 uses
  %.not.i.i1.i122 = icmp eq i32 %i.jq, 0
  %.pre.i.i.i123 = load ptr, ptr %2, align 8, !tbaa !322 ; 5 uses
  br i1 %.not.i.i1.i122, label %._crit_edge.i.i.i129, label %.lr.ph.i.i.i124

.lr.ph.i.i.i124:                                  ; preds = %.noexc137
  %wide.trip.count.i.i.i125 = zext i32 %i.jq to i64 ; 3 uses
  %min.iters.check279 = icmp ult i32 %i.jq, 4
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.i.i124
  %n.vec281 = and i64 %wide.trip.count.i.i.i125, 4294967292 ; 3 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next286, %vector.body282 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index283 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i123, i64 %index283 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load284 = load <2 x ptr>, ptr %i.js, align 8, !tbaa !323
  %wide.load285 = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !323
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store <2 x ptr> %wide.load284, ptr %i.jr, align 8, !tbaa !323
  store <2 x ptr> %wide.load285, ptr %i.ju, align 8, !tbaa !323
  %index.next286 = add nuw i64 %index283, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next286, %n.vec281
  br i1 %i.jv, label %middle.block287, label %vector.body282, !llvm.loop !400

middle.block287:                                  ; preds = %vector.body282
  %cmp.n288 = icmp eq i64 %n.vec281, %wide.trip.count.i.i.i125
  br i1 %cmp.n288, label %._crit_edge.i.i.i129, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph.i.i.i124, %middle.block287
  %indvars.iv.i.i.i126.ph = phi i64 [ 0, %.lr.ph.i.i.i124 ], [ %n.vec281, %middle.block287 ]
  br label %scalar.ph278

._crit_edge.i.i.i129:                             ; preds = %scalar.ph278, %middle.block287, %.noexc137
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not.i.i.i.i130 = icmp eq ptr %.pre.i.i.i123, %i.jw
  %i.jx = icmp eq ptr %.pre.i.i.i123, null
  %or.cond.i.i.i.i131 = or i1 %.not.i.i.i.i130, %i.jx
  br i1 %or.cond.i.i.i.i131, label %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i.i129
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i123)
          to label %.noexc138 unwind label %bb.bw

.noexc138:                                        ; preds = %bb.ca
  %.pre2.pre.i.i132 = load i32, ptr %i.ji, align 8, !tbaa !320
  br label %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv.i.i.i126 = phi i64 [ %indvars.iv.next.i.i.i127, %scalar.ph278 ], [ %indvars.iv.i.i.i126.ph, %scalar.ph278.preheader ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i126
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i123, i64 %indvars.iv.i.i.i126
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !323
  store ptr %i.ka, ptr %i.jy, align 8, !tbaa !323
  %indvars.iv.next.i.i.i127 = add nuw nsw i64 %indvars.iv.i.i.i126, 1 ; 2 uses
  %exitcond.not.i.i.i128 = icmp eq i64 %indvars.iv.next.i.i.i127, %wide.trip.count.i.i.i125
  br i1 %exitcond.not.i.i.i128, label %._crit_edge.i.i.i129, label %scalar.ph278, !llvm.loop !401

_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133: ; preds = %.noexc138, %._crit_edge.i.i.i129
  %.pre2.i.i134 = phi i32 [ %i.jq, %._crit_edge.i.i.i129 ], [ %.pre2.pre.i.i132, %.noexc138 ]
  store ptr %i.jp, ptr %2, align 8, !tbaa !322
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !321
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit139

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit139: ; preds = %._crit_edge.i.i135, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133
  %i.kb = phi i32 [ %i.jj, %._crit_edge.i.i135 ], [ %.pre2.i.i134, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133 ] ; 2 uses
  %i.kc = phi ptr [ %.pre.i.i136, %._crit_edge.i.i135 ], [ %i.jp, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i133 ]
  %i.kd = zext i32 %i.kb to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kd
  store ptr %i.je, ptr %i.ke, align 8, !tbaa !323
  %i.kf = add i32 %i.kb, 1
  store i32 %i.kf, ptr %i.ji, align 8, !tbaa !320
  br label %bb.do

bb.cb:                                            ; preds = %bb.bh
  %i.kg = load ptr, ptr %1, align 8, !tbaa !409
  invoke void @_ZN4goal5resetEv(ptr noundef nonnull align 8 dereferenceable(124) %i.kg)
          to label %bb.cc unwind label %bb.bw

bb.cc:                                            ; preds = %bb.cb
  %i.kh = load ptr, ptr %1, align 8, !tbaa !409
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 120 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8            ; 2 uses
  %i.kk = add i32 %i.kj, 1
  %i.kl = and i32 %i.kk, 67108863
  %i.km = and i32 %i.kj, -67108864
  %i.kn = or disjoint i32 %i.kl, %i.km
  store i32 %i.kn, ptr %i.ki, align 8
  %i.ko = load ptr, ptr %1, align 8, !tbaa !409   ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i140, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i141, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !317
  %i.kr = add i32 %i.kq, 1
  store i32 %i.kr, ptr %i.kp, align 8, !tbaa !317
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i141

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i141: ; preds = %bb.cd, %bb.cc
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !320 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !321 ; 2 uses
  %.not.i.i142 = icmp ult i32 %i.kt, %i.kv
  br i1 %.not.i.i142, label %._crit_edge.i.i156, label %bb.ce

._crit_edge.i.i156:                               ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i141
  %.pre.i.i157 = load ptr, ptr %2, align 8, !tbaa !322
  br label %bb.cg

bb.ce:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7inc_refEPS0_.exit.i141
  %i.kw = shl i32 %i.kv, 1                        ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3
  %i.kz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ky)
          to label %.noexc158 unwind label %bb.bw ; 9 uses

.noexc158:                                        ; preds = %bb.ce
  %i.la = load i32, ptr %i.ks, align 8, !tbaa !320 ; 4 uses
  %.not.i.i1.i143 = icmp eq i32 %i.la, 0
  %.pre.i.i.i144 = load ptr, ptr %2, align 8, !tbaa !322 ; 10 uses
  br i1 %.not.i.i1.i143, label %._crit_edge.i.i.i150, label %.lr.ph.i.i.i145

.lr.ph.i.i.i145:                                  ; preds = %.noexc158
  %.pre.i.i.i144265 = ptrtoaddr ptr %.pre.i.i.i144 to i64
  %i.lb = ptrtoaddr ptr %i.kz to i64
  %wide.trip.count.i.i.i146 = zext i32 %i.la to i64 ; 5 uses
  %min.iters.check267 = icmp ult i32 %i.la, 8
  %i.lc = sub i64 %.pre.i.i.i144265, %i.lb
  %diff.check = icmp ugt i64 %i.lc, -32
  %or.cond = select i1 %min.iters.check267, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph.i.i.i145
  %n.vec269 = and i64 %wide.trip.count.i.i.i146, 4294967292 ; 3 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next274, %vector.body270 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index271 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i144, i64 %index271 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load272 = load <2 x ptr>, ptr %i.le, align 8, !tbaa !323
  %wide.load273 = load <2 x ptr>, ptr %i.lf, align 8, !tbaa !323
end_hunk_4
begin_hunk_5_@_ZN2qe4qsat8elim_recEP4expr:bb.a
bb.ag:                                            ; preds = %.noexc76, %bb.ae
  %i.gk = phi i32 [ %.pre2.i.i75, %.noexc76 ], [ %i.gg, %bb.ae ] ; 2 uses
  %i.gl = phi ptr [ %.pre.i.i73, %.noexc76 ], [ %i.gd, %bb.ae ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gn = zext i32 %i.gk to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gn
  store ptr %i.fv, ptr %i.go, align 8, !tbaa !101
  %i.gp = add i32 %i.gk, 1
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.bo, ptr %6, align 8, !tbaa !45
  store ptr %i.fv, ptr %i.az, align 8, !tbaa !139
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit:      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre245 = load ptr, ptr %i.ay, align 8, !tbaa !59
  br label %bb.ah

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.aa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %bb.af, %bb.ag
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.loopexit.split-lp195

bb.ah:                                            ; preds = %._crit_edge.thread, %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit, %._crit_edge
  %i.gq = phi ptr [ %.pre245, %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit ], [ %.pre246, %._crit_edge ], [ %.pre246310, %._crit_edge.thread ] ; 5 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.ah
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !100 ; 2 uses
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv
  %.not.i79 = icmp eq i32 %i.gt, 0
  br i1 %.not.i79, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.hd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.gx = load ptr, ptr %.06.i.i, align 8, !tbaa !101 ; 3 uses
  %i.gy = load ptr, ptr %11, align 8, !tbaa !103, !nonnull !104, !align !105
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !107
  %i.hb = add i32 %i.ha, -1                       ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !107
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.aj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gy, ptr noundef nonnull %i.gx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.al

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.gw
  br i1 %i.he, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i80 = load ptr, ptr %i.ay, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %.pre.i80, null
  br i1 %.not.i.i.i81, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.hf = phi ptr [ %.pre.i80, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.gq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hg)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #23
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.ah, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.backedgethread-pre-split

bb.am:                                            ; preds = %.loopexit191
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !422
  %i.hn = icmp eq i32 %i.hm, 2
  br i1 %i.hn, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.bo, ptr %5, align 8, !tbaa !45
  store ptr %i.bo, ptr %i.ax, align 8, !tbaa !139
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ao unwind label %.loopexit.split-lp195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ho = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !100
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !100
  br label %.backedge

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.ht = ptrtoint ptr %i.hs to i64
  store i64 %i.ht, ptr %12, align 8, !tbaa !34
  store ptr null, ptr %i.au, align 8, !tbaa !143
  %i.hu = load i32, ptr %i.cu, align 4
  %i.hv = and i32 %i.hu, 65535
  %i.hw = icmp eq i32 %i.hv, 2
  br i1 %i.hw, label %bb.aq, label %_Z9is_forallPK3ast.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hx = load i32, ptr %i.hl, align 8, !tbaa !422
  %i.hy = icmp eq i32 %i.hx, 0
  br label %_Z9is_forallPK3ast.exit

_Z9is_forallPK3ast.exit:                          ; preds = %bb.ap, %bb.aq
  %i.hz = phi i1 [ false, %bb.ap ], [ %i.hy, %bb.aq ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !239 ; 3 uses
  %.not.i84 = icmp eq ptr %i.ib, null
  br i1 %.not.i84, label %bb.ar, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_Z9is_forallPK3ast.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !107
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !107
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_Z9is_forallPK3ast.exit
  %i.if = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.if, null
  br i1 %.not.i4.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !107
  %i.ij = add i32 %i.ii, -1                       ; 2 uses
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !107
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ig, ptr noundef nonnull %i.if)
          to label %bb.au unwind label %bb.cb

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.at
  store ptr %i.ib, ptr %7, align 8, !tbaa !151
  invoke void @_ZN2qe12extract_varsEP10quantifierR7obj_refI4expr11ast_managerER10ref_vectorI3appS4_E(ptr noundef nonnull %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.av unwind label %bb.cb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.il = load ptr, ptr %7, align 8, !tbaa !151
  invoke void @_ZN2qe4qsat8elim_recEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %13, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef %i.il)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.im = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.in = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !107
  %i.iq = add i32 %i.ip, -1                       ; 2 uses
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !107
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.ay, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.in, ptr noundef nonnull %i.im)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.iu = load ptr, ptr %13, align 8, !tbaa !151  ; 2 uses
  store ptr %i.iu, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %i.hz, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_Z8push_notRK7obj_refI4expr11ast_managerEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 8)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.iv = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i89, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit92, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !107
  %i.iz = add i32 %i.iy, -1                       ; 2 uses
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !107
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.bd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit92

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iw, ptr noundef nonnull %i.iv)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit92 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit92:       ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.jd = load ptr, ptr %14, align 8, !tbaa !151  ; 2 uses
  store ptr %i.jd, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.av
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ch

bb.bg:                                            ; preds = %bb.ba
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ch

bb.bh:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit92, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.jg = phi ptr [ %i.jd, %_ZN7obj_refI4expr11ast_managerED2Ev.exit92 ], [ %i.iu, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN2qe4qsat4elimER10ref_vectorI3app11ast_managerEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %15, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.jg)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.jh = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i94, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit97, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !107
  %i.jl = add i32 %i.jk, -1                       ; 2 uses
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !107
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bk, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit97

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ji, ptr noundef nonnull %i.jh)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit97 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit97:       ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.jp = load ptr, ptr %15, align 8, !tbaa !151  ; 3 uses
  store ptr %i.jp, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.bo, ptr %4, align 8, !tbaa !45
  store ptr %i.bo, ptr %i.aw, align 8, !tbaa !139
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bn unwind label %bb.cb

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.cc

bb.bo:                                            ; preds = %bb.bh
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ch

bb.bp:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit97
  br i1 %i.hz, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_Z8push_notRK7obj_refI4expr11ast_managerEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 8)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.js = load ptr, ptr %7, align 8, !tbaa !151   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.js, null
  br i1 %.not.i.i101, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jt = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !107
  %i.jw = add i32 %i.jv, -1                       ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !107
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jt, ptr noundef nonnull %i.js)
          to label %bb.bw unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #23
  unreachable

bb.bv:                                            ; preds = %bb.bq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ch

bb.bw:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %i.kb = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  store ptr %i.kb, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %.not.i.i.i.i105 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i105, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i106, label %.thread

.thread:                                          ; preds = %bb.bp, %bb.bw
  %i.kc = phi ptr [ %i.kb, %bb.bw ], [ %i.jp, %bb.bp ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !107
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i106

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i106: ; preds = %.thread, %bb.bw
  %i.kg = phi ptr [ %i.kc, %.thread ], [ null, %bb.bw ]
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !59  ; 4 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i106
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !100 ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kh, i64 -8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !100
  %i.kn = icmp eq i32 %i.kk, %i.km
  br i1 %i.kn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i106
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc110 unwind label %bb.cb

.noexc110:                                        ; preds = %bb.by
  %.pre.i.i107 = load ptr, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i108 = getelementptr inbounds i8, ptr %.pre.i.i107, i64 -4
  %.pre2.i.i109 = load i32, ptr %.phi.trans.insert.i.i108, align 4, !tbaa !100
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc110, %bb.bx
  %i.ko = phi i32 [ %.pre2.i.i109, %.noexc110 ], [ %i.kk, %bb.bx ] ; 2 uses
  %i.kp = phi ptr [ %.pre.i.i107, %.noexc110 ], [ %i.kh, %bb.bx ] ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 -4
  %i.kr = zext i32 %i.ko to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kr
  store ptr %i.kg, ptr %i.ks, align 8, !tbaa !101
  %i.kt = add i32 %i.ko, 1
  store i32 %i.kt, ptr %i.kq, align 4, !tbaa !100
  %i.ku = load ptr, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.bo, ptr %3, align 8, !tbaa !45
  store ptr %i.ku, ptr %i.av, align 8, !tbaa !139
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.cc

bb.cb:                                            ; preds = %bb.au, %bb.at, %bb.bm, %bb.by, %bb.bz
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca, %bb.bn
  %i.kw = load ptr, ptr %10, align 8, !tbaa !59
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -4 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !100
  %i.kz = add i32 %i.ky, -1
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !100
  %i.la = load ptr, ptr %i.au, align 8, !tbaa !143 ; 5 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %bb.cc
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 -4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !100 ; 2 uses
  %i.le = zext i32 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lf
  %.not.i113 = icmp eq i32 %i.ld, 0
  br i1 %.not.i113, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i115 = phi ptr [ %i.ln, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.la, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.lh = load ptr, ptr %.06.i.i115, align 8, !tbaa !144 ; 3 uses
  %i.li = load ptr, ptr %12, align 8, !tbaa !146, !nonnull !104, !align !105
  %.not.i.i.i.i.i116 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i116, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i114
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !107
  %i.ll = add i32 %i.lk, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !107
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.ce, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.li, ptr noundef nonnull %i.lh)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.cg

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ce, %bb.cd, %.lr.ph.i.i114
  %i.ln = getelementptr inbounds nuw i8, ptr %.06.i.i115, i64 8 ; 2 uses
  %i.lo = icmp ult ptr %i.ln, %i.lg
  br i1 %i.lo, label %.lr.ph.i.i114, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !11

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i117 = load ptr, ptr %i.au, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %.pre.i117, null
  br i1 %.not.i.i.i118, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.lp = phi ptr [ %.pre.i117, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.la, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lq)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.cf

bb.cf:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #23
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #23
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.cc, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.backedgethread-pre-split

bb.ch:                                            ; preds = %bb.cb, %bb.bv, %bb.bo, %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.je, %bb.bf ], [ %i.kv, %bb.cb ], [ %i.ka, %bb.bv ], [ %i.jr, %bb.bo ], [ %i.jf, %bb.bg ]
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.loopexit.split-lp195

bb.ci:                                            ; preds = %.loopexit191
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.36, i32 noundef 1070, ptr noundef nonnull @.str.37)
          to label %bb.cj unwind label %.loopexit.split-lp195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.backedgethread-pre-split unwind label %.loopexit.split-lp195.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge._ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread_crit_edge: ; preds = %.backedge
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, !llvm.loop !421

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %.backedge._ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread_crit_edge, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph
  %.0174.lcssa.ph = phi ptr [ null, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.bo, %.backedge._ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread_crit_edge ], [ %i.bo, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ]
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !129 ; 3 uses
  %i.lx = load i32, ptr %i.f, align 8, !tbaa !40  ; 3 uses
  %i.ly = add i32 %i.lx, -1
  %i.lz = and i32 %i.ly, %i.lw                    ; 3 uses
  %i.ma = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %i.mb = zext i32 %i.lz to i64
  %.idx.i.i.i119 = shl nuw nsw i64 %i.mb, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx.i.i.i119 ; 3 uses
  %i.md = zext i32 %i.lx to i64
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %i.md
  %.not34.i.i.i120 = icmp eq i32 %i.lz, %i.lx
  br i1 %.not34.i.i.i120, label %.preheader.i.i.i125, label %.lr.ph.i.i.i121

.preheader.i.i.i125:                              ; preds = %bb.cm, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %.not2736.i.i.i126 = icmp eq i32 %i.lz, 0
  br i1 %.not2736.i.i.i126, label %.loopexit, label %.lr.ph38.i.i.i127

.lr.ph.i.i.i121:                                  ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, %bb.cm
  %.035.i.i.i122 = phi ptr [ %i.mm, %bb.cm ], [ %i.mc, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread ] ; 3 uses
  %i.mf = load ptr, ptr %.035.i.i.i122, align 8, !tbaa !113 ; 4 uses
  %i.mg = icmp ult ptr %i.mf, inttoptr (i64 2 to ptr)
  br i1 %i.mg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i121
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !129
  %i.mj = icmp eq i32 %i.mi, %i.lw
  %i.mk = icmp eq ptr %i.mf, %2
  %or.cond.i.i.i123 = and i1 %i.mk, %i.mj
  br i1 %or.cond.i.i.i123, label %_ZNK7obj_mapI4exprPS0_E4findES1_RS1_.exit138, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i.i.i121
  %i.ml = icmp eq ptr %i.mf, null
  br i1 %i.ml, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.mm = getelementptr inbounds nuw i8, ptr %.035.i.i.i122, i64 16 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.mm, %i.me
  br i1 %.not.i.i.i124, label %.preheader.i.i.i125, label %.lr.ph.i.i.i121, !llvm.loop !13

.lr.ph38.i.i.i127:                                ; preds = %.preheader.i.i.i125, %.lr.ph38.i.i.i127.backedge
  %.137.i.i.i128 = phi ptr [ %.137.i.i.i128.be, %.lr.ph38.i.i.i127.backedge ], [ %i.ma, %.preheader.i.i.i125 ] ; 4 uses
  %i.mn = load ptr, ptr %.137.i.i.i128, align 8, !tbaa !113 ; 4 uses
  %i.mo = icmp ult ptr %i.mn, inttoptr (i64 2 to ptr)
  br i1 %i.mo, label %bb.co, label %bb.cn
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_:bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !137    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !72
  store i8 %i.j, ptr %i.a, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !71
  %i.m = load ptr, ptr %0, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !72
  %.pre = load ptr, ptr %1, align 8, !tbaa !137
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !71
  store i64 %i.q, ptr %i.o, align 8, !tbaa !71
  %i.r = load i64, ptr %i.e, align 8, !tbaa !72
  store i64 %i.r, ptr %i.b, align 8, !tbaa !72
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8, !tbaa !72
  store ptr %i.d, ptr %0, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !71
  %i.w = load i64, ptr %i.e, align 8, !tbaa !72
  store i64 %i.w, ptr %i.b, align 8, !tbaa !72
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8, !tbaa !137
  store i64 %i.s, ptr %i.e, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %bb.f, %bb.g, %bb.b
  %i.x = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !71
  store i8 0, ptr %i.x, align 1, !tbaa !72
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN13tactic_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare void @_ZN7gparams10get_moduleEPKc(ptr dead_on_unwind writable sret(%class.params_ref) align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcRKS_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN2qe12extract_varsEP10quantifierR7obj_refI4expr11ast_managerER10ref_vectorI3appS4_E(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe4qsat4elimER10ref_vectorI3app11ast_managerEP4expr(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.qe::max_level", align 4    ; 5 uses
  %5 = alloca %class.obj_ref, align 16            ; 28 uses
  %6 = alloca %class.ref_vector, align 8          ; 12 uses
  %7 = alloca %class.obj_ref, align 8             ; 5 uses
  %8 = alloca %class.obj_ref, align 8             ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %class.obj_ref, align 8            ; 5 uses
  %12 = alloca %class.obj_ref, align 8            ; 6 uses
  %13 = alloca %class.obj_ref, align 8            ; 6 uses
  %14 = alloca %class.obj_ref, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105 ; 3 uses
  store ptr %3, ptr %5, align 16, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !107
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.g = ptrtoint ptr %i.b to i64
  store i64 %i.g, ptr %6, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr null, ptr %i.h, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %trunc = trunc i32 %i.j to i16
  switch i16 %trunc, label %bb.d [
    i16 0, label %.split
    i16 2, label %bb.c
  ]

.split:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 2
  %.not111 = icmp eq i8 %i.m, 0
  br i1 %.not111, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split
  store ptr null, ptr %0, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.n, align 8, !tbaa !34
  br label %bb.bq

bb.d:                                             ; preds = %bb.b, %.split
  %i.o = load ptr, ptr %1, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(600) %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !100
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  %i.x = load ptr, ptr %5, align 16, !tbaa !151
  invoke void @_Z9mk_existsR11ast_managerjPKP3appP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %7, ptr noundef nonnull align 8 dereferenceable(952) %i.r, i32 noundef %.0.i.i, ptr noundef %i.t, ptr noundef %i.x)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.y = load ptr, ptr %5, align 16, !tbaa !151   ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.y, null
  br i1 %.not.i.i44, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !107
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !107
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.z, ptr noundef nonnull %i.y)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load ptr, ptr %7, align 8, !tbaa !151
  store ptr %i.ag, ptr %5, align 16, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_Z8push_notRK7obj_refI4expr11ast_managerEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 8)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ah = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i46, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !107
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !107
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ai, ptr noundef nonnull %i.ah)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit49 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit49:       ; preds = %bb.m, %bb.l, %bb.k
  %i.ap = load ptr, ptr %8, align 8, !tbaa !151
  store ptr %i.ap, ptr %5, align 16, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN2qe4qsat5hoistER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit49
  %i.aq = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 65535
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_Z9is_groundPK4expr.exit, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit:                         ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 30
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.v, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit.thread:                  ; preds = %bb.o, %_Z9is_groundPK4expr.exit
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_Z9is_groundPK4expr.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %i.ay, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !68
  %i.bb = load ptr, ptr %9, align 8, !tbaa !137   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !71 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !137
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !72
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !72
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !71
  br label %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bj = phi i64 [ %i.bf, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !71
  store ptr %i.bc, ptr %9, align 8, !tbaa !137
  store i64 0, ptr %i.bk, align 8, !tbaa !71
  store i8 0, ptr %i.bc, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI16tactic_exception, ptr nonnull @_ZN16tactic_exceptionD2Ev) #24
          to label %bb.by unwind label %bb.t

bb.r:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %9, align 8, !tbaa !137   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bc
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.t
  %i.br = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_Z9is_groundPK4expr.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @__cxa_free_exception(ptr %i.ay) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %_Z9is_groundPK4expr.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 -1, ptr %4, align 4, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.bv, align 4, !tbaa !89
  invoke void @_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %i.bu, ptr noundef nonnull %i.aq, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.bw = load ptr, ptr %5, align 16, !tbaa !151
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %11, ptr noundef nonnull align 8 dereferenceable(216) %i.bu, ptr noundef %i.bw)
          to label %bb.x unwind label %bb.ao

bb.x:                                             ; preds = %bb.w
  %i.bx = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i51, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit54, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !107
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !107
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit54

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.by, ptr noundef nonnull %i.bx)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit54 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit54:       ; preds = %bb.z, %bb.y, %bb.x
  %i.cf = load ptr, ptr %11, align 8, !tbaa !151
  store ptr %i.cf, ptr %5, align 16, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.ch = load ptr, ptr %6, align 8, !tbaa !103, !noalias !434, !nonnull !104, !align !105
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !59, !noalias !434 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit54
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !100, !noalias !434
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.ab, %_ZN7obj_refI4expr11ast_managerED2Ev.exit54
  %.0.i.i.i = phi i32 [ %i.cl, %bb.ab ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit54 ]
  %i.cm = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ch, i32 noundef %.0.i.i.i, ptr noundef %i.ci)
          to label %.noexc unwind label %bb.ap    ; 7 uses

.noexc:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.cn = load ptr, ptr %6, align 8, !tbaa !103, !noalias !434, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.cm, ptr %12, align 8, !tbaa !151, !alias.scope !434
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !34, !alias.scope !434
  %.not.i.i.i = icmp eq ptr %i.cm, null           ; 2 uses
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !107, !noalias !434
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !107, !noalias !434
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc
  %i.cs = load ptr, ptr %i.cg, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 832
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !228
  %i.cv = icmp eq ptr %i.cm, %i.cu
  br i1 %i.cv, label %_ZN2qe6kernel11assert_exprEP4expr.exit, label %bb.ac

bb.ac:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.cx, ptr noundef %i.cm)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit unwind label %bb.aq

_ZN2qe6kernel11assert_exprEP4expr.exit:           ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, %bb.ac
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit57, label %bb.ad

bb.ad:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !107
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !107
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ae, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit57

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cn, ptr noundef nonnull %i.cm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit57 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit57:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.df = load ptr, ptr %6, align 8, !tbaa !103, !noalias !435, !nonnull !104, !align !105
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !59, !noalias !435 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i58, label %bb.ag

bb.ag:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit57
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !100, !noalias !435
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i58

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i58: ; preds = %bb.ag, %_ZN7obj_refI4expr11ast_managerED2Ev.exit57
  %.0.i.i.i59 = phi i32 [ %i.dj, %bb.ag ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit57 ]
  %i.dk = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.df, i32 noundef %.0.i.i.i59, ptr noundef %i.dg)
          to label %.noexc62 unwind label %bb.as  ; 7 uses

.noexc62:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i58
  %i.dl = load ptr, ptr %6, align 8, !tbaa !103, !noalias !435, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.dk, ptr %13, align 8, !tbaa !151, !alias.scope !435
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !34, !alias.scope !435
  %.not.i.i.i60 = icmp eq ptr %i.dk, null         ; 2 uses
  br i1 %.not.i.i.i60, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit63, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i61

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i61:      ; preds = %.noexc62
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !107, !noalias !435
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !107, !noalias !435
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit63

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit63: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i61, %.noexc62
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 832
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !228
  %i.dt = icmp eq ptr %i.dk, %i.ds
  br i1 %i.dt, label %_ZN2qe6kernel11assert_exprEP4expr.exit65, label %bb.ah

bb.ah:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit63
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.dv, ptr noundef %i.dk)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit65 unwind label %bb.at

_ZN2qe6kernel11assert_exprEP4expr.exit65:         ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit63, %bb.ah
  br i1 %.not.i.i.i60, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit67, label %bb.ai

bb.ai:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit65
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !107
  %i.dy = add i32 %i.dx, -1                       ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !107
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aj, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit67

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dl, ptr noundef nonnull %i.dk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit67 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit67:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit65, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ec = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %i.ed = load ptr, ptr %i.cg, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 832
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !228
  %i.eg = icmp eq ptr %i.ec, %i.ef
  br i1 %i.eg, label %_ZN2qe6kernel11assert_exprEP4expr.exit69, label %bb.al

bb.al:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit67
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ei, ptr noundef %i.ec)
          to label %._ZN2qe6kernel11assert_exprEP4expr.exit69_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN2qe6kernel11assert_exprEP4expr.exit69_crit_edge: ; preds = %bb.al
  %.pre122 = load ptr, ptr %5, align 16, !tbaa !151
  br label %_ZN2qe6kernel11assert_exprEP4expr.exit69

_ZN2qe6kernel11assert_exprEP4expr.exit69:         ; preds = %._ZN2qe6kernel11assert_exprEP4expr.exit69_crit_edge, %_ZN7obj_refI4expr11ast_managerED2Ev.exit67
  %i.ej = phi ptr [ %.pre122, %._ZN2qe6kernel11assert_exprEP4expr.exit69_crit_edge ], [ %i.ec, %_ZN7obj_refI4expr11ast_managerED2Ev.exit67 ]
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.el = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ek, i32 noundef 0, i32 noundef 8, ptr noundef %i.ej)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit69
  %i.em = load ptr, ptr %i.de, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 832
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !228
  %i.ep = icmp eq ptr %i.el, %i.eo
  br i1 %i.ep, label %_ZN2qe6kernel11assert_exprEP4expr.exit72, label %bb.am

bb.am:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.er, ptr noundef %i.el)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2qe6kernel11assert_exprEP4expr.exit72:         ; preds = %_ZN11ast_manager6mk_notEP4expr.exit, %bb.am
  %i.es = invoke noundef i32 @_ZN2qe4qsat9check_satEv(ptr noundef nonnull align 8 dereferenceable(600) %1)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit72
  %cond = icmp eq i32 %i.es, -1
  br i1 %cond, label %bb.av, label %bb.bp

bb.ao:                                            ; preds = %bb.w
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ac
  %i.ev = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN2qe4qsat4elimER10ref_vectorI3app11ast_managerEP4expr:bb.a
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit78

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit78: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i76, %.noexc77
  %i.fj = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i79, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit78
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !107
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !107
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fk, ptr noundef nonnull %i.fj)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #23
  unreachable

bb.ba:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit78, %bb.ax, %bb.ay
  store ptr %i.ff, ptr %5, align 16, !tbaa !151
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !143 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.ba
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !100 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fy
  %.not116 = icmp eq i32 %i.fw, 0
  br i1 %.not116, label %_ZN6vectorIP3appLb0EjE3endEv.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bj
  %.pre123 = load ptr, ptr %i.fs, align 8, !tbaa !143 ; 2 uses
  %i.ga = icmp eq ptr %.pre123, null
  br i1 %i.ga, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZN6vectorIP3appLb0EjE3endEv.exit.i

_ZN6vectorIP3appLb0EjE3endEv.exit.i:              ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %._crit_edge
  %i.gb = phi i32 [ %.1, %._crit_edge ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 5 uses
  %.pr.pr164 = phi ptr [ %.pre123, %._crit_edge ], [ %i.ft, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 4 uses
  %i.gc = getelementptr inbounds i8, ptr %.pr.pr164, i64 -4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !100 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.pr.pr164, i64 %i.ge
  %i.gg = icmp ugt i32 %i.gd, %i.gb
  br i1 %i.gg, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit.i
  %i.gh = zext i32 %i.gb to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.pr.pr164, i64 %i.gh
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.gp, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gi, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.gj = load ptr, ptr %.06.i.i, align 8, !tbaa !144 ; 3 uses
  %i.gk = load ptr, ptr %i.fr, align 8, !tbaa !146, !nonnull !104, !align !105
  %.not.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !107
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !107
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.bc, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gk, ptr noundef nonnull %i.gj)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bc, %bb.bb, %.lr.ph.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %i.gf
  br i1 %i.gq, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !11

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.fs, align 8, !tbaa !143 ; 3 uses
  %.not.i.i84 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i84, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread106

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread106: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.gr = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  store i32 %i.gb, ptr %i.gr, align 4, !tbaa !100
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.bj
  %.0118 = phi ptr [ %i.hi, %bb.bj ], [ %i.ft, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %.017117 = phi i32 [ %.1, %bb.bj ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 3 uses
  %i.gs = load ptr, ptr %.0118, align 8, !tbaa !144 ; 4 uses
  %i.gt = load ptr, ptr %5, align 16, !tbaa !151
  %i.gu = invoke noundef zeroext i1 @_Z6occursP4exprS0_(ptr noundef %i.gs, ptr noundef %i.gt)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %.lr.ph
  br i1 %i.gu, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.gv = add i32 %.017117, 1
  %i.gw = load ptr, ptr %i.fs, align 8, !tbaa !143
  %i.gx = zext i32 %.017117 to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.fr, align 8, !tbaa !146, !nonnull !104, !align !105
  %.not.i.i86 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i86, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !107
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !107
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.bf, %bb.be
  %i.hd = load ptr, ptr %i.gy, align 8, !tbaa !144 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.hd, null
  br i1 %.not.i3.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !107
  %i.hg = add i32 %i.hf, -1                       ; 2 uses
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !107
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gz, ptr noundef nonnull %i.hd)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.bh
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !144
  br label %bb.bj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %.lr.ph, %bb.bh, %_ZN2qe6kernel11assert_exprEP4expr.exit72, %_ZN7obj_refI4expr11ast_managerED2Ev.exit49, %bb.d, %bb.v, %bb.al, %_ZN2qe6kernel11assert_exprEP4expr.exit69, %bb.am, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i73
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %.1 = phi i32 [ %i.gv, %bb.bi ], [ %.017117, %bb.bd ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0118, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hi, %i.fz
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit.i
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !100
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread106
  %.pr108 = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread106 ], [ %.pr.pr164, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ] ; 2 uses
  %i.hj = icmp eq i32 %i.gb, 0
  br i1 %i.hj, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.hk = getelementptr inbounds i8, ptr %.pr108, i64 -4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !100
  %i.hn = load ptr, ptr %5, align 16, !tbaa !151
  invoke void @_Z9mk_existsR11ast_managerjPKP3appP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %14, ptr noundef nonnull align 8 dereferenceable(952) %i.hl, i32 noundef %i.hm, ptr noundef nonnull %.pr108, ptr noundef %i.hn)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90
  %i.ho = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i91, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit94, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !107
  %i.hs = add i32 %i.hr, -1                       ; 2 uses
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !107
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bm, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit94

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hp, ptr noundef nonnull %i.ho)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit94 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit94:       ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.hw = load ptr, ptr %14, align 8, !tbaa !151
  store ptr %i.hw, ptr %5, align 16, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

bb.bo:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.ba, %._crit_edge, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN7obj_refI4expr11ast_managerED2Ev.exit94, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.hy = load <2 x ptr>, ptr %5, align 16, !tbaa !304
  store <2 x ptr> %i.hy, ptr %0, align 8, !tbaa !304
  store ptr null, ptr %5, align 16, !tbaa !151
  br label %bb.bq

bb.bp:                                            ; preds = %bb.an
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  store ptr null, ptr %0, align 8, !tbaa !151
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !34
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, %bb.bp, %bb.c
  %i.ib = load ptr, ptr %i.h, align 8, !tbaa !59  ; 5 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.bq
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !100 ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ig
  %.not.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i96 = phi ptr [ %i.io, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ib, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ii = load ptr, ptr %.06.i.i96, align 8, !tbaa !101 ; 3 uses
  %i.ij = load ptr, ptr %6, align 8, !tbaa !103, !nonnull !104, !align !105
  %.not.i.i.i.i.i97 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i97, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i95
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !107
  %i.im = add i32 %i.il, -1                       ; 2 uses
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !107
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.bs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ij, ptr noundef nonnull %i.ii)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bu

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bs, %bb.br, %.lr.ph.i.i95
  %i.io = getelementptr inbounds nuw i8, ptr %.06.i.i96, i64 8 ; 2 uses
  %i.ip = icmp ult ptr %i.io, %i.ih
  br i1 %i.ip, label %.lr.ph.i.i95, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i98 = load ptr, ptr %i.h, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.pre.i98, null
  br i1 %.not.i.i.i99, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.iq = phi ptr [ %.pre.i98, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ib, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ir)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bt

bb.bt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #23
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.bq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.iw = load ptr, ptr %5, align 16, !tbaa !151  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i100, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit101, label %bb.bv

bb.bv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !107
  %i.ja = add i32 %i.iz, -1                       ; 2 uses
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !107
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bw, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit101

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ix, ptr noundef nonnull %i.iw)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit101 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit101:      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.bo, %bb.u, %bb.au, %bb.ar, %bb.ao, %bb.s, %bb.r
  %.pn36.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.hx, %bb.bo ], [ %.pn34, %bb.au ], [ %.pn32, %bb.ar ], [ %i.et, %bb.ao ], [ %i.bt, %bb.u ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bn, %bb.s ], [ %lpad.loopexit.split-lp169, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn.pn

bb.by:                                            ; preds = %_ZN16tactic_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

declare void @_ZN6tactic10checkpointER11ast_manager(ptr noundef nonnull align 8 dereferenceable(952)) local_unnamed_addr #1

declare void @_Z9mk_existsR11ast_managerjPKP3appP4expr(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z6occursP4exprS0_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2qe28has_quantified_uninterpretedER11ast_managerP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare void @_ZN14label_rewriterC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

declare void @_ZN14label_rewriter13remove_labelsER7obj_refI4expr11ast_managerERS0_I3appS2_E(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN18quantifier_hoisterC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI10ref_vectorI3app11ast_managerELb1EjE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorI10ref_vectorI3app11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !146, !nonnull !104, !align !105
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.d, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.r = phi ptr [ %i.ai, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.d ] ; 4 uses
  %i.s = phi ptr [ %i.aj, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !100
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.i.i, %i.v
  br i1 %i.w, label %bb.e, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
end_hunk_7
begin_hunk_8_@_ZN2qe4qsat14maximize_modelEv:bb.a
  %i.fb = load ptr, ptr %1, align 8, !tbaa !137   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20: ; preds = %bb.o
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !72
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.43, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 -1, ptr %7, align 4, !tbaa !88
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.fh, align 4, !tbaa !89
  %i.fi = load ptr, ptr %3, align 8, !tbaa !151
  invoke void @_ZN2qe8pred_abs14abstract_atomsEP4exprRNS_9max_levelER10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %i.g, ptr noundef %i.fi, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.fj = load ptr, ptr %5, align 8, !tbaa !103, !noalias !448, !nonnull !104, !align !105
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !59, !noalias !448 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !100, !noalias !448
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i32 [ %i.fn, %bb.q ], [ 0, %bb.p ]
  %i.fo = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fj, i32 noundef %.0.i.i.i, ptr noundef %i.fk)
          to label %.noexc32 unwind label %bb.ah  ; 7 uses

.noexc32:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.fp = load ptr, ptr %5, align 8, !tbaa !103, !noalias !448, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.fo, ptr %8, align 8, !tbaa !151, !alias.scope !448
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !34, !alias.scope !448
  %.not.i.i.i = icmp eq ptr %i.fo, null           ; 2 uses
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !107, !noalias !448
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !107, !noalias !448
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc32
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 832
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !228
  %i.fy = icmp eq ptr %i.fo, %i.fx
  br i1 %i.fy, label %_ZN2qe6kernel11assert_exprEP4expr.exit, label %bb.r

bb.r:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ga, ptr noundef %i.fo)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit unwind label %bb.ai

_ZN2qe6kernel11assert_exprEP4expr.exit:           ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, %bb.r
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !107
  %i.gd = add i32 %i.gc, -1                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !107
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.t, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fp, ptr noundef nonnull %i.fo)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.gh = load ptr, ptr %5, align 8, !tbaa !103, !noalias !449, !nonnull !104, !align !105
  %i.gi = load ptr, ptr %i.f, align 8, !tbaa !59, !noalias !449 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i34, label %bb.v

bb.v:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !100, !noalias !449
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i34

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i34: ; preds = %bb.v, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.0.i.i.i35 = phi i32 [ %i.gl, %bb.v ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ]
  %i.gm = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gh, i32 noundef %.0.i.i.i35, ptr noundef %i.gi)
          to label %.noexc38 unwind label %bb.ak  ; 7 uses

.noexc38:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i34
  %i.gn = load ptr, ptr %5, align 8, !tbaa !103, !noalias !449, !nonnull !104, !align !105 ; 2 uses
  store ptr %i.gm, ptr %9, align 8, !tbaa !151, !alias.scope !449
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !34, !alias.scope !449
  %.not.i.i.i36 = icmp eq ptr %i.gm, null         ; 2 uses
  br i1 %.not.i.i.i36, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit39, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i37

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i37:      ; preds = %.noexc38
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !107, !noalias !449
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !107, !noalias !449
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit39

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit39: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i37, %.noexc38
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 832
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !228
  %i.gw = icmp eq ptr %i.gm, %i.gv
  br i1 %i.gw, label %_ZN2qe6kernel11assert_exprEP4expr.exit41, label %bb.w

bb.w:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit39
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gy, ptr noundef %i.gm)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit41 unwind label %bb.al

_ZN2qe6kernel11assert_exprEP4expr.exit41:         ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit39, %bb.w
  br i1 %.not.i.i.i36, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43, label %bb.x

bb.x:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit41
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !107
  %i.hb = add i32 %i.ha, -1                       ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !107
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.y, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gn, ptr noundef nonnull %i.gm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit43:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit41, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.hf = load ptr, ptr %3, align 8, !tbaa !151
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %10, ptr noundef nonnull align 8 dereferenceable(216) %i.g, ptr noundef %i.hf)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit43
  %i.hg = load ptr, ptr %3, align 8, !tbaa !151   ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i44, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit46, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !208, !nonnull !104, !align !105
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !107
  %i.hk = add i32 %i.hj, -1                       ; 2 uses
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !107
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ac, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit46

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hh, ptr noundef nonnull %i.hg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit46 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit46:       ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ho = load ptr, ptr %10, align 8, !tbaa !151  ; 4 uses
  store ptr %i.ho, ptr %3, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = and i32 %i.hq, 65535
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ae, label %_Z17is_uninterp_constPK4expr.exit.thread

bb.ae:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit46
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !136
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.af, label %_Z17is_uninterp_constPK4expr.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !133 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !215 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %_Z17is_uninterp_constPK4expr.exit.thread61, label %_Z17is_uninterp_constPK4expr.exit

_Z17is_uninterp_constPK4expr.exit:                ; preds = %bb.af
  %i.ib = load i32, ptr %i.hz, align 8, !tbaa !219
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %_Z17is_uninterp_constPK4expr.exit.thread61, label %_Z17is_uninterp_constPK4expr.exit.thread

_Z17is_uninterp_constPK4expr.exit.thread61:       ; preds = %bb.af, %_Z17is_uninterp_constPK4expr.exit
  %i.id = load ptr, ptr %i.h, align 8, !tbaa !244
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !273, !nonnull !104, !align !105
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 832
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !228
  invoke void @_ZN10model_core13register_declEP9func_declP4expr(ptr noundef nonnull align 8 dereferenceable(96) %i.id, ptr noundef nonnull %i.hx, ptr noundef %i.ig)
          to label %_Z17is_uninterp_constPK4expr.exit.thread unwind label %bb.ag

bb.ag:                                            ; preds = %_Z17is_uninterp_constPK4expr.exit.thread61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ah:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.r
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ij, %bb.ai ], [ %i.ii, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.az

bb.ak:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i34
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.w
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn9 = phi { ptr, i32 } [ %i.il, %bb.al ], [ %i.ik, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.az

bb.an:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit43
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.az

_Z17is_uninterp_constPK4expr.exit.thread:         ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit46, %bb.ae, %_Z17is_uninterp_constPK4expr.exit.thread61, %_Z17is_uninterp_constPK4expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.in = load ptr, ptr %i.f, align 8, !tbaa !59  ; 5 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_Z17is_uninterp_constPK4expr.exit.thread
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !100 ; 2 uses
  %i.ir = zext i32 %i.iq to i64
  %i.is = shl nuw nsw i64 %i.ir, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.is
  %.not.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ja, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.in, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.iu = load ptr, ptr %.06.i.i, align 8, !tbaa !101 ; 3 uses
  %i.iv = load ptr, ptr %5, align 8, !tbaa !103, !nonnull !104, !align !105
  %.not.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !107
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !107
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.ap, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iv, ptr noundef nonnull %i.iu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ar

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ap, %bb.ao, %.lr.ph.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.jb = icmp ult ptr %i.ja, %i.it
  br i1 %i.jb, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i47, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.jc = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.in, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #23
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_Z17is_uninterp_constPK4expr.exit.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !59  ; 5 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit58, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !100 ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jn
  %.not.i49 = icmp eq i32 %i.jl, 0
  br i1 %.not.i49, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i57, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53
  %.06.i.i51 = phi ptr [ %i.jv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53 ], [ %i.ji, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48 ] ; 2 uses
  %i.jp = load ptr, ptr %.06.i.i51, align 8, !tbaa !101 ; 3 uses
  %i.jq = load ptr, ptr %4, align 8, !tbaa !103, !nonnull !104, !align !105
  %.not.i.i.i.i.i52 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i52, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i50
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !107
  %i.jt = add i32 %i.js, -1                       ; 2 uses
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !107
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.at, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jq, ptr noundef nonnull %i.jp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53 unwind label %bb.av

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53: ; preds = %bb.at, %bb.as, %.lr.ph.i.i50
  %i.jv = getelementptr inbounds nuw i8, ptr %.06.i.i51, i64 8 ; 2 uses
  %i.jw = icmp ult ptr %i.jv, %i.jo
  br i1 %i.jw, label %.lr.ph.i.i50, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i54, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i54: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i53
  %.pre.i55 = load ptr, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %.pre.i55, null
  br i1 %.not.i.i.i56, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit58, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i57

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i57: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i54, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48
  %i.jx = phi ptr [ %.pre.i55, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i54 ], [ %i.ji, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i48 ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jy)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit58 unwind label %bb.au

bb.au:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i57
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #23
  unreachable

end_hunk_8
begin_hunk_9_@_ZN2qe4qsat7projectER10ref_vectorI4expr11ast_managerE:bb.a
  store ptr %i.es, ptr %i.et, align 8, !tbaa !34, !alias.scope !471
  %.not.i.i.i57 = icmp eq ptr %i.er, null         ; 2 uses
  br i1 %.not.i.i.i57, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit60, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58:      ; preds = %.noexc59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !107, !noalias !471
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !107, !noalias !471
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit60

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit60: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58, %.noexc59
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !288, !nonnull !104, !align !105
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 832
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !228
  %i.fb = icmp eq ptr %i.er, %i.fa
  br i1 %i.fb, label %_ZN2qe6kernel11assert_exprEP4expr.exit62, label %bb.y

bb.y:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit60
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !289
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.fd, ptr noundef %i.er)
          to label %_ZN2qe6kernel11assert_exprEP4expr.exit62 unwind label %bb.aj

_ZN2qe6kernel11assert_exprEP4expr.exit62:         ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit60, %bb.y
  br i1 %.not.i.i.i57, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit64, label %bb.z

bb.z:                                             ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !107
  %i.fg = add i32 %i.ff, -1                       ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !107
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.aa, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit64

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.es, ptr noundef nonnull %i.er)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit64 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit64:       ; preds = %_ZN2qe6kernel11assert_exprEP4expr.exit62, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.fk = load i32, ptr %7, align 4, !tbaa !88    ; 4 uses
  %i.fl = load i32, ptr %i.dn, align 4, !tbaa !89 ; 4 uses
  %i.fm = icmp eq i32 %i.fk, -1
  %i.fn = icmp eq i32 %i.fl, -1                   ; 3 uses
  br i1 %i.fm, label %_ZNK2qe9max_level3maxEv.exit, label %_ZNK2qe9max_level3maxEv.exit67

_ZNK2qe9max_level3maxEv.exit67:                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit64
  %.sroa.speculated.i.i65 = call i32 @llvm.umax.i32(i32 %i.fk, i32 %i.fl) ; 2 uses
  %.0.i.i66 = select i1 %i.fn, i32 %i.fk, i32 %.sroa.speculated.i.i65
  %i.fo = add i32 %.0.i.i66, 2
  %i.fp = load i32, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.fq = icmp ugt i32 %i.fo, %i.fp
  br i1 %i.fq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %bb.al

_ZNK2qe9max_level3maxEv.exit:                     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit64
  br i1 %i.fn, label %bb.ac, label %_ZNK2qe9max_level3maxEv.exit67.thread

bb.ac:                                            ; preds = %_ZNK2qe9max_level3maxEv.exit
  %i.fr = load i32, ptr %i.a, align 8, !tbaa !325
  br label %bb.am

bb.ad:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZN3refI5modelE5resetEv.exit.i, %bb.ao, %_ZN7obj_refI4expr11ast_managerED2Ev.exit77, %bb.ar, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.af:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.t
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.ag ], [ %i.fu, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bf

bb.ai:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i55
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn31 = phi { ptr, i32 } [ %i.fx, %bb.aj ], [ %i.fw, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bf

_ZNK2qe9max_level3maxEv.exit67.thread:            ; preds = %_ZNK2qe9max_level3maxEv.exit
  %i.fy = add i32 %i.fl, 2
  %i.fz = load i32, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.ga = icmp ugt i32 %i.fy, %i.fz
  br i1 %i.ga, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK2qe9max_level3maxEv.exit70

bb.al:                                            ; preds = %_ZNK2qe9max_level3maxEv.exit67
  %spec.select = select i1 %i.fn, i32 %i.fk, i32 %.sroa.speculated.i.i65
  br label %_ZNK2qe9max_level3maxEv.exit70

_ZNK2qe9max_level3maxEv.exit70:                   ; preds = %bb.al, %_ZNK2qe9max_level3maxEv.exit67.thread
  %i.gb = phi i32 [ %i.fp, %bb.al ], [ %i.fz, %_ZNK2qe9max_level3maxEv.exit67.thread ]
  %.0.i.i69 = phi i32 [ %spec.select, %bb.al ], [ %i.fl, %_ZNK2qe9max_level3maxEv.exit67.thread ]
  %i.gc = sub i32 %i.gb, %.0.i.i69
  br label %bb.am

bb.am:                                            ; preds = %_ZNK2qe9max_level3maxEv.exit70, %bb.ac
  %.0.in = phi i32 [ %i.fr, %bb.ac ], [ %i.gc, %_ZNK2qe9max_level3maxEv.exit70 ]
  %.0 = and i32 %.0.in, -2                        ; 3 uses
  %i.gd = load ptr, ptr %i.ak, align 8, !tbaa !244 ; 5 uses
  %.not.i.i.i71 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i71, label %_ZN3refI5modelE5resetEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !287
  %i.gg = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !287
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.ao, label %_ZN3refI5modelE5resetEv.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !65
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.gd) #22, !inline_history !23
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.gd)
          to label %_ZN3refI5modelE5resetEv.exit.i unwind label %bb.ae

_ZN3refI5modelE5resetEv.exit.i:                   ; preds = %bb.ao, %bb.an, %bb.am
  store ptr null, ptr %i.ak, align 8, !tbaa !244
  invoke void @_ZN2qe8pred_abs3popEj(ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i32 noundef %.0)
          to label %bb.ap unwind label %bb.ae

bb.ap:                                            ; preds = %_ZN3refI5modelE5resetEv.exit.i
  %i.gk = load i32, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.gl = sub i32 %i.gk, %.0
  store i32 %i.gl, ptr %i.a, align 8, !tbaa !325
  %i.gm = icmp eq i32 %i.gk, %.0
  br i1 %i.gm, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gn = load i32, ptr %i.aq, align 8, !tbaa !270
  %.not34 = icmp eq i32 %i.gn, 2
  br i1 %.not34, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2qe4qsat14add_assumptionEP4expr(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %i.dm)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ae

bb.as:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN2qe8pred_abs11mk_abstractEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %10, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, ptr noundef %i.dm)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %.not.i.i74 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i74, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !107
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !107
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.av, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.dm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit77:       ; preds = %bb.av, %bb.au, %bb.at
  %i.gu = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  store ptr %i.gu, ptr %3, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.gv = load i32, ptr %i.a, align 8, !tbaa !325
  %i.gw = and i32 %i.gv, 1
  %i.gx = icmp eq i32 %i.gw, 0
  %.0.v.i = select i1 %i.gx, i64 104, i64 64
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i
  invoke void @_ZN2qe6kernel19assert_blocking_fmlEP4expr(ptr noundef nonnull align 8 dereferenceable(40) %.0.i, ptr noundef %i.gu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ae

bb.ax:                                            ; preds = %bb.as
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bf

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZNK2qe9max_level3maxEv.exit67, %_ZN7obj_refI4expr11ast_managerED2Ev.exit77, %bb.ar, %_ZNK2qe9max_level3maxEv.exit67.thread
  %i.gz = phi ptr [ %i.dm, %_ZNK2qe9max_level3maxEv.exit67 ], [ %i.gu, %_ZN7obj_refI4expr11ast_managerED2Ev.exit77 ], [ %i.dm, %bb.ar ], [ %i.dm, %_ZNK2qe9max_level3maxEv.exit67.thread ] ; 3 uses
  %.028 = phi i1 [ false, %_ZNK2qe9max_level3maxEv.exit67 ], [ true, %_ZN7obj_refI4expr11ast_managerED2Ev.exit77 ], [ true, %bb.ar ], [ false, %_ZNK2qe9max_level3maxEv.exit67.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ha = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 5 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !100 ; 2 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hf
  %.not.i82 = icmp eq i32 %i.hd, 0
  br i1 %.not.i82, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i90, label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86
  %.06.i.i84 = phi ptr [ %i.hn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86 ], [ %i.ha, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81 ] ; 2 uses
  %i.hh = load ptr, ptr %.06.i.i84, align 8, !tbaa !101 ; 3 uses
  %i.hi = load ptr, ptr %4, align 8, !tbaa !103, !nonnull !104, !align !105
  %.not.i.i.i.i.i85 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i85, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i83
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !107
  %i.hl = add i32 %i.hk, -1                       ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !107
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.az, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hi, ptr noundef nonnull %i.hh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86 unwind label %bb.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86: ; preds = %bb.az, %bb.ay, %.lr.ph.i.i83
  %i.hn = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 8 ; 2 uses
  %i.ho = icmp ult ptr %i.hn, %i.hg
  br i1 %i.ho, label %.lr.ph.i.i83, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i87, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i87: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i86
  %.pre.i88 = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.pre.i88, null
  br i1 %.not.i.i.i89, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i90

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i90: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i87, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81
  %i.hp = phi ptr [ %.pre.i88, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i87 ], [ %i.ha, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i81 ]
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91 unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i90
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #23
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i87, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i92 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i92, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit93, label %bb.bc

bb.bc:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !107
  %i.hx = add i32 %i.hw, -1                       ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !107
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.bd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit93

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.gz)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit93 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit93:       ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit91, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %.028

bb.bf:                                            ; preds = %bb.ax, %bb.ak, %bb.ah, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.ft, %bb.ae ], [ %i.gy, %bb.ax ], [ %.pn31, %bb.ak ], [ %.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %bb.ad
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.ad ], [ %.pn35, %bb.bf ], [ %lpad.loopexit.split-lp158, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn37.pn.pn
}

declare noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5model8is_falseEP4expr(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6solver9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2qe6mbproj8maximizeERK10ref_vectorI4expr11ast_managerER5modelP3appR7obj_refIS2_S3_ESD_(ptr dead_on_unwind writable sret(%class.inf_eps_rational) align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !271    ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK12inf_rational9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !71
  store i8 0, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = icmp eq i32 %i.a, 1
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %_ZNK8rational6is_oneEv.exit, label %bb.d

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 1
  %i.p = icmp eq i8 %i.o, 0
  %i.q = load i32, ptr %i.l, align 8
  %i.r = icmp eq i32 %i.q, 1
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.invoke, label %_ZNK8rational12is_minus_oneEv.exit.thread

.invoke:                                          ; preds = %_ZNK8rational12is_minus_oneEv.exit, %_ZNK8rational6is_oneEv.exit
  %i.t = phi ptr [ @.str.45, %_ZNK8rational6is_oneEv.exit ], [ @.str.46, %_ZNK8rational12is_minus_oneEv.exit ]
  %i.u = phi i64 [ 2, %_ZNK8rational6is_oneEv.exit ], [ 3, %_ZNK8rational12is_minus_oneEv.exit ]
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.t, i64 noundef %i.u)
          to label %bb.k unwind label %bb.ag      ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.a, -1
  %i.x = and i1 %i.w, %i.i
  br i1 %i.x, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = load i32, ptr %i.y, align 8
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %.invoke, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit.thread:        ; preds = %_ZNK8rational6is_oneEv.exit, %bb.d, %_ZNK8rational12is_minus_oneEv.exit
end_hunk_9
