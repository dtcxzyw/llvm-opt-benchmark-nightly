Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/single_inv_partition?download=true
inline.NumInlined: 2147
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers25SingleInvocationPartition15processConjunctENS0_12NodeTemplateILb1EEERSt3mapIS5_bSt4lessIS5_ESaISt4pairIKS5_bEEERSt6vectorIS5_SaIS5_EERNS0_4SubsE:bb.a
  %i.mq = and i64 %i.mi, -1152920405095219201
  %i.mr = or i64 %i.mp, %i.mq
  store i64 %i.mr, ptr %i.mh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.co:                                            ; preds = %bb.cm
  %i.ms = icmp eq i32 %i.ml, 1048574
  br i1 %i.ms, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !46

bb.cp:                                            ; preds = %bb.co
  %i.mt = or i64 %i.mi, 1152920405095219200
  store i64 %i.mt, ptr %i.mh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.cv

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.mu = load ptr, ptr %i.kh, align 8, !tbaa !94
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %i.mv, ptr %i.kh, align 8, !tbaa !94
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.cq:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.cv

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.cq
  %i.mw = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %i.mx = load i64, ptr %i.mw, align 8            ; 3 uses
  %i.my = and i64 %i.mx, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.my, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, label %bb.cr, !prof !46

bb.cr:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.mz = add i64 %i.mx, 1152920405095219200
  %i.na = and i64 %i.mz, 1152920405095219200      ; 2 uses
  %i.nb = and i64 %i.mx, -1152920405095219201
  %i.nc = or disjoint i64 %i.na, %i.nb
  store i64 %i.nc, ptr %i.mw, align 8
  %i.nd = icmp eq i64 %i.na, 0
  br i1 %i.nd, label %bb.cs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, !prof !46

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0
  call void @__clang_call_terminate(ptr %i.nf) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ng = add i32 %.0, 1
  br label %bb.cd, !llvm.loop !221

bb.cu:                                            ; preds = %bb.cl, %bb.ci
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq, %bb.cp
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn52 = phi { ptr, i32 } [ %i.ni, %bb.cv ], [ %i.nh, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.dl

.preheader208:                                    ; preds = %bb.cc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113
  %storemerge = phi i32 [ %i.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 ], [ 0, %bb.cc ] ; 3 uses
  %i.nj = load ptr, ptr %1, align 8, !tbaa !44
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = and i32 %i.nm, 1023                     ; 2 uses
  %i.no = icmp eq i32 %i.nn, 1023
  %i.np = select i1 %i.no, i32 -1, i32 %i.nn
  %i.nq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.np)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %.preheader208
  %i.nr = icmp eq i32 %i.nq, 2
  %i.ns = load i64, ptr %i.nk, align 8
  %i.nt = lshr i64 %i.ns, 32
  %i.nu = and i64 %i.nt, 67108863
  %i.nv = sext i1 %i.nr to i64
  %i.nw = add nsw i64 %i.nu, %i.nv
  %i.nx = and i64 %i.nw, 4294967295
  %i.ny = zext i32 %storemerge to i64             ; 2 uses
  %i.nz = icmp samesign ugt i64 %i.nx, %i.ny
  br i1 %i.nz, label %bb.cz, label %.loopexit

bb.cy:                                            ; preds = %.preheader208
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cz:                                            ; preds = %bb.cx
  %i.ob = load ptr, ptr %3, align 8, !tbaa !98
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.ny
  %i.od = load ptr, ptr %1, align 8, !tbaa !44, !noalias !227 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !noalias !227
  %i.og = trunc i64 %i.of to i32
  %i.oh = and i32 %i.og, 1023                     ; 2 uses
  %i.oi = icmp eq i32 %i.oh, 1023
  %i.oj = select i1 %i.oi, i32 -1, i32 %i.oh
  %i.ok = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.oj)
          to label %.noexc108 unwind label %bb.dg

.noexc108:                                        ; preds = %bb.cz
  %i.ol = icmp eq i32 %i.ok, 2
  %i.om = zext i1 %i.ol to i32
  %spec.select.i.i107 = add nsw i32 %storemerge, %i.om
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.oo = sext i32 %spec.select.i.i107 to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.on, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !60, !noalias !227 ; 8 uses
  %i.or = load i64, ptr %i.oq, align 8, !noalias !227 ; 4 uses
  %i.os = lshr i64 %i.or, 40
  %i.ot = trunc nuw nsw i64 %i.os to i32
  %i.ou = and i32 %i.ot, 1048575                  ; 3 uses
  %i.ov = icmp samesign ult i32 %i.ou, 1048574
  br i1 %i.ov, label %bb.da, label %bb.db, !prof !45

bb.da:                                            ; preds = %.noexc108
  %i.ow = add nuw nsw i32 %i.ou, 1
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = shl nuw nsw i64 %i.ox, 40
  %i.oz = and i64 %i.or, -1152920405095219201
  %i.pa = or i64 %i.oy, %i.oz                     ; 2 uses
  store i64 %i.pa, ptr %i.oq, align 8, !noalias !227
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110

bb.db:                                            ; preds = %.noexc108
  %i.pb = icmp eq i32 %i.ou, 1048574
  br i1 %i.pb, label %bb.dc, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110, !prof !46

bb.dc:                                            ; preds = %bb.db
  %i.pc = or i64 %i.or, 1152920405095219200
  store i64 %i.pc, ptr %i.oq, align 8, !noalias !227
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110_crit_edge unwind label %bb.dg

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110_crit_edge: ; preds = %bb.dc
  %.pre168 = load i64, ptr %i.oq, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110_crit_edge, %bb.db, %bb.da
  %i.pd = phi i64 [ %.pre168, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110_crit_edge ], [ %i.or, %bb.db ], [ %i.pa, %bb.da ] ; 3 uses
  %i.pe = load ptr, ptr %i.oc, align 8, !tbaa !44
  %.not145 = icmp eq ptr %i.pe, %i.oq
  %i.pf = and i64 %i.pd, 1152920405095219200
  %.not.i.i111 = icmp eq i64 %i.pf, 1152920405095219200
  br i1 %.not.i.i111, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, label %bb.dd, !prof !46

bb.dd:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110
  %i.pg = add i64 %i.pd, 1152920405095219200
  %i.ph = and i64 %i.pg, 1152920405095219200      ; 2 uses
  %i.pi = and i64 %i.pd, -1152920405095219201
  %i.pj = or disjoint i64 %i.ph, %i.pi
  store i64 %i.pj, ptr %i.oq, align 8
  %i.pk = icmp eq i64 %i.ph, 0
  br i1 %i.pk, label %bb.de, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, !prof !46

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  %i.pm = extractvalue { ptr, i32 } %i.pl, 0
  call void @__clang_call_terminate(ptr %i.pm) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit110, %bb.dd, %bb.de
  %i.pn = add i32 %storemerge, 1
  br i1 %.not145, label %.preheader208, label %.thread, !llvm.loop !224

bb.dg:                                            ; preds = %bb.dc, %bb.cz
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit:                                        ; preds = %bb.cx, %bb.ce
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.pp, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.dh unwind label %bb.bi

bb.dh:                                            ; preds = %.loopexit
  invoke void @_ZN4cvc58internal4Subs3addERKNS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.pq)
          to label %.thread unwind label %bb.bi

.thread:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, %bb.aw, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88, %bb.dh, %bb.bm
  %.543 = phi i1 [ true, %bb.dh ], [ true, %._crit_edge.i.i.i ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93 ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88 ], [ false, %bb.bm ], [ true, %bb.aw ], [ true, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 ]
  %i.pr = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %i.ps = load i64, ptr %i.pr, align 8            ; 3 uses
  %i.pt = and i64 %i.ps, 1152920405095219200
  %.not.i.i120 = icmp eq i64 %i.pt, 1152920405095219200
  br i1 %.not.i.i120, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, label %bb.di, !prof !46

bb.di:                                            ; preds = %.thread
  %i.pu = add i64 %i.ps, 1152920405095219200
  %i.pv = and i64 %i.pu, 1152920405095219200      ; 2 uses
  %i.pw = and i64 %i.ps, -1152920405095219201
  %i.px = or disjoint i64 %i.pv, %i.pw
  store i64 %i.px, ptr %i.pr, align 8
  %i.py = icmp eq i64 %i.pv, 0
  br i1 %i.py, label %bb.dj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, !prof !46

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pz = landingpad { ptr, i32 }
          catch ptr null
  %i.qa = extractvalue { ptr, i32 } %i.pz, 0
  call void @__clang_call_terminate(ptr %i.qa) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122: ; preds = %.thread, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dm

bb.dl:                                            ; preds = %bb.cy, %bb.dg, %bb.ch, %bb.cw, %bb.cg, %bb.cf, %bb.bl, %bb.bi, %bb.av, %bb.au
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bl ], [ %i.ih, %bb.bi ], [ %.pn52, %bb.cw ], [ %i.le, %bb.ch ], [ %i.ld, %bb.cg ], [ %i.lc, %bb.cf ], [ %.pn46, %bb.au ], [ %i.gv, %bb.av ], [ %i.oa, %bb.cy ], [ %i.po, %bb.dg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %common.resume

bb.dm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, %._crit_edge
  %.644 = phi i1 [ %.543, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122 ], [ false, %._crit_edge ] ; 2 uses
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.qb, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dm
  %i.qc = load ptr, ptr %1, align 8, !tbaa !44
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = and i64 %i.qd, 1099511627775            ; 2 uses
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.dn ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.dn ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !44
  %i.qh = load i64, ptr %i.qg, align 8
  %i.qi = and i64 %i.qh, 1099511627775
  %i.qj = icmp samesign ult i64 %i.qi, %i.qe      ; 2 uses
  %.19.i.i.i.i = select i1 %i.qj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.qj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, label %bb.dn, !llvm.loop !1

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i: ; preds = %bb.dn
  %i.qk = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.qk, label %.critedge.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !44
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = and i64 %i.qn, 1099511627775
  %i.qp = icmp samesign ult i64 %i.qe, %i.qo
  br i1 %i.qp, label %.critedge.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.do, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, %bb.dm
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.do ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i ], [ %i.c, %bb.dm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.qq = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit: ; preds = %bb.do, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.qq, %.critedge.i ], [ %.19.i.i.i.i, %bb.do ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %15 = zext i1 %.644 to i8
  store i8 %15, ptr %i.qr, align 1, !tbaa !59
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit
  %.026 = phi i1 [ %.644, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit ]
  ret i1 %.026
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.29", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 1023
  call void @_ZN4cvc58internal11NodeManager10operatorOfENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.29") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3592) %i.j, i32 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !105    ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !44
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = lshr i64 %i.p, 40
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575                    ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, 1048574
  br i1 %i.t, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i32 %i.s, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = and i64 %i.p, -1152920405095219201
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.s, 1048574
  br i1 %i.z, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.aa = or i64 %i.p, 1152920405095219200
  store i64 %i.aa, ptr %i.o, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 5 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !44
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = lshr i64 %i.ae, 40
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1048575                  ; 3 uses
  %i.ai = icmp samesign ult i32 %i.ah, 1048574
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.aj = add nuw nsw i32 %i.ah, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = and i64 %i.ae, -1152920405095219201
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %i.ad, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp eq i32 %i.ah, 1048574
  br i1 %i.ao, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !46

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.ae, 1152920405095219200
  store i64 %i.ap, ptr %i.ad, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.126", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.129", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !44
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.j, %i.f         ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !3

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1099511627775
  %i.q = icmp samesign ult i64 %i.f, %i.p
  br i1 %i.q, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i11 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.06.0 = phi ptr [ %i.r, %.critedge ], [ %.19.i.i.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 40
  ret ptr %i.s
}

declare noundef zeroext i1 @_ZNK4cvc58internal4Subs5emptyEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal4Subs5applyERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4cvc58internal4Subs5clearEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal4Subs8containsENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8) local_unnamed_addr #1

declare void @_ZN4cvc58internal4Subs3addERKNS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal11NodeManager4mkOrILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.29", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !57     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !59
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 8
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !44
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %bb.d
end_hunk_0
