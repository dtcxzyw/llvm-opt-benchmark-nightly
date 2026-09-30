Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/tangent_plane_check?download=true
inline.NumInlined: 1103
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl17TangentPlaneCheck5checkEb:bb.a
  %.sroa.06.0.i320 = phi ptr [ %i.qi, %.noexc323 ], [ %.19.i.i.i.i314, %bb.ct ] ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i320, i64 40 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i320, i64 56
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !23 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i320, i64 48 ; 5 uses
  %.not10.i.i.i.i325 = icmp eq ptr %i.ql, null
  br i1 %.not10.i.i.i.i325, label %.critedge.i335, label %.lr.ph.i.i.i.i326

.lr.ph.i.i.i.i326:                                ; preds = %bb.cu
  %i.qn = load ptr, ptr %83, align 8, !tbaa !33
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = and i64 %i.qo, 1099511627775            ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i.i.i.i326
  %.012.i.i.i.i327 = phi ptr [ %i.ql, %.lr.ph.i.i.i.i326 ], [ %.1.i.i.i.i332, %bb.cv ] ; 3 uses
  %.0811.i.i.i.i328 = phi ptr [ %i.qm, %.lr.ph.i.i.i.i326 ], [ %.19.i.i.i.i329, %bb.cv ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !33
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = and i64 %i.qs, 1099511627775
  %i.qu = icmp samesign ult i64 %i.qt, %i.qp      ; 2 uses
  %.19.i.i.i.i329 = select i1 %i.qu, ptr %.0811.i.i.i.i328, ptr %.012.i.i.i.i327 ; 6 uses
  %.1.in.v.i.i.i.i330 = select i1 %i.qu, i64 24, i64 16
  %.1.in.i.i.i.i331 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 %.1.in.v.i.i.i.i330
  %.1.i.i.i.i332 = load ptr, ptr %.1.in.i.i.i.i331, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i333 = icmp eq ptr %.1.i.i.i.i332, null
  br i1 %.not.i.i.i.i333, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i, label %bb.cv, !llvm.loop !67

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.cv
  %i.qv = icmp eq ptr %.19.i.i.i.i329, %i.qm
  br i1 %i.qv, label %.critedge.i335, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i329, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !33
  %i.qy = load i64, ptr %i.qx, align 8
  %i.qz = and i64 %i.qy, 1099511627775
  %i.ra = icmp samesign ult i64 %i.qp, %i.qz
  br i1 %i.ra, label %.critedge.i335, label %bb.dh

.critedge.i335:                                   ; preds = %bb.cw, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i, %bb.cu
  %.08.lcssa.i.i.i11.i336 = phi ptr [ %.19.i.i.i.i329, %bb.cw ], [ %.19.i.i.i.i329, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i ], [ %i.qm, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  store ptr %83, ptr %58, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  %i.rb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc782 unwind label %bb.ee ; 7 uses

.noexc782:                                        ; preds = %.critedge.i335
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.qj, ptr noundef nonnull %i.rb, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 1 dereferenceable(1) %59)
          to label %.noexc783 unwind label %bb.ee

.noexc783:                                        ; preds = %.noexc782
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 32 ; 3 uses
  %i.rd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.qj, ptr %.08.lcssa.i.i.i11.i336, ptr noundef nonnull align 8 dereferenceable(8) %i.rc)
          to label %bb.cx unwind label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.cx:                                            ; preds = %.noexc783
  %i.re = extractvalue { ptr, ptr } %i.rd, 0      ; 2 uses
  %i.rf = extractvalue { ptr, ptr } %i.rd, 1      ; 4 uses
  %.not.i780 = icmp eq ptr %i.rf, null
  br i1 %.not.i780, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i.i.i781 = icmp ne ptr %i.re, null
  %i.rg = icmp eq ptr %i.rf, %i.qm
  %or.cond.i.i.i = select i1 %.not.i.i.i781, i1 true, i1 %i.rg
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !33
  %i.rj = load i64, ptr %i.ri, align 8
  %i.rk = and i64 %i.rj, 1099511627775
  %i.rl = load ptr, ptr %i.rh, align 8, !tbaa !33
  %i.rm = load i64, ptr %i.rl, align 8
  %i.rn = and i64 %i.rm, 1099511627775
  %i.ro = icmp samesign ult i64 %i.rk, %i.rn
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cz, %bb.cy
  %i.rp = phi i1 [ %i.ro, %bb.cz ], [ true, %bb.cy ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.rp, ptr noundef nonnull %i.rb, ptr noundef nonnull %i.rf, ptr noundef nonnull align 8 dereferenceable(32) %i.qm) #19
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i320, i64 80 ; 2 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !26
  %i.rs = add i64 %i.rr, 1
  store i64 %i.rs, ptr %i.rq, align 8, !tbaa !26
  br label %.noexc337

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc783
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.qj, ptr noundef nonnull %i.rb) #19
  br label %.body784

bb.da:                                            ; preds = %bb.cx
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rb, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !33 ; 3 uses
  %i.rw = load i64, ptr %i.rv, align 8            ; 3 uses
  %i.rx = and i64 %i.rw, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.rx, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, label %bb.db, !prof !35

bb.db:                                            ; preds = %bb.da
  %i.ry = add i64 %i.rw, 1152920405095219200
  %i.rz = and i64 %i.ry, 1152920405095219200      ; 2 uses
  %i.sa = and i64 %i.rw, -1152920405095219201
  %i.sb = or disjoint i64 %i.rz, %i.sa
  store i64 %i.sb, ptr %i.rv, align 8
  %i.sc = icmp eq i64 %i.rz, 0
  br i1 %i.sc, label %bb.dc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, !prof !35

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sd = landingpad { ptr, i32 }
          catch ptr null
  %i.se = extractvalue { ptr, i32 } %i.sd, 0
  call void @__clang_call_terminate(ptr %i.se) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i: ; preds = %bb.dc, %bb.db, %bb.da
  %i.sf = load ptr, ptr %i.rc, align 8, !tbaa !33 ; 3 uses
  %i.sg = load i64, ptr %i.sf, align 8            ; 3 uses
  %i.sh = and i64 %i.sg, 1152920405095219200
  %.not.i.i1.i.i.i = icmp eq i64 %i.sh, 1152920405095219200
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.de, !prof !35

bb.de:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i
  %i.si = add i64 %i.sg, 1152920405095219200
  %i.sj = and i64 %i.si, 1152920405095219200      ; 2 uses
  %i.sk = and i64 %i.sg, -1152920405095219201
  %i.sl = or disjoint i64 %i.sj, %i.sk
  store i64 %i.sl, ptr %i.sf, align 8
  %i.sm = icmp eq i64 %i.sj, 0
  br i1 %i.sm, label %bb.df, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, !prof !35

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sf)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #20
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, %bb.de, %bb.df
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef 48) #22
  br label %.noexc337

.noexc337:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %.thread.i
  %.sroa.015.019.i = phi ptr [ %i.rb, %.thread.i ], [ %i.re, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %bb.dh

bb.dh:                                            ; preds = %.noexc337, %bb.cw
  %.sroa.06.0.i334 = phi ptr [ %.sroa.015.019.i, %.noexc337 ], [ %.19.i.i.i.i329, %bb.cw ]
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i334, i64 40
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !33 ; 5 uses
  store ptr %i.sq, ptr %90, align 8, !tbaa !33
  %i.sr = load i64, ptr %i.sq, align 8            ; 3 uses
  %i.ss = lshr i64 %i.sr, 40
  %i.st = trunc nuw nsw i64 %i.ss to i32
  %i.su = and i32 %i.st, 1048575                  ; 3 uses
  %i.sv = icmp samesign ult i32 %i.su, 1048574
  br i1 %i.sv, label %bb.di, label %bb.dj, !prof !34

bb.di:                                            ; preds = %bb.dh
  %i.sw = add nuw nsw i32 %i.su, 1
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = shl nuw nsw i64 %i.sx, 40
  %i.sz = and i64 %i.sr, -1152920405095219201
  %i.ta = or i64 %i.sy, %i.sz
  store i64 %i.ta, ptr %i.sq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339

bb.dj:                                            ; preds = %bb.dh
  %i.tb = icmp eq i32 %i.su, 1048574
  br i1 %i.tb, label %bb.dk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339, !prof !35

bb.dk:                                            ; preds = %bb.dj
  %i.tc = or i64 %i.sr, 1152920405095219200
  store i64 %i.tc, ptr %i.sq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339 unwind label %bb.ee

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339: ; preds = %bb.dj, %bb.di, %bb.dk
  %i.td = load ptr, ptr %89, align 8, !tbaa !33   ; 3 uses
  %i.te = load ptr, ptr %90, align 8, !tbaa !33   ; 3 uses
  %.not930 = icmp eq ptr %i.td, %i.te
  br i1 %.not930, label %bb.fo, label %bb.dl

bb.dl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit339
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #19
  %113 = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %113, 0
  %114 = select i1 %.not, i32 76, i32 78
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19, !noalias !157
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !160, !noalias !157
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %55, ptr noundef %i.tg, i32 noundef %114)
          to label %.noexc340 unwind label %bb.ef

.noexc340:                                        ; preds = %bb.dl
  store ptr %i.td, ptr %56, align 8, !tbaa !43, !noalias !157
  %i.th = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %55, ptr noundef nonnull align 8 %56)
          to label %bb.dm unwind label %bb.dp, !noalias !157

bb.dm:                                            ; preds = %.noexc340
  store ptr %i.te, ptr %57, align 8, !tbaa !43, !noalias !157
  %i.ti = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.th, ptr noundef nonnull align 8 %57)
          to label %bb.dn unwind label %bb.dq, !noalias !157 ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %91, ptr noundef nonnull align 8 dereferenceable(124) %55)
          to label %bb.ds unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dp:                                            ; preds = %.noexc340
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do
  %.pn5.i = phi { ptr, i32 } [ %i.tj, %bb.do ], [ %i.tl, %bb.dq ], [ %i.tk, %bb.dp ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !157
  br label %.body

bb.ds:                                            ; preds = %bb.dn
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #19
  %i.tm = load ptr, ptr %91, align 8, !tbaa !33
  store ptr %i.tm, ptr %93, align 8, !tbaa !43
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %92, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %93)
          to label %bb.dt unwind label %bb.eg

bb.dt:                                            ; preds = %bb.ds
  %i.tn = load ptr, ptr %91, align 8, !tbaa !33   ; 4 uses
  %i.to = load ptr, ptr %92, align 8, !tbaa !33
  %.not.i341 = icmp eq ptr %i.tn, %i.to
  br i1 %.not.i341, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.du, !prof !35

bb.du:                                            ; preds = %bb.dt
  %i.tp = load i64, ptr %i.tn, align 8            ; 3 uses
  %i.tq = and i64 %i.tp, 1152920405095219200
  %.not.i.i342 = icmp eq i64 %i.tq, 1152920405095219200
  br i1 %.not.i.i342, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.dv, !prof !35

bb.dv:                                            ; preds = %bb.du
  %i.tr = add i64 %i.tp, 1152920405095219200
  %i.ts = and i64 %i.tr, 1152920405095219200      ; 2 uses
  %i.tt = and i64 %i.tp, -1152920405095219201
  %i.tu = or disjoint i64 %i.ts, %i.tt
  store i64 %i.tu, ptr %i.tn, align 8
  %i.tv = icmp eq i64 %i.ts, 0
  br i1 %i.tv, label %bb.dw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !35

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tn)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.eh

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.dw, %bb.dv, %bb.du
  %i.tw = load ptr, ptr %92, align 8, !tbaa !33   ; 5 uses
  store ptr %i.tw, ptr %91, align 8, !tbaa !33
  %i.tx = load i64, ptr %i.tw, align 8            ; 3 uses
  %i.ty = lshr i64 %i.tx, 40
  %i.tz = trunc nuw nsw i64 %i.ty to i32
  %i.ua = and i32 %i.tz, 1048575                  ; 3 uses
  %i.ub = icmp samesign ult i32 %i.ua, 1048574
  br i1 %i.ub, label %bb.dx, label %bb.dy, !prof !34

bb.dx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.uc = add nuw nsw i32 %i.ua, 1
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw nsw i64 %i.ud, 40
  %i.uf = and i64 %i.tx, -1152920405095219201
  %i.ug = or i64 %i.ue, %i.uf
  store i64 %i.ug, ptr %i.tw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.dy:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.uh = icmp eq i32 %i.ua, 1048574
  br i1 %i.uh, label %bb.dz, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !35

bb.dz:                                            ; preds = %bb.dy
  %i.ui = or i64 %i.tx, 1152920405095219200
  store i64 %i.ui, ptr %i.tw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.eh

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.dy, %bb.dx, %bb.dt, %bb.dz
  %i.uj = load ptr, ptr %92, align 8, !tbaa !33   ; 3 uses
  %i.uk = load i64, ptr %i.uj, align 8            ; 3 uses
  %i.ul = and i64 %i.uk, 1152920405095219200
  %.not.i.i345 = icmp eq i64 %i.ul, 1152920405095219200
  br i1 %.not.i.i345, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347, label %bb.ea, !prof !35

bb.ea:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.um = add i64 %i.uk, 1152920405095219200
  %i.un = and i64 %i.um, 1152920405095219200      ; 2 uses
  %i.uo = and i64 %i.uk, -1152920405095219201
  %i.up = or disjoint i64 %i.un, %i.uo
  store i64 %i.up, ptr %i.uj, align 8
  %i.uq = icmp eq i64 %i.un, 0
  br i1 %i.uq, label %bb.eb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347, !prof !35

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  %i.ut = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uv = load ptr, ptr %91, align 8, !tbaa !33   ; 2 uses
  %i.uw = load ptr, ptr %i.uu, align 8, !tbaa !33
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %.preheader936, label %.loopexit937

.preheader936:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit347
  %.sroa.sel.sroa.sel899 = select i1 %i.pc, ptr %i.ah, ptr %i.ak ; 3 uses
  %.sroa.sel = select i1 %i.pc, ptr %88, ptr %i.aj
  %.sroa.sel902 = select i1 %i.pc, ptr %i.aj, ptr %88
  %.sroa.sel902.sroa.sel905 = select i1 %i.pc, ptr %i.ak, ptr %i.ah ; 3 uses
  br label %bb.ej

bb.ed:                                            ; preds = %bb.cq
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.ee:                                            ; preds = %.noexc782, %.critedge.i335, %bb.dk, %.critedge.i321
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body784

bb.ef:                                            ; preds = %bb.dl
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eg:                                            ; preds = %bb.ds
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.dz, %bb.dw
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #19
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn136 = phi { ptr, i32 } [ %i.vc, %bb.eh ], [ %i.vb, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #19
  br label %.body794

bb.ej:                                            ; preds = %.preheader936, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387
  %i.vd = phi i1 [ true, %.preheader936 ], [ false, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387 ]
  %.0481440 = phi i64 [ 0, %.preheader936 ], [ 1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit387 ] ; 2 uses
  %i.ve = load ptr, ptr %.sroa.sel.sroa.sel899, align 8, !tbaa !29 ; 3 uses
  %.val931.a = load ptr, ptr %i.al, align 8
  %.val932.a = load ptr, ptr %i.ai, align 16
  %i.vf = select i1 %i.pc, ptr %.val932.a, ptr %.val931.a
  %.not.i348 = icmp eq ptr %i.ve, %i.vf
  br i1 %.not.i348, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vg = load ptr, ptr %89, align 8, !tbaa !33   ; 5 uses
  store ptr %i.vg, ptr %i.ve, align 8, !tbaa !33
  %i.vh = load i64, ptr %i.vg, align 8            ; 3 uses
  %i.vi = lshr i64 %i.vh, 40
  %i.vj = trunc nuw nsw i64 %i.vi to i32
  %i.vk = and i32 %i.vj, 1048575                  ; 3 uses
  %i.vl = icmp samesign ult i32 %i.vk, 1048574
end_hunk_0
