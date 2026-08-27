Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bit_blaster_rewriter?download=true
inline.NumInlined: 3044
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN15bit_blaster_tplI11blaster_cfgE13mk_multiplierEjPKP4exprS5_R10ref_vectorIS2_11ast_managerE:bb.a

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gq, ptr noundef nonnull %i.gp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i117 unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i117: ; preds = %bb.an, %bb.am, %.lr.ph.i.i114
  %i.gv = getelementptr inbounds nuw i8, ptr %.06.i.i115, i64 8 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %i.go
  br i1 %i.gw, label %.lr.ph.i.i114, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i118, !llvm.loop !173

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i118: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i117
  %.pre.i119 = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pre.i119, null
  br i1 %.not.i.i120, label %bb.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i118, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i112
  %i.gx = phi ptr [ %.pre.i119, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i118 ], [ %i.gi, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i112 ]
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -4
  store i32 0, ptr %i.gy, align 4, !tbaa !132
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i121, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i118, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.gz = load ptr, ptr %i.as, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !332, !nonnull !129, !align !130
  store ptr null, ptr %11, align 8, !tbaa !199
  store ptr %i.hb, ptr %i.dq, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !332, !nonnull !129, !align !130
  store ptr null, ptr %12, align 8, !tbaa !199
  store ptr %i.hc, ptr %i.dr, align 8, !tbaa !190
  %i.hd = load ptr, ptr %spec.select, align 8, !tbaa !169
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %spec.select206, i64 %indvars.iv236
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !169
  %i.hg = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr %i.hd, ptr %i.e, align 16, !tbaa !169
  store ptr %i.hf, ptr %i.ds, align 8, !tbaa !169
  invoke void @_ZN13bool_rewriter6mk_andEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.hg, i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.ap unwind label %bb.az

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %i.hh = load ptr, ptr %i.dt, align 8, !tbaa !169
  %i.hi = getelementptr [8 x i8], ptr %spec.select206, i64 %indvars.iv236
  %i.hj = getelementptr i8, ptr %i.hi, i64 -8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !169
  %i.hl = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.hh, ptr %i.d, align 16, !tbaa !169
  store ptr %i.hk, ptr %i.du, align 8, !tbaa !169
  invoke void @_ZN13bool_rewriter6mk_andEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.hl, i32 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.hm = icmp samesign ult i64 %indvars.iv236, %i.ec
  %i.hn = load ptr, ptr %11, align 8, !tbaa !199  ; 3 uses
  %i.ho = load ptr, ptr %12, align 8, !tbaa !199  ; 3 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130 ; 2 uses
  br i1 %i.hm, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN13bool_rewriter6mk_xorEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.hp, ptr noundef %i.hn, ptr noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc128 unwind label %bb.az

.noexc128:                                        ; preds = %bb.ar
  %i.hq = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.hn, ptr %i.c, align 16, !tbaa !169
  store ptr %i.ho, ptr %i.dy, align 8, !tbaa !169
  invoke void @_ZN13bool_rewriter6mk_andEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.hq, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.hr = load ptr, ptr %10, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i.i130 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i130, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !171
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131: ; preds = %bb.at, %bb.as
  %i.hv = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !132 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !132
  %i.ib = icmp eq i32 %i.hy, %i.ia
  br i1 %i.ib, label %bb.av, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136

bb.av:                                            ; preds = %bb.au, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %.noexc135 unwind label %bb.az

.noexc135:                                        ; preds = %bb.av
  %.pre.i.i132 = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i133 = getelementptr inbounds i8, ptr %.pre.i.i132, i64 -4
  %.pre2.i.i134 = load i32, ptr %.phi.trans.insert.i.i133, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136: ; preds = %bb.au, %.noexc135
  %i.ic = phi i32 [ %.pre2.i.i134, %.noexc135 ], [ %i.hy, %bb.au ] ; 2 uses
  %i.id = phi ptr [ %.pre.i.i132, %.noexc135 ], [ %i.hv, %bb.au ] ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -4
  %i.if = zext i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.if
  store ptr %i.hr, ptr %i.ig, align 8, !tbaa !169
  %i.ih = add i32 %i.ic, 1
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !132
  %.not56218 = icmp samesign ult i64 %indvars.iv236, 2
  br i1 %.not56218, label %._crit_edge, label %.lr.ph220

._crit_edge:                                      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit163, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136
  %i.ii = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i137, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i138, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !171
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i138

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i138: ; preds = %bb.aw, %._crit_edge
  %i.im = load ptr, ptr %i.y, align 8, !tbaa !164 ; 4 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i138
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !132 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.im, i64 -8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !132
  %i.is = icmp eq i32 %i.ip, %i.ir
  br i1 %i.is, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %bb.ax, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i138
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc142 unwind label %bb.az

.noexc142:                                        ; preds = %bb.ay
  %.pre.i.i139 = load ptr, ptr %i.y, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i140 = getelementptr inbounds i8, ptr %.pre.i.i139, i64 -4
  %.pre2.i.i141 = load i32, ptr %.phi.trans.insert.i.i140, align 4, !tbaa !132
  br label %bb.bn

.loopexit:                                        ; preds = %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.az:                                            ; preds = %bb.br, %bb.bo, %bb.ay, %bb.av, %.noexc128, %bb.ar, %bb.ap, %bb.ao
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.lr.ph220:                                        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136, %_ZN7obj_refI4expr11ast_managerED2Ev.exit163
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %_ZN7obj_refI4expr11ast_managerED2Ev.exit163 ], [ 2, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.iu = load ptr, ptr %i.as, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !332, !nonnull !129, !align !130 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !199
  store ptr %i.iw, ptr %i.dz, align 8, !tbaa !190
  %i.ix = load ptr, ptr %9, align 8, !tbaa !199   ; 8 uses
  %.not.i144 = icmp eq ptr %i.ix, null
  br i1 %.not.i144, label %bb.ba, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %.lr.ph220
  store ptr %i.ix, ptr %13, align 8, !tbaa !199
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !171
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !171
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph220, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !332, !nonnull !129, !align !130
  store ptr null, ptr %14, align 8, !tbaa !199
  store ptr %i.jb, ptr %i.ea, align 8, !tbaa !190
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %indvars.iv229
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !169
  %i.je = sub nuw nsw i64 %indvars.iv236, %indvars.iv229
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %spec.select206, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !169
  %i.jh = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.jd, ptr %i.b, align 16, !tbaa !169
  store ptr %i.jg, ptr %i.eb, align 8, !tbaa !169
  invoke void @_ZN13bool_rewriter6mk_andEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.jh, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bb unwind label %bb.bm

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ji = load ptr, ptr %14, align 8, !tbaa !199  ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %i.gh, i64 %indvars.iv229
  %i.jk = getelementptr i8, ptr %i.jj, i64 -16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !169 ; 2 uses
  invoke void @_ZN11blaster_cfg7mk_xor3EP4exprS1_S1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ji, ptr noundef %i.ix, ptr noundef %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc149 unwind label %bb.bm

.noexc149:                                        ; preds = %bb.bb
  invoke void @_ZN11blaster_cfg8mk_carryEP4exprS1_S1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ji, ptr noundef %i.ix, ptr noundef %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN15bit_blaster_tplI11blaster_cfgE13mk_full_adderEP4exprS3_S3_R7obj_refIS2_11ast_managerES7_.exit unwind label %bb.bm

_ZN15bit_blaster_tplI11blaster_cfgE13mk_full_adderEP4exprS3_S3_R7obj_refIS2_11ast_managerES7_.exit: ; preds = %.noexc149
  %i.jm = load ptr, ptr %10, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i.i151 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i151, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i152, label %bb.bc

bb.bc:                                            ; preds = %_ZN15bit_blaster_tplI11blaster_cfgE13mk_full_adderEP4exprS3_S3_R7obj_refIS2_11ast_managerES7_.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !171
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i152

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i152: ; preds = %bb.bc, %_ZN15bit_blaster_tplI11blaster_cfgE13mk_full_adderEP4exprS3_S3_R7obj_refIS2_11ast_managerES7_.exit
  %i.jq = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i152
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !132 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !132
  %i.jw = icmp eq i32 %i.jt, %i.jv
  br i1 %i.jw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i152
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %.noexc156 unwind label %bb.bm

.noexc156:                                        ; preds = %bb.be
  %.pre.i.i153 = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i154 = getelementptr inbounds i8, ptr %.pre.i.i153, i64 -4
  %.pre2.i.i155 = load i32, ptr %.phi.trans.insert.i.i154, align 4, !tbaa !132
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc156, %bb.bd
  %i.jx = phi i32 [ %.pre2.i.i155, %.noexc156 ], [ %i.jt, %bb.bd ] ; 2 uses
  %i.jy = phi ptr [ %.pre.i.i153, %.noexc156 ], [ %i.jq, %bb.bd ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.ka = zext i32 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ka
  store ptr %i.jm, ptr %i.kb, align 8, !tbaa !169
  %i.kc = add i32 %i.jx, 1
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !132
  %i.kd = load ptr, ptr %14, align 8, !tbaa !199  ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i158, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit160, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ke = load ptr, ptr %i.ea, align 8, !tbaa !200, !nonnull !129, !align !130
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !171
  %i.kh = add i32 %i.kg, -1                       ; 2 uses
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !171
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bh, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit160

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ke, ptr noundef nonnull %i.kd)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit160 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit160:      ; preds = %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.not.i.i161 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i161, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit163, label %bb.bj

bb.bj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit160
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !171
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !171
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.bk, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit163

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iw, ptr noundef nonnull %i.ix)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit163 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit163:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit160, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233 = icmp eq i64 %indvars.iv.next230, %indvars.iv234
  br i1 %exitcond233, label %._crit_edge, label %.lr.ph220, !llvm.loop !358

bb.bm:                                            ; preds = %bb.be, %.noexc149, %bb.bb, %bb.ba
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ce

bb.bn:                                            ; preds = %.noexc142, %bb.ax
  %i.ks = phi i32 [ %.pre2.i.i141, %.noexc142 ], [ %i.ip, %bb.ax ] ; 2 uses
  %i.kt = phi ptr [ %.pre.i.i139, %.noexc142 ], [ %i.im, %bb.ax ] ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -4
  %i.kv = zext i32 %i.ks to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kv
  store ptr %i.ii, ptr %i.kw, align 8, !tbaa !169
  %i.kx = add i32 %i.ks, 1
  store i32 %i.kx, ptr %i.ku, align 4, !tbaa !132
  %i.ky = load ptr, ptr %i.cq, align 8, !tbaa !359 ; 2 uses
  store ptr %i.ky, ptr %i.cn, align 8, !tbaa !359
  store ptr %i.gh, ptr %i.cq, align 8, !tbaa !359
  br label %bb.bx

bb.bo:                                            ; preds = %bb.aq
  invoke void @_ZN13bool_rewriter6mk_xorEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.hp, ptr noundef %i.hn, ptr noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit.preheader unwind label %bb.az

_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit.preheader: ; preds = %bb.bo
  %.not216 = icmp samesign ult i64 %indvars.iv236, 2
  br i1 %.not216, label %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit._crit_edge, label %.lr.ph

_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit._crit_edge: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit177, %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit.preheader
  %i.kz = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i.i165 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i165, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i166, label %bb.bp

bb.bp:                                            ; preds = %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit._crit_edge
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !171
  %i.lc = add i32 %i.lb, 1
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i166

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i166: ; preds = %bb.bp, %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit._crit_edge
  %i.ld = load ptr, ptr %i.y, align 8, !tbaa !164 ; 4 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i166
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !132 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !132
  %i.lj = icmp eq i32 %i.lg, %i.li
  br i1 %i.lj, label %bb.br, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit171

bb.br:                                            ; preds = %bb.bq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i166
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc170 unwind label %bb.az

.noexc170:                                        ; preds = %bb.br
  %.pre.i.i167 = load ptr, ptr %i.y, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i168 = getelementptr inbounds i8, ptr %.pre.i.i167, i64 -4
  %.pre2.i.i169 = load i32, ptr %.phi.trans.insert.i.i168, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit171: ; preds = %bb.bq, %.noexc170
  %i.lk = phi i32 [ %.pre2.i.i169, %.noexc170 ], [ %i.lg, %bb.bq ] ; 2 uses
  %i.ll = phi ptr [ %.pre.i.i167, %.noexc170 ], [ %i.ld, %bb.bq ] ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -4
  %i.ln = zext i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ln
  store ptr %i.kz, ptr %i.lo, align 8, !tbaa !169
  %i.lp = add i32 %i.lk, 1
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !132
  br label %bb.bx

.lr.ph:                                           ; preds = %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit.preheader, %_ZN7obj_refI4expr11ast_managerED2Ev.exit177
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7obj_refI4expr11ast_managerED2Ev.exit177 ], [ 2, %_ZN15bit_blaster_tplI11blaster_cfgE6mk_xorEP4exprS3_R7obj_refIS2_11ast_managerE.exit.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.lq = load ptr, ptr %i.as, align 8, !tbaa !331, !nonnull !129, !align !130
end_hunk_0
begin_hunk_1_@_ZN15bit_blaster_tplI11blaster_cfgE12mk_udiv_uremEjPKP4exprS5_R10ref_vectorIS2_11ast_managerES9_:bb.a
          cleanup
  br label %.loopexit.split-lp130

.loopexit.split-lp130.loopexit:                   ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp130

.loopexit.split-lp130.loopexit.split-lp:          ; preds = %bb.d
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp130

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.k
  %i.bl = phi ptr [ %i.bz, %bb.k ], [ %i.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 3 uses
  %.045134 = phi i32 [ %i.cf, %bb.k ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !332, !nonnull !129, !align !130
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 840
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i65, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !171
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66: ; preds = %.lr.ph, %bb.i
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !132 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !132
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc70 unwind label %bb.l

.noexc70:                                         ; preds = %bb.j
  %.pre.i.i67 = load ptr, ptr %i.n, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i68 = getelementptr inbounds i8, ptr %.pre.i.i67, i64 -4
  %.pre2.i.i69 = load i32, ptr %.phi.trans.insert.i.i68, align 4, !tbaa !132
  br label %bb.k

bb.k:                                             ; preds = %.noexc70, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66
  %i.bz = phi ptr [ %.pre.i.i67, %.noexc70 ], [ %i.bl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66 ] ; 3 uses
  %i.ca = phi i32 [ %.pre2.i.i69, %.noexc70 ], [ %i.bv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i66 ] ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cc
  store ptr %i.bq, ptr %i.cd, align 8, !tbaa !169
  %i.ce = add i32 %i.ca, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !132
  %i.cf = add nuw i32 %.045134, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !378

bb.l:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp130

._crit_edge139:                                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit125, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !164 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72:         ; preds = %._crit_edge139
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !132 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76
  %.06.i.i74 = phi ptr [ %i.cu, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76 ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72 ] ; 2 uses
  %i.co = load ptr, ptr %.06.i.i74, align 8, !tbaa !169 ; 3 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i.i.i.i75 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i75, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i73
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !171
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !171
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cp, ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76 unwind label %bb.p

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76: ; preds = %bb.n, %bb.m, %.lr.ph.i.i73
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i74, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cn
  br i1 %i.cv, label %.lr.ph.i.i73, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i77, !llvm.loop !173

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i77: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i77, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72
  %i.cw = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i77 ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #22
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %._crit_edge139, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i77, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.q:                                             ; preds = %.lr.ph138, %_ZN7obj_refI4expr11ast_managerED2Ev.exit125
  %indvars.iv146 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next147, %_ZN7obj_refI4expr11ast_managerED2Ev.exit125 ] ; 3 uses
  invoke void @_ZN15bit_blaster_tplI11blaster_cfgE10checkpointEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !332, !nonnull !129, !align !130
  store ptr null, ptr %7, align 8, !tbaa !199
  store ptr %i.de, ptr %i.bi, align 8, !tbaa !190
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !164 ; 5 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78:         ; preds = %bb.r
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !132 ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  %.not.i79 = icmp eq i32 %i.di, 0
  br i1 %.not.i79, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86, label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83
  %.06.i.i81 = phi ptr [ %i.ds, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83 ], [ %i.df, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78 ] ; 2 uses
  %i.dm = load ptr, ptr %.06.i.i81, align 8, !tbaa !169 ; 3 uses
  %i.dn = load ptr, ptr %6, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i.i.i.i82 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i82, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i80
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !171
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !171
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.t, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dn, ptr noundef nonnull %i.dm)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83 unwind label %.loopexit128

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83: ; preds = %bb.t, %bb.s, %.lr.ph.i.i80
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i81, i64 8 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dl
  br i1 %i.dt, label %.lr.ph.i.i80, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, !llvm.loop !173

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83
  %.pre.i85 = load ptr, ptr %i.f, align 8, !tbaa !164 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i85, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78
  %i.du = phi ptr [ %.pre.i85, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84 ], [ %i.df, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78 ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 0, ptr %i.dv, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, %bb.r
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !164
  invoke void @_ZN15bit_blaster_tplI11blaster_cfgE13mk_subtracterEjPKP4exprS5_R10ref_vectorIS2_11ast_managerER7obj_refIS2_S7_E(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %i.dw, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.u unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.dx = trunc i64 %indvars.iv146 to i32
  %i.dy = sub i32 %1, %i.dx                       ; 2 uses
  %i.dz = add i32 %i.dy, -1
  %i.ea = load ptr, ptr %7, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !171
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.v, %bb.u
  %i.ee = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 3 uses
  %i.ef = zext i32 %i.dz to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !169 ; 3 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i.i4.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i4.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !171
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !171
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ei, ptr noundef nonnull %i.eh)
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %bb.x
  %.pre.i.i89 = load ptr, ptr %i.ac, align 8, !tbaa !164
  br label %bb.y

bb.y:                                             ; preds = %.noexc90, %bb.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.en = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.ee, %bb.w ], [ %.pre.i.i89, %.noexc90 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ef
  store ptr %i.ea, ptr %i.eo, align 8, !tbaa !169
  %i.ep = icmp samesign ult i64 %indvars.iv146, %i.h
  br i1 %i.ep, label %.preheader, label %.preheader127

bb.z:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.eq = add i32 %i.dy, -2
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i91, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !171
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92: ; preds = %bb.aa, %bb.z
  %i.ex = load ptr, ptr %i.n, align 8, !tbaa !164 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !169 ; 3 uses
  %i.ez = load ptr, ptr %5, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i.i4.i.i93 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i4.i.i93, label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit96, label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !171
  %i.fc = add i32 %i.fb, -1                       ; 2 uses
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !171
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit96

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ez, ptr noundef nonnull %i.ey)
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ac
  %.pre.i.i94 = load ptr, ptr %i.n, align 8, !tbaa !164
  br label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit96

_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit96: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92, %bb.ab, %.noexc95
  %i.fe = phi ptr [ %i.ex, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i92 ], [ %i.ex, %bb.ab ], [ %.pre.i.i94, %.noexc95 ]
  store ptr %i.et, ptr %i.fe, align 8, !tbaa !169
  br label %.loopexit

bb.ad:                                            ; preds = %bb.q
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp130

.loopexit128:                                     ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %bb.x, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.preheader:                                       ; preds = %bb.y, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %indvars.iv143 = phi i64 [ %i.fk, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.h, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !332, !nonnull !129, !align !130
  store ptr null, ptr %8, align 8, !tbaa !199
  store ptr %i.fi, ptr %i.bk, align 8, !tbaa !190
  %i.fj = load ptr, ptr %7, align 8, !tbaa !199   ; 2 uses
  %i.fk = add nsw i64 %indvars.iv143, -1          ; 4 uses
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !169 ; 2 uses
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !164
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fk
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !169 ; 2 uses
  %i.fr = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !129, !align !130 ; 2 uses
  %i.fs = invoke noundef i32 @_ZN13bool_rewriter11mk_ite_coreEP4exprS1_S1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %i.fr, ptr noundef %i.fj, ptr noundef %i.fn, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc98 unwind label %bb.ap

.noexc98:                                         ; preds = %.preheader
  %i.ft = icmp eq i32 %i.fs, 5
  br i1 %i.ft, label %bb.ae, label %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exitthread-pre-split

bb.ae:                                            ; preds = %.noexc98
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !337, !nonnull !129, !align !130
  %i.fv = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fu, i32 noundef 0, i32 noundef 4, ptr noundef %i.fj, ptr noundef %i.fn, ptr noundef %i.fq)
          to label %.noexc99 unwind label %bb.ap  ; 4 uses

.noexc99:                                         ; preds = %bb.ae
  %.not.i.i.i.i97 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i97, label %bb.af, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i:      ; preds = %.noexc99
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !171
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !171
  br label %bb.af

bb.af:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i, %.noexc99
  %i.fz = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i4.i.i.i.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %i.bk, align 8, !tbaa !200, !nonnull !129, !align !130
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !171
  %i.gd = add i32 %i.gc, -1                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !171
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ah, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ga, ptr noundef nonnull %i.fz)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i unwind label %bb.ap

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  store ptr %i.fv, ptr %8, align 8, !tbaa !199
  br label %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exit

_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exitthread-pre-split: ; preds = %.noexc98
  %.pr = load ptr, ptr %8, align 8, !tbaa !199
  br label %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exit

_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exit: ; preds = %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exitthread-pre-split, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i
  %i.gf = phi ptr [ %.pr, %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exitthread-pre-split ], [ %i.fv, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i101 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i102, label %bb.ai

bb.ai:                                            ; preds = %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !171
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i102

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i102: ; preds = %bb.ai, %_ZN15bit_blaster_tplI11blaster_cfgE6mk_iteEP4exprS3_S3_R7obj_refIS2_11ast_managerE.exit
  %i.gj = load ptr, ptr %i.n, align 8, !tbaa !164 ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv143
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !169 ; 3 uses
  %i.gm = load ptr, ptr %5, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i.i4.i.i103 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i4.i.i103, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i102
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !171
  %i.gp = add i32 %i.go, -1                       ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !171
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gm, ptr noundef nonnull %i.gl)
          to label %.noexc105 unwind label %bb.ap
end_hunk_1
begin_hunk_2_@_ZN15bit_blaster_tplI11blaster_cfgE7mk_ashrEjPKP4exprS5_R10ref_vectorIS2_11ast_managerE:bb.a
  %.not.i4.i.i.i.i162 = icmp eq ptr %i.nd, null
  br i1 %.not.i4.i.i.i.i162, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ne = load ptr, ptr %i.lv, align 8, !tbaa !200, !nonnull !129, !align !130
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !171
  %i.nh = add i32 %i.ng, -1                       ; 2 uses
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !171
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.ci, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ne, ptr noundef nonnull %i.nd)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163 unwind label %bb.cr

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163: ; preds = %bb.ci, %bb.ch, %bb.cg
  store ptr %i.mz, ptr %13, align 8, !tbaa !199
  br label %bb.cj

thread-pre-split:                                 ; preds = %.noexc164
  %.pr193 = load ptr, ptr %13, align 8, !tbaa !199
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163
  %i.nj = phi ptr [ %.pr193, %thread-pre-split ], [ %i.mz, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i.i.i163 ] ; 3 uses
  %i.nk = load ptr, ptr %i.lz, align 8, !tbaa !164
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv250 ; 2 uses
  %i.nm = load ptr, ptr %4, align 8, !tbaa !170, !nonnull !129, !align !130
  %.not.i.i170 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i170, label %_ZN11ast_manager7inc_refEP3ast.exit.i171, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !171
  %i.np = add i32 %i.no, 1
  store i32 %i.np, ptr %i.nn, align 4, !tbaa !171
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i171

_ZN11ast_manager7inc_refEP3ast.exit.i171:         ; preds = %bb.ck, %bb.cj
  %i.nq = load ptr, ptr %i.nl, align 8, !tbaa !169 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.nq, null
  br i1 %.not.i3.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i171
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !171
  %i.nt = add i32 %i.ns, -1                       ; 2 uses
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !171
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nm, ptr noundef nonnull %i.nq)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cl, %_ZN11ast_manager7inc_refEP3ast.exit.i171, %bb.cm
  store ptr %i.nj, ptr %i.nl, align 8, !tbaa !169
  %i.nv = load ptr, ptr %13, align 8, !tbaa !199  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i174, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit175, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nw = load ptr, ptr %i.lv, align 8, !tbaa !200, !nonnull !129, !align !130
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !171
  %i.nz = add i32 %i.ny, -1                       ; 2 uses
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !171
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.cp, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit175

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nw, ptr noundef nonnull %i.nv)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit175 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ob = landingpad { ptr, i32 }
          catch ptr null
  %i.oc = extractvalue { ptr, i32 } %i.ob, 0
  call void @__clang_call_terminate(ptr %i.oc) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit175:      ; preds = %bb.cn, %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %i.ei
  br i1 %exitcond254.not, label %._crit_edge, label %bb.ce, !llvm.loop !412

bb.cr:                                            ; preds = %bb.ci, %bb.cf, %bb.ce
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cm
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn93 = phi { ptr, i32 } [ %i.oe, %bb.cs ], [ %i.od, %bb.cr ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.ca
  %.pn96 = phi { ptr, i32 } [ %i.me, %bb.ca ], [ %.pn93, %bb.ct ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cw

.loopexit:                                        ; preds = %bb.ah, %.preheader, %_ZN7obj_refI4expr11ast_managerED2Ev.exit157
  %i.of = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !315 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.of, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i176 unwind label %bb.cv

.noexc.i176:                                      ; preds = %.loopexit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.of, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit177 unwind label %bb.cv

bb.cv:                                            ; preds = %.noexc.i176, %.loopexit
  %i.og = landingpad { ptr, i32 }
          catch ptr null
  %i.oh = extractvalue { ptr, i32 } %i.og, 0
  call void @__clang_call_terminate(ptr %i.oh) #22
  unreachable

_ZN8rationalD2Ev.exit177:                         ; preds = %.noexc.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.cw:                                            ; preds = %.loopexit198, %.loopexit.split-lp199, %bb.aq, %bb.bz, %bb.cu, %bb.w, %bb.ai, %bb.ac, %bb.u, %bb.t
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.aq ], [ %i.ch, %bb.u ], [ %.pn100, %bb.t ], [ %i.eh, %bb.ai ], [ %i.cu, %bb.w ], [ %i.dn, %bb.ac ], [ %.pn96, %bb.cu ], [ %.pn.pn.pn, %bb.bz ], [ %lpad.loopexit200, %.loopexit198 ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp199 ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn102.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN15bit_blaster_tplI11blaster_cfgE24mk_ext_rotate_left_rightILb1EEEvjPKP4exprS6_R10ref_vectorIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator.53", align 1 ; 4 uses
  %7 = alloca %class.rational, align 8            ; 15 uses
  %8 = alloca %class.ref_vector, align 8          ; 6 uses
  %9 = alloca %class.obj_ref, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 0, ptr %7, align 8, !tbaa !311
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !314
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !311
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !314
  %i.j = invoke noundef zeroext i1 @_ZNK15bit_blaster_tplI11blaster_cfgE10is_numeralEjPKP4exprR8rational(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %_ZNK8rational11is_unsignedEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 4
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  %i.n = load i32, ptr %i.e, align 8
  %i.o = icmp eq i32 %i.n, 1
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNK8rational9is_uint64Ev.exit.i, label %_ZNK8rational11is_unsignedEv.exit.thread

_ZNK8rational9is_uint64Ev.exit.i:                 ; preds = %bb.c
  %i.q = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !315
  %i.r = invoke noundef zeroext i1 @_ZNK11mpz_managerILb1EE9is_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZNK8rational9is_uint64Ev.exit.i
  br i1 %i.r, label %bb.d, label %_ZNK8rational11is_unsignedEv.exit.thread

bb.d:                                             ; preds = %.noexc
  %i.s = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !315
  %i.t = invoke noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK8rational11is_unsignedEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNK8rational11is_unsignedEv.exit:                ; preds = %bb.d
  %i.u = icmp ult i64 %i.t, 4294967296
  br i1 %i.u, label %bb.e, label %_ZNK8rational11is_unsignedEv.exit.thread

bb.e:                                             ; preds = %_ZNK8rational11is_unsignedEv.exit
  %i.v = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !315
  %i.w = invoke noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK8rational10get_uint64Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNK8rational10get_uint64Ev.exit:                 ; preds = %bb.e
  %i.x = trunc i64 %i.w to i32
  %i.y = urem i32 %i.x, %1                        ; 2 uses
  %i.z = sub nuw i32 %1, %i.y                     ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZNK8rational10get_uint64Ev.exit..lr.ph25.i_crit_edge, label %.lr.ph.i

_ZNK8rational10get_uint64Ev.exit..lr.ph25.i_crit_edge: ; preds = %_ZNK8rational10get_uint64Ev.exit
  %.pre144 = zext i32 %i.z to i64
  br label %.lr.ph25.i

.lr.ph.i:                                         ; preds = %_ZNK8rational10get_uint64Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = zext i32 %i.z to i64                    ; 2 uses
  %i.ac = zext i32 %1 to i64
  br label %bb.f

.lr.ph25.i:                                       ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK8rational10get_uint64Ev.exit..lr.ph25.i_crit_edge
  %.pre-phi = phi i64 [ %.pre144, %_ZNK8rational10get_uint64Ev.exit..lr.ph25.i_crit_edge ], [ %i.ab, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.j

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !171
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !132 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !132
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.i:                                             ; preds = %bb.h, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %bb.i
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc59, %bb.h
  %i.aq = phi i32 [ %.pre2.i.i.i, %.noexc59 ], [ %i.am, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %.pre.i.i.i, %.noexc59 ], [ %i.aj, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  store ptr %i.af, ptr %i.au, align 8, !tbaa !169
  %i.av = add i32 %i.aq, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !132
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next.i, %i.ac
  br i1 %i.aw, label %bb.f, label %.lr.ph25.i, !llvm.loop !413

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next28.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv27.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i17.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i17.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !171
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i: ; preds = %bb.k, %bb.j
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !164 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !132 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !132
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.noexc60 unwind label %.loopexit

.noexc60:                                         ; preds = %bb.m
  %.pre.i.i19.i = load ptr, ptr %i.ad, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i20.i = getelementptr inbounds i8, ptr %.pre.i.i19.i, i64 -4
  %.pre2.i.i21.i = load i32, ptr %.phi.trans.insert.i.i20.i, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i: ; preds = %.noexc60, %bb.l
  %i.bj = phi i32 [ %.pre2.i.i21.i, %.noexc60 ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bk = phi ptr [ %.pre.i.i19.i, %.noexc60 ], [ %i.bc, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bm = zext i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  store ptr %i.ay, ptr %i.bn, align 8, !tbaa !169
  %i.bo = add i32 %i.bj, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !132
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next28.i, %.pre-phi
  br i1 %i.bp, label %bb.j, label %_ZN15bit_blaster_tplI11blaster_cfgE14mk_rotate_leftEjPKP4exprjR10ref_vectorIS2_11ast_managerE.exit, !llvm.loop !414

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i
  %lpad.loopexit111 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e, %bb.d, %_ZNK8rational9is_uint64Ev.exit.i, %bb.a
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNK8rational11is_unsignedEv.exit.thread:         ; preds = %bb.c, %.noexc, %_ZNK8rational11is_unsignedEv.exit, %bb.b
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8rational11is_unsignedEv.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !171
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.o, %bb.n
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !132 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !132
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %.noexc61 unwind label %bb.s

.noexc61:                                         ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %.noexc61, %bb.p
  %i.cd = phi i32 [ %.pre2.i.i, %.noexc61 ], [ %i.bz, %bb.p ] ; 2 uses
  %i.ce = phi ptr [ %.pre.i.i, %.noexc61 ], [ %i.bw, %bb.p ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  store ptr %i.bs, ptr %i.ch, align 8, !tbaa !169
  %i.ci = add i32 %i.cd, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !415

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.r, %_ZNK8rational11is_unsignedEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN15bit_blaster_tplI11blaster_cfgE24mk_ext_rotate_left_rightILb0EEEvjPKP4exprS6_R10ref_vectorIS3_11ast_managerE:bb.a
_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.fr = phi ptr [ %i.gj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.fp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ] ; 4 uses
  %i.fs = phi ptr [ %i.gk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.fh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ] ; 2 uses
  %i.ft = phi ptr [ %i.gl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.fh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !132
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp samesign ult i64 %indvars.iv.i, %i.fw
  br i1 %i.fx, label %bb.al, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.al:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i83, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !171
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.am, %bb.al
  %i.gd = icmp eq ptr %i.fr, null
  br i1 %i.gd, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.fr, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !132 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !132
  %i.gi = icmp eq i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.ao:                                            ; preds = %bb.an, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %.noexc85 unwind label %.loopexit

.noexc85:                                         ; preds = %bb.ao
  %.pre.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc85, %bb.an
  %i.gj = phi ptr [ %.pre.i.i.i, %.noexc85 ], [ %i.fr, %bb.an ] ; 3 uses
  %i.gk = phi ptr [ %.pre.i84, %.noexc85 ], [ %i.fs, %bb.an ] ; 2 uses
  %i.gl = phi ptr [ %.pre.i84, %.noexc85 ], [ %i.ft, %bb.an ] ; 2 uses
  %i.gm = phi i32 [ %.pre2.i.i.i, %.noexc85 ], [ %i.gf, %bb.an ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.go = zext i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.go
  store ptr %i.fz, ptr %i.gp, align 8, !tbaa !169
  %i.gq = add i32 %i.gm, 1
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !132
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gr = icmp eq ptr %i.gl, null
  br i1 %i.gr, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !397

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71, %bb.m
  %.pre.i84124 = phi ptr [ %.pre.i84125, %bb.m ], [ %.pre.i84, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ], [ %.pre.i84, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ], [ %.pre.i84, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 6 uses
  %i.gs = phi ptr [ %i.be, %bb.m ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ], [ %i.gk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.fs, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ]
  %i.gt = phi ptr [ %.pre.i, %bb.m ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit71 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.ft, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ]
  %i.gu = shl i32 %.040106, 1                     ; 2 uses
  %i.gv = icmp eq i32 %1, %i.gu
  %or.cond = select i1 %i.bd, i1 %i.gv, i1 false
  br i1 %or.cond, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %i.gw = urem i32 %i.gu, %1
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %.critedge, label %bb.m, !llvm.loop !420

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ak, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.ag ], [ %i.fo, %bb.ak ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.az

.critedge:                                        ; preds = %bb.ap, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %.pre = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i86 = icmp eq ptr %.pre, null
  br i1 %.not.i.i86, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  %i.gx = load ptr, ptr %i.ba, align 8, !tbaa !200, !nonnull !129, !align !130
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !171
  %i.ha = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !171
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.ar, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gx, ptr noundef nonnull %.pre)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %.critedge, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.he = icmp eq ptr %.pre.i84124, null
  br i1 %i.he, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i87

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i87:         ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.hf = getelementptr inbounds i8, ptr %.pre.i84124, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !132 ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre.i84124, i64 %i.hi
  %.not.i88 = icmp eq i32 %i.hg, 0
  br i1 %.not.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i95, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i87, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92
  %.06.i.i90 = phi ptr [ %i.hp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92 ], [ %.pre.i84124, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i87 ] ; 2 uses
  %i.hk = load ptr, ptr %.06.i.i90, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i91, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i89
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !171
  %i.hn = add i32 %i.hm, -1                       ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !171
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.au, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.hk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92 unwind label %bb.aw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92: ; preds = %bb.au, %bb.at, %.lr.ph.i.i89
  %i.hp = getelementptr inbounds nuw i8, ptr %.06.i.i90, i64 8 ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.hj
  br i1 %i.hq, label %.lr.ph.i.i89, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i95, !llvm.loop !173

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i95: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i92, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i87
  %i.hr = getelementptr inbounds i8, ptr %.pre.i84124, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i95
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #22
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #22
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.thread, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK8rational10get_uint64Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.hw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !315 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.ay

.noexc.i:                                         ; preds = %bb.ax
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %.noexc.i, %bb.ax
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.az:                                            ; preds = %.body, %bb.l, %bb.f
  %.pn54 = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.as, %bb.l ], [ %.pn, %.body ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN15bit_blaster_tplI11blaster_cfgE15mk_rotate_rightEjPKP4exprjR10ref_vectorIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = urem i32 %3, %1
  %i.b = sub nuw i32 %1, %i.a
  %i.c = urem i32 %i.b, %1                        ; 2 uses
  %i.d = sub nuw i32 %1, %i.c                     ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %..lr.ph25.i_crit_edge, label %.lr.ph.i

..lr.ph25.i_crit_edge:                            ; preds = %bb.a
  %.pre = zext i32 %i.d to i64
  br label %.lr.ph25.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %i.g = zext i32 %1 to i64
  br label %bb.b

.lr.ph25.i:                                       ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %..lr.ph25.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..lr.ph25.i_crit_edge ], [ %i.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

bb.b:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !164  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !132
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.e:                                             ; preds = %bb.d, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %.pre2.i.i.i, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.j, ptr %i.y, align 8, !tbaa !169
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !132
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next.i, %i.g
  br i1 %i.aa, label %bb.b, label %.lr.ph25.i, !llvm.loop !413

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next28.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv27.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i17.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i17.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !171
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !171
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i: ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !164 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !132 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !132
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i

bb.i:                                             ; preds = %bb.h, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i18.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i19.i = load ptr, ptr %i.h, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i.i20.i = getelementptr inbounds i8, ptr %.pre.i.i19.i, i64 -4
  %.pre2.i.i21.i = load i32, ptr %.phi.trans.insert.i.i20.i, align 4, !tbaa !132
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i: ; preds = %bb.i, %bb.h
  %i.an = phi i32 [ %.pre2.i.i21.i, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i19.i, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ac, ptr %i.ar, align 8, !tbaa !169
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !132
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next28.i, %.pre-phi
  br i1 %i.at, label %bb.f, label %_ZN15bit_blaster_tplI11blaster_cfgE14mk_rotate_leftEjPKP4exprjR10ref_vectorIS2_11ast_managerE.exit, !llvm.loop !414

_ZN15bit_blaster_tplI11blaster_cfgE14mk_rotate_leftEjPKP4exprjR10ref_vectorIS2_11ast_managerE.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit22.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN15bit_blaster_tplI11blaster_cfgE19mk_umul_no_overflowEjPKP4exprS5_R7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %5 = alloca %class.obj_ref, align 8             ; 8 uses
  %6 = alloca %class.ptr_buffer.79, align 8       ; 15 uses
  %7 = alloca %class.ptr_buffer.79, align 8       ; 15 uses
  %8 = alloca %class.ref_vector, align 8          ; 8 uses
  %9 = alloca %class.obj_ref, align 8             ; 7 uses
  %10 = alloca %class.obj_ref, align 8            ; 8 uses
  %11 = alloca %class.obj_ref, align 8            ; 9 uses
  %12 = alloca %class.obj_ref, align 8            ; 11 uses
  %13 = alloca %class.obj_ref, align 8            ; 10 uses
  %14 = alloca %class.obj_ref, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !331, !nonnull !129, !align !130
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332, !nonnull !129, !align !130 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !346  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !171
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !171
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.a
  store ptr %i.h, ptr %5, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !365
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.m, align 8, !tbaa !367
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 128, ptr %i.n, align 4, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !365
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i32 0, ptr %i.p, align 8, !tbaa !367
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  store i32 128, ptr %i.q, align 4, !tbaa !368
  %i.r = zext i32 %1 to i64                       ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.r, 3             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.t = icmp eq i32 %1, 0
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i
  %.pre.i.i.i = phi ptr [ %.pre.i.i.i156, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ], [ %i.l, %bb.b ]
  %i.u = phi i32 [ %i.bb, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ], [ 128, %bb.b ] ; 3 uses
  %i.v = phi i32 [ %i.bf, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.03.08.i.i = phi ptr [ %i.bg, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.03.08.i.i, align 8, !tbaa !169
  %.not.i.i.i = icmp ult i32 %i.v, %i.u
  br i1 %.not.i.i.i, label %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = shl i32 %i.u, 1                          ; 3 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.z)
          to label %.noexc43 unwind label %.loopexit.split-lp ; 9 uses

.noexc43:                                         ; preds = %bb.c
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !367 ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !365 ; 10 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc43
  %.pre.i.i.i.i201 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ab to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ab, 4
  %i.ad = sub i64 %.pre.i.i.i.i201, %i.ac
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph
end_hunk_3
