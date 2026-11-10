Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector11EdgeDrawingERNS_3MatERNS1_10EdgeChainsE:bb.a
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
  %i.ajw = load ptr, ptr %i.aiu, align 8, !tbaa !186 ; 9 uses
  %.not1470 = icmp eq i32 %.0827.lcssa1551, 0
  br i1 %.not1470, label %._crit_edge1466, label %.lr.ph1465

.lr.ph1465:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165
  %i.ajx = ptrtoaddr ptr %i.ajw to i64            ; 2 uses
  %i.ajy = ptrtoaddr ptr %i.ajv to i64            ; 3 uses
  %i.ajz = load ptr, ptr %i.iw, align 8, !tbaa !229 ; 2 uses
  %i.aka = load ptr, ptr %i.ja, align 8, !tbaa !230 ; 2 uses
  %i.akb = add i64 %i.ajx, -4                     ; 2 uses
  %invariant.op = add i64 -5, %i.ajy
  %invariant.op1790 = add i64 %i.akb, -1
  %invariant.op1791 = add i64 %i.akb, -1
  %i.akc = sub i64 %i.ajy, %i.ajx
  %diff.check1670 = icmp ugt i64 %i.akc, -32
  br label %bb.fl

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge1454
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge1454 ], [ %i.ans, %middle.block ], [ %.lcssa1739.unr, %scalar.ph.prol.loopexit ], [ %i.apf, %scalar.ph ] ; 2 uses
  %exitcond1488.not = icmp eq i64 %indvars.iv.next1483, %i.ago
  br i1 %exitcond1488.not, label %._crit_edge1466, label %bb.fl, !llvm.loop !366

._crit_edge1466:                                  ; preds = %.loopexit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165
  %.0754.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit1165 ], [ %.2.lcssa, %.loopexit ]
  %i.akd = zext nneg i32 %.0827.lcssa1551 to i64
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.akd
  store i32 %.0754.lcssa, ptr %i.ake, align 4, !tbaa !24
  %i.akf = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %.0827.lcssa1551, ptr %i.akf, align 8, !tbaa !240
  br label %_ZNSolsEPFRSoS_E.exit

bb.fk:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1196.invoke, %.invoke, %.noexc1201.invoke, %.noexc1199, %bb.ez, %.noexc1188, %bb.ew, %.noexc1177, %bb.et, %.noexc1167, %bb.at, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1153, %_ZNSolsEj.exit1152, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1151, %_ZNSolsEj.exit1150, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1149, %bb.ev, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1146, %_ZNSolsEj.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1144, %bb.es, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1142, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.as
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %.lr.ph1465, %.loopexit
  %indvars.iv1482 = phi i64 [ 0, %.lr.ph1465 ], [ %indvars.iv.next1483, %.loopexit ] ; 4 uses
  %.07541462 = phi i32 [ 0, %.lr.ph1465 ], [ %.2.lcssa, %.loopexit ] ; 9 uses
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 1 ; 4 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %indvars.iv1482
  store i32 %.07541462, ptr %i.akh, align 4, !tbaa !24
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %indvars.iv1482
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !24 ; 4 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %indvars.iv.next1483
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !24 ; 4 uses
  %.07551448 = add i32 %i.akl, -1                 ; 9 uses
  %.not9771449 = icmp slt i32 %.07551448, %i.akj
  br i1 %.not9771449, label %._crit_edge1454, label %.lr.ph1453

.lr.ph1453:                                       ; preds = %bb.fl
  %i.akm = load ptr, ptr %i.io, align 8, !tbaa !223 ; 4 uses
  %i.akn = load ptr, ptr %i.iq, align 8, !tbaa !224 ; 4 uses
  %i.ako = add i32 %i.akj, -1
  %i.akp = add i32 %i.akl, -2                     ; 2 uses
  %i.akq = call i32 @llvm.smin.i32(i32 %i.ako, i32 %i.akp) ; 2 uses
  %i.akr = xor i32 %i.akq, -1
  %i.aks = add i32 %i.akl, %i.akr                 ; 3 uses
  %min.iters.check1707 = icmp ult i32 %i.aks, 32
  br i1 %min.iters.check1707, label %scalar.ph1706.preheader, label %vector.scevcheck1676

vector.scevcheck1676:                             ; preds = %.lr.ph1453
  %i.akt = add i32 %i.akl, -2                     ; 2 uses
  %i.aku = add i32 %i.akj, -1
  %smin = call i32 @llvm.smin.i32(i32 %i.aku, i32 %i.akt)
  %i.akv = sub i32 %i.akt, %smin                  ; 2 uses
  %i.akw = xor i32 %.07541462, -1
  %i.akx = icmp ugt i32 %i.akv, %i.akw
  %i.aky = sub i32 %.07551448, %i.akv
  %i.akz = icmp sgt i32 %i.aky, %.07551448
  %i.ala = or i1 %i.akx, %i.akz
  br i1 %i.ala, label %scalar.ph1706.preheader, label %vector.memcheck1708

vector.memcheck1708:                              ; preds = %vector.scevcheck1676
  %i.alb = zext i32 %.07541462 to i64
  %i.alc = shl nuw nsw i64 %i.alb, 2              ; 3 uses
  %i.ald = getelementptr i8, ptr %i.ajv, i64 %i.alc ; 3 uses
  %i.ale = sub i32 %i.akp, %i.akq
  %i.alf = zext i32 %i.ale to i64
  %i.alg = shl nuw nsw i64 %i.alf, 2              ; 2 uses
  %23 = add nuw nsw i64 %i.alc, %i.alg
  %i.alh = add nuw nsw i64 %23, 4                 ; 2 uses
  %i.ali = getelementptr i8, ptr %i.ajv, i64 %i.alh ; 3 uses
  %i.alj = getelementptr i8, ptr %i.ajw, i64 %i.alc ; 3 uses
  %i.alk = getelementptr i8, ptr %i.ajw, i64 %i.alh ; 3 uses
  %i.all = sext i32 %.07551448 to i64
  %i.alm = shl nsw i64 %i.all, 2                  ; 2 uses
  %i.aln = sub nsw i64 %i.alm, %i.alg             ; 2 uses
  %i.alo = getelementptr i8, ptr %i.akm, i64 %i.aln ; 2 uses
  %i.alp = add nsw i64 %i.alm, 4                  ; 2 uses
  %i.alq = getelementptr i8, ptr %i.akm, i64 %i.alp ; 2 uses
  %i.alr = getelementptr i8, ptr %i.akn, i64 %i.aln ; 2 uses
  %i.als = getelementptr i8, ptr %i.akn, i64 %i.alp ; 2 uses
  %bound0 = icmp ult ptr %i.ald, %i.alk
  %bound1 = icmp ult ptr %i.alj, %i.ali
  %found.conflict = and i1 %bound0, %bound1
  %bound01709 = icmp ult ptr %i.ald, %i.alq
  %bound11710 = icmp ult ptr %i.alo, %i.ali
  %found.conflict1711 = and i1 %bound01709, %bound11710
  %conflict.rdx1712 = or i1 %found.conflict, %found.conflict1711
  %bound01713 = icmp ult ptr %i.ald, %i.als
  %bound11714 = icmp ult ptr %i.alr, %i.ali
  %found.conflict1715 = and i1 %bound01713, %bound11714
  %conflict.rdx1716 = or i1 %conflict.rdx1712, %found.conflict1715
  %bound01717 = icmp ult ptr %i.alj, %i.alq
  %bound11718 = icmp ult ptr %i.alo, %i.alk
  %found.conflict1719 = and i1 %bound01717, %bound11718
  %conflict.rdx1720 = or i1 %conflict.rdx1716, %found.conflict1719
  %bound01721 = icmp ult ptr %i.alj, %i.als
  %bound11722 = icmp ult ptr %i.alr, %i.alk
  %found.conflict1723 = and i1 %bound01721, %bound11722
  %conflict.rdx1724 = or i1 %conflict.rdx1720, %found.conflict1723
  br i1 %conflict.rdx1724, label %scalar.ph1706.preheader, label %vector.ph1725

vector.ph1725:                                    ; preds = %vector.memcheck1708
  %n.vec1726 = and i32 %i.aks, -4                 ; 4 uses
  %i.alt = sub i32 %.07551448, %n.vec1726
  %i.alu = add i32 %.07541462, %n.vec1726         ; 2 uses
  br label %vector.body1727

vector.body1727:                                  ; preds = %vector.body1727, %vector.ph1725
  %index1728 = phi i32 [ 0, %vector.ph1725 ], [ %index.next1732, %vector.body1727 ] ; 3 uses
  %i.alv = sub i32 %.07551448, %index1728
  %i.alw = add i32 %.07541462, %index1728
  %i.alx = sext i32 %i.alv to i64                 ; 2 uses
  %i.aly = getelementptr inbounds [4 x i8], ptr %i.akm, i64 %i.alx
  %i.alz = getelementptr inbounds i8, ptr %i.aly, i64 -12
  %wide.load1729 = load <4 x i32>, ptr %i.alz, align 4, !tbaa !24, !alias.scope !384
  %reverse = shufflevector <4 x i32> %wide.load1729, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ama = zext i32 %i.alw to i64                 ; 2 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.ama
  store <4 x i32> %reverse, ptr %i.amb, align 4, !tbaa !24, !alias.scope !385, !noalias !386
  %i.amc = getelementptr inbounds [4 x i8], ptr %i.akn, i64 %i.alx
  %i.amd = getelementptr inbounds i8, ptr %i.amc, i64 -12
  %wide.load1730 = load <4 x i32>, ptr %i.amd, align 4, !tbaa !24, !alias.scope !387
  %reverse1731 = shufflevector <4 x i32> %wide.load1730, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.ama
  store <4 x i32> %reverse1731, ptr %i.ame, align 4, !tbaa !24, !alias.scope !388, !noalias !389
  %index.next1732 = add nuw i32 %index1728, 4     ; 2 uses
  %i.amf = icmp eq i32 %index.next1732, %n.vec1726
  br i1 %i.amf, label %middle.block1733, label %vector.body1727, !llvm.loop !372

middle.block1733:                                 ; preds = %vector.body1727
  %cmp.n1734 = icmp eq i32 %i.aks, %n.vec1726
  br i1 %cmp.n1734, label %._crit_edge1454, label %scalar.ph1706.preheader

scalar.ph1706.preheader:                          ; preds = %vector.memcheck1708, %vector.scevcheck1676, %.lr.ph1453, %middle.block1733
  %.07551451.ph = phi i32 [ %.07551448, %vector.memcheck1708 ], [ %.07551448, %vector.scevcheck1676 ], [ %.07551448, %.lr.ph1453 ], [ %i.alt, %middle.block1733 ]
  %.11450.ph = phi i32 [ %.07541462, %vector.memcheck1708 ], [ %.07541462, %vector.scevcheck1676 ], [ %.07541462, %.lr.ph1453 ], [ %i.alu, %middle.block1733 ]
  br label %scalar.ph1706

scalar.ph1706:                                    ; preds = %scalar.ph1706.preheader, %scalar.ph1706
  %.07551451 = phi i32 [ %.0755, %scalar.ph1706 ], [ %.07551451.ph, %scalar.ph1706.preheader ] ; 2 uses
  %.11450 = phi i32 [ %i.amn, %scalar.ph1706 ], [ %.11450.ph, %scalar.ph1706.preheader ] ; 2 uses
  %i.amg = sext i32 %.07551451 to i64             ; 2 uses
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.akm, i64 %i.amg
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !24
  %i.amj = zext i32 %.11450 to i64                ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.amj
  store i32 %i.ami, ptr %i.amk, align 4, !tbaa !24
  %i.aml = getelementptr inbounds [4 x i8], ptr %i.akn, i64 %i.amg
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !24
  %i.amn = add i32 %.11450, 1                     ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.amj
  store i32 %i.amm, ptr %i.amo, align 4, !tbaa !24
  %.0755 = add i32 %.07551451, -1                 ; 2 uses
  %.not977 = icmp slt i32 %.0755, %i.akj
  br i1 %.not977, label %._crit_edge1454, label %scalar.ph1706, !llvm.loop !373

._crit_edge1454:                                  ; preds = %scalar.ph1706, %middle.block1733, %bb.fl
  %.1.lcssa = phi i32 [ %.07541462, %bb.fl ], [ %i.alu, %middle.block1733 ], [ %i.amn, %scalar.ph1706 ] ; 8 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %indvars.iv1482
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !24 ; 4 uses
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %indvars.iv.next1483
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !24 ; 6 uses
  %.17561456 = add nsw i32 %i.amq, 1
  %i.amt = icmp slt i32 %.17561456, %i.ams
  br i1 %i.amt, label %.lr.ph1460, label %.loopexit

.lr.ph1460:                                       ; preds = %._crit_edge1454
  %i.amu = load ptr, ptr %i.is, align 8, !tbaa !225 ; 5 uses
  %i.amv = ptrtoaddr ptr %i.amu to i64
  %i.amw = load ptr, ptr %i.iu, align 8, !tbaa !226 ; 5 uses
  %i.amx = ptrtoaddr ptr %i.amw to i64            ; 2 uses
  %i.amy = sext i32 %i.amq to i64                 ; 2 uses
  %i.amz = add nsw i64 %i.amy, 1                  ; 5 uses
  %i.ana = add i32 %i.ams, -2
  %i.anb = sub i32 %i.ana, %i.amq                 ; 2 uses
  %i.anc = zext i32 %i.anb to i64
  %i.and = add nuw nsw i64 %i.anc, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.anb, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1460
  %reass.sub = sub i32 %i.amq, %i.ams
  %i.ane = add i32 %reass.sub, 1
  %i.anf = icmp ult i32 %i.ane, %.1.lcssa
  br i1 %i.anf, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ang = zext i32 %.1.lcssa to i64
  %i.anh = shl nuw nsw i64 %i.ang, 2              ; 3 uses
  %i.ani = shl nsw i64 %i.amy, 2                  ; 3 uses
  %i.anj = add i64 %i.ani, %i.amv
  %i.ank = sub i64 %i.anh, %i.anj                 ; 2 uses
  %op.rdx1738.reass = add i64 %i.ank, %invariant.op
  %diff.check = icmp ult i64 %op.rdx1738.reass, 31
  %.reass = add i64 %i.ank, %invariant.op1790
  %diff.check1665 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1665
  %i.anl = add i64 %i.ani, %i.amx
  %i.anm = add i64 %i.anh, %i.ajy
  %reass.sub1737 = sub i64 %i.anl, %i.anm
  %i.ann = add i64 %reass.sub1737, 3
  %diff.check1666 = icmp ult i64 %i.ann, 31
  %conflict.rdx1667 = or i1 %conflict.rdx, %diff.check1666
  %i.ano = add i64 %i.ani, %i.amx
  %i.anp = sub i64 %i.anh, %i.ano
  %.reass1792 = add i64 %i.anp, %invariant.op1791
  %diff.check1668 = icmp ult i64 %.reass1792, 31
  %conflict.rdx1669 = or i1 %conflict.rdx1667, %diff.check1668
  %conflict.rdx1671 = or i1 %conflict.rdx1669, %diff.check1670
  br i1 %conflict.rdx1671, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.and, 8589934584             ; 4 uses
  %i.anq = add nsw i64 %i.amz, %n.vec
  %i.anr = trunc i64 %n.vec to i32
  %i.ans = add i32 %.1.lcssa, %i.anr              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ant = add i64 %i.amz, %index                 ; 2 uses
  %i.anu = trunc i64 %index to i32
  %i.anv = add i32 %.1.lcssa, %i.anu
  %i.anw = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %i.ant ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  %wide.load = load <4 x i32>, ptr %i.anw, align 4, !tbaa !24
  %wide.load1672 = load <4 x i32>, ptr %i.anx, align 4, !tbaa !24
  %i.any = zext i32 %i.anv to i64                 ; 2 uses
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.any ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 16
  store <4 x i32> %wide.load, ptr %i.anz, align 4, !tbaa !24
  store <4 x i32> %wide.load1672, ptr %i.aoa, align 4, !tbaa !24
  %i.aob = getelementptr inbounds [4 x i8], ptr %i.amw, i64 %i.ant ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %wide.load1673 = load <4 x i32>, ptr %i.aob, align 4, !tbaa !24
  %wide.load1674 = load <4 x i32>, ptr %i.aoc, align 4, !tbaa !24
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.any ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  store <4 x i32> %wide.load1673, ptr %i.aod, align 4, !tbaa !24
  store <4 x i32> %wide.load1674, ptr %i.aoe, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aof = icmp eq i64 %index.next, %n.vec
  br i1 %i.aof, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.and, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph1460, %middle.block
  %indvars.iv1478.ph = phi i64 [ %i.amz, %vector.memcheck ], [ %i.amz, %vector.scevcheck ], [ %i.amz, %.lr.ph1460 ], [ %i.anq, %middle.block ] ; 5 uses
  %.21457.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph1460 ], [ %i.ans, %middle.block ] ; 3 uses
  %i.aog = trunc i64 %indvars.iv1478.ph to i32    ; 2 uses
  %i.aoh = sub i32 %i.ams, %i.aog
  %.neg = add i32 %i.aog, 1
  %xtraiter = and i32 %i.aoh, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aoi = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %indvars.iv1478.ph
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !24
  %i.aok = zext i32 %.21457.ph to i64             ; 2 uses
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aok
  store i32 %i.aoj, ptr %i.aol, align 4, !tbaa !24
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.amw, i64 %indvars.iv1478.ph
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !24
  %i.aoo = add i32 %.21457.ph, 1                  ; 2 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.aok
  store i32 %i.aon, ptr %i.aop, align 4, !tbaa !24
  %indvars.iv.next1479.prol = add nsw i64 %indvars.iv1478.ph, 1
  br label %scalar.ph.prol.loopexit

end_hunk_0
