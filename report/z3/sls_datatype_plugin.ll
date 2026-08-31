Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_datatype_plugin?download=true
inline.NumInlined: 1694
inline.NumDeleted: 710
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3sls15datatype_plugin11init_valuesEv:bb.a

bb.cb:                                            ; preds = %bb.ca
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -4
  store i32 0, ptr %i.pr, align 4, !tbaa !89
  %i.ps = getelementptr inbounds i8, ptr %i.pq, i64 -8
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !89
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit.thread, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit171

_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit.thread: ; preds = %bb.ca, %bb.cb
  invoke void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit.thread
  %.pre.i167 = load ptr, ptr %18, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert.i168 = getelementptr inbounds i8, ptr %.pre.i167, i64 -4
  %.pre2.i169 = load i32, ptr %.phi.trans.insert.i168, align 4, !tbaa !89
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit171

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit171: ; preds = %bb.cb, %.noexc170
  %i.pv = phi i32 [ %.pre2.i169, %.noexc170 ], [ 0, %bb.cb ] ; 2 uses
  %i.pw = phi ptr [ %.pre.i167, %.noexc170 ], [ %i.pq, %bb.cb ] ; 3 uses
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -4
  %i.py = zext i32 %i.pv to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.py
  store ptr %i.ml, ptr %i.pz, align 8, !tbaa !193
  %i.qa = add i32 %i.pv, 1
  store i32 %i.qa, ptr %i.px, align 4, !tbaa !89
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit171, %.loopexit313
  %i.qb = phi ptr [ %i.pw, %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit171 ], [ %i.agd, %.loopexit313 ] ; 4 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %.thread297, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i: ; preds = %bb.cc
  %i.qd = getelementptr inbounds i8, ptr %i.qb, i64 -4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !89
  br label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.i: ; preds = %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i
  %i.qf = phi ptr [ %i.qb, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i ], [ %i.aga, %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i" ] ; 7 uses
  %i.qg = phi ptr [ %i.qb, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i ], [ %i.agb, %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i" ] ; 9 uses
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i" ] ; 4 uses
  %.01427.i = phi i32 [ 0, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.lr.ph.i ], [ %.1.i, %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i" ] ; 11 uses
  %i.qh = getelementptr inbounds i8, ptr %i.qg, i64 -4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !89
  %i.qj = zext i32 %i.qi to i64
  %i.qk = icmp samesign ult i64 %indvars.iv.i, %i.qj
  br i1 %i.qk, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.i
  %i.ql = getelementptr inbounds i8, ptr %i.qg, i64 -4
  store i32 %.01427.i, ptr %i.ql, align 4, !tbaa !89
  br label %.loopexit313

bb.ce:                                            ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit16.thread.i
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !193 ; 5 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !195
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !189 ; 5 uses
  %i.qq = load i32, ptr %i.bl, align 8, !tbaa !214 ; 3 uses
  %i.qr = add i32 %i.qq, -1
  %i.qs = and i32 %i.qr, %i.qp                    ; 3 uses
  %i.qt = load ptr, ptr %19, align 8, !tbaa !219  ; 4 uses
  %i.qu = zext i32 %i.qs to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.qu, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.qw = zext i32 %i.qq to i64
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.qw ; 2 uses
  %.not34.i.i.i.i.i = icmp eq i32 %i.qs, %i.qq    ; 2 uses
  br i1 %.not34.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ch, %bb.ce
  %.not2736.i.i.i.i.i = icmp eq i32 %i.qs, 0
  br i1 %.not2736.i.i.i.i.i, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %.lr.ph38.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ce, %bb.ch
  %.035.i.i.i.i.i = phi ptr [ %i.re, %bb.ch ], [ %i.qv, %bb.ce ] ; 2 uses
  %i.qy = load ptr, ptr %.035.i.i.i.i.i, align 8, !tbaa !225 ; 4 uses
  %.not.i.i.i = icmp ult ptr %i.qy, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !195
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !189
  %i.rb = icmp eq i32 %i.ra, %i.qp
  %i.rc = icmp eq ptr %i.qy, %i.qn
  %or.cond.i.i.i.i.i = and i1 %i.rc, %i.rb
  br i1 %or.cond.i.i.i.i.i, label %_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.rd = icmp eq ptr %i.qy, null
  br i1 %i.rd, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.re = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i172 = icmp eq ptr %i.re, %i.qx
  br i1 %.not.i.i.i.i.i172, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !227

.lr.ph38.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph38.i.i.i.i.i.backedge
  %.137.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i.be, %.lr.ph38.i.i.i.i.i.backedge ], [ %i.qt, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.rf = load ptr, ptr %.137.i.i.i.i.i, align 8, !tbaa !225 ; 4 uses
  %i.rg = icmp ult ptr %i.rf, inttoptr (i64 2 to ptr)
  br i1 %i.rg, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph38.i.i.i.i.i
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !195
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !189
  %i.rj = icmp eq i32 %i.ri, %i.qp
  %i.rk = icmp eq ptr %i.rf, %i.qn
  %or.cond31.i.i.i.i.i = and i1 %i.rk, %i.rj
  br i1 %or.cond31.i.i.i.i.i, label %_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph38.i.i.i.i.i
  %i.rl = icmp eq ptr %i.rf, null
  %i.rm = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i.i = icmp eq ptr %i.rm, %i.qv
  %or.cond43.i.i.i.i.i = select i1 %i.rl, i1 true, i1 %.not27.i.i.i.i.i
  br i1 %or.cond43.i.i.i.i.i, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %.lr.ph38.i.i.i.i.i.backedge

bb.ck:                                            ; preds = %bb.ci
  %.old.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i.i = icmp eq ptr %.old.i.i.i.i.i, %i.qv
  br i1 %.not27.old.i.i.i.i.i, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %.lr.ph38.i.i.i.i.i.backedge

.lr.ph38.i.i.i.i.i.backedge:                      ; preds = %bb.ck, %bb.cj
  %.137.i.i.i.i.i.be = phi ptr [ %i.rm, %bb.cj ], [ %.old.i.i.i.i.i, %bb.ck ]
  br label %.lr.ph38.i.i.i.i.i, !llvm.loop !228

_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i: ; preds = %bb.cf, %bb.ci
  br i1 %.not34.i.i.i.i.i, label %.lr.ph38.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i, %bb.cn
  %.035.i.i.i.i.i.i = phi ptr [ %i.rt, %bb.cn ], [ %i.qv, %_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i ] ; 3 uses
  %i.rn = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !225 ; 4 uses
  %i.ro = icmp ult ptr %i.rn, inttoptr (i64 2 to ptr)
  br i1 %i.ro, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !195
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !189
  %i.rr = icmp eq i32 %i.rq, %i.qp
  %i.rs = icmp eq ptr %i.rn, %i.qn
  %or.cond.i.i.i.i.i.i = and i1 %i.rs, %i.rr
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN7obj_mapIN3euf5enodeE10ptr_vectorIS1_EEixEPS1_.exit.i.i, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rn) ]
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rt = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i173 = icmp eq ptr %i.rt, %i.qx
  br i1 %.not.i.i.i.i.i.i173, label %.lr.ph38.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !227

.lr.ph38.i.i.i.i.i.i.preheader:                   ; preds = %bb.cn, %_ZNK7obj_mapIN3euf5enodeE10ptr_vectorIS1_EE8containsEPS1_.exit.i.i
  br label %.lr.ph38.i.i.i.i.i.i

.lr.ph38.i.i.i.i.i.i:                             ; preds = %.lr.ph38.i.i.i.i.i.i.preheader, %.lr.ph38.backedge.i.i.i.i.i.i
  %.137.i.i.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %.lr.ph38.backedge.i.i.i.i.i.i ], [ %i.qt, %.lr.ph38.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ru = load ptr, ptr %.137.i.i.i.i.i.i, align 8, !tbaa !225 ; 4 uses
  %i.rv = icmp ult ptr %i.ru, inttoptr (i64 2 to ptr)
  br i1 %i.rv, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph38.i.i.i.i.i.i
  %i.rw = load ptr, ptr %i.ru, align 8, !tbaa !195
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !189
  %i.ry = icmp eq i32 %i.rx, %i.qp
  %i.rz = icmp eq ptr %i.ru, %i.qn
  %or.cond31.i.i.i.i.i.i = and i1 %i.rz, %i.ry
  br i1 %or.cond31.i.i.i.i.i.i, label %_ZN7obj_mapIN3euf5enodeE10ptr_vectorIS1_EEixEPS1_.exit.i.i, label %.lr.ph38.backedge.i.i.i.i.i.i

bb.cp:                                            ; preds = %.lr.ph38.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ru) ]
  br label %.lr.ph38.backedge.i.i.i.i.i.i

.lr.ph38.backedge.i.i.i.i.i.i:                    ; preds = %bb.cp, %bb.co
  %.pn.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i.i, i64 16
  br label %.lr.ph38.i.i.i.i.i.i, !llvm.loop !228

_ZN7obj_mapIN3euf5enodeE10ptr_vectorIS1_EEixEPS1_.exit.i.i: ; preds = %bb.cl, %bb.co
  %.026.i.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i.i, %bb.co ], [ %.035.i.i.i.i.i.i, %bb.cl ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i.i, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !190 ; 4 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit.i.i:    ; preds = %_ZN7obj_mapIN3euf5enodeE10ptr_vectorIS1_EEixEPS1_.exit.i.i
  %i.sd = getelementptr inbounds i8, ptr %i.sb, i64 -4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !89 ; 2 uses
  %i.sf = zext i32 %i.se to i64
  %i.sg = shl nuw nsw i64 %i.sf, 3
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sg
  %.not94.i.i = icmp eq i32 %i.se, 0
  br i1 %.not94.i.i, label %"_ZZN3sls15datatype_plugin11init_valuesEvENK3$_1clEPN3euf5enodeE.exit.thread.i", label %.lr.ph97.i.i

.lr.ph97.i.i:                                     ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit.i.i, %._crit_edge.thread.i.i
  %.02896.i.i = phi i1 [ %.2.i.i, %._crit_edge.thread.i.i ], [ true, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit.i.i ] ; 2 uses
  %.03495.i.i = phi ptr [ %i.afu, %._crit_edge.thread.i.i ], [ %i.sb, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit.i.i ] ; 2 uses
  %i.si = load ptr, ptr %.03495.i.i, align 8, !tbaa !193 ; 5 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !195 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !189 ; 2 uses
  %i.sl = load ptr, ptr %i.c, align 8, !tbaa !57  ; 3 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %.lr.ph.i.i.i.preheader, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i:     ; preds = %.lr.ph97.i.i
  %i.sn = getelementptr inbounds i8, ptr %i.sl, i64 -4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !89
  %.not.i.i.i.i174 = icmp ult i32 %i.sk, %i.so
  br i1 %.not.i.i.i.i174, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.i.i, label %.lr.ph.i.i.i.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i
  %i.sp = zext i32 %i.sk to i64
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sp
  %.0.i.sroa.speculate.load..i.i.i = load ptr, ptr %i.sq, align 8, !tbaa !90
  %.not38.i.i = icmp eq ptr %.0.i.sroa.speculate.load..i.i.i, null
  br i1 %.not38.i.i, label %.lr.ph.i.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i, %.lr.ph97.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i
  %i.sr = phi ptr [ %.pre.i.i175, %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i ], [ %i.sj, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.013.023.i.i.i = phi ptr [ %i.tl, %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i ], [ %i.si, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.sroa.7.022.i.i.i = phi ptr [ %spec.select.i.i.i, %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i ], [ null, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 4 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = and i32 %i.st, 65535
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.cq, label %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i

bb.cq:                                            ; preds = %.lr.ph.i.i.i
  %i.sw = invoke noundef i32 @_ZNK8datatype4util3fidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc180:                                        ; preds = %bb.cq
  %i.sx = load i32, ptr %i.ss, align 4
  %i.sy = and i32 %i.sx, 65535
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.cr, label %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i

bb.cr:                                            ; preds = %.noexc180
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !126
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i, label %_ZNK8datatype4util14is_constructorEPK4expr.exit.i.i.i

_ZNK8datatype4util14is_constructorEPK4expr.exit.i.i.i: ; preds = %bb.cr
  %i.te = load i32, ptr %i.td, align 8, !tbaa !136
  %i.tf = icmp eq i32 %i.te, %i.sw
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.th = load i32, ptr %i.tg, align 4
  %i.ti = icmp eq i32 %i.th, 0
  %i.tj = select i1 %i.tf, i1 %i.ti, i1 false
  br i1 %i.tj, label %_ZNK3sls15datatype_plugin15get_constructorEPN3euf5enodeE.exit.i.i, label %_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i

_ZNK8datatype4util14is_constructorEPK4expr.exit.thread.i.i.i: ; preds = %_ZNK8datatype4util14is_constructorEPK4expr.exit.i.i.i, %bb.cr, %.noexc180, %.lr.ph.i.i.i
  %.not.i12.i.i.i = icmp eq ptr %.sroa.7.022.i.i.i, null
  %spec.select.i.i.i = select i1 %.not.i12.i.i.i, ptr %.sroa.013.023.i.i.i, ptr %.sroa.7.022.i.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 56
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !206 ; 2 uses
  %.pre.i.i175 = load ptr, ptr %i.tl, align 8, !tbaa !195
  br label %.lr.ph.i.i.i

_ZNK3sls15datatype_plugin15get_constructorEPN3euf5enodeE.exit.i.i: ; preds = %_ZNK8datatype4util14is_constructorEPK4expr.exit.i.i.i
  %i.tm = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !tbaa !195 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.to = load i32, ptr %i.tn, align 4
  %i.tp = and i32 %i.to, 65535
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.cs, label %_ZNK3euf5enode8get_declEv.exit.i.i

bb.cs:                                            ; preds = %_ZNK3sls15datatype_plugin15get_constructorEPN3euf5enodeE.exit.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !126
  br label %_ZNK3euf5enode8get_declEv.exit.i.i

_ZNK3euf5enode8get_declEv.exit.i.i:               ; preds = %bb.cs, %_ZNK3sls15datatype_plugin15get_constructorEPN3euf5enodeE.exit.i.i
  %i.tt = phi ptr [ %i.ts, %bb.cs ], [ null, %_ZNK3sls15datatype_plugin15get_constructorEPN3euf5enodeE.exit.i.i ]
  %i.tu = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 5 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176:    ; preds = %_ZNK3euf5enode8get_declEv.exit.i.i
  %i.tw = getelementptr inbounds i8, ptr %i.tu, i64 -4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !89 ; 2 uses
  %i.ty = zext i32 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.ty, 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tz
  %.not.i42.i.i = icmp eq i32 %i.tx, 0
  br i1 %.not.i42.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.uh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i ], [ %i.tu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176 ] ; 2 uses
  %i.ub = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %i.uc = load ptr, ptr %16, align 8, !tbaa !92, !nonnull !54, !align !55
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !93
  %i.uf = add i32 %i.ue, -1                       ; 2 uses
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !93
  %i.ug = icmp eq i32 %i.uf, 0
  br i1 %i.ug, label %bb.cu, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.uc, ptr noundef nonnull %i.ub)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i: ; preds = %bb.cu, %bb.ct, %.lr.ph.i.i.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %i.ui = icmp ult ptr %i.uh, %i.ua
  br i1 %i.ui, label %.lr.ph.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i, !llvm.loop !95

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 2 uses
  %.not.i.i43.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i43.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176
  %i.uj = phi ptr [ %.pre.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i ], [ %i.tu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i176 ] ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -4
  store i32 0, ptr %i.uk, align 4, !tbaa !89
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i, %_ZNK3euf5enode8get_declEv.exit.i.i
  %i.ul = phi ptr [ %i.uj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i ], [ null, %_ZNK3euf5enode8get_declEv.exit.i.i ]
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 176 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 152
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !221 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %.idx.i.i = shl nuw nsw i64 %i.up, 3
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 %.idx.i.i ; 2 uses
  %.not3991.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not3991.i.i, label %.critedge.i.i, label %.lr.ph.outer.i.i

.lr.ph.outer.i.i:                                 ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i, %.thread.i.i
  %.02993.ph.i.i = phi ptr [ %i.abf, %.thread.i.i ], [ %i.um, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i ]
  %.03092.ph.i.i = phi i1 [ true, %.thread.i.i ], [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i ]
  br label %.lr.ph.i.i177

._crit_edge.i.i:                                  ; preds = %bb.ee
  br i1 %.03092.ph.i.i, label %._crit_edge.thread.i.i, label %.critedge.i.i

.lr.ph.i.i177:                                    ; preds = %bb.ee, %.lr.ph.outer.i.i
  %.02993.i.i = phi ptr [ %i.aay, %bb.ee ], [ %.02993.ph.i.i, %.lr.ph.outer.i.i ] ; 3 uses
  %i.ur = load ptr, ptr %.02993.i.i, align 8, !tbaa !193 ; 3 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !195
  %i.ut = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.us)
          to label %.noexc182 unwind label %.loopexit

.noexc182:                                        ; preds = %.lr.ph.i.i177
  %i.uu = invoke noundef i32 @_ZNK8datatype4util3fidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.noexc183 unwind label %.loopexit

.noexc183:                                        ; preds = %.noexc182
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !131 ; 3 uses
  %i.ux = icmp eq ptr %i.uw, null
  br i1 %i.ux, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.thread.i.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %.noexc183
  %i.uy = load i32, ptr %i.uw, align 8, !tbaa !136
  %i.uz = icmp eq i32 %i.uy, %i.uu
  br i1 %i.uz, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.i.i, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.thread.i.i

_ZNK8datatype4util11is_datatypeEPK4sort.exit.i.i: ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !165
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.cv, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.thread.i.i

bb.cv:                                            ; preds = %_ZNK8datatype4util11is_datatypeEPK4sort.exit.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ur, i64 64
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !207
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !195
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !189
  %i.vh = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.vi = zext i32 %i.vg to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vi
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !90 ; 3 uses
  %.not40.i.i = icmp eq ptr %i.vk, null
  br i1 %.not40.i.i, label %.split36.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.cv
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !93
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.vl, align 4, !tbaa !93
  %i.vo = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 4 uses
  %i.vp = icmp eq ptr %i.vo, null
  br i1 %i.vp, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.vq = getelementptr inbounds i8, ptr %i.vo, i64 -4
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !89 ; 5 uses
  %i.vs = getelementptr inbounds i8, ptr %i.vo, i64 -8 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !89
  %i.vu = icmp eq i32 %i.vr, %i.vt
  br i1 %i.vu, label %bb.cy, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.cx:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.vv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc184 unwind label %.loopexit ; 3 uses

.noexc184:                                        ; preds = %bb.cx
  store i32 2, ptr %i.vv, align 4, !tbaa !89
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i32 0, ptr %i.vw, align 4, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 2 uses
  store ptr %i.vx, ptr %i.bk, align 8, !tbaa !57
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.vy = mul i32 %i.vr, 3
  %i.vz = add i32 %i.vy, 1
  %i.wa = lshr i32 %i.vz, 1                       ; 3 uses
  %i.wb = shl i32 %i.wa, 3
  %i.wc = add i32 %i.wb, 8                        ; 2 uses
  %.not.i19.i = icmp ugt i32 %i.wa, %i.vr
  br i1 %.not.i19.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.wd = shl i32 %i.vr, 3
  %i.we = add i32 %i.wd, 8
  %.not27.i.i = icmp ugt i32 %i.wc, %i.we
  br i1 %.not27.i.i, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.wf = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.wf, align 8, !tbaa !8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 24 ; 3 uses
  store ptr %i.wh, ptr %i.wg, align 8, !tbaa !172
  %i.wi = load ptr, ptr %9, align 8, !tbaa !174   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.wl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !177 ; 3 uses
  %i.wn = icmp ult i64 %i.wm, 16
  call void @llvm.assume(i1 %i.wn)
  %i.wo = add nuw nsw i64 %i.wm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wh, ptr noundef nonnull align 8 dereferenceable(1) %i.wj, i64 %i.wo, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.db
  store ptr %i.wi, ptr %i.wg, align 8, !tbaa !174
  %i.wp = load i64, ptr %i.wj, align 8, !tbaa !178
  store i64 %i.wp, ptr %i.wh, align 8, !tbaa !178
  %.phi.trans.insert.i.i179 = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_0
