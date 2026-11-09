Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector11EdgeDrawingERNS_3MatERNS1_10EdgeChainsE:bb.a
  %i.agw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.agt, i64 noundef %i.agv)
          to label %_ZNSolsEj.exit1152 unwind label %bb.fk ; 2 uses

_ZNSolsEj.exit1152:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1151
  %i.agx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agw, ptr noundef nonnull @.str.16, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1153 unwind label %bb.fk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1153: ; preds = %_ZNSolsEj.exit1152
  %i.agy = zext nneg i32 %i.i to i64
  %i.agz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.agw, i64 noundef %i.agy)
          to label %_ZNSolsEj.exit1154 unwind label %bb.fk ; 4 uses

_ZNSolsEj.exit1154:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1153
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !60
  %i.ahb = getelementptr i8, ptr %i.aha, i64 -24
  %i.ahc = load i64, ptr %i.ahb, align 8
  %i.ahd = getelementptr inbounds i8, ptr %i.agz, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 240
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !135 ; 6 uses
  %.not.i.i.i1182 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i1182, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183: ; preds = %_ZNSolsEj.exit1154
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 56
  %i.ahh = load i8, ptr %i.ahg, align 8, !tbaa !141
  %.not.i1.i.i1184 = icmp eq i8 %i.ahh, 0
  br i1 %.not.i1.i.i1184, label %bb.ew, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahf)
          to label %.noexc1188 unwind label %bb.fk

.noexc1188:                                       ; preds = %bb.ew
  %i.ahi = load ptr, ptr %i.ahf, align 8, !tbaa !60
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 48
  %i.ahk = load ptr, ptr %i.ahj, align 8
  %i.ahl = invoke noundef signext i8 %i.ahk(ptr noundef nonnull align 8 dereferenceable(570) %i.ahf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke unwind label %bb.fk, !inline_history !11

bb.ex:                                            ; preds = %bb.eu
  %i.ahm = icmp ne i32 %.0834.lcssa1549, 0
  %i.ahn = icmp ne i32 %.0829.lcssa1550, 0
  %or.cond103 = select i1 %i.ahm, i1 %i.ahn, i1 false
  br i1 %or.cond103, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156 unwind label %bb.fk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156: ; preds = %bb.ey
  %i.ahp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !60
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 240
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !135 ; 6 uses
  %.not.i.i.i1193 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i1193, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156, %_ZNSolsEj.exit1154, %_ZNSolsEj.exit1147, %_ZNSolsEj.exit1143
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.cont unwind label %bb.fk

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1156
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 56
  %i.ahw = load i8, ptr %i.ahv, align 8, !tbaa !141
  %.not.i1.i.i1195 = icmp eq i8 %i.ahw, 0
  br i1 %.not.i1.i.i1195, label %bb.ez, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahu)
          to label %.noexc1199 unwind label %bb.fk

.noexc1199:                                       ; preds = %bb.ez
  %i.ahx = load ptr, ptr %i.ahu, align 8, !tbaa !60
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 48
  %i.ahz = load ptr, ptr %i.ahy, align 8
  %i.aia = invoke noundef signext i8 %i.ahz(ptr noundef nonnull align 8 dereferenceable(570) %i.ahu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke unwind label %bb.fk, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1172, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink1636 = phi ptr [ %i.ahf, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183 ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1172 ], [ %i.ia, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.ahu, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194 ]
  %.ph1633 = phi ptr [ %i.agz, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1183 ], [ %i.agb, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1172 ], [ %i.hu, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ @_ZSt4cout, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1194 ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.sink1636, i64 67
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split, %.noexc1199, %.noexc1188, %.noexc1177, %.noexc1167
  %i.aid = phi ptr [ %i.agb, %.noexc1177 ], [ %i.agz, %.noexc1188 ], [ @_ZSt4cout, %.noexc1199 ], [ %i.hu, %.noexc1167 ], [ %.ph1633, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split ]
  %i.aie = phi i8 [ %i.agn, %.noexc1177 ], [ %i.ahl, %.noexc1188 ], [ %i.aia, %.noexc1199 ], [ %i.ig, %.noexc1167 ], [ %i.aic, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke.sink.split ]
  %i.aif = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aid, i8 noundef signext %i.aie)
          to label %.noexc1201.invoke unwind label %bb.fk

.noexc1201.invoke:                                ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke
  %i.aig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aif)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.fk ; 0 uses

bb.fa:                                            ; preds = %bb.ex
  %i.aih = add nuw nsw i32 %.0829.lcssa1550, %.0834.lcssa1549
  %i.aii = zext nneg i32 %i.aih to i64            ; 8 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !238 ; 2 uses
  %i.ail = load ptr, ptr %2, align 8, !tbaa !196  ; 2 uses
  %i.aim = ptrtoint ptr %i.aik to i64
  %i.ain = ptrtoint ptr %i.ail to i64
  %i.aio = sub i64 %i.aim, %i.ain
  %i.aip = ashr exact i64 %i.aio, 2               ; 3 uses
  %i.aiq = icmp ult i64 %i.aip, %i.aii
  br i1 %i.aiq, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.air = sub nuw nsw i64 %i.aii, %i.aip
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.air)
          to label %_ZNSt6vectorIjSaIjEE6resizeEm.exit unwind label %bb.fk

bb.fc:                                            ; preds = %bb.fa
  %i.ais = icmp ugt i64 %i.aip, %i.aii
  br i1 %i.ais, label %bb.fd, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.fd:                                            ; preds = %bb.fc
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.aii ; 2 uses
  %.not.i.i = icmp eq ptr %i.aik, %i.ait
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.fd
  store ptr %i.ait, ptr %i.aij, align 8, !tbaa !238
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.fd, %bb.fc, %bb.fb
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !238 ; 2 uses
  %i.aix = load ptr, ptr %i.aiu, align 8, !tbaa !196 ; 2 uses
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = ashr exact i64 %i.aja, 2               ; 3 uses
  %i.ajc = icmp ult i64 %i.ajb, %i.aii
  br i1 %i.ajc, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.ajd = sub nuw nsw i64 %i.aii, %i.ajb
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aiu, i64 noundef %i.ajd)
          to label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161 unwind label %bb.fk

bb.ff:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.aje = icmp ugt i64 %i.ajb, %i.aii
  br i1 %i.aje, label %bb.fg, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161

bb.fg:                                            ; preds = %bb.ff
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.aii ; 2 uses
  %.not.i.i1158 = icmp eq ptr %i.aiw, %i.ajf
  br i1 %.not.i.i1158, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1159

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1159:    ; preds = %bb.fg
  store ptr %i.ajf, ptr %i.aiv, align 8, !tbaa !238
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161

_ZNSt6vectorIjSaIjEE6resizeEm.exit1161:           ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1159, %bb.fg, %bb.ff, %bb.fe
  %i.ajg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ajh = add nuw nsw i32 %.0827.lcssa1551, 1
  %i.aji = zext nneg i32 %i.ajh to i64            ; 4 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !238 ; 2 uses
  %i.ajl = load ptr, ptr %i.ajg, align 8, !tbaa !196 ; 5 uses
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = ptrtoint ptr %i.ajl to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = ashr exact i64 %i.ajo, 2               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, %i.aji
  br i1 %i.ajq, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161
  %i.ajr = sub nuw nsw i64 %i.aji, %i.ajp
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, i64 noundef %i.ajr)
          to label %._ZNSt6vectorIjSaIjEE6resizeEm.exit1165_crit_edge unwind label %bb.fk

._ZNSt6vectorIjSaIjEE6resizeEm.exit1165_crit_edge: ; preds = %bb.fh
  %.pre1495 = load ptr, ptr %i.ajg, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165

bb.fi:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit1161
  %i.ajs = icmp ugt i64 %i.ajp, %i.aji
  br i1 %i.ajs, label %bb.fj, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165

bb.fj:                                            ; preds = %bb.fi
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.aji ; 2 uses
  %.not.i.i1162 = icmp eq ptr %i.ajk, %i.ajt
  br i1 %.not.i.i1162, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1163

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1163:    ; preds = %bb.fj
  store ptr %i.ajt, ptr %i.ajj, align 8, !tbaa !238
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165

_ZNSt6vectorIjSaIjEE6resizeEm.exit1165:           ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit1165_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1163, %bb.fj, %bb.fi
  %i.aju = phi ptr [ %.pre1495, %._ZNSt6vectorIjSaIjEE6resizeEm.exit1165_crit_edge ], [ %i.ajl, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i1163 ], [ %i.ajl, %bb.fj ], [ %i.ajl, %bb.fi ] ; 2 uses
  %i.ajv = load ptr, ptr %2, align 8, !tbaa !186  ; 9 uses
  %23 = ptrtoaddr ptr %i.ajv to i64               ; 3 uses
  %i.ajw = load ptr, ptr %i.aiu, align 8, !tbaa !186 ; 9 uses
  %24 = ptrtoaddr ptr %i.ajw to i64               ; 2 uses
  %.not1470 = icmp eq i32 %.0827.lcssa1551, 0
  br i1 %.not1470, label %._crit_edge1466, label %.lr.ph1465

.lr.ph1465:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165
  %i.ajx = load ptr, ptr %i.iw, align 8, !tbaa !229 ; 2 uses
  %i.ajy = load ptr, ptr %i.ja, align 8, !tbaa !230 ; 2 uses
  %invariant.op.a = add i64 %24, -4
  %i.ajz = sub i64 %23, %24
  %diff.check1670 = icmp ugt i64 %i.ajz, -32
  br label %bb.fl

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge1454
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge1454 ], [ %i.ant, %middle.block ], [ %.lcssa1737.unr, %scalar.ph.prol.loopexit ], [ %i.apg, %scalar.ph ] ; 2 uses
  %exitcond1488.not = icmp eq i64 %indvars.iv.next1483, %i.ago
  br i1 %exitcond1488.not, label %._crit_edge1466, label %bb.fl, !llvm.loop !366

._crit_edge1466:                                  ; preds = %.loopexit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165
  %.0754.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165 ], [ %.2.lcssa, %.loopexit ]
  %i.aka = zext nneg i32 %.0827.lcssa1551 to i64
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.aka
  store i32 %.0754.lcssa, ptr %i.akb, align 4, !tbaa !24
  %i.akc = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %.0827.lcssa1551, ptr %i.akc, align 8, !tbaa !240
  br label %_ZNSolsEPFRSoS_E.exit

bb.fk:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke, %.invoke, %.noexc1201.invoke, %.noexc1199, %bb.ez, %.noexc1188, %bb.ew, %.noexc1177, %bb.et, %.noexc1167, %bb.at, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1153, %_ZNSolsEj.exit1152, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1151, %_ZNSolsEj.exit1150, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1149, %bb.ev, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1146, %_ZNSolsEj.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1144, %bb.es, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1142, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.as
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %.lr.ph1465, %.loopexit
  %indvars.iv1482 = phi i64 [ 0, %.lr.ph1465 ], [ %indvars.iv.next1483, %.loopexit ] ; 4 uses
  %.07541462 = phi i32 [ 0, %.lr.ph1465 ], [ %.2.lcssa, %.loopexit ] ; 9 uses
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 1 ; 4 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %indvars.iv1482
  store i32 %.07541462, ptr %i.ake, align 4, !tbaa !24
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %indvars.iv1482
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !24 ; 4 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %indvars.iv.next1483
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !24 ; 4 uses
  %.07551448 = add i32 %i.aki, -1                 ; 9 uses
  %.not9771449 = icmp slt i32 %.07551448, %i.akg
  br i1 %.not9771449, label %._crit_edge1454, label %.lr.ph1453

.lr.ph1453:                                       ; preds = %bb.fl
  %i.akj = load ptr, ptr %i.io, align 8, !tbaa !223 ; 4 uses
  %i.akk = load ptr, ptr %i.iq, align 8, !tbaa !224 ; 4 uses
  %i.akl = add i32 %i.akg, -1
  %i.akm = add i32 %i.aki, -2                     ; 2 uses
  %i.akn = call i32 @llvm.smin.i32(i32 %i.akl, i32 %i.akm) ; 2 uses
  %i.ako = xor i32 %i.akn, -1
  %i.akp = add i32 %i.aki, %i.ako                 ; 3 uses
  %min.iters.check1707 = icmp ult i32 %i.akp, 32
  br i1 %min.iters.check1707, label %scalar.ph1706.preheader, label %vector.scevcheck1676

vector.scevcheck1676:                             ; preds = %.lr.ph1453
  %i.akq = add i32 %i.aki, -2                     ; 2 uses
  %i.akr = add i32 %i.akg, -1
  %smin = call i32 @llvm.smin.i32(i32 %i.akr, i32 %i.akq)
  %i.aks = sub i32 %i.akq, %smin                  ; 2 uses
  %i.akt = xor i32 %.07541462, -1
  %i.aku = icmp ugt i32 %i.aks, %i.akt
  %i.akv = sub i32 %.07551448, %i.aks
  %i.akw = icmp sgt i32 %i.akv, %.07551448
  %i.akx = or i1 %i.aku, %i.akw
  br i1 %i.akx, label %scalar.ph1706.preheader, label %vector.memcheck1708

vector.memcheck1708:                              ; preds = %vector.scevcheck1676
  %i.aky = zext i32 %.07541462 to i64
  %i.akz = shl nuw nsw i64 %i.aky, 2              ; 3 uses
  %i.ala = getelementptr i8, ptr %i.ajv, i64 %i.akz ; 3 uses
  %i.alb = sub i32 %i.akm, %i.akn
  %i.alc = zext i32 %i.alb to i64
  %i.ald = shl nuw nsw i64 %i.alc, 2              ; 2 uses
  %i.ale = add nuw nsw i64 %i.akz, %i.ald
  %i.alf = add nuw nsw i64 %i.ale, 4              ; 2 uses
  %i.alg = getelementptr i8, ptr %i.ajv, i64 %i.alf ; 3 uses
  %i.alh = getelementptr i8, ptr %i.ajw, i64 %i.akz ; 3 uses
  %i.ali = getelementptr i8, ptr %i.ajw, i64 %i.alf ; 3 uses
  %i.alj = sext i32 %.07551448 to i64
  %i.alk = shl nsw i64 %i.alj, 2                  ; 2 uses
  %i.all = sub nsw i64 %i.alk, %i.ald             ; 2 uses
  %i.alm = getelementptr i8, ptr %i.akj, i64 %i.all ; 2 uses
  %i.aln = add nsw i64 %i.alk, 4                  ; 2 uses
  %i.alo = getelementptr i8, ptr %i.akj, i64 %i.aln ; 2 uses
  %i.alp = getelementptr i8, ptr %i.akk, i64 %i.all ; 2 uses
  %i.alq = getelementptr i8, ptr %i.akk, i64 %i.aln ; 2 uses
  %bound0 = icmp ult ptr %i.ala, %i.ali
  %bound1 = icmp ult ptr %i.alh, %i.alg
  %found.conflict = and i1 %bound0, %bound1
  %bound01709 = icmp ult ptr %i.ala, %i.alo
  %bound11710 = icmp ult ptr %i.alm, %i.alg
  %found.conflict1711 = and i1 %bound01709, %bound11710
  %conflict.rdx1712 = or i1 %found.conflict, %found.conflict1711
  %bound01713 = icmp ult ptr %i.ala, %i.alq
  %bound11714 = icmp ult ptr %i.alp, %i.alg
  %found.conflict1715 = and i1 %bound01713, %bound11714
  %conflict.rdx1716 = or i1 %conflict.rdx1712, %found.conflict1715
  %bound01717 = icmp ult ptr %i.alh, %i.alo
  %bound11718 = icmp ult ptr %i.alm, %i.ali
  %found.conflict1719 = and i1 %bound01717, %bound11718
  %conflict.rdx1720 = or i1 %conflict.rdx1716, %found.conflict1719
  %bound01721 = icmp ult ptr %i.alh, %i.alq
  %bound11722 = icmp ult ptr %i.alp, %i.ali
  %found.conflict1723 = and i1 %bound01721, %bound11722
  %conflict.rdx1724 = or i1 %conflict.rdx1720, %found.conflict1723
  br i1 %conflict.rdx1724, label %scalar.ph1706.preheader, label %vector.ph1725

vector.ph1725:                                    ; preds = %vector.memcheck1708
  %n.vec1726 = and i32 %i.akp, -4                 ; 4 uses
  %i.alr = sub i32 %.07551448, %n.vec1726
  %i.als = add i32 %.07541462, %n.vec1726         ; 2 uses
  br label %vector.body1727

vector.body1727:                                  ; preds = %vector.body1727, %vector.ph1725
  %index1728 = phi i32 [ 0, %vector.ph1725 ], [ %index.next1732, %vector.body1727 ] ; 3 uses
  %i.alt = sub i32 %.07551448, %index1728
  %i.alu = add i32 %.07541462, %index1728
  %i.alv = sext i32 %i.alt to i64                 ; 2 uses
  %i.alw = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %i.alv
  %i.alx = getelementptr inbounds i8, ptr %i.alw, i64 -12
  %wide.load1729 = load <4 x i32>, ptr %i.alx, align 4, !tbaa !24, !alias.scope !384
  %reverse = shufflevector <4 x i32> %wide.load1729, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aly = zext i32 %i.alu to i64                 ; 2 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aly
  store <4 x i32> %reverse, ptr %i.alz, align 4, !tbaa !24, !alias.scope !385, !noalias !386
  %i.ama = getelementptr inbounds [4 x i8], ptr %i.akk, i64 %i.alv
  %i.amb = getelementptr inbounds i8, ptr %i.ama, i64 -12
  %wide.load1730 = load <4 x i32>, ptr %i.amb, align 4, !tbaa !24, !alias.scope !387
  %reverse1731 = shufflevector <4 x i32> %wide.load1730, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.aly
  store <4 x i32> %reverse1731, ptr %i.amc, align 4, !tbaa !24, !alias.scope !388, !noalias !389
  %index.next1732 = add nuw i32 %index1728, 4     ; 2 uses
  %i.amd = icmp eq i32 %index.next1732, %n.vec1726
  br i1 %i.amd, label %middle.block1733, label %vector.body1727, !llvm.loop !372

middle.block1733:                                 ; preds = %vector.body1727
  %cmp.n1734 = icmp eq i32 %i.akp, %n.vec1726
  br i1 %cmp.n1734, label %._crit_edge1454, label %scalar.ph1706.preheader

scalar.ph1706.preheader:                          ; preds = %vector.memcheck1708, %vector.scevcheck1676, %.lr.ph1453, %middle.block1733
  %.07551451.ph = phi i32 [ %.07551448, %vector.memcheck1708 ], [ %.07551448, %vector.scevcheck1676 ], [ %.07551448, %.lr.ph1453 ], [ %i.alr, %middle.block1733 ]
  %.11450.ph = phi i32 [ %.07541462, %vector.memcheck1708 ], [ %.07541462, %vector.scevcheck1676 ], [ %.07541462, %.lr.ph1453 ], [ %i.als, %middle.block1733 ]
  br label %scalar.ph1706

scalar.ph1706:                                    ; preds = %scalar.ph1706.preheader, %scalar.ph1706
  %.07551451 = phi i32 [ %.0755, %scalar.ph1706 ], [ %.07551451.ph, %scalar.ph1706.preheader ] ; 2 uses
  %.11450 = phi i32 [ %i.aml, %scalar.ph1706 ], [ %.11450.ph, %scalar.ph1706.preheader ] ; 2 uses
  %i.ame = sext i32 %.07551451 to i64             ; 2 uses
  %i.amf = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %i.ame
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !24
  %i.amh = zext i32 %.11450 to i64                ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.amh
  store i32 %i.amg, ptr %i.ami, align 4, !tbaa !24
  %i.amj = getelementptr inbounds [4 x i8], ptr %i.akk, i64 %i.ame
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !24
  %i.aml = add i32 %.11450, 1                     ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.amh
  store i32 %i.amk, ptr %i.amm, align 4, !tbaa !24
  %.0755 = add i32 %.07551451, -1                 ; 2 uses
  %.not977 = icmp slt i32 %.0755, %i.akg
  br i1 %.not977, label %._crit_edge1454, label %scalar.ph1706, !llvm.loop !373

._crit_edge1454:                                  ; preds = %scalar.ph1706, %middle.block1733, %bb.fl
  %.1.lcssa = phi i32 [ %.07541462, %bb.fl ], [ %i.als, %middle.block1733 ], [ %i.aml, %scalar.ph1706 ] ; 8 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %indvars.iv1482
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !24 ; 4 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %indvars.iv.next1483
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !24 ; 6 uses
  %.17561456 = add nsw i32 %i.amo, 1
  %i.amr = icmp slt i32 %.17561456, %i.amq
  br i1 %i.amr, label %.lr.ph1460, label %.loopexit

.lr.ph1460:                                       ; preds = %._crit_edge1454
  %i.ams = load ptr, ptr %i.is, align 8, !tbaa !225 ; 5 uses
  %i.amt = ptrtoaddr ptr %i.ams to i64            ; 2 uses
  %i.amu = load ptr, ptr %i.iu, align 8, !tbaa !226 ; 5 uses
  %i.amv = ptrtoaddr ptr %i.amu to i64            ; 2 uses
  %i.amw = sext i32 %i.amo to i64                 ; 2 uses
  %i.amx = add nsw i64 %i.amw, 1                  ; 5 uses
  %i.amy = add i32 %i.amq, -2
  %i.amz = sub i32 %i.amy, %i.amo                 ; 2 uses
  %i.ana = zext i32 %i.amz to i64
  %i.anb = add nuw nsw i64 %i.ana, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.amz, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1460
  %reass.sub = sub i32 %i.amo, %i.amq
  %i.anc = add i32 %reass.sub, 1
  %i.and = icmp ult i32 %i.anc, %.1.lcssa
  br i1 %i.and, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ane = zext i32 %.1.lcssa to i64
  %i.anf = shl nuw nsw i64 %i.ane, 2              ; 3 uses
  %i.ang = shl nsw i64 %i.amw, 2                  ; 4 uses
  %25 = add i64 %i.anf, %23
  %i.anh = add i64 %i.ang, %i.amt
  %i.ani = sub i64 %25, %i.anh
  %i.anj = add i64 %i.ani, -5
  %diff.check = icmp ult i64 %i.anj, 31
  %.reass = add i64 %i.anf, %invariant.op.a       ; 2 uses
  %i.ank = add i64 %i.ang, %i.amt
  %26 = sub i64 %i.ank, %.reass
  %diff.check1665 = icmp ugt i64 %26, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1665
  %i.anl = add i64 %i.ang, %i.amv
  %i.anm = add i64 %i.anf, %23
  %i.ann = sub i64 %i.anl, %i.anm
  %i.ano = add i64 %i.ann, 3
  %diff.check1666 = icmp ult i64 %i.ano, 31
  %conflict.rdx1667 = or i1 %conflict.rdx, %diff.check1666
  %i.anp = add i64 %i.ang, %i.amv
  %i.anq = sub i64 %i.anp, %.reass
  %diff.check1668 = icmp ugt i64 %i.anq, -32
  %conflict.rdx1669 = or i1 %conflict.rdx1667, %diff.check1668
  %conflict.rdx1671 = or i1 %conflict.rdx1669, %diff.check1670
  br i1 %conflict.rdx1671, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.anb, 8589934584             ; 4 uses
  %i.anr = add nsw i64 %i.amx, %n.vec
  %i.ans = trunc i64 %n.vec to i32
  %i.ant = add i32 %.1.lcssa, %i.ans              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.anu = add i64 %i.amx, %index                 ; 2 uses
  %i.anv = trunc i64 %index to i32
  %i.anw = add i32 %.1.lcssa, %i.anv
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.ams, i64 %i.anu ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  %wide.load = load <4 x i32>, ptr %i.anx, align 4, !tbaa !24
  %wide.load1672 = load <4 x i32>, ptr %i.any, align 4, !tbaa !24
  %i.anz = zext i32 %i.anw to i64                 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.anz ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  store <4 x i32> %wide.load, ptr %i.aoa, align 4, !tbaa !24
  store <4 x i32> %wide.load1672, ptr %i.aob, align 4, !tbaa !24
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %i.anu ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %wide.load1673 = load <4 x i32>, ptr %i.aoc, align 4, !tbaa !24
  %wide.load1674 = load <4 x i32>, ptr %i.aod, align 4, !tbaa !24
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.anz ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16
  store <4 x i32> %wide.load1673, ptr %i.aoe, align 4, !tbaa !24
  store <4 x i32> %wide.load1674, ptr %i.aof, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aog = icmp eq i64 %index.next, %n.vec
  br i1 %i.aog, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.anb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph1460, %middle.block
  %indvars.iv1478.ph = phi i64 [ %i.amx, %vector.memcheck ], [ %i.amx, %vector.scevcheck ], [ %i.amx, %.lr.ph1460 ], [ %i.anr, %middle.block ] ; 5 uses
  %.21457.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph1460 ], [ %i.ant, %middle.block ] ; 3 uses
  %i.aoh = trunc i64 %indvars.iv1478.ph to i32    ; 2 uses
  %i.aoi = sub i32 %i.amq, %i.aoh
  %.neg = add i32 %i.aoh, 1
  %xtraiter = and i32 %i.aoi, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aoj = getelementptr inbounds [4 x i8], ptr %i.ams, i64 %indvars.iv1478.ph
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !24
  %i.aol = zext i32 %.21457.ph to i64             ; 2 uses
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aol
  store i32 %i.aok, ptr %i.aom, align 4, !tbaa !24
  %i.aon = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %indvars.iv1478.ph
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !24
  %i.aop = add i32 %.21457.ph, 1                  ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.aol
  store i32 %i.aoo, ptr %i.aoq, align 4, !tbaa !24
  %indvars.iv.next1479.prol = add nsw i64 %indvars.iv1478.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1737.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.aop, %scalar.ph.prol ]
  %indvars.iv1478.unr = phi i64 [ %indvars.iv1478.ph, %scalar.ph.preheader ], [ %indvars.iv.next1479.prol, %scalar.ph.prol ]
  %.21457.unr = phi i32 [ %.21457.ph, %scalar.ph.preheader ], [ %i.aop, %scalar.ph.prol ]
  %i.aor = icmp eq i32 %i.amq, %.neg
  br i1 %i.aor, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1478 = phi i64 [ %indvars.iv.next1479.1, %scalar.ph ], [ %indvars.iv1478.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.21457 = phi i32 [ %i.apg, %scalar.ph ], [ %.21457.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aos = getelementptr inbounds [4 x i8], ptr %i.ams, i64 %indvars.iv1478
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !24
  %i.aou = zext i32 %.21457 to i64                ; 2 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aou
  store i32 %i.aot, ptr %i.aov, align 4, !tbaa !24
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %indvars.iv1478
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !24
  %i.aoy = add i32 %.21457, 1
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.aou
  store i32 %i.aox, ptr %i.aoz, align 4, !tbaa !24
  %indvars.iv.next1479 = add nsw i64 %indvars.iv1478, 1 ; 2 uses
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.ams, i64 %indvars.iv.next1479
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !24
  %i.apc = zext i32 %i.aoy to i64                 ; 2 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.apc
  store i32 %i.apb, ptr %i.apd, align 4, !tbaa !24
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %indvars.iv.next1479
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !24
  %i.apg = add i32 %.21457, 2                     ; 2 uses
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.apc
  store i32 %i.apf, ptr %i.aph, align 4, !tbaa !24
  %indvars.iv.next1479.1 = add nsw i64 %indvars.iv1478, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1479.1 to i32
  %exitcond1481.not.1 = icmp eq i32 %i.amq, %lftr.wideiv.1
  br i1 %exitcond1481.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !375

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1201.invoke, %._crit_edge1466
  %.1891 = phi i32 [ -1, %.noexc1201.invoke ], [ 1, %._crit_edge1466 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i32 %.1891

bb.fm:                                            ; preds = %bb.aw, %bb.fk, %bb.am, %bb.al, %bb.ai, %bb.af, %bb.ae
  %.pn1065.pn = phi { ptr, i32 } [ %i.fj, %bb.ae ], [ %i.fp, %bb.am ], [ %.pn969, %bb.al ], [ %.pn967, %bb.ai ], [ %i.fk, %bb.af ], [ %i.jl, %bb.aw ], [ %i.akd, %bb.fk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #23
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.ad
  %.pn1065.pn.pn = phi { ptr, i32 } [ %.pn1065.pn, %bb.fm ], [ %.pn958, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.body
  %.pn1065.pn.pn.pn = phi { ptr, i32 } [ %.pn1065.pn.pn, %bb.fn ], [ %i.ck, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn1065.pn.pn.pn
}

declare void @_ZN2cv3absERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #23
  ret void
}

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #7

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #7

declare void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector6EDlineERNS_3MatERNS1_10LineChainsE(ptr noundef nonnull align 8 dereferenceable(2784) initializes((800, 808)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::line_descriptor::BinaryDescriptor::EdgeChains", align 8 ; 16 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca float, align 4                    ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 14 uses
  %6 = alloca %"class.std::vector.30", align 8    ; 11 uses
  %7 = alloca %"class.std::vector", align 8       ; 14 uses
  %8 = alloca %"class.std::vector.30", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %3, i8 0, i64 72, i1 false)
  %i.b = invoke noundef i32 @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector11EdgeDrawingERNS_3MatERNS1_10EdgeChainsE(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(76) %3)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !60
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !135  ; 6 uses
  %.not.i.i.i385 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i385, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc386 unwind label %bb.s

.noexc386:                                        ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !141
  %.not.i1.i.i = icmp eq i8 %i.k, 0
end_hunk_0
