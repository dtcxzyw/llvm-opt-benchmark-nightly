Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/model_evaluator?download=true
inline.NumInlined: 2269
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3mev13evaluator_cfg25extract_array_func_interpEP4exprR6vectorI10ref_vectorIS1_11ast_managerELb1EjER7obj_refIS1_S5_ERb:bb.a

bb.ap:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit98
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = and i32 %i.id, 65535
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.aq, label %_Z9is_groundPK4expr.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 30
  %i.ih = load i8, ptr %i.ig, align 2
  br label %_Z9is_groundPK4expr.exit

_Z9is_groundPK4expr.exit:                         ; preds = %bb.ap, %bb.aq
  %i.ii = phi i8 [ 0, %bb.ap ], [ %i.ih, %bb.aq ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !341 ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZNK11func_interp11num_entriesEv.exit.thread, label %_ZNK11func_interp11num_entriesEv.exit

_ZNK11func_interp11num_entriesEv.exit.thread:     ; preds = %_Z9is_groundPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110

_ZNK11func_interp11num_entriesEv.exit:            ; preds = %_Z9is_groundPK4expr.exit
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !197 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.io = load ptr, ptr %0, align 8, !tbaa !305, !nonnull !40, !align !41
  %i.ip = ptrtoint ptr %i.io to i64
  store i64 %i.ip, ptr %8, align 8, !tbaa !210
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store ptr null, ptr %i.iq, align 8, !tbaa !196
  %.not215 = icmp eq i32 %i.in, 0
  br i1 %.not215, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZNK11func_interp11num_entriesEv.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %wide.trip.count = zext i32 %i.in to i64
  br label %thread-pre-split

._crit_edge210:                                   ; preds = %bb.bf
  %i.is = icmp eq ptr %.pre241, null
  br i1 %i.is, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100:        ; preds = %._crit_edge210
  %i.it = getelementptr inbounds i8, ptr %.pre241, i64 -4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !197 ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 3
  %i.ix = getelementptr inbounds nuw i8, ptr %.pre241, i64 %i.iw
  %.not.i101 = icmp eq i32 %i.iu, 0
  br i1 %.not.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109, label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105
  %.06.i.i103 = phi ptr [ %i.je, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105 ], [ %.pre241, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100 ] ; 2 uses
  %i.iy = load ptr, ptr %.06.i.i103, align 8, !tbaa !214 ; 3 uses
  %i.iz = load ptr, ptr %8, align 8, !tbaa !216, !nonnull !40, !align !41
  %.not.i.i.i.i.i104 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i104, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i102
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !213
  %i.jc = add i32 %i.jb, -1                       ; 2 uses
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !213
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.as, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iz, ptr noundef nonnull %i.iy)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105 unwind label %bb.au

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105: ; preds = %bb.as, %bb.ar, %.lr.ph.i.i102
  %i.je = getelementptr inbounds nuw i8, ptr %.06.i.i103, i64 8 ; 2 uses
  %i.jf = icmp ult ptr %i.je, %i.ix
  br i1 %i.jf, label %.lr.ph.i.i102, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i105
  %.pre.i107 = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %.pre.i107, null
  br i1 %.not.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100
  %i.jg = phi ptr [ %.pre.i107, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106 ], [ %.pre241, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i100 ]
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110 unwind label %bb.at

bb.at:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #20
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110: ; preds = %_ZNK11func_interp11num_entriesEv.exit.thread, %_ZNK11func_interp11num_entriesEv.exit, %._crit_edge210, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109
  %.in = phi i8 [ %.2, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i109 ], [ %.2, %._crit_edge210 ], [ %.2, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i106 ], [ %i.ii, %_ZNK11func_interp11num_entriesEv.exit ], [ %i.ii, %_ZNK11func_interp11num_entriesEv.exit.thread ]
  %i.jm = trunc i8 %.in to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNK17array_recognizers11is_as_arrayEP4expr.exit.thread

thread-pre-split:                                 ; preds = %bb.bf, %.lr.ph209
  %i.jn = phi ptr [ null, %.lr.ph209 ], [ %.pre241, %bb.bf ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next, %bb.bf ] ; 2 uses
  %.058207 = phi i8 [ %i.ii, %.lr.ph209 ], [ %.2, %bb.bf ] ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.ax, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111:        ; preds = %thread-pre-split
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !197 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.js
  %.not.i112 = icmp eq i32 %i.jq, 0
  br i1 %.not.i112, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i119, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.06.i.i114 = phi ptr [ %i.ka, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 ], [ %i.jn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111 ] ; 2 uses
  %i.ju = load ptr, ptr %.06.i.i114, align 8, !tbaa !214 ; 3 uses
  %i.jv = load ptr, ptr %8, align 8, !tbaa !216, !nonnull !40, !align !41
  %.not.i.i.i.i.i115 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i113
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !213
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !213
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.aw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jv, ptr noundef nonnull %i.ju)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 unwind label %bb.az

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i113
  %i.ka = getelementptr inbounds nuw i8, ptr %.06.i.i114, i64 8 ; 2 uses
  %i.kb = icmp ult ptr %i.ka, %i.jt
  br i1 %i.kb, label %.lr.ph.i.i113, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.pre.i118 = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i, label %bb.ax, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i119: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111
  %i.kc = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.jn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i111 ]
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  store i32 0, ptr %i.kd, align 4, !tbaa !197
  br label %bb.ax

bb.ax:                                            ; preds = %thread-pre-split, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i119
  %i.ke = load ptr, ptr %i.ij, align 8, !tbaa !341
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !493 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !343 ; 7 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !305, !nonnull !40, !align !41
  %i.kk = load ptr, ptr %3, align 8, !tbaa !209
  %i.kl = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.kj, ptr noundef %i.kk, ptr noundef %i.ki)
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.kl, label %bb.bf, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit:                                        ; preds = %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.ax, %._crit_edge, %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = and i32 %i.ko, 65535
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_Z9is_groundPK4expr.exit121, label %_Z9is_groundPK4expr.exit121.thread

_Z9is_groundPK4expr.exit121:                      ; preds = %bb.ba
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 30
  %i.ks = load i8, ptr %i.kr, align 2
  %.fr = freeze i8 %i.ks
  %spec.select = and i8 %.058207, %.fr
  br label %_Z9is_groundPK4expr.exit121.thread

_Z9is_groundPK4expr.exit121.thread:               ; preds = %_Z9is_groundPK4expr.exit121, %bb.ba
  %i.kt = phi i8 [ 0, %bb.ba ], [ %spec.select, %_Z9is_groundPK4expr.exit121 ] ; 3 uses
  %i.ku = load i32, ptr %i.ir, align 8, !tbaa !494 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kw = zext i32 %i.ku to i64
  %.idx.i.i122 = shl nuw nsw i64 %i.kw, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.idx.i.i122
  %i.ky = icmp eq i32 %i.ku, 0
  br i1 %i.ky, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %_Z9is_groundPK4expr.exit121.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127
  %.sroa.04.09.i.i124 = phi ptr [ %i.lq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127 ], [ %i.kv, %_Z9is_groundPK4expr.exit121.thread ] ; 2 uses
  %i.kz = load ptr, ptr %.sroa.04.09.i.i124, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i.i.i.i125 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i.i125, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i126, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i123
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !213
  %i.lc = add i32 %i.lb, 1
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !213
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i126

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i126: ; preds = %bb.bb, %.lr.ph.i.i123
  %i.ld = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 4 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i126
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !197 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !197
  %i.lj = icmp eq i32 %i.lg, %i.li
  br i1 %i.lj, label %bb.bd, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127

bb.bd:                                            ; preds = %bb.bc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i126
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
          to label %.noexc131 unwind label %.loopexit

.noexc131:                                        ; preds = %bb.bd
  %.pre.i.i.i.i128 = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 2 uses
  %.phi.trans.insert.i.i.i.i129 = getelementptr inbounds i8, ptr %.pre.i.i.i.i128, i64 -4
  %.pre2.i.i.i.i130 = load i32, ptr %.phi.trans.insert.i.i.i.i129, align 4, !tbaa !197
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127: ; preds = %.noexc131, %bb.bc
  %i.lk = phi i32 [ %.pre2.i.i.i.i130, %.noexc131 ], [ %i.lg, %bb.bc ] ; 2 uses
  %i.ll = phi ptr [ %.pre.i.i.i.i128, %.noexc131 ], [ %i.ld, %bb.bc ] ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -4
  %i.ln = zext i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ln
  store ptr %i.kz, ptr %i.lo, align 8, !tbaa !214
  %i.lp = add i32 %i.lk, 1
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !197
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i124, i64 8 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.kx
  br i1 %i.lr, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit132, label %.lr.ph.i.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit132: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i127
  %.not.i.i.i.i133 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i133, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread294

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread294: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit132
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !213
  %i.lu = add i32 %i.lt, 1
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !213
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_Z9is_groundPK4expr.exit121.thread
  %.pre.pre = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !213
  %i.lx = add i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !213
  %i.ly = icmp eq ptr %.pre.pre, null
  br i1 %i.ly, label %bb.be, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit132, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread294, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.lz = phi ptr [ %i.ll, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread294 ], [ %.pre.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i ], [ %i.ll, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit132 ] ; 3 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !197 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.lz, i64 -8
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !197
  %i.me = icmp eq i32 %i.mb, %i.md
  br i1 %i.me, label %bb.be, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

bb.be:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.be
  %.pre.i.i = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !197
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, %.noexc134
  %i.mf = phi i32 [ %.pre2.i.i, %.noexc134 ], [ %i.mb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread ] ; 2 uses
  %i.mg = phi ptr [ %.pre.i.i, %.noexc134 ], [ %i.lz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread ] ; 6 uses
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -4
  %i.mi = zext i32 %i.mf to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mi
  store ptr %i.ki, ptr %i.mj, align 8, !tbaa !214
  %i.mk = add i32 %i.mf, 1                        ; 3 uses
  store i32 %i.mk, ptr %i.mh, align 4, !tbaa !197
  %i.ml = zext i32 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.ml, 3                ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mm
  %.not74202 = icmp eq i32 %i.mk, 0
  br i1 %.not74202, label %._crit_edge, label %.lr.ph205.preheader

.lr.ph205.preheader:                              ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.mo = add nsw i64 %i.mm, -8                   ; 2 uses
  %i.mp = and i64 %i.mo, 8
  %lcmp.mod.not.not = icmp eq i64 %i.mp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph205.prol, label %.lr.ph205.prol.loopexit

.lr.ph205.prol:                                   ; preds = %.lr.ph205.preheader
  %i.mq = load ptr, ptr %i.mg, align 8, !tbaa !214 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4
  %i.mt = and i32 %i.ms, 65535
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %_Z9is_groundPK4expr.exit136.prol, label %_Z9is_groundPK4expr.exit136.thread.prol

_Z9is_groundPK4expr.exit136.prol:                 ; preds = %.lr.ph205.prol
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 30
  %i.mw = load i8, ptr %i.mv, align 2
  %.fr149.prol = freeze i8 %i.mw
  %spec.select148.prol = and i8 %i.kt, %.fr149.prol
  br label %_Z9is_groundPK4expr.exit136.thread.prol

_Z9is_groundPK4expr.exit136.thread.prol:          ; preds = %_Z9is_groundPK4expr.exit136.prol, %.lr.ph205.prol
  %i.mx = phi i8 [ 0, %.lr.ph205.prol ], [ %spec.select148.prol, %_Z9is_groundPK4expr.exit136.prol ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  br label %.lr.ph205.prol.loopexit

.lr.ph205.prol.loopexit:                          ; preds = %_Z9is_groundPK4expr.exit136.thread.prol, %.lr.ph205.preheader
  %.lcssa367.unr = phi i8 [ poison, %.lr.ph205.preheader ], [ %i.mx, %_Z9is_groundPK4expr.exit136.thread.prol ]
  %.0204.unr = phi ptr [ %i.mg, %.lr.ph205.preheader ], [ %i.my, %_Z9is_groundPK4expr.exit136.thread.prol ]
  %.1203.unr = phi i8 [ %i.kt, %.lr.ph205.preheader ], [ %i.mx, %_Z9is_groundPK4expr.exit136.thread.prol ]
  %i.mz = icmp eq i64 %i.mo, 0
  br i1 %i.mz, label %._crit_edge, label %.lr.ph205

._crit_edge:                                      ; preds = %.lr.ph205.prol.loopexit, %_Z9is_groundPK4expr.exit136.thread.1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %.1.lcssa = phi i8 [ %i.kt, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %.lcssa367.unr, %.lr.ph205.prol.loopexit ], [ %i.nr, %_Z9is_groundPK4expr.exit136.thread.1 ]
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.bf unwind label %.loopexit.split-lp ; 0 uses

.lr.ph205:                                        ; preds = %.lr.ph205.prol.loopexit, %_Z9is_groundPK4expr.exit136.thread.1
  %.0204 = phi ptr [ %i.ns, %_Z9is_groundPK4expr.exit136.thread.1 ], [ %.0204.unr, %.lr.ph205.prol.loopexit ] ; 3 uses
  %.1203 = phi i8 [ %i.nr, %_Z9is_groundPK4expr.exit136.thread.1 ], [ %.1203.unr, %.lr.ph205.prol.loopexit ]
  %i.nb = load ptr, ptr %.0204, align 8, !tbaa !214 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = and i32 %i.nd, 65535
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %_Z9is_groundPK4expr.exit136, label %_Z9is_groundPK4expr.exit136.thread

_Z9is_groundPK4expr.exit136:                      ; preds = %.lr.ph205
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 30
  %i.nh = load i8, ptr %i.ng, align 2
  %.fr149 = freeze i8 %i.nh
  %spec.select148 = and i8 %.1203, %.fr149
  br label %_Z9is_groundPK4expr.exit136.thread

_Z9is_groundPK4expr.exit136.thread:               ; preds = %_Z9is_groundPK4expr.exit136, %.lr.ph205
  %i.ni = phi i8 [ 0, %.lr.ph205 ], [ %spec.select148, %_Z9is_groundPK4expr.exit136 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0204, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !214 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = and i32 %i.nm, 65535
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %_Z9is_groundPK4expr.exit136.1, label %_Z9is_groundPK4expr.exit136.thread.1

_Z9is_groundPK4expr.exit136.1:                    ; preds = %_Z9is_groundPK4expr.exit136.thread
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 30
  %i.nq = load i8, ptr %i.np, align 2
  %.fr149.1 = freeze i8 %i.nq
  %spec.select148.1 = and i8 %i.ni, %.fr149.1
  br label %_Z9is_groundPK4expr.exit136.thread.1

_Z9is_groundPK4expr.exit136.thread.1:             ; preds = %_Z9is_groundPK4expr.exit136.1, %_Z9is_groundPK4expr.exit136.thread
  %i.nr = phi i8 [ 0, %_Z9is_groundPK4expr.exit136.thread ], [ %spec.select148.1, %_Z9is_groundPK4expr.exit136.1 ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0204, i64 16 ; 2 uses
  %.not74.1 = icmp eq ptr %i.ns, %i.mn
  br i1 %.not74.1, label %._crit_edge, label %.lr.ph205

bb.bf:                                            ; preds = %._crit_edge, %bb.ay
  %.2 = phi i8 [ %.058207, %bb.ay ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %.pre241 = load ptr, ptr %i.iq, align 8, !tbaa !196 ; 6 uses
  br i1 %exitcond.not, label %._crit_edge210, label %thread-pre-split, !llvm.loop !492

bb.bg:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.az
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.az ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bh

_ZNK17array_recognizers11is_as_arrayEP4expr.exit.thread: ; preds = %bb.ag, %bb.aj, %bb.ak, %_ZN3mev13evaluator_cfg15args_are_valuesERK10ref_vectorI4expr11ast_managerERb.exit92, %bb.z, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit, %.preheader.i.i.i.i, %bb.ad, %bb.ac, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110, %_ZNK10model_core15get_func_interpEP9func_decl.exit, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit98, %_ZNK17array_recognizers11is_as_arrayEP4expr.exit, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %.261 = phi i1 [ true, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ true, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit ], [ false, %_ZNK17array_recognizers11is_as_arrayEP4expr.exit ], [ false, %_ZNK10model_core15get_func_interpEP9func_decl.exit ], [ %i.jm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit110 ], [ false, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit98 ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %.preheader.i.i.i.i ], [ true, %_ZN3mev13evaluator_cfg15args_are_valuesERK10ref_vectorI4expr11ast_managerERb.exit92 ], [ true, %bb.z ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.ag ]
  ret i1 %.261

bb.bh:                                            ; preds = %bb.bg, %.body
  %.pn81 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.pn.pn.pn.pn, %bb.bg ]
  resume { ptr, i32 } %.pn81
}

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !213
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !213
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !209    ; 3 uses
  %.not.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i4, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211, !nonnull !40, !align !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !213
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !213
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull %i.d)
  br label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !209
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !213
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !213
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !197  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !197
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !197
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %.pre2.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !214
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !197
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !304
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !304
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE7destroyEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !304    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !197  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !197
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !304   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !197
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !216, !nonnull !40, !align !41
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !210
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !196  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN10ref_vectorI4expr11ast_managerEC2ERKS2_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.d, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.r = phi ptr [ %i.ai, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.d ] ; 4 uses
  %i.s = phi ptr [ %i.aj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !197
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.i.i, %i.v
  br i1 %i.w, label %bb.e, label %_ZN10ref_vectorI4expr11ast_managerEC2ERKS2_.exit.loopexit

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !214  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !213
  %i.ab = add i32 %i.aa, 1
end_hunk_0
