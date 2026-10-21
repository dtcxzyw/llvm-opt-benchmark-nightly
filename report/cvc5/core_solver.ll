Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/core_solver?download=true
inline.NumInlined: 6559
inline.NumDeleted: 1565
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4cvc58internal6theory7strings10CoreSolver13checkFlatFormERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EEmb:bb.a
  br i1 %i.boj, label %bb.ss, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i1467, !prof !70

bb.ss:                                            ; preds = %bb.sr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.boc)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i1467 unwind label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bok = landingpad { ptr, i32 }
          catch ptr null
  %i.bol = extractvalue { ptr, i32 } %i.bok, 0
  call void @__clang_call_terminate(ptr %i.bol) #28
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i1467: ; preds = %bb.ss, %bb.sr, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i1465
  call void @_ZdlPvm(ptr noundef nonnull %i.bnd, i64 noundef 64) #29
  br label %.noexc1142

.noexc1142:                                       ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i1467, %.thread.i1462
  %.sroa.0.010.i1463 = phi ptr [ %i.bnd, %.thread.i1462 ], [ %i.bng, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i1467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.pre2220 = load ptr, ptr %52, align 8, !tbaa !68, !noalias !618
  br label %bb.su

bb.su:                                            ; preds = %.noexc1142, %bb.sk
  %i.bom = phi ptr [ %.pre2220, %.noexc1142 ], [ %i.bmp, %bb.sk ] ; 2 uses
  %.sroa.06.0.i1139 = phi ptr [ %.sroa.0.010.i1463, %.noexc1142 ], [ %.19.i.i.i.i1133, %bb.sk ]
  %i.bon = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1139, i64 40
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !164
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.boo, i64 %.01091923
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !163
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bom, i64 8
  %i.bos = load i64, ptr %i.bor, align 8, !noalias !618
  %i.bot = trunc i64 %i.bos to i32
  %i.bou = and i32 %i.bot, 1023                   ; 2 uses
  %i.bov = icmp eq i32 %i.bou, 1023
  %i.bow = select i1 %i.bov, i32 -1, i32 %i.bou
  %i.box = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bow)
          to label %.noexc1145 unwind label %bb.tf

.noexc1145:                                       ; preds = %bb.su
  %i.boy = icmp eq i32 %i.box, 2
  %i.boz = zext i1 %i.boy to i32
  %spec.select.i.i1144 = add nsw i32 %i.boq, %i.boz
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bom, i64 24
  %i.bpb = sext i32 %spec.select.i.i1144 to i64
  %i.bpc = getelementptr inbounds [8 x i8], ptr %i.bpa, i64 %i.bpb
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !67, !noalias !618 ; 5 uses
  store ptr %i.bpd, ptr %99, align 8, !tbaa !68, !alias.scope !618
  %i.bpe = load i64, ptr %i.bpd, align 8, !noalias !618 ; 3 uses
  %i.bpf = lshr i64 %i.bpe, 40
  %i.bpg = trunc nuw nsw i64 %i.bpf to i32
  %i.bph = and i32 %i.bpg, 1048575                ; 3 uses
  %i.bpi = icmp samesign ult i32 %i.bph, 1048574
  br i1 %i.bpi, label %bb.sv, label %bb.sw, !prof !133

bb.sv:                                            ; preds = %.noexc1145
  %i.bpj = add nuw nsw i32 %i.bph, 1
  %i.bpk = zext nneg i32 %i.bpj to i64
  %i.bpl = shl nuw nsw i64 %i.bpk, 40
  %i.bpm = and i64 %i.bpe, -1152920405095219201
  %i.bpn = or i64 %i.bpl, %i.bpm
  store i64 %i.bpn, ptr %i.bpd, align 8, !noalias !618
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147

bb.sw:                                            ; preds = %.noexc1145
  %i.bpo = icmp eq i32 %i.bph, 1048574
  br i1 %i.bpo, label %bb.sx, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147, !prof !70

bb.sx:                                            ; preds = %bb.sw
  %i.bpp = or i64 %i.bpe, 1152920405095219200
  store i64 %i.bpp, ptr %i.bpd, align 8, !noalias !618
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bpd)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147 unwind label %bb.tf

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147: ; preds = %bb.sw, %bb.sv, %bb.sx
  invoke void @_ZNK4cvc58internal6theory7strings16InferenceManager16addToExplanationENS0_12NodeTemplateILb1EEES5_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(432) %i.bjl, ptr noundef nonnull align 8 %98, ptr noundef nonnull align 8 %99, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.sy unwind label %bb.tg

bb.sy:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147
  %i.bpq = load ptr, ptr %99, align 8, !tbaa !68  ; 3 uses
  %i.bpr = load i64, ptr %i.bpq, align 8          ; 3 uses
  %i.bps = and i64 %i.bpr, 1152920405095219200
  %.not.i.i1148 = icmp eq i64 %i.bps, 1152920405095219200
  br i1 %.not.i.i1148, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150, label %bb.sz, !prof !70

bb.sz:                                            ; preds = %bb.sy
  %i.bpt = add i64 %i.bpr, 1152920405095219200
  %i.bpu = and i64 %i.bpt, 1152920405095219200    ; 2 uses
  %i.bpv = and i64 %i.bpr, -1152920405095219201
  %i.bpw = or disjoint i64 %i.bpu, %i.bpv
  store i64 %i.bpw, ptr %i.bpq, align 8
  %i.bpx = icmp eq i64 %i.bpu, 0
  br i1 %i.bpx, label %bb.ta, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150, !prof !70

bb.ta:                                            ; preds = %bb.sz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bpq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150 unwind label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bpy = landingpad { ptr, i32 }
          catch ptr null
  %i.bpz = extractvalue { ptr, i32 } %i.bpy, 0
  call void @__clang_call_terminate(ptr %i.bpz) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150: ; preds = %bb.sy, %bb.sz, %bb.ta
  %i.bqa = load ptr, ptr %98, align 8, !tbaa !68  ; 3 uses
  %i.bqb = load i64, ptr %i.bqa, align 8          ; 3 uses
  %i.bqc = and i64 %i.bqb, 1152920405095219200
  %.not.i.i1151 = icmp eq i64 %i.bqc, 1152920405095219200
  br i1 %.not.i.i1151, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1153, label %bb.tc, !prof !70

bb.tc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150
  %i.bqd = add i64 %i.bqb, 1152920405095219200
  %i.bqe = and i64 %i.bqd, 1152920405095219200    ; 2 uses
  %i.bqf = and i64 %i.bqb, -1152920405095219201
  %i.bqg = or disjoint i64 %i.bqe, %i.bqf
  store i64 %i.bqg, ptr %i.bqa, align 8
  %i.bqh = icmp eq i64 %i.bqe, 0
  br i1 %i.bqh, label %bb.td, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1153, !prof !70

bb.td:                                            ; preds = %bb.tc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bqa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1153 unwind label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.bqi = landingpad { ptr, i32 }
          catch ptr null
  %i.bqj = extractvalue { ptr, i32 } %i.bqi, 0
  call void @__clang_call_terminate(ptr %i.bqj) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1153: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1150, %bb.tc, %bb.td
  %i.bqk = add nuw i64 %.01091923, 1              ; 2 uses
  %exitcond2213.not = icmp eq i64 %i.bqk, %.0110
  br i1 %exitcond2213.not, label %.preheader, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1109, !llvm.loop !597

.loopexit.split-lp.loopexit:                      ; preds = %.noexc1327, %.critedge.i310, %bb.eb, %bb.ea, %bb.ag, %bb.ad
  %lpad.loopexit1547 = landingpad { ptr, i32 }
          cleanup
  br label %.body1417

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.wz, %bb.wt, %bb.ws, %bb.tk, %.critedge.i291, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1246
  %.sroa.01499.40.ph.ph = phi ptr [ %.sroa.01499.39, %bb.wt ], [ %.sroa.01499.39, %bb.ws ], [ %.sroa.01499.39, %bb.tk ], [ %i.cf, %.critedge.i291 ], [ %.sroa.01499.39, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1246 ], [ %.sroa.01499.39, %bb.wz ]
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  br label %.body1417

bb.tf:                                            ; preds = %.noexc1468, %.critedge.i1140, %bb.sx, %bb.su
  %i.bql = landingpad { ptr, i32 }
          cleanup
  br label %.body1470

bb.tg:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1147
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #26
  br label %.body1470

.body1470:                                        ; preds = %bb.tf, %bb.so, %bb.tg
  %.pn234 = phi { ptr, i32 } [ %i.bqm, %bb.tg ], [ %i.bql, %bb.tf ], [ %i.bnu, %bb.so ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %98) #26
  br label %.body1417

bb.th:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199
  %i.bqn = load ptr, ptr %i.bi, align 8, !tbaa !150, !nonnull !143, !align !144
  %i.bqo = load ptr, ptr %51, align 8, !tbaa !68  ; 5 uses
  store ptr %i.bqo, ptr %107, align 8, !tbaa !68
  %i.bqp = load i64, ptr %i.bqo, align 8          ; 3 uses
  %i.bqq = lshr i64 %i.bqp, 40
  %i.bqr = trunc nuw nsw i64 %i.bqq to i32
  %i.bqs = and i32 %i.bqr, 1048575                ; 3 uses
  %i.bqt = icmp samesign ult i32 %i.bqs, 1048574
  br i1 %i.bqt, label %bb.ti, label %bb.tj, !prof !133

bb.ti:                                            ; preds = %bb.th
  %i.bqu = add nuw nsw i32 %i.bqs, 1
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = shl nuw nsw i64 %i.bqv, 40
  %i.bqx = and i64 %i.bqp, -1152920405095219201
  %i.bqy = or i64 %i.bqw, %i.bqx
  store i64 %i.bqy, ptr %i.bqo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155

bb.tj:                                            ; preds = %bb.th
  %i.bqz = icmp eq i32 %i.bqs, 1048574
  br i1 %i.bqz, label %bb.tk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155, !prof !70

bb.tk:                                            ; preds = %bb.tj
  %i.bra = or i64 %i.bqp, 1152920405095219200
  store i64 %i.bra, ptr %i.bqo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bqo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.tl:                                            ; preds = %.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199
  %i.brb = phi i1 [ true, %.preheader ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199 ] ; 3 uses
  %or.cond = phi i1 [ false, %.preheader ], [ %i.bjk, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199 ]
  %.val = load ptr, ptr %51, align 8
  %.val1542 = load ptr, ptr %52, align 8
  %i.brc = select i1 %i.brb, ptr %.val, ptr %.val1542 ; 14 uses
  %i.brd = load i64, ptr %i.brc, align 8          ; 3 uses
  %i.bre = lshr i64 %i.brd, 40
  %i.brf = trunc nuw nsw i64 %i.bre to i32
  %i.brg = and i32 %i.brf, 1048575                ; 3 uses
  %i.brh = icmp samesign ult i32 %i.brg, 1048574
  br i1 %i.brh, label %bb.tm, label %bb.tn, !prof !133

bb.tm:                                            ; preds = %bb.tl
  %i.bri = add nuw nsw i32 %i.brg, 1
  %i.brj = zext nneg i32 %i.bri to i64
  %i.brk = shl nuw nsw i64 %i.brj, 40
  %i.brl = and i64 %i.brd, -1152920405095219201
  %i.brm = or i64 %i.brk, %i.brl
  store i64 %i.brm, ptr %i.brc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157

bb.tn:                                            ; preds = %bb.tl
  %i.brn = icmp eq i32 %i.brg, 1048574
  br i1 %i.brn, label %bb.to, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157, !prof !70

bb.to:                                            ; preds = %bb.tn
  %i.bro = or i64 %i.brd, 1152920405095219200
  store i64 %i.bro, ptr %i.brc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.brc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157 unwind label %.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157: ; preds = %bb.tn, %bb.tm, %bb.to
  %or.cond1928 = or i1 %i.bjj, %or.cond
  br i1 %or.cond1928, label %bb.tp, label %bb.tr

bb.tp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157
  br i1 %3, label %.thread, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brc, i64 8 ; 2 uses
  %i.brq = load i64, ptr %i.brp, align 8
  %i.brr = trunc i64 %i.brq to i32
  %i.brs = and i32 %i.brr, 1023                   ; 2 uses
  %i.brt = icmp eq i32 %i.brs, 1023
  %i.bru = select i1 %i.brt, i32 -1, i32 %i.brs
  %i.brv = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bru)
          to label %.thread1536 unwind label %bb.ul

.thread1536:                                      ; preds = %bb.tq
  %i.brw = icmp eq i32 %i.brv, 2
  %i.brx = load i64, ptr %i.brp, align 8
  %i.bry = lshr i64 %i.brx, 32
  %i.brz = and i64 %i.bry, 67108863
  %i.bsa = sext i1 %i.brw to i64
  %i.bsb = add nsw i64 %i.brz, %i.bsa
  %i.bsc = and i64 %i.bsb, 4294967295
  br label %bb.tz

.loopexit.split-lp:                               ; preds = %bb.to, %bb.sf, %bb.si, %.critedge.i1121, %.noexc1454
  %lpad.loopexit.split-lp2982 = landingpad { ptr, i32 }
          cleanup
  br label %.body1417

bb.tr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1157
  %i.bsd = load ptr, ptr %i.bb, align 8, !tbaa !73 ; 3 uses
  %.not10.i.i.i.i1159 = icmp eq ptr %i.bsd, null  ; 2 uses
  br i1 %i.brb, label %bb.ts, label %bb.tv

bb.ts:                                            ; preds = %bb.tr
  br i1 %.not10.i.i.i.i1159, label %.critedge.i1170, label %.lr.ph.i.i.i.i1160

.lr.ph.i.i.i.i1160:                               ; preds = %bb.ts
  %i.bse = load ptr, ptr %51, align 8, !tbaa !68
  %i.bsf = load i64, ptr %i.bse, align 8
  %i.bsg = and i64 %i.bsf, 1099511627775          ; 2 uses
  br label %bb.tt

bb.tt:                                            ; preds = %bb.tt, %.lr.ph.i.i.i.i1160
  %.012.i.i.i.i1161 = phi ptr [ %i.bsd, %.lr.ph.i.i.i.i1160 ], [ %.1.i.i.i.i1166, %bb.tt ] ; 3 uses
  %.0811.i.i.i.i1162 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i1160 ], [ %.19.i.i.i.i1163, %bb.tt ]
  %i.bsh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1161, i64 32
  %i.bsi = load ptr, ptr %i.bsh, align 8, !tbaa !68
  %i.bsj = load i64, ptr %i.bsi, align 8
  %i.bsk = and i64 %i.bsj, 1099511627775
  %i.bsl = icmp samesign ult i64 %i.bsk, %i.bsg   ; 2 uses
  %.19.i.i.i.i1163 = select i1 %i.bsl, ptr %.0811.i.i.i.i1162, ptr %.012.i.i.i.i1161 ; 6 uses
  %.1.in.v.i.i.i.i1164 = select i1 %i.bsl, i64 24, i64 16
  %.1.in.i.i.i.i1165 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1161, i64 %.1.in.v.i.i.i.i1164
  %.1.i.i.i.i1166 = load ptr, ptr %.1.in.i.i.i.i1165, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i.i1167 = icmp eq ptr %.1.i.i.i.i1166, null
  br i1 %.not.i.i.i.i1167, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1168, label %bb.tt, !llvm.loop !5

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1168: ; preds = %bb.tt
  %i.bsm = icmp eq ptr %.19.i.i.i.i1163, %i.bc
  br i1 %i.bsm, label %.critedge.i1170, label %bb.tu

bb.tu:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1168
  %i.bsn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1163, i64 32
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !68
  %i.bsp = load i64, ptr %i.bso, align 8
  %i.bsq = and i64 %i.bsp, 1099511627775
  %i.bsr = icmp samesign ult i64 %i.bsg, %i.bsq
  br i1 %i.bsr, label %.critedge.i1170, label %bb.ty

.critedge.i1170:                                  ; preds = %bb.tu, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1168, %bb.ts
  %.08.lcssa.i.i.i11.i1171 = phi ptr [ %.19.i.i.i.i1163, %bb.tu ], [ %.19.i.i.i.i1163, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1168 ], [ %i.bc, %bb.ts ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %51, ptr %10, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bss = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr %.08.lcssa.i.i.i11.i1171, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc1172 unwind label %bb.ul

.noexc1172:                                       ; preds = %.critedge.i1170
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ty

bb.tv:                                            ; preds = %bb.tr
  br i1 %.not10.i.i.i.i1159, label %.critedge.i1185, label %.lr.ph.i.i.i.i1175

.lr.ph.i.i.i.i1175:                               ; preds = %bb.tv
  %i.bst = load ptr, ptr %52, align 8, !tbaa !68
  %i.bsu = load i64, ptr %i.bst, align 8
  %i.bsv = and i64 %i.bsu, 1099511627775          ; 2 uses
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tw, %.lr.ph.i.i.i.i1175
  %.012.i.i.i.i1176 = phi ptr [ %i.bsd, %.lr.ph.i.i.i.i1175 ], [ %.1.i.i.i.i1181, %bb.tw ] ; 3 uses
  %.0811.i.i.i.i1177 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i1175 ], [ %.19.i.i.i.i1178, %bb.tw ]
  %i.bsw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1176, i64 32
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !68
  %i.bsy = load i64, ptr %i.bsx, align 8
  %i.bsz = and i64 %i.bsy, 1099511627775
  %i.bta = icmp samesign ult i64 %i.bsz, %i.bsv   ; 2 uses
  %.19.i.i.i.i1178 = select i1 %i.bta, ptr %.0811.i.i.i.i1177, ptr %.012.i.i.i.i1176 ; 6 uses
  %.1.in.v.i.i.i.i1179 = select i1 %i.bta, i64 24, i64 16
  %.1.in.i.i.i.i1180 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1176, i64 %.1.in.v.i.i.i.i1179
  %.1.i.i.i.i1181 = load ptr, ptr %.1.in.i.i.i.i1180, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i.i1182 = icmp eq ptr %.1.i.i.i.i1181, null
  br i1 %.not.i.i.i.i1182, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1183, label %bb.tw, !llvm.loop !5

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1183: ; preds = %bb.tw
  %i.btb = icmp eq ptr %.19.i.i.i.i1178, %i.bc
  br i1 %i.btb, label %.critedge.i1185, label %bb.tx

bb.tx:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1183
  %i.btc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1178, i64 32
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !68
  %i.bte = load i64, ptr %i.btd, align 8
  %i.btf = and i64 %i.bte, 1099511627775
  %i.btg = icmp samesign ult i64 %i.bsv, %i.btf
  br i1 %i.btg, label %.critedge.i1185, label %bb.ty

.critedge.i1185:                                  ; preds = %bb.tx, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1183, %bb.tv
  %.08.lcssa.i.i.i11.i1186 = phi ptr [ %.19.i.i.i.i1178, %bb.tx ], [ %.19.i.i.i.i1178, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1183 ], [ %i.bc, %bb.tv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %52, ptr %8, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bth = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr %.08.lcssa.i.i.i11.i1186, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc1187 unwind label %bb.ul

.noexc1187:                                       ; preds = %.critedge.i1185
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %.noexc1187, %bb.tu, %.noexc1172
  %.sroa.06.0.i1169.pn = phi ptr [ %.19.i.i.i.i1163, %bb.tu ], [ %i.bss, %.noexc1172 ], [ %i.bth, %.noexc1187 ], [ %.19.i.i.i.i1178, %bb.tx ]
  %.pn1543.in = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1169.pn, i64 40
  %.pn1543 = load ptr, ptr %.pn1543.in, align 8, !tbaa !164
  %.in = getelementptr inbounds nuw [4 x i8], ptr %.pn1543, i64 %.0110
  %i.bti = load i32, ptr %.in, align 4, !tbaa !163
  %i.btj = sext i32 %i.bti to i64                 ; 2 uses
  %i.btk = add nsw i64 %i.btj, 1
  br i1 %3, label %.thread, label %bb.tz

.thread:                                          ; preds = %bb.tp, %bb.ty
  %i.btl = phi i64 [ %i.btk, %bb.ty ], [ 0, %bb.tp ]
  %i.btm = getelementptr inbounds nuw i8, ptr %i.brc, i64 8 ; 2 uses
  %i.btn = load i64, ptr %i.btm, align 8
  %i.bto = trunc i64 %i.btn to i32
  %i.btp = and i32 %i.bto, 1023                   ; 2 uses
  %i.btq = icmp eq i32 %i.btp, 1023
  %i.btr = select i1 %i.btq, i32 -1, i32 %i.btp
  %i.bts = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.btr)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv.exit1190 unwind label %bb.ul

_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv.exit1190: ; preds = %.thread
  %i.btt = icmp eq i32 %i.bts, 2
  %i.btu = load i64, ptr %i.btm, align 8
  %i.btv = lshr i64 %i.btu, 32
  %i.btw = and i64 %i.btv, 67108863
  %i.btx = sext i1 %i.btt to i64
  %i.bty = add nsw i64 %i.btw, %i.btx
  %i.btz = and i64 %i.bty, 4294967295
  br label %bb.tz

bb.tz:                                            ; preds = %.thread1536, %_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv.exit1190, %bb.ty
  %i.bua = phi i64 [ %i.btl, %_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv.exit1190 ], [ 0, %bb.ty ], [ 0, %.thread1536 ] ; 2 uses
  %i.bub = phi i64 [ %i.btz, %_ZNK4cvc58internal12NodeTemplateILb1EE14getNumChildrenEv.exit1190 ], [ %i.btj, %bb.ty ], [ %i.bsc, %.thread1536 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #26
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %101, ptr noundef nonnull align 8 dereferenceable(8) %51, i1 noundef zeroext false)
          to label %bb.ua unwind label %bb.um

bb.ua:                                            ; preds = %bb.tz
  invoke void @_ZN4cvc58internal6theory7strings4Word11mkEmptyWordENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %100, ptr noundef nonnull align 8 %101)
          to label %bb.ub unwind label %bb.un

bb.ub:                                            ; preds = %bb.ua
  %i.buc = load ptr, ptr %101, align 8, !tbaa !152 ; 3 uses
  %i.bud = load i64, ptr %i.buc, align 8          ; 3 uses
  %i.bue = and i64 %i.bud, 1152920405095219200
  %.not.i.i1191 = icmp eq i64 %i.bue, 1152920405095219200
  br i1 %.not.i.i1191, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1193, label %bb.uc, !prof !70

bb.uc:                                            ; preds = %bb.ub
  %i.buf = add i64 %i.bud, 1152920405095219200
  %i.bug = and i64 %i.buf, 1152920405095219200    ; 2 uses
  %i.buh = and i64 %i.bud, -1152920405095219201
  %i.bui = or disjoint i64 %i.bug, %i.buh
  store i64 %i.bui, ptr %i.buc, align 8
  %i.buj = icmp eq i64 %i.bug, 0
  br i1 %i.buj, label %bb.ud, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1193, !prof !70

bb.ud:                                            ; preds = %bb.uc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.buc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1193 unwind label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.buk = landingpad { ptr, i32 }
          catch ptr null
  %i.bul = extractvalue { ptr, i32 } %i.buk, 0
  call void @__clang_call_terminate(ptr %i.bul) #28
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1193:          ; preds = %bb.ub, %bb.uc, %bb.ud
  %i.bum = icmp slt i64 %i.bua, %i.bub
  br i1 %i.bum, label %.lr.ph1925, label %._crit_edge1926

.lr.ph1925:                                       ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1193
  %i.bun = getelementptr inbounds nuw i8, ptr %i.brc, i64 8 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.brc, i64 24 ; 2 uses
  br label %bb.uo

._crit_edge1926:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218, %_ZN4cvc58internal8TypeNodeD2Ev.exit1193
  %i.bup = load ptr, ptr %100, align 8, !tbaa !68 ; 3 uses
  %i.buq = load i64, ptr %i.bup, align 8          ; 3 uses
  %i.bur = and i64 %i.buq, 1152920405095219200
  %.not.i.i1194 = icmp eq i64 %i.bur, 1152920405095219200
  br i1 %.not.i.i1194, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196, label %bb.uf, !prof !70

bb.uf:                                            ; preds = %._crit_edge1926
  %i.bus = add i64 %i.buq, 1152920405095219200
  %i.but = and i64 %i.bus, 1152920405095219200    ; 2 uses
  %i.buu = and i64 %i.buq, -1152920405095219201
  %i.buv = or disjoint i64 %i.but, %i.buu
  store i64 %i.buv, ptr %i.bup, align 8
  %i.buw = icmp eq i64 %i.but, 0
  br i1 %i.buw, label %bb.ug, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196, !prof !70

bb.ug:                                            ; preds = %bb.uf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bup)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196 unwind label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.bux = landingpad { ptr, i32 }
          catch ptr null
  %i.buy = extractvalue { ptr, i32 } %i.bux, 0
  call void @__clang_call_terminate(ptr %i.buy) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196: ; preds = %._crit_edge1926, %bb.uf, %bb.ug
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  %i.buz = load i64, ptr %i.brc, align 8          ; 3 uses
  %i.bva = and i64 %i.buz, 1152920405095219200
  %.not.i.i1197 = icmp eq i64 %i.bva, 1152920405095219200
  br i1 %.not.i.i1197, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199, label %bb.ui, !prof !70

bb.ui:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196
  %i.bvb = add i64 %i.buz, 1152920405095219200
  %i.bvc = and i64 %i.bvb, 1152920405095219200    ; 2 uses
  %i.bvd = and i64 %i.buz, -1152920405095219201
  %i.bve = or disjoint i64 %i.bvc, %i.bvd
  store i64 %i.bve, ptr %i.brc, align 8
  %i.bvf = icmp eq i64 %i.bvc, 0
  br i1 %i.bvf, label %bb.uj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199, !prof !70

bb.uj:                                            ; preds = %bb.ui
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.brc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199 unwind label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.bvg = landingpad { ptr, i32 }
          catch ptr null
  %i.bvh = extractvalue { ptr, i32 } %i.bvg, 0
  call void @__clang_call_terminate(ptr %i.bvh) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1199: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1196, %bb.ui, %bb.uj
  br i1 %i.brb, label %bb.tl, label %bb.th, !llvm.loop !598

bb.ul:                                            ; preds = %.thread, %.critedge.i1185, %.critedge.i1170, %bb.tq
  %i.bvi = landingpad { ptr, i32 }
          cleanup
  br label %bb.vv

bb.um:                                            ; preds = %bb.tz
  %i.bvj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221

bb.un:                                            ; preds = %bb.ua
  %i.bvk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %101) #26
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221

bb.uo:                                            ; preds = %.lr.ph1925, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218
  %.01924 = phi i64 [ %i.bua, %.lr.ph1925 ], [ %i.bzj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218 ] ; 3 uses
  %i.bvl = load ptr, ptr %i.bd, align 8, !tbaa !153, !nonnull !143, !align !144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.bvm = load i64, ptr %i.bun, align 8, !noalias !619
  %i.bvn = trunc i64 %i.bvm to i32
  %i.bvo = and i32 %i.bvn, 1023                   ; 2 uses
  %i.bvp = icmp eq i32 %i.bvo, 1023
  %i.bvq = select i1 %i.bvp, i32 -1, i32 %i.bvo
  %i.bvr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bvq)
          to label %.noexc1201 unwind label %bb.vk

.noexc1201:                                       ; preds = %bb.uo
  %i.bvs = icmp eq i32 %i.bvr, 2
  %i.bvt = zext i1 %i.bvs to i64
  %spec.select.i.i1200 = add i64 %.01924, %i.bvt
  %sext = shl i64 %spec.select.i.i1200, 32
  %i.bvu = ashr exact i64 %sext, 29
  %i.bvv = getelementptr inbounds i8, ptr %i.buo, i64 %i.bvu
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !67, !noalias !619 ; 5 uses
  store ptr %i.bvw, ptr %103, align 8, !tbaa !68, !alias.scope !619
  %i.bvx = load i64, ptr %i.bvw, align 8, !noalias !619 ; 3 uses
  %i.bvy = lshr i64 %i.bvx, 40
  %i.bvz = trunc nuw nsw i64 %i.bvy to i32
  %i.bwa = and i32 %i.bvz, 1048575                ; 3 uses
  %i.bwb = icmp samesign ult i32 %i.bwa, 1048574
  br i1 %i.bwb, label %bb.up, label %bb.uq, !prof !133

bb.up:                                            ; preds = %.noexc1201
  %i.bwc = add nuw nsw i32 %i.bwa, 1
  %i.bwd = zext nneg i32 %i.bwc to i64
  %i.bwe = shl nuw nsw i64 %i.bwd, 40
  %i.bwf = and i64 %i.bvx, -1152920405095219201
  %i.bwg = or i64 %i.bwe, %i.bwf
  store i64 %i.bwg, ptr %i.bvw, align 8, !noalias !619
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203

bb.uq:                                            ; preds = %.noexc1201
  %i.bwh = icmp eq i32 %i.bwa, 1048574
  br i1 %i.bwh, label %bb.ur, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203, !prof !70

bb.ur:                                            ; preds = %bb.uq
  %i.bwi = or i64 %i.bvx, 1152920405095219200
  store i64 %i.bwi, ptr %i.bvw, align 8, !noalias !619
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bvw)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203 unwind label %bb.vk

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203: ; preds = %bb.uq, %bb.up, %bb.ur
  %i.bwj = load ptr, ptr %103, align 8, !tbaa !68
  store ptr %i.bwj, ptr %102, align 8, !tbaa !156
  %i.bwk = load ptr, ptr %100, align 8, !tbaa !68
  store ptr %i.bwk, ptr %104, align 8, !tbaa !156
  %i.bwl = load ptr, ptr %i.bvl, align 8, !tbaa !72
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 40
  %i.bwn = load ptr, ptr %i.bwm, align 8
  %i.bwo = invoke noundef zeroext i1 %i.bwn(ptr noundef nonnull align 8 dereferenceable(160) %i.bvl, ptr noundef nonnull align 8 %102, ptr noundef nonnull align 8 %104)
          to label %bb.us unwind label %bb.vl

bb.us:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203
  %i.bwp = load ptr, ptr %103, align 8, !tbaa !68 ; 3 uses
  %i.bwq = load i64, ptr %i.bwp, align 8          ; 3 uses
  %i.bwr = and i64 %i.bwq, 1152920405095219200
  %.not.i.i1204 = icmp eq i64 %i.bwr, 1152920405095219200
  br i1 %.not.i.i1204, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206, label %bb.ut, !prof !70

bb.ut:                                            ; preds = %bb.us
  %i.bws = add i64 %i.bwq, 1152920405095219200
  %i.bwt = and i64 %i.bws, 1152920405095219200    ; 2 uses
  %i.bwu = and i64 %i.bwq, -1152920405095219201
  %i.bwv = or disjoint i64 %i.bwt, %i.bwu
  store i64 %i.bwv, ptr %i.bwp, align 8
  %i.bww = icmp eq i64 %i.bwt, 0
  br i1 %i.bww, label %bb.uu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206, !prof !70

bb.uu:                                            ; preds = %bb.ut
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bwp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206 unwind label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.bwx = landingpad { ptr, i32 }
          catch ptr null
  %i.bwy = extractvalue { ptr, i32 } %i.bwx, 0
  call void @__clang_call_terminate(ptr %i.bwy) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206: ; preds = %bb.us, %bb.ut, %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26
  br i1 %i.bwo, label %bb.uw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218

bb.uw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206
  %i.bwz = load ptr, ptr %i.bi, align 8, !tbaa !150, !nonnull !143, !align !144
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.bxa = load i64, ptr %i.bun, align 8, !noalias !620
  %i.bxb = trunc i64 %i.bxa to i32
  %i.bxc = and i32 %i.bxb, 1023                   ; 2 uses
  %i.bxd = icmp eq i32 %i.bxc, 1023
  %i.bxe = select i1 %i.bxd, i32 -1, i32 %i.bxc
  %i.bxf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bxe)
          to label %.noexc1208 unwind label %bb.vn

.noexc1208:                                       ; preds = %bb.uw
  %i.bxg = icmp eq i32 %i.bxf, 2
  %i.bxh = zext i1 %i.bxg to i64
  %spec.select.i.i1207 = add i64 %.01924, %i.bxh
  %sext1544 = shl i64 %spec.select.i.i1207, 32
  %i.bxi = ashr exact i64 %sext1544, 29
  %i.bxj = getelementptr inbounds i8, ptr %i.buo, i64 %i.bxi
  %i.bxk = load ptr, ptr %i.bxj, align 8, !tbaa !67, !noalias !620 ; 5 uses
  store ptr %i.bxk, ptr %105, align 8, !tbaa !68, !alias.scope !620
  %i.bxl = load i64, ptr %i.bxk, align 8, !noalias !620 ; 3 uses
  %i.bxm = lshr i64 %i.bxl, 40
  %i.bxn = trunc nuw nsw i64 %i.bxm to i32
  %i.bxo = and i32 %i.bxn, 1048575                ; 3 uses
  %i.bxp = icmp samesign ult i32 %i.bxo, 1048574
  br i1 %i.bxp, label %bb.ux, label %bb.uy, !prof !133

bb.ux:                                            ; preds = %.noexc1208
  %i.bxq = add nuw nsw i32 %i.bxo, 1
  %i.bxr = zext nneg i32 %i.bxq to i64
  %i.bxs = shl nuw nsw i64 %i.bxr, 40
  %i.bxt = and i64 %i.bxl, -1152920405095219201
  %i.bxu = or i64 %i.bxs, %i.bxt
  store i64 %i.bxu, ptr %i.bxk, align 8, !noalias !620
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210

bb.uy:                                            ; preds = %.noexc1208
  %i.bxv = icmp eq i32 %i.bxo, 1048574
  br i1 %i.bxv, label %bb.uz, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210, !prof !70

bb.uz:                                            ; preds = %bb.uy
  %i.bxw = or i64 %i.bxl, 1152920405095219200
  store i64 %i.bxw, ptr %i.bxk, align 8, !noalias !620
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bxk)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210 unwind label %bb.vn

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210: ; preds = %bb.uy, %bb.ux, %bb.uz
  %i.bxx = load ptr, ptr %100, align 8, !tbaa !68 ; 5 uses
  store ptr %i.bxx, ptr %106, align 8, !tbaa !68
  %i.bxy = load i64, ptr %i.bxx, align 8          ; 3 uses
  %i.bxz = lshr i64 %i.bxy, 40
  %i.bya = trunc nuw nsw i64 %i.bxz to i32
  %i.byb = and i32 %i.bya, 1048575                ; 3 uses
  %i.byc = icmp samesign ult i32 %i.byb, 1048574
  br i1 %i.byc, label %bb.va, label %bb.vb, !prof !133

bb.va:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210
  %i.byd = add nuw nsw i32 %i.byb, 1
  %i.bye = zext nneg i32 %i.byd to i64
  %i.byf = shl nuw nsw i64 %i.bye, 40
  %i.byg = and i64 %i.bxy, -1152920405095219201
  %i.byh = or i64 %i.byf, %i.byg
  store i64 %i.byh, ptr %i.bxx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212

bb.vb:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1210
  %i.byi = icmp eq i32 %i.byb, 1048574
  br i1 %i.byi, label %bb.vc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212, !prof !70

bb.vc:                                            ; preds = %bb.vb
  %i.byj = or i64 %i.bxy, 1152920405095219200
  store i64 %i.byj, ptr %i.bxx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bxx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212 unwind label %bb.vo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212: ; preds = %bb.vb, %bb.va, %bb.vc
  invoke void @_ZNK4cvc58internal6theory7strings16InferenceManager16addToExplanationENS0_12NodeTemplateILb1EEES5_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(432) %i.bwz, ptr noundef nonnull align 8 %105, ptr noundef nonnull align 8 %106, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.vd unwind label %bb.vp

bb.vd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212
  %i.byk = load ptr, ptr %106, align 8, !tbaa !68 ; 3 uses
  %i.byl = load i64, ptr %i.byk, align 8          ; 3 uses
  %i.bym = and i64 %i.byl, 1152920405095219200
  %.not.i.i1213 = icmp eq i64 %i.bym, 1152920405095219200
  br i1 %.not.i.i1213, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215, label %bb.ve, !prof !70

bb.ve:                                            ; preds = %bb.vd
  %i.byn = add i64 %i.byl, 1152920405095219200
  %i.byo = and i64 %i.byn, 1152920405095219200    ; 2 uses
  %i.byp = and i64 %i.byl, -1152920405095219201
  %i.byq = or disjoint i64 %i.byo, %i.byp
  store i64 %i.byq, ptr %i.byk, align 8
  %i.byr = icmp eq i64 %i.byo, 0
  br i1 %i.byr, label %bb.vf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215, !prof !70

bb.vf:                                            ; preds = %bb.ve
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.byk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215 unwind label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bys = landingpad { ptr, i32 }
          catch ptr null
  %i.byt = extractvalue { ptr, i32 } %i.bys, 0
  call void @__clang_call_terminate(ptr %i.byt) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215: ; preds = %bb.vd, %bb.ve, %bb.vf
  %i.byu = load ptr, ptr %105, align 8, !tbaa !68 ; 3 uses
  %i.byv = load i64, ptr %i.byu, align 8          ; 3 uses
  %i.byw = and i64 %i.byv, 1152920405095219200
  %.not.i.i1216 = icmp eq i64 %i.byw, 1152920405095219200
  br i1 %.not.i.i1216, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218, label %bb.vh, !prof !70

bb.vh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215
  %i.byx = add i64 %i.byv, 1152920405095219200
  %i.byy = and i64 %i.byx, 1152920405095219200    ; 2 uses
  %i.byz = and i64 %i.byv, -1152920405095219201
  %i.bza = or disjoint i64 %i.byy, %i.byz
  store i64 %i.bza, ptr %i.byu, align 8
  %i.bzb = icmp eq i64 %i.byy, 0
  br i1 %i.bzb, label %bb.vi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218, !prof !70

bb.vi:                                            ; preds = %bb.vh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.byu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218 unwind label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.bzc = landingpad { ptr, i32 }
          catch ptr null
  %i.bzd = extractvalue { ptr, i32 } %i.bzc, 0
  call void @__clang_call_terminate(ptr %i.bzd) #28
  unreachable

bb.vk:                                            ; preds = %bb.ur, %bb.uo
  %i.bze = landingpad { ptr, i32 }
          cleanup
  br label %bb.vm

bb.vl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1203
  %i.bzf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %103) #26
  br label %bb.vm

bb.vm:                                            ; preds = %bb.vl, %bb.vk
  %.pn225 = phi { ptr, i32 } [ %i.bzf, %bb.vl ], [ %i.bze, %bb.vk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26
  br label %bb.vr

bb.vn:                                            ; preds = %bb.uz, %bb.uw
  %i.bzg = landingpad { ptr, i32 }
          cleanup
  br label %bb.vr

bb.vo:                                            ; preds = %bb.vc
  %i.bzh = landingpad { ptr, i32 }
          cleanup
  br label %bb.vq

bb.vp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1212
  %i.bzi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %106) #26
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %.pn227 = phi { ptr, i32 } [ %i.bzi, %bb.vp ], [ %i.bzh, %bb.vo ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #26
  br label %bb.vr

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1218: ; preds = %bb.vi, %bb.vh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1206
  %i.bzj = add nsw i64 %.01924, 1                 ; 2 uses
  %exitcond2214.not = icmp eq i64 %i.bzj, %i.bub
  br i1 %exitcond2214.not, label %._crit_edge1926, label %bb.uo, !llvm.loop !603

bb.vr:                                            ; preds = %bb.vq, %bb.vn, %bb.vm
  %.pn227.pn = phi { ptr, i32 } [ %.pn227, %bb.vq ], [ %i.bzg, %bb.vn ], [ %.pn225, %bb.vm ] ; 3 uses
  %i.bzk = load ptr, ptr %100, align 8, !tbaa !68 ; 3 uses
  %i.bzl = load i64, ptr %i.bzk, align 8          ; 3 uses
  %i.bzm = and i64 %i.bzl, 1152920405095219200
  %.not.i.i1219 = icmp eq i64 %i.bzm, 1152920405095219200
  br i1 %.not.i.i1219, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221, label %bb.vs, !prof !70

bb.vs:                                            ; preds = %bb.vr
  %i.bzn = add i64 %i.bzl, 1152920405095219200
  %i.bzo = and i64 %i.bzn, 1152920405095219200    ; 2 uses
  %i.bzp = and i64 %i.bzl, -1152920405095219201
  %i.bzq = or disjoint i64 %i.bzo, %i.bzp
  store i64 %i.bzq, ptr %i.bzk, align 8
  %i.bzr = icmp eq i64 %i.bzo, 0
  br i1 %i.bzr, label %bb.vt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221, !prof !70

bb.vt:                                            ; preds = %bb.vs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bzk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221 unwind label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.bzs = landingpad { ptr, i32 }
          catch ptr null
  %i.bzt = extractvalue { ptr, i32 } %i.bzs, 0
  call void @__clang_call_terminate(ptr %i.bzt) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221: ; preds = %bb.vt, %bb.vs, %bb.vr, %bb.un, %bb.um
  %.pn227.pn.pn = phi { ptr, i32 } [ %i.bvj, %bb.um ], [ %i.bvk, %bb.un ], [ %.pn227.pn, %bb.vr ], [ %.pn227.pn, %bb.vs ], [ %.pn227.pn, %bb.vt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  br label %bb.vv

bb.vv:                                            ; preds = %bb.ul, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221
  %.pn227.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bvi, %bb.ul ], [ %.pn227.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1221 ] ; 3 uses
  %i.bzu = load i64, ptr %i.brc, align 8          ; 3 uses
  %i.bzv = and i64 %i.bzu, 1152920405095219200
  %.not.i.i1222 = icmp eq i64 %i.bzv, 1152920405095219200
  br i1 %.not.i.i1222, label %.body1417, label %bb.vw, !prof !70

bb.vw:                                            ; preds = %bb.vv
  %i.bzw = add i64 %i.bzu, 1152920405095219200
  %i.bzx = and i64 %i.bzw, 1152920405095219200    ; 2 uses
  %i.bzy = and i64 %i.bzu, -1152920405095219201
  %i.bzz = or disjoint i64 %i.bzx, %i.bzy
  store i64 %i.bzz, ptr %i.brc, align 8
  %i.caa = icmp eq i64 %i.bzx, 0
  br i1 %i.caa, label %bb.vx, label %.body1417, !prof !70

bb.vx:                                            ; preds = %bb.vw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.brc)
          to label %.body1417 unwind label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.cab = landingpad { ptr, i32 }
          catch ptr null
  %i.cac = extractvalue { ptr, i32 } %i.cab, 0
  call void @__clang_call_terminate(ptr %i.cac) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155: ; preds = %bb.tj, %bb.ti, %bb.tk
  %i.cad = load ptr, ptr %52, align 8, !tbaa !68  ; 5 uses
  store ptr %i.cad, ptr %108, align 8, !tbaa !68
  %i.cae = load i64, ptr %i.cad, align 8          ; 3 uses
  %i.caf = lshr i64 %i.cae, 40
  %i.cag = trunc nuw nsw i64 %i.caf to i32
  %i.cah = and i32 %i.cag, 1048575                ; 3 uses
  %i.cai = icmp samesign ult i32 %i.cah, 1048574
  br i1 %i.cai, label %bb.vz, label %bb.wa, !prof !133

bb.vz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155
  %i.caj = add nuw nsw i32 %i.cah, 1
  %i.cak = zext nneg i32 %i.caj to i64
  %i.cal = shl nuw nsw i64 %i.cak, 40
  %i.cam = and i64 %i.cae, -1152920405095219201
  %i.can = or i64 %i.cal, %i.cam
  store i64 %i.can, ptr %i.cad, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226

bb.wa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1155
  %i.cao = icmp eq i32 %i.cah, 1048574
  br i1 %i.cao, label %bb.wb, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226, !prof !70

bb.wb:                                            ; preds = %bb.wa
  %i.cap = or i64 %i.cae, 1152920405095219200
  store i64 %i.cap, ptr %i.cad, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cad)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226 unwind label %bb.wu

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226: ; preds = %bb.wa, %bb.vz, %bb.wb
  invoke void @_ZNK4cvc58internal6theory7strings16InferenceManager16addToExplanationENS0_12NodeTemplateILb1EEES5_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(432) %i.bqn, ptr noundef nonnull align 8 %107, ptr noundef nonnull align 8 %108, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.wc unwind label %bb.wv

bb.wc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226
  %i.caq = load ptr, ptr %108, align 8, !tbaa !68 ; 3 uses
  %i.car = load i64, ptr %i.caq, align 8          ; 3 uses
  %i.cas = and i64 %i.car, 1152920405095219200
  %.not.i.i1227 = icmp eq i64 %i.cas, 1152920405095219200
  br i1 %.not.i.i1227, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229, label %bb.wd, !prof !70

bb.wd:                                            ; preds = %bb.wc
  %i.cat = add i64 %i.car, 1152920405095219200
  %i.cau = and i64 %i.cat, 1152920405095219200    ; 2 uses
  %i.cav = and i64 %i.car, -1152920405095219201
  %i.caw = or disjoint i64 %i.cau, %i.cav
  store i64 %i.caw, ptr %i.caq, align 8
  %i.cax = icmp eq i64 %i.cau, 0
  br i1 %i.cax, label %bb.we, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229, !prof !70

bb.we:                                            ; preds = %bb.wd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.caq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229 unwind label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.cay = landingpad { ptr, i32 }
          catch ptr null
  %i.caz = extractvalue { ptr, i32 } %i.cay, 0
  call void @__clang_call_terminate(ptr %i.caz) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229: ; preds = %bb.wc, %bb.wd, %bb.we
  %i.cba = load ptr, ptr %107, align 8, !tbaa !68 ; 3 uses
  %i.cbb = load i64, ptr %i.cba, align 8          ; 3 uses
  %i.cbc = and i64 %i.cbb, 1152920405095219200
  %.not.i.i1230 = icmp eq i64 %i.cbc, 1152920405095219200
  br i1 %.not.i.i1230, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232, label %bb.wg, !prof !70

bb.wg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229
  %i.cbd = add i64 %i.cbb, 1152920405095219200
  %i.cbe = and i64 %i.cbd, 1152920405095219200    ; 2 uses
  %i.cbf = and i64 %i.cbb, -1152920405095219201
  %i.cbg = or disjoint i64 %i.cbe, %i.cbf
  store i64 %i.cbg, ptr %i.cba, align 8
  %i.cbh = icmp eq i64 %i.cbe, 0
  br i1 %i.cbh, label %bb.wh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232, !prof !70

bb.wh:                                            ; preds = %bb.wg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232 unwind label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.cbi = landingpad { ptr, i32 }
          catch ptr null
  %i.cbj = extractvalue { ptr, i32 } %i.cbi, 0
  call void @__clang_call_terminate(ptr %i.cbj) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1229, %bb.wg, %bb.wh
  %i.cbk = load ptr, ptr %53, align 8, !tbaa !68
  %i.cbl = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.cbm = icmp eq i8 %i.cbl, 0
  br i1 %i.cbm, label %bb.wj, label %bb.wn, !prof !66

bb.wj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232
  %i.cbn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  %.not.i.i1233 = icmp eq i32 %i.cbn, 0
  br i1 %.not.i.i1233, label %bb.wn, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %i.cbo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.wl unwind label %bb.wm     ; 3 uses

bb.wl:                                            ; preds = %bb.wk
  store i64 1152920405095219200, ptr %i.cbo, align 8
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbp, i8 0, i64 16, i1 false)
  store ptr %i.cbo, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !67
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %bb.wn

bb.wm:                                            ; preds = %bb.wk
  %i.cbq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %.body1417

bb.wn:                                            ; preds = %bb.wl, %bb.wj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1232
  %i.cbr = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !67
  %i.cbs = icmp eq ptr %i.cbk, %i.cbr
  br i1 %i.cbs, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit1241, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.cbt = load ptr, ptr %i.bx, align 8, !tbaa !75 ; 3 uses
  %i.cbu = load ptr, ptr %i.by, align 8, !tbaa !77
  %.not.i1237 = icmp eq ptr %i.cbt, %i.cbu
  br i1 %.not.i1237, label %bb.wt, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cbv = load ptr, ptr %53, align 8, !tbaa !68  ; 5 uses
  store ptr %i.cbv, ptr %i.cbt, align 8, !tbaa !68
  %i.cbw = load i64, ptr %i.cbv, align 8          ; 3 uses
  %i.cbx = lshr i64 %i.cbw, 40
  %i.cby = trunc nuw nsw i64 %i.cbx to i32
  %i.cbz = and i32 %i.cby, 1048575                ; 3 uses
  %i.cca = icmp samesign ult i32 %i.cbz, 1048574
  br i1 %i.cca, label %bb.wq, label %bb.wr, !prof !133

bb.wq:                                            ; preds = %bb.wp
  %i.ccb = add nuw nsw i32 %i.cbz, 1
  %i.ccc = zext nneg i32 %i.ccb to i64
  %i.ccd = shl nuw nsw i64 %i.ccc, 40
  %i.cce = and i64 %i.cbw, -1152920405095219201
  %i.ccf = or i64 %i.ccd, %i.cce
  store i64 %i.ccf, ptr %i.cbv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i1238

bb.wr:                                            ; preds = %bb.wp
  %i.ccg = icmp eq i32 %i.cbz, 1048574
  br i1 %i.ccg, label %bb.ws, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i1238, !prof !70

bb.ws:                                            ; preds = %bb.wr
  %i.cch = or i64 %i.cbw, 1152920405095219200
  store i64 %i.cch, ptr %i.cbv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cbv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i1238 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i1238: ; preds = %bb.ws, %bb.wr, %bb.wq
  %i.cci = load ptr, ptr %i.bx, align 8, !tbaa !75
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 8
  store ptr %i.ccj, ptr %i.bx, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit1241

bb.wt:                                            ; preds = %bb.wo
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr %i.cbt, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit1241 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.wu:                                            ; preds = %bb.wb
  %i.cck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ww

bb.wv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1226
  %i.ccl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #26
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wv, %bb.wu
  %.pn223 = phi { ptr, i32 } [ %i.ccl, %bb.wv ], [ %i.cck, %bb.wu ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #26
  br label %.body1417

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit1241: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i1238, %bb.wt, %bb.wn
  %i.ccm = load ptr, ptr %i.bi, align 8, !tbaa !150, !nonnull !143, !align !144
  store ptr %.sroa.01499.39, ptr %109, align 8, !tbaa !68
  %i.ccn = load i64, ptr %.sroa.01499.39, align 8 ; 3 uses
  %i.cco = lshr i64 %i.ccn, 40
  %i.ccp = trunc nuw nsw i64 %i.cco to i32
  %i.ccq = and i32 %i.ccp, 1048575                ; 3 uses
  %i.ccr = icmp samesign ult i32 %i.ccq, 1048574
  br i1 %i.ccr, label %bb.wx, label %bb.wy, !prof !133
end_hunk_0
