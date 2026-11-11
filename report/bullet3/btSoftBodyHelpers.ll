Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN17btSoftBodyHelpers21generateBoundaryFacesEP10btSoftBody:bb.a
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.rd, %bb.at ], [ %i.rr, %bb.av ]
  %.not.i260 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.rf
  br i1 %.not.i260, label %.loopexit464.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt6vectorIiSaIiEEEclERKS2_S5_.exit.i, %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE11lower_boundERS6_.exit.i, %.noexc7.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.ba, %.noexc7.i ], [ %.19.i.i.i.i, %_ZNKSt4lessISt6vectorIiSaIiEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE11lower_boundERS6_.exit.i ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %5, ptr %1, align 8, !tbaa !426
  %i.rs = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc317 unwind label %bb.bf ; 9 uses

.noexc317:                                        ; preds = %.critedge.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 4 uses
  store ptr %i.qe, ptr %i.rt, align 8, !tbaa !226
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 40 ; 2 uses
  store ptr %i.qf, ptr %i.ru, align 8, !tbaa !425
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 48 ; 2 uses
  store ptr %i.qf, ptr %i.rv, align 8, !tbaa !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 24, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 56 ; 2 uses
  store ptr %i.qg, ptr %i.rw, align 8, !tbaa !226
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 64
  store ptr %i.qh, ptr %i.rx, align 8, !tbaa !425
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 72 ; 2 uses
  store ptr %i.qh, ptr %i.ry, align 8, !tbaa !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store ptr %i.rs, ptr %i.bk, align 8, !tbaa !231
  %i.rz = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %i.rt)
          to label %bb.aw unwind label %bb.ba     ; 2 uses

bb.aw:                                            ; preds = %.noexc317
  %i.sa = extractvalue { ptr, ptr } %i.rz, 1      ; 5 uses
  %.not.i308 = icmp eq ptr %i.sa, null
  br i1 %.not.i308, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sb = extractvalue { ptr, ptr } %i.rz, 0
  %.not.i.i.i309 = icmp ne ptr %i.sb, null
  %i.sc = icmp eq ptr %i.sa, %i.ba
  %or.cond.i.i.i = or i1 %.not.i.i.i309, %i.sc
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.se = load ptr, ptr %i.rt, align 8, !tbaa !221 ; 4 uses
  %i.sf = load ptr, ptr %i.ru, align 8, !tbaa !221 ; 2 uses
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !221 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 40
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !221 ; 2 uses
  %i.sj = ptrtoint ptr %i.sf to i64
  %i.sk = ptrtoint ptr %i.se to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = ptrtoint ptr %i.si to i64
  %i.sn = ptrtoint ptr %i.sg to i64
  %i.so = sub i64 %i.sm, %i.sn                    ; 2 uses
  %i.sp = icmp slt i64 %i.so, %i.sl
  %i.sq = getelementptr inbounds i8, ptr %i.se, i64 %i.so
  %i.sr = select i1 %i.sp, ptr %i.sq, ptr %i.sf   ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i310 = icmp eq ptr %i.se, %i.sr
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i310, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i311

.lr.ph.i.i.i.i.i.i.i.i.i.i311:                    ; preds = %bb.ay, %bb.az
  %.01924.i.i.i.i.i.i.i.i.i.i312 = phi ptr [ %i.sv, %bb.az ], [ %i.sg, %bb.ay ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i313 = phi ptr [ %i.su, %bb.az ], [ %i.se, %bb.ay ] ; 2 uses
  %i.ss = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i313, align 4, !tbaa !59 ; 2 uses
  %i.st = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i312, align 4, !tbaa !59 ; 2 uses
  %or.cond1051.not = icmp eq i32 %i.st, %i.ss
  br i1 %or.cond1051.not, label %bb.az, label %.thread.i.loopexit

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i311
  %i.su = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i313, i64 4 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i312, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i314 = icmp eq ptr %i.su, %i.sr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i314, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i311, !llvm.loop !5

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.az, %bb.ay
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i315 = phi ptr [ %i.sg, %bb.ay ], [ %i.sv, %bb.az ]
  %i.sw = icmp ne ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i315, %i.si
  br label %.thread.i

.thread.i.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i311
  %i.sx = icmp slt i32 %i.ss, %i.st
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %.critedge.i.i.i.i.i.i.i.i.i.i, %bb.ax
  %i.sy = phi i1 [ %i.sw, %.critedge.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ax ], [ %i.sx, %.thread.i.loopexit ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.sy, ptr noundef nonnull %i.rs, ptr noundef nonnull %i.sa, ptr noundef nonnull align 8 dereferenceable(32) %i.ba) #25
  %i.sz = load i64, ptr %i.be, align 8, !tbaa !220
  %i.ta = add i64 %i.sz, 1
  store i64 %i.ta, ptr %i.be, align 8, !tbaa !220
  br label %.loopexit464

bb.ba:                                            ; preds = %.noexc317
  %i.tb = landingpad { ptr, i32 }
          cleanup
  %i.tc = getelementptr inbounds nuw i8, ptr %.sink921, i64 16
  call void @_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.body318

bb.bb:                                            ; preds = %bb.aw
  %i.td = load ptr, ptr %i.rw, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i316 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i.i.i316, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.te = load ptr, ptr %i.ry, align 8, !tbaa !227
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.th) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.bc, %bb.bb
  %i.ti = load ptr, ptr %i.rt, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i
  %i.tj = load ptr, ptr %i.rv, align 8, !tbaa !227
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.ti to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tm) #28
  br label %_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i.i

_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i.i: ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef 80) #28
  br label %.loopexit464

.loopexit464:                                     ; preds = %.thread.i, %_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre723 = load ptr, ptr %i.bh, align 8, !tbaa !226 ; 2 uses
  %.not.i.i.i.i262 = icmp eq ptr %.pre723, null
  br i1 %.not.i.i.i.i262, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %.loopexit464.thread

.loopexit464.thread:                              ; preds = %bb.au, %_ZNKSt4lessISt6vectorIiSaIiEEEclERKS2_S5_.exit.i, %.loopexit464
  %i.tn = phi ptr [ %.pre723, %.loopexit464 ], [ %i.qg, %_ZNKSt4lessISt6vectorIiSaIiEEEclERKS2_S5_.exit.i ], [ %i.qg, %bb.au ] ; 2 uses
  %i.to = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tn to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.tr) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %.loopexit464.thread, %.loopexit464
  %i.ts = load ptr, ptr %6, align 8, !tbaa !226   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i1.i, label %_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.tt = load ptr, ptr %i.bg, align 8, !tbaa !227
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.ts to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tw) #28
  br label %_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev.exit

_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev.exit:        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit477:                                     ; preds = %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread
  %lpad.loopexit479 = landingpad { ptr, i32 }
          cleanup
  %i.tx = getelementptr inbounds nuw i8, ptr %.sink921, i64 16
  br label %.body

bb.bf:                                            ; preds = %.critedge.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
  %i.tz = getelementptr inbounds nuw i8, ptr %.sink921, i64 16
  br label %.body318

.body318:                                         ; preds = %bb.ba, %bb.bf
  %i.ua = phi ptr [ %i.tz, %bb.bf ], [ %i.tc, %bb.ba ]
  %eh.lpad-body319 = phi { ptr, i32 } [ %i.ty, %bb.bf ], [ %i.tb, %bb.ba ]
  call void @_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #25
  br label %.body

.body:                                            ; preds = %.loopexit477, %bb.aq, %.body318
  %i.ub = phi ptr [ %i.ua, %.body318 ], [ %i.tx, %.loopexit477 ], [ %i.qj, %bb.aq ]
  %.pn59 = phi { ptr, i32 } [ %eh.lpad-body319, %.body318 ], [ %lpad.loopexit479, %.loopexit477 ], [ %lpad.loopexit484, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread439

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.noexc256, %_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef 12) #28
  call void @_ZdlPvm(ptr noundef nonnull %.sink921, i64 noundef 16) #28
  %i.uc = add nuw nsw i32 %.053617, 1             ; 2 uses
  %exitcond712.not = icmp eq i32 %i.uc, 4
  br i1 %exitcond712.not, label %bb.aa, label %bb.ab, !llvm.loop !423

.thread439:                                       ; preds = %bb.ap, %.body
  %i.ud = phi ptr [ %i.qd, %bb.ap ], [ %i.ub, %.body ]
  %.pn61 = phi { ptr, i32 } [ %i.qc, %bb.ap ], [ %.pn59, %.body ]
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef 12) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread

_ZNSt6vectorIiSaIiEED2Ev.exit267.thread:          ; preds = %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit467.split.loop.exit.split-lp.split.loop.exit, %.thread439, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread.loopexit
  %.pn61.pn.pn456 = phi { ptr, i32 } [ %lpad.loopexit474, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread.loopexit ], [ %lpad.split.loop.exit609, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit604, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit600, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit594, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit581, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit576, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit572, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit566, %.loopexit467.split.loop.exit.split-lp.split.loop.exit ], [ %.pn61, %.thread439 ]
  %.sroa.0344.5455 = phi ptr [ %.sink921, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread.loopexit ], [ %i.ke, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.kq, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jx, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.kx, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jd, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.lk, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.iw, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.lr, %.loopexit467.split.loop.exit.split-lp.split.loop.exit ], [ %.sink921, %.thread439 ] ; 2 uses
  %.sroa.74.5454 = phi ptr [ %i.qb, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread.loopexit ], [ %i.jw, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jv, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ju, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jt, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.js, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jr, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jq, %.loopexit467.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.jp, %.loopexit467.split.loop.exit.split-lp.split.loop.exit ], [ %i.ud, %.thread439 ]
  %.pre-phi737 = ptrtoint ptr %.sroa.0344.5455 to i64
  %i.ue = ptrtoint ptr %.sroa.74.5454 to i64
  %i.uf = sub i64 %i.ue, %.pre-phi737
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0344.5455, i64 noundef %i.uf) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit269

._crit_edge624:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit281, %._crit_edge560.thread, %._crit_edge560, %._crit_edge619
  %i.ug = phi ptr [ %i.bb, %._crit_edge560 ], [ %i.bb, %._crit_edge619 ], [ %i.aq, %._crit_edge560.thread ], [ %i.bb, %_ZNSt6vectorIiSaIiEED2Ev.exit281 ]
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !217
  invoke void @_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.uh)
          to label %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %._crit_edge624
  %i.ui = landingpad { ptr, i32 }
          catch ptr null
  %i.uj = extractvalue { ptr, i32 } %i.ui, 0
  call void @__clang_call_terminate(ptr %i.uj) #26
  unreachable

_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit: ; preds = %._crit_edge624
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.uk = load i32, ptr %i.aa, align 4, !tbaa !194 ; 2 uses
  %i.ul = icmp sgt i32 %i.uk, 0
  br i1 %i.ul, label %.lr.ph.i.i.i271, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i

.lr.ph.i.i.i271:                                  ; preds = %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit
  %zext.i.i = zext nneg i32 %i.uk to i64
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i, %.lr.ph.i.i.i271
  %indvars.iv.i.i.i272 = phi i64 [ 0, %.lr.ph.i.i.i271 ], [ %indvars.iv.next.i.i.i273, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i ] ; 2 uses
  %i.um = load ptr, ptr %i.z, align 8, !tbaa !193
  %i.un = getelementptr inbounds nuw [32 x i8], ptr %i.um, i64 %indvars.iv.i.i.i272 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.up, null
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.ur = load i8, ptr %i.uq, align 8, !range !37
  %i.us = trunc nuw i8 %i.ur to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.us, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.bi, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.up)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ut = landingpad { ptr, i32 }
          catch ptr null
  %i.uu = extractvalue { ptr, i32 } %i.ut, 0
  call void @__clang_call_terminate(ptr %i.uu) #26
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i:      ; preds = %bb.bi, %bb.bh
  %indvars.iv.next.i.i.i273 = add nuw nsw i64 %indvars.iv.i.i.i272, 1 ; 2 uses
  %i.uv = icmp eq i64 %indvars.iv.next.i.i.i273, %zext.i.i
  br i1 %i.uv, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i, label %bb.bh, !llvm.loop !4

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i, %_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit
  %i.uw = load ptr, ptr %i.z, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i270 = icmp ne ptr %i.uw, null
  %i.ux = load i8, ptr %i.y, align 8, !range !37
  %i.uy = trunc nuw i8 %i.ux to i1
  %or.cond460 = select i1 %.not.i.i.i270, i1 %i.uy, i1 false
  br i1 %or.cond460, label %bb.bk, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit

bb.bk:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uw)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uz = landingpad { ptr, i32 }
          catch ptr null
  %i.va = extractvalue { ptr, i32 } %i.uz, 0
  call void @__clang_call_terminate(ptr %i.va) #26
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit:        ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.lr.ph623:                                        ; preds = %._crit_edge619, %_ZNSt6vectorIiSaIiEED2Ev.exit281
  %.sroa.0326.0621 = phi ptr [ %i.vv, %_ZNSt6vectorIiSaIiEED2Ev.exit281 ], [ %.pre724, %._crit_edge619 ] ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0326.0621, i64 56 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0326.0621, i64 64 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !425 ; 2 uses
  %i.ve = load ptr, ptr %i.vb, align 8, !tbaa !226 ; 3 uses
  %i.vf = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.vg = ptrtoint ptr %i.ve to i64               ; 2 uses
  %i.vh = sub i64 %i.vf, %i.vg                    ; 4 uses
  %.not.i.i.i.i274 = icmp eq ptr %i.vd, %i.ve
  br i1 %.not.i.i.i.i274, label %.noexc278, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph623
  %i.vi = icmp ugt i64 %i.vh, 9223372036854775804
  br i1 %i.vi, label %.noexc.i.i276, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275, !prof !427

.noexc.i.i276:                                    ; preds = %bb.bm
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc277 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc277:                                        ; preds = %.noexc.i.i276
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275: ; preds = %bb.bm
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vh) #27
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275
  %.pre725 = load ptr, ptr %i.vb, align 8, !tbaa !221 ; 2 uses
  %.pre726 = load ptr, ptr %i.vc, align 8, !tbaa !221
  %.pre727 = ptrtoint ptr %.pre726 to i64
  %.pre728 = ptrtoint ptr %.pre725 to i64
  br label %.noexc278

.noexc278:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge, %.lr.ph623
  %.pre-phi729 = phi i64 [ %.pre728, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge ], [ %i.vg, %.lr.ph623 ]
  %.pre-phi = phi i64 [ %.pre727, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge ], [ %i.vf, %.lr.ph623 ]
  %i.vk = phi ptr [ %.pre725, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge ], [ %i.ve, %.lr.ph623 ] ; 2 uses
  %i.vl = phi ptr [ %i.vj, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275..noexc278_crit_edge ], [ null, %.lr.ph623 ] ; 7 uses
  %i.vm = sub i64 %.pre-phi, %.pre-phi729         ; 3 uses
  %i.vn = icmp sgt i64 %i.vm, 4
  br i1 %i.vn, label %bb.bn, label %bb.bo, !prof !232

bb.bn:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vl, ptr align 4 %i.vk, i64 %i.vm, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279

bb.bo:                                            ; preds = %.noexc278
  %i.vo = icmp eq i64 %i.vm, 4
  br i1 %i.vo, label %bb.bp, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279

bb.bp:                                            ; preds = %bb.bo
  %i.vp = load i32, ptr %i.vk, align 4, !tbaa !59
  store i32 %i.vp, ptr %i.vl, align 4, !tbaa !59
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279:             ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.vq = load i32, ptr %i.vl, align 4, !tbaa !59
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !59
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.vq, i32 noundef %i.vs, i32 noundef %i.vu, ptr noundef null)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit281 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit283

_ZNSt6vectorIiSaIiEED2Ev.exit281:                 ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vh) #28
  %i.vv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0326.0621) #30 ; 2 uses
  %.not = icmp eq ptr %i.vv, %i.ba
  br i1 %.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !424

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i275, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i159, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i189, %.noexc.i.i276
  %lpad.loopexit.split-lp1061 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit269

_ZNSt6vectorIiSaIiEED2Ev.exit283:                 ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit279
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vh) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit269

_ZNSt6vectorIiSaIiEED2Ev.exit269:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit283, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn456, %_ZNSt6vectorIiSaIiEED2Ev.exit267.thread ], [ %i.vw, %_ZNSt6vectorIiSaIiEED2Ev.exit283 ], [ %lpad.loopexit.split-lp1061, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit269, %bb.z, %bb.g
  %.pn66.pn = phi { ptr, i32 } [ %i.io, %bb.z ], [ %.pn61.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit269 ], [ %i.bl, %bb.g ]
  call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn66.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !194  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !37
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i:        ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.n, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, label %bb.b, !llvm.loop !4

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !192, !range !37, !noundef !38
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !226    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !227
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217
  invoke void @_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btSoftBodyHelpers8writeObjEPKcPK10btSoftBody(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_ofstream", align 8 ; 43 uses
  %3 = alloca %"class.std::map.82", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %0, i32 noundef 16)
          to label %.noexc unwind label %.loopexit.split-lp133.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %2, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c
end_hunk_0
