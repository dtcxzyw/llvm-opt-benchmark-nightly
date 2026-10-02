Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nnf?download=true
inline.NumInlined: 712
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN10skolemizer7processEP10quantifierR7obj_refI4expr11ast_managerERS2_I3appS4_E:bb.a
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split unwind label %bb.ah

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split: ; preds = %bb.ak, %bb.ag
  %.sink.ph = phi ptr [ %i.fd, %bb.ag ], [ null, %bb.ak ]
  %.pre.i.i112 = load ptr, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i112, i64 -4
  %.pre2.i.i114 = load i32, ptr %.phi.trans.insert.i.i113, align 4, !tbaa !153
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split, %bb.aj, %bb.af
  %.sink253 = phi ptr [ %i.fh, %bb.af ], [ %i.ex, %bb.aj ], [ %.pre.i.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split ] ; 4 uses
  %.sink252 = phi i32 [ %i.fk, %bb.af ], [ %i.fr, %bb.aj ], [ %.pre2.i.i114, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.fd, %bb.af ], [ null, %bb.aj ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit110.sink.split ]
  %i.fv = getelementptr inbounds i8, ptr %.sink253, i64 -4
  %i.fw = zext i32 %.sink252 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sink253, i64 %i.fw
  store ptr %.sink, ptr %i.fx, align 8, !tbaa !154
  %i.fy = add i32 %.sink252, 1
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !153
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101, label %.lr.ph178, !llvm.loop !250

_ZSt7reverseIPP4exprEvT_S3_.exit:                 ; preds = %.lr.ph.i.i102, %._crit_edge179, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.fz = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !92, !align !93
  store ptr null, ptr %7, align 8, !tbaa !157
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !199 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !174, !range !213, !noundef !92
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %_ZSt7reverseIPP4exprEvT_S3_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !202 ; 2 uses
  %.not186 = icmp eq i32 %i.gh, 0
  br i1 %.not186, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.al
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %wide.trip.count199 = zext i32 %i.gh to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph183, %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread
  %indvars.iv196 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next197, %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread ] ; 2 uses
  %.056180 = phi ptr [ %i.gc, %.lr.ph183 ], [ %.1, %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread ] ; 7 uses
  %i.gk = load i32, ptr %i.cw, align 4, !tbaa !203
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gl
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv196
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !154 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !187
  %.not.i117 = icmp eq i32 %i.gr, 1
  br i1 %.not.i117, label %bb.an, label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !154 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = and i32 %i.gv, 65535
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ao, label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !188 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !204
  %i.hc = load ptr, ptr %i.gj, align 8, !tbaa !204
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.ap, label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !206
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.aq, label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.hh = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !92, !align !93
  %i.hi = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hh, ptr noundef nonnull %i.gt)
          to label %.noexc118 unwind label %bb.ax

.noexc118:                                        ; preds = %bb.aq
  br i1 %i.hi, label %_ZNK10skolemizer10is_sk_hackEP4expr.exit, label %bb.ar

bb.ar:                                            ; preds = %.noexc118
  invoke void (ptr, ...) @_Z11warning_msgPKcz(ptr noundef nonnull @.str.7)
          to label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread unwind label %bb.ax

_ZNK10skolemizer10is_sk_hackEP4expr.exit:         ; preds = %.noexc118
  %i.hj = load ptr, ptr %i.gs, align 8, !tbaa !154 ; 2 uses
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !198
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !92, !align !93 ; 3 uses
  br i1 %i.hl, label %bb.as, label %bb.az

bb.as:                                            ; preds = %_ZNK10skolemizer10is_sk_hackEP4expr.exit
  %i.hn = invoke noundef ptr @_Z6mk_notR11ast_managerP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hm, ptr noundef %i.hj)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ho = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hm, i32 noundef 0, i32 noundef 6, ptr noundef %.056180, ptr noundef %i.hn)
          to label %_ZN11ast_manager5mk_orEP4exprS1_.exit unwind label %bb.ay ; 5 uses

_ZN11ast_manager5mk_orEP4exprS1_.exit:            ; preds = %bb.at
  %.not.i121 = icmp eq ptr %i.ho, null
  br i1 %.not.i121, label %bb.au, label %_ZN11ast_manager7inc_refEP3ast.exit.i122

_ZN11ast_manager7inc_refEP3ast.exit.i122:         ; preds = %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !160
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !160
  br label %bb.au

bb.au:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i122, %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.hs = load ptr, ptr %7, align 8, !tbaa !157   ; 3 uses
  %.not.i4.i123 = icmp eq ptr %i.hs, null
  br i1 %.not.i4.i123, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = load ptr, ptr %i.ga, align 8, !tbaa !162, !nonnull !92, !align !93
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !160
  %i.hw = add i32 %i.hv, -1                       ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !160
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.aw, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ht, ptr noundef nonnull %i.hs)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125 unwind label %bb.ay

bb.ax:                                            ; preds = %bb.ar, %bb.aq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ay:                                            ; preds = %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.as
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.az:                                            ; preds = %_ZNK10skolemizer10is_sk_hackEP4expr.exit
  %i.ia = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hm, i32 noundef 0, i32 noundef 5, ptr noundef %.056180, ptr noundef %i.hj)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %bb.ay ; 5 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %bb.az
  %.not.i127 = icmp eq ptr %i.ia, null
  br i1 %.not.i127, label %bb.ba, label %_ZN11ast_manager7inc_refEP3ast.exit.i128

_ZN11ast_manager7inc_refEP3ast.exit.i128:         ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !160
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !160
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i128, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.ie = load ptr, ptr %7, align 8, !tbaa !157   ; 3 uses
  %.not.i4.i129 = icmp eq ptr %i.ie, null
  br i1 %.not.i4.i129, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.if = load ptr, ptr %i.ga, align 8, !tbaa !162, !nonnull !92, !align !93
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !160
  %i.ii = add i32 %i.ih, -1                       ; 2 uses
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !160
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.if, ptr noundef nonnull %i.ie)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125 unwind label %bb.ay

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125:   ; preds = %bb.bb, %bb.ba, %bb.bc, %bb.av, %bb.au, %bb.aw
  %storemerge = phi ptr [ %i.ho, %bb.av ], [ %i.ho, %bb.aw ], [ %i.ho, %bb.au ], [ %i.ia, %bb.bc ], [ %i.ia, %bb.ba ], [ %i.ia, %bb.bb ] ; 2 uses
  store ptr %storemerge, ptr %7, align 8, !tbaa !157
  br label %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread

_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread:  ; preds = %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125
  %.1 = phi ptr [ %storemerge, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125 ], [ %.056180, %bb.am ], [ %.056180, %bb.an ], [ %.056180, %bb.ao ], [ %.056180, %bb.ap ], [ %.056180, %bb.ar ] ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %bb.am, !llvm.loop !251

.loopexit:                                        ; preds = %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread, %bb.al, %_ZSt7reverseIPP4exprEvT_S3_.exit
  %.2 = phi ptr [ %i.gc, %_ZSt7reverseIPP4exprEvT_S3_.exit ], [ %i.gc, %bb.al ], [ %.1, %_ZNK10skolemizer10is_sk_hackEP4expr.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load ptr, ptr %i.cv, align 8, !tbaa !24, !noalias !260 ; 3 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !153, !noalias !260
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.bd, %.loopexit
  %.0.i.i.i = phi i32 [ %i.io, %bb.bd ], [ 0, %.loopexit ]
  invoke void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %8, ptr noundef nonnull align 8 dereferenceable(545) %i.ik, ptr noundef %.2, i32 noundef %.0.i.i.i, ptr noundef %i.il)
          to label %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit unwind label %bb.bs

_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ip = load ptr, ptr %2, align 8, !tbaa !157   ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i134, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !162, !nonnull !92, !align !93
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !160
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !160
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bf, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ir, ptr noundef nonnull %i.ip)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.bf, %bb.be, %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.iy = load ptr, ptr %8, align 8, !tbaa !157
  store ptr %i.iy, ptr %2, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.iz = load ptr, ptr %3, align 8, !tbaa !158   ; 3 uses
  %.not.i4.i136 = icmp eq ptr %i.iz, null
  br i1 %.not.i4.i136, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !161, !nonnull !92, !align !93
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !160
  %i.je = add i32 %i.jd, -1                       ; 2 uses
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !160
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jb, ptr noundef nonnull %i.iz)
          to label %bb.bj unwind label %bb.bt

bb.bj:                                            ; preds = %bb.bh, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.bi
  store ptr null, ptr %3, align 8, !tbaa !158
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !177, !range !213, !noundef !92
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.bk, label %bb.ca

bb.bk:                                            ; preds = %bb.bj
  %i.jj = load i32, ptr %i.a, align 8, !tbaa !198
  %i.jk = icmp eq i32 %i.jj, 0
  %i.jl = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !92, !align !93 ; 2 uses
  br i1 %i.jk, label %bb.bl, label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  %i.jm = invoke noundef ptr @_Z6mk_notR11ast_managerP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.jl, ptr noundef nonnull %1)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.jn = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !92, !align !93 ; 2 uses
  %i.jo = load ptr, ptr %2, align 8, !tbaa !157
  %i.jp = invoke noundef ptr @_Z6mk_notR11ast_managerP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.jn, ptr noundef %i.jo)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.jq = invoke noundef ptr @_ZN11ast_manager16mk_skolemizationEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jn, ptr noundef %i.jm, ptr noundef %i.jp)
          to label %bb.bo unwind label %bb.bu     ; 5 uses

bb.bo:                                            ; preds = %bb.bn
  %.not.i139 = icmp eq ptr %i.jq, null
  br i1 %.not.i139, label %bb.bp, label %_ZN11ast_manager7inc_refEP3ast.exit.i140

_ZN11ast_manager7inc_refEP3ast.exit.i140:         ; preds = %bb.bo
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !160
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !160
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i140, %bb.bo
  %i.ju = load ptr, ptr %3, align 8, !tbaa !158   ; 3 uses
  %.not.i4.i141 = icmp eq ptr %i.ju, null
  br i1 %.not.i4.i141, label %.sink.split, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !161, !nonnull !92, !align !93
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !160
  %i.jz = add i32 %i.jy, -1                       ; 2 uses
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !160
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.br, label %.sink.split

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jw, ptr noundef nonnull %i.ju)
          to label %.sink.split unwind label %bb.bu

bb.bs:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.cp

bb.bt:                                            ; preds = %bb.bz, %bb.bi, %bb.bv
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bu:                                            ; preds = %bb.br, %bb.bn, %bb.bm, %bb.bl
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bk
  %i.ke = load ptr, ptr %2, align 8, !tbaa !157
  %i.kf = invoke noundef ptr @_ZN11ast_manager16mk_skolemizationEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jl, ptr noundef nonnull %1, ptr noundef %i.ke)
          to label %bb.bw unwind label %bb.bt     ; 5 uses

bb.bw:                                            ; preds = %bb.bv
  %.not.i144 = icmp eq ptr %i.kf, null
  br i1 %.not.i144, label %bb.bx, label %_ZN11ast_manager7inc_refEP3ast.exit.i145

_ZN11ast_manager7inc_refEP3ast.exit.i145:         ; preds = %bb.bw
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !160
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !160
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i145, %bb.bw
  %i.kj = load ptr, ptr %3, align 8, !tbaa !158   ; 3 uses
  %.not.i4.i146 = icmp eq ptr %i.kj, null
  br i1 %.not.i4.i146, label %.sink.split, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !161, !nonnull !92, !align !93
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !160
  %i.ko = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !160
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.bz, label %.sink.split

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kl, ptr noundef nonnull %i.kj)
          to label %.sink.split unwind label %bb.bt

.sink.split:                                      ; preds = %bb.by, %bb.bx, %bb.bz, %bb.bq, %bb.bp, %bb.br
  %.sink254 = phi ptr [ %i.jq, %bb.bq ], [ %i.jq, %bb.br ], [ %i.jq, %bb.bp ], [ %i.kf, %bb.bz ], [ %i.kf, %bb.bx ], [ %i.kf, %bb.by ]
  store ptr %.sink254, ptr %3, align 8, !tbaa !158
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split, %bb.bj
  %i.kq = load ptr, ptr %7, align 8, !tbaa !157   ; 3 uses
  %.not.i.i149 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i149, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit150, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kr = load ptr, ptr %i.ga, align 8, !tbaa !162, !nonnull !92, !align !93
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !160
  %i.ku = add i32 %i.kt, -1                       ; 2 uses
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !160
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.cc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit150

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kr, ptr noundef nonnull %i.kq)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit150 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit150:      ; preds = %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ky = load ptr, ptr %i.cv, align 8, !tbaa !24 ; 5 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit150
end_hunk_0
begin_hunk_1_@bcmp
!52 = !{!"_ZTS13rewriter_core", !16, i64 8, !37, i64 16, !37, i64 17, !40, i64 24, !41, i64 32, !44, i64 40, !31, i64 48, !40, i64 64, !41, i64 72, !36, i64 80, !47, i64 96, !48, i64 120, !9, i64 128, !51, i64 136}
!53 = !{!"p1 _ZTS16beta_reducer_cfg", !12, i64 0}
!54 = !{!"_ZTS16var_shifter_core", !52, i64 0}
!55 = !{!"_ZTS11var_shifter", !54, i64 0, !9, i64 144, !9, i64 148, !9, i64 152}
!56 = !{!"_ZTS15inv_var_shifter", !54, i64 0, !9, i64 144}
!57 = !{!"_ZTS7obj_refI4expr11ast_managerE", !48, i64 0, !16, i64 8}
!58 = !{!"p1 _ZTS3app", !12, i64 0}
!59 = !{!"_ZTS7obj_refI3app11ast_managerE", !58, i64 0, !16, i64 8}
!60 = !{!"p1 int", !12, i64 0}
!61 = !{!"_ZTS6vectorIjLb0EjE", !60, i64 0}
!62 = !{!"_ZTS7svectorIjjE", !61, i64 0}
!63 = !{!"_ZTS12rewriter_tplI16beta_reducer_cfgE", !52, i64 0, !53, i64 144, !9, i64 152, !29, i64 160, !55, i64 168, !56, i64 328, !57, i64 480, !59, i64 496, !59, i64 512, !62, i64 528}
!64 = !{!"_ZTS16beta_reducer_cfg"}
!65 = !{!"_ZTS12beta_reducer", !63, i64 0, !64, i64 536}
!66 = !{!"_ZTS9var_subst", !65, i64 0, !37, i64 544}
!67 = !{!"p1 omnipotent char", !12, i64 0}
!68 = !{!"_ZTS6symbol", !67, i64 0}
!69 = !{!"p1 _ZTSN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE4cellE", !12, i64 0}
!70 = !{!"_ZTS10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE", !69, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !69, i64 40, !69, i64 48, !69, i64 56}
!71 = !{!"_ZTS4cmapISt4pairIP4exprjES2_N9act_cache10entry_hashE10default_eqIS3_EE", !70, i64 0}
!72 = !{!"p1 _ZTSSt4pairIP4exprjE", !12, i64 0}
!73 = !{!"_ZTS6vectorISt4pairIP4exprjELb0EjE", !72, i64 0}
!74 = !{!"_ZTS7svectorISt4pairIP4exprjEjE", !73, i64 0}
!75 = !{!"_ZTS9act_cache", !16, i64 0, !71, i64 8, !74, i64 72, !9, i64 80, !9, i64 84, !9, i64 88}
!76 = !{!"p2 _ZTS4sort", !21, i64 0}
!77 = !{!"_ZTS6vectorIP4sortLb0EjE", !76, i64 0}
!78 = !{!"_ZTS10ptr_vectorI4sortE", !77, i64 0}
!79 = !{!"p1 _ZTS18default_hash_entryI15expr_delta_pairE", !12, i64 0}
!80 = !{!"_ZTS14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE", !79, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!81 = !{!"_ZTS9hashtableI15expr_delta_pair8obj_hashIS0_E10default_eqIS0_EE", !80, i64 0}
!82 = !{!"p1 _ZTS15expr_delta_pair", !12, i64 0}
!83 = !{!"_ZTS6vectorI15expr_delta_pairLb0EjE", !82, i64 0}
!84 = !{!"_ZTS7svectorI15expr_delta_pairjE", !83, i64 0}
!85 = !{!"_ZTS9used_vars", !78, i64 0, !81, i64 8, !84, i64 32, !9, i64 40, !9, i64 44}
!86 = !{!"_ZTS10skolemizer", !16, i64 0, !66, i64 8, !68, i64 560, !37, i64 568, !75, i64 576, !75, i64 672, !37, i64 768, !85, i64 776}
!87 = !{!"_ZTS8nnf_mode", !8, i64 0}
!88 = !{!"p1 _ZTS10name_exprs", !12, i64 0}
!89 = !{!"long long", !8, i64 0}
!90 = !{!"_ZTSN3nnf3impE", !16, i64 0, !19, i64 8, !31, i64 16, !32, i64 32, !31, i64 416, !36, i64 432, !36, i64 448, !8, i64 464, !86, i64 496, !87, i64 1320, !37, i64 1324, !88, i64 1328, !88, i64 1336, !89, i64 1344}
!91 = !{!90, !16, i64 0}
!92 = !{}
!93 = !{i64 8}
!94 = !{!"_ZTSSt13__atomic_baseIjE", !9, i64 0}
!95 = !{!"_ZTSSt6atomicIjE", !94, i64 0}
!96 = !{!"long", !8, i64 0}
!97 = !{!"p1 long", !12, i64 0}
!98 = !{!"_ZTS6vectorImLb0EjE", !97, i64 0}
!99 = !{!"_ZTS7svectorImjE", !98, i64 0}
!100 = !{!"p2 _ZTS8reslimit", !21, i64 0}
!101 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !100, i64 0}
!102 = !{!"_ZTS10ptr_vectorI8reslimitE", !101, i64 0}
!103 = !{!"_ZTS8reslimit", !95, i64 0, !37, i64 4, !96, i64 8, !96, i64 16, !99, i64 24, !102, i64 32}
!104 = !{!"_ZTS22small_object_allocator", !8, i64 0, !8, i64 256, !96, i64 512}
!105 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !12, i64 0}
!106 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !105, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!107 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !12, i64 0}
!108 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !107, i64 0}
!109 = !{!"_ZTS6vectorIiLb0EjE", !60, i64 0}
!110 = !{!"_ZTS7svectorIijE", !109, i64 0}
!111 = !{!"_ZTS12symbol_tableIiE", !106, i64 0, !108, i64 24, !110, i64 32}
!112 = !{!"p1 _ZTS6symbol", !12, i64 0}
!113 = !{!"_ZTS6vectorI6symbolLb0EjE", !112, i64 0}
!114 = !{!"_ZTS7svectorI6symboljE", !113, i64 0}
!115 = !{!"_ZTS14family_manager", !9, i64 0, !111, i64 8, !114, i64 48}
!116 = !{!"p1 _ZTS22small_object_allocator", !12, i64 0}
!117 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !21, i64 0}
!118 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !117, i64 0}
!119 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !118, i64 0}
!120 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !16, i64 0, !116, i64 8, !119, i64 16, !119, i64 24}
!121 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !21, i64 0}
!122 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !121, i64 0}
!123 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !122, i64 0}
!124 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !16, i64 0, !116, i64 8, !123, i64 16}
!125 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !21, i64 0}
!126 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !125, i64 0}
!127 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !126, i64 0}
!128 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !16, i64 0, !116, i64 8, !127, i64 16, !127, i64 24}
!129 = !{!"p2 _ZTS11decl_plugin", !21, i64 0}
!130 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !129, i64 0}
!131 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !130, i64 0}
!132 = !{!"_ZTS14proof_gen_mode", !8, i64 0}
!133 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !12, i64 0}
!134 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !133, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !133, i64 40, !133, i64 48, !133, i64 56}
!135 = !{!"_ZTS9ast_table", !134, i64 0}
!136 = !{!"_ZTS6id_gen", !9, i64 0, !62, i64 8}
!137 = !{!"p1 _ZTS4sort", !12, i64 0}
!138 = !{!"p1 _ZTS17default_map_entryIjjE", !12, i64 0}
!139 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !138, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!140 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !139, i64 0}
!141 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !140, i64 0}
!142 = !{!"_ZTS5u_mapIjE", !141, i64 0}
!143 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !12, i64 0}
!144 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !12, i64 0}
!145 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !144, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!146 = !{!"_ZTS7obj_mapI9func_declPS0_E", !145, i64 0}
!147 = !{!"p1 _ZTS15some_value_proc", !12, i64 0}
!148 = !{!"_ZTS11ast_manager", !103, i64 0, !104, i64 40, !115, i64 560, !120, i64 616, !124, i64 648, !128, i64 672, !131, i64 704, !132, i64 712, !37, i64 716, !135, i64 720, !136, i64 784, !136, i64 800, !137, i64 816, !137, i64 824, !58, i64 832, !58, i64 840, !58, i64 848, !9, i64 856, !37, i64 860, !142, i64 864, !143, i64 888, !37, i64 896, !37, i64 897, !16, i64 904, !68, i64 912, !146, i64 920, !147, i64 944}
!149 = !{!148, !132, i64 712}
!150 = !{!41, !41, i64 0}
!151 = !{!90, !88, i64 1328}
!152 = !{!90, !88, i64 1336}
!153 = !{!9, !9, i64 0}
!154 = !{!48, !48, i64 0}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!58, !58, i64 0}
!157 = !{!57, !48, i64 0}
!158 = !{!59, !58, i64 0}
!159 = !{!"_ZTS3ast", !9, i64 0, !9, i64 4, !9, i64 6, !9, i64 6, !9, i64 6, !9, i64 8, !9, i64 12}
!160 = !{!159, !9, i64 8}
!161 = !{!59, !16, i64 8}
!162 = !{!57, !16, i64 8}
!163 = !{!"vtable pointer", !7, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!166 = !{!165, !67, i64 0}
!167 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !165, i64 0, !96, i64 8, !8, i64 16}
!168 = !{!167, !67, i64 0}
!169 = !{!167, !96, i64 8}
!170 = !{!8, !8, i64 0}
!171 = !{!90, !87, i64 1320}
!172 = !{!90, !37, i64 1324}
!173 = !{!90, !89, i64 1344}
!174 = !{!86, !37, i64 568}
!175 = !{!28, !16, i64 0}
!176 = !{!33, !16, i64 0}
!177 = !{!86, !37, i64 768}
!178 = !{!77, !76, i64 0}
!179 = !{!80, !79, i64 0}
!180 = !{!83, !82, i64 0}
!181 = !{!85, !9, i64 40}
!182 = !{!85, !9, i64 44}
!183 = !{!"_ZTS4expr", !159, i64 0}
!184 = !{!"p1 _ZTS9func_decl", !12, i64 0}
!185 = !{!"_ZTS9app_flags", !9, i64 0, !9, i64 2, !9, i64 2, !9, i64 2}
!186 = !{!"_ZTS3app", !183, i64 0, !184, i64 16, !9, i64 24, !185, i64 28, !8, i64 32}
!187 = !{!186, !9, i64 24}
!188 = !{!186, !184, i64 16}
!189 = !{!"p1 _ZTS9decl_info", !12, i64 0}
!190 = !{!"_ZTS4decl", !159, i64 0, !68, i64 16, !189, i64 24}
!191 = !{!190, !189, i64 24}
!192 = !{!"p1 _ZTS9parameter", !12, i64 0}
!193 = !{!"_ZTS6vectorI9parameterLb1EjE", !192, i64 0}
!194 = !{!"_ZTS9decl_info", !9, i64 0, !9, i64 4, !193, i64 8, !37, i64 16}
!195 = !{!194, !9, i64 0}
!196 = !{!"_ZTS15quantifier_kind", !8, i64 0}
!197 = !{!"_ZTS10quantifier", !183, i64 0, !196, i64 16, !9, i64 20, !48, i64 24, !137, i64 32, !9, i64 40, !9, i64 44, !37, i64 48, !37, i64 49, !68, i64 56, !68, i64 64, !9, i64 72, !9, i64 76, !8, i64 80}
!198 = !{!197, !196, i64 16}
!199 = !{!197, !48, i64 24}
!200 = !{!"_ZTS6bufferIP4exprLb0ELj16EE", !22, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!201 = !{!200, !22, i64 0}
!202 = !{!197, !9, i64 72}
!203 = !{!197, !9, i64 20}
!204 = !{!68, !67, i64 0}
!205 = !{!"_ZTS9func_decl", !190, i64 0, !9, i64 32, !137, i64 40, !8, i64 48}
!206 = !{!205, !9, i64 32}
!207 = !{!86, !16, i64 0}
!208 = !{!"llvm.loop.isvectorized", i32 1}
!209 = !{!"llvm.loop.unroll.runtime.disable"}
!210 = !{!"llvm.loop.unroll.disable"}
!211 = !{!"_ZTSN3nnf3imp5frameE", !57, i64 0, !9, i64 16, !9, i64 19, !9, i64 19, !9, i64 19, !9, i64 19, !9, i64 20}
!212 = !{!211, !9, i64 20}
!213 = !{i8 0, i8 2}
!214 = !{!"_ZTS6bufferI6symbolLb1ELj16EE", !112, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!215 = !{!214, !112, i64 0}
!216 = !{!"_ZTS6bufferIP4sortLb0ELj16EE", !76, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!217 = !{!216, !76, i64 0}
!218 = distinct !{!218, !155}
!219 = distinct !{!219, !155}
!220 = !{!"p1 _ZTS10params_ref", !12, i64 0}
!221 = !{!220, !220, i64 0}
!222 = !{!"p1 _ZTS6params", !12, i64 0}
!223 = !{!"_ZTS10params_ref", !222, i64 0}
!224 = !{!"_ZTS10nnf_params", !220, i64 0, !223, i64 8}
!225 = !{!224, !220, i64 0}
!226 = !{!66, !37, i64 544}
!227 = !{!80, !9, i64 8}
!228 = !{!80, !9, i64 12}
!229 = !{!80, !9, i64 16}
!230 = !{!61, !60, i64 0}
!231 = distinct !{!231, !155}
!232 = !{!194, !9, i64 4}
!233 = distinct !{!233, !155, !208, !209}
!234 = distinct !{!234, !210}
!235 = distinct !{!235, !155, !208}
!236 = distinct !{!236, !155}
!237 = !{!200, !9, i64 8}
!238 = !{!200, !9, i64 12}
!239 = distinct !{!239, !155}
!240 = !{!12, !12, i64 0}
!241 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!242 = distinct !{!242, !155}
!243 = !{!214, !9, i64 8}
!244 = !{!214, !9, i64 12}
!245 = !{!37, !37, i64 0}
!246 = distinct !{!246, !155, !208, !209}
!247 = distinct !{!247, !210}
!248 = distinct !{!248, !155, !208}
!249 = distinct !{!249, !155}
!250 = distinct !{!250, !155}
!251 = distinct !{!251, !155}
!254 = !{!216, !9, i64 8}
!255 = !{!216, !9, i64 12}
!256 = !{!137, !137, i64 0}
!258 = distinct !{!258, i1 false, !"_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE"}
!259 = distinct !{!259, !258, !"_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE: argument 0"}
!260 = !{!259}
end_hunk_1
