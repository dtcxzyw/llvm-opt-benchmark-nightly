Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCModel?download=true
inline.NumInlined: 9919
inline.NumDeleted: 1292
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN10EmitCModel29emitConstructorImplementationEP13AstNodeModule:._crit_edge.i.i
  %i.aye = load ptr, ptr %46, align 8, !tbaa !34  ; 2 uses
  %i.ayf = icmp eq ptr %i.aye, %i.aak
  br i1 %i.ayf, label %.body643, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845
  %i.ayg = load i64, ptr %i.aak, align 8, !tbaa !36
  %i.ayh = add i64 %i.ayg, 1
  call void @_ZdlPvm(ptr noundef %i.aye, i64 noundef %i.ayh) #25
  br label %.body643

.body643:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846, %.body.i631, %bb.dj
  %.pn176.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.i1097, %bb.dj ], [ %eh.lpad-body.i632, %.body.i631 ], [ %.pn176.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846 ], [ %.pn176.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.fu

.loopexit1165:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729
  %lpad.loopexit1167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

.loopexit.split-lp1166:                           ; preds = %bb.en
  %lpad.loopexit.split-lp1168 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

bb.fr:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i742, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i743
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  br label %.body759

.loopexit1170:                                    ; preds = %.critedge.i770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i764
  %lpad.loopexit1172 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

.loopexit.split-lp1171:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp1173 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

bb.fs:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit778
  %i.ayj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayk = load ptr, ptr %48, align 8, !tbaa !34  ; 2 uses
  %i.ayl = icmp eq ptr %i.ayk, %i.ach
  br i1 %i.ayl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849: ; preds = %bb.fs
  %i.aym = load i64, ptr %i.ach, align 8, !tbaa !36
  %i.ayn = add i64 %i.aym, 1
  call void @_ZdlPvm(ptr noundef %i.ayk, i64 noundef %i.ayn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851: ; preds = %bb.fs, %.loopexit1170, %.loopexit.split-lp1171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849
  %.pn182 = phi { ptr, i32 } [ %i.ayj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849 ], [ %lpad.loopexit.split-lp1173, %.loopexit.split-lp1171 ], [ %lpad.loopexit1172, %.loopexit1170 ], [ %i.ayj, %bb.fs ] ; 2 uses
  %i.ayo = load ptr, ptr %51, align 8, !tbaa !34  ; 2 uses
  %i.ayp = icmp eq ptr %i.ayo, %i.acc
  br i1 %i.ayp, label %.body759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.ayq = load i64, ptr %i.acc, align 8, !tbaa !36
  %i.ayr = add i64 %i.ayq, 1
  call void @_ZdlPvm(ptr noundef %i.ayo, i64 noundef %i.ayr) #25
  br label %.body759

.body759:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852, %.body.i747, %bb.ew, %bb.fr
  %.pn182.pn = phi { ptr, i32 } [ %.pn.pn.i1105, %bb.ew ], [ %eh.lpad-body.i748, %.body.i747 ], [ %i.ayi, %bb.fr ], [ %.pn182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852 ], [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %i.ays = load ptr, ptr %49, align 8, !tbaa !34  ; 2 uses
  %i.ayt = icmp eq ptr %i.ays, %i.abo
  br i1 %i.ayt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855: ; preds = %.body759
  %i.ayu = load i64, ptr %i.abo, align 8, !tbaa !36
  %i.ayv = add i64 %i.ayu, 1
  call void @_ZdlPvm(ptr noundef %i.ays, i64 noundef %i.ayv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857: ; preds = %.body759, %.loopexit1165, %.loopexit.split-lp1166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855
  %.pn182.pn.pn = phi { ptr, i32 } [ %.pn182.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855 ], [ %lpad.loopexit.split-lp1168, %.loopexit.split-lp1166 ], [ %lpad.loopexit1167, %.loopexit1165 ], [ %.pn182.pn, %.body759 ] ; 2 uses
  %i.ayw = load ptr, ptr %50, align 8, !tbaa !34  ; 2 uses
  %i.ayx = icmp eq ptr %i.ayw, %i.abm
  br i1 %i.ayx, label %.body727, label %.body727.sink.split

.body727.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %bb.em
  %.sink2802 = phi ptr [ %i.aqo, %bb.em ], [ %i.ayw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ]
  %.pn182.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi1164, %bb.em ], [ %.pn182.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ]
  %i.ayy = load i64, ptr %i.abm, align 8, !tbaa !36
  %i.ayz = add i64 %i.ayy, 1
  call void @_ZdlPvm(ptr noundef %.sink2802, i64 noundef %i.ayz) #25
  br label %.body727

.body727:                                         ; preds = %.body727.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %bb.em
  %.pn182.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi1164, %bb.em ], [ %.pn182.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ], [ %.pn182.pn.pn.pn.ph, %.body727.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  br label %bb.fu

.loopexit1180:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i804
  %lpad.loopexit1182 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

.loopexit.split-lp1181:                           ; preds = %bb.fj
  %lpad.loopexit.split-lp1183 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

bb.ft:                                            ; preds = %bb.fl
  %i.aza = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azb = load ptr, ptr %52, align 8, !tbaa !34  ; 2 uses
  %i.azc = icmp eq ptr %i.azb, %i.acl
  br i1 %i.azc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %bb.ft
  %i.azd = load i64, ptr %i.acl, align 8, !tbaa !36
  %i.aze = add i64 %i.azd, 1
  call void @_ZdlPvm(ptr noundef %i.azb, i64 noundef %i.aze) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %bb.ft, %.loopexit1180, %.loopexit.split-lp1181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  %.pn187 = phi { ptr, i32 } [ %i.aza, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861 ], [ %lpad.loopexit.split-lp1183, %.loopexit.split-lp1181 ], [ %lpad.loopexit1182, %.loopexit1180 ], [ %i.aza, %bb.ft ] ; 2 uses
  %i.azf = load ptr, ptr %53, align 8, !tbaa !34  ; 2 uses
  %i.azg = icmp eq ptr %i.azf, %i.acj
  br i1 %i.azg, label %.body801, label %.body801.sink.split

.body801.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, %bb.fi
  %.sink2805 = phi ptr [ %i.avr, %bb.fi ], [ %i.azf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.pn187.pn.ph = phi { ptr, i32 } [ %lpad.phi1179, %bb.fi ], [ %.pn187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %i.azh = load i64, ptr %i.acj, align 8, !tbaa !36
  %i.azi = add i64 %i.azh, 1
  call void @_ZdlPvm(ptr noundef %.sink2805, i64 noundef %i.azi) #25
  br label %.body801

.body801:                                         ; preds = %.body801.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, %bb.fi
  %.pn187.pn = phi { ptr, i32 } [ %lpad.phi1179, %bb.fi ], [ %.pn187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ], [ %.pn187.pn.ph, %.body801.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  br label %bb.fu

bb.fu:                                            ; preds = %.body801, %.body727, %.body643
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %.body801 ], [ %.pn182.pn.pn.pn, %.body727 ], [ %.pn176.pn.pn.pn.pn, %.body643 ] ; 2 uses
  %i.azj = load ptr, ptr %40, align 8, !tbaa !34  ; 2 uses
  %i.azk = icmp eq ptr %i.azj, %i.zw
  br i1 %i.azk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867: ; preds = %bb.fu
  %i.azl = load i64, ptr %i.zw, align 8, !tbaa !36
  %i.azm = add i64 %i.azl, 1
  call void @_ZdlPvm(ptr noundef %i.azj, i64 noundef %i.azm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833
  %.pn187.pn.pn.pn = phi { ptr, i32 } [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833 ], [ %.pn187.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i867 ], [ %.pn187.pn.pn, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %common.resume

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591, %bb.cl
  %i.azn = phi i64 [ %i.afa, %bb.cl ], [ %.pre.i593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591 ]
  %i.azo = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  store i64 %i.azn, ptr %i.aco, align 8, !tbaa !35, !alias.scope !1317
  store ptr %i.aex, ptr %i.aev, align 8, !tbaa !34
  store i64 0, ptr %i.azo, align 8, !tbaa !35
  store i8 0, ptr %i.aex, align 8, !tbaa !36
  %i.azp = load ptr, ptr %i.z, align 8, !tbaa !172
  %i.azq = load ptr, ptr %54, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.azp, ptr noundef nonnull %.0442103, ptr noundef %i.azq)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit871 unwind label %bb.fx

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit871: ; preds = %bb.fv
  %i.azr = load ptr, ptr %54, align 8, !tbaa !34  ; 2 uses
  %i.azs = icmp eq ptr %i.azr, %i.acn
  br i1 %i.azs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit871
  %i.azt = load i64, ptr %i.acn, align 8, !tbaa !36
  %i.azu = add i64 %i.azt, 1
  call void @_ZdlPvm(ptr noundef %i.azr, i64 noundef %i.azu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit871, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872
  %i.azv = load ptr, ptr %55, align 8, !tbaa !34  ; 2 uses
  %i.azw = icmp eq ptr %i.azv, %i.acp
  br i1 %i.azw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874
  %i.azx = load i64, ptr %i.acp, align 8, !tbaa !36
  %i.azy = add i64 %i.azx, 1
  call void @_ZdlPvm(ptr noundef %i.azv, i64 noundef %i.azy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  %.not2104 = icmp eq i32 %.043.lcssa, 0          ; 2 uses
  br i1 %.not2104, label %._crit_edge.i.i878, label %.lr.ph2099

._crit_edge.i.i878:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  store ptr %i.adl, ptr %59, align 8, !tbaa !163
  store i16 2619, ptr %i.adl, align 8
  store i64 2, ptr %i.adm, align 8, !tbaa !35
  store i8 0, ptr %i.adp, align 2, !tbaa !36
  %i.azz = load ptr, ptr %i.z, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.azz, ptr noundef null, ptr noundef nonnull %i.adl)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit935 unwind label %bb.go

bb.fw:                                            ; preds = %._crit_edge
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884

bb.fx:                                            ; preds = %bb.fv
  %i.bab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bac = load ptr, ptr %54, align 8, !tbaa !34  ; 2 uses
  %i.bad = icmp eq ptr %i.bac, %i.acn
  br i1 %i.bad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882: ; preds = %bb.fx
  %i.bae = load i64, ptr %i.acn, align 8, !tbaa !36
  %i.baf = add i64 %i.bae, 1
  call void @_ZdlPvm(ptr noundef %i.bac, i64 noundef %i.baf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882, %bb.fw
  %.pn164 = phi { ptr, i32 } [ %i.baa, %bb.fw ], [ %i.bab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882 ], [ %i.bab, %bb.fx ]
  %i.bag = load ptr, ptr %55, align 8, !tbaa !34  ; 2 uses
  %i.bah = icmp eq ptr %i.bag, %i.acp
  br i1 %i.bah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884
  %i.bai = load i64, ptr %i.acp, align 8, !tbaa !36
  %i.baj = add i64 %i.bai, 1
  call void @_ZdlPvm(ptr noundef %i.bag, i64 noundef %i.baj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %common.resume

.lr.ph2099:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924
  %storemerge2098 = phi i32 [ %i.bdd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !1362
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.acq) #24, !noalias !1362
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.acq, align 16, !tbaa !137, !noalias !1362
  store ptr null, ptr %i.acr, align 8, !tbaa !1332, !noalias !1362
  store i8 0, ptr %i.acs, align 16, !tbaa !1333, !noalias !1362
  store i8 0, ptr %i.act, align 1, !tbaa !1334, !noalias !1362
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acu, i8 0, i64 32, i1 false), !noalias !1362
  store ptr %i.ze, ptr %2, align 16, !tbaa !137, !noalias !1362
  %i.bak = load i64, ptr %i.zg, align 8, !noalias !1362
  %i.bal = getelementptr inbounds i8, ptr %2, i64 %i.bak
  store ptr %i.zf, ptr %i.bal, align 8, !tbaa !137, !noalias !1362
  %i.bam = load ptr, ptr %2, align 16, !tbaa !137, !noalias !1362
  %i.ban = getelementptr i8, ptr %i.bam, i64 -24
  %i.bao = load i64, ptr %i.ban, align 8, !noalias !1362
  %i.bap = getelementptr inbounds i8, ptr %2, i64 %i.bao
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bap, ptr noundef null)
          to label %bb.fy unwind label %bb.fz, !noalias !1362

bb.fy:                                            ; preds = %.lr.ph2099
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.acq, align 16, !tbaa !137, !noalias !1362
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %2, align 16, !tbaa !137, !noalias !1362
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.acw, i8 0, i64 48, i1 false), !noalias !1362
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.acx) #24, !noalias !1362
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.acv, align 8, !tbaa !137, !noalias !1362
  store i32 16, ptr %i.acy, align 8, !tbaa !1335, !noalias !1362
  store ptr %i.ada, ptr %i.acz, align 16, !tbaa !163, !noalias !1362
  store i64 0, ptr %i.adb, align 8, !tbaa !35, !noalias !1362
  store i8 0, ptr %i.ada, align 16, !tbaa !36, !noalias !1362
  %i.baq = load ptr, ptr %2, align 16, !tbaa !137, !noalias !1362
  %i.bar = getelementptr i8, ptr %i.baq, i64 -24
  %i.bas = load i64, ptr %i.bar, align 8, !noalias !1362
  %i.bat = getelementptr inbounds i8, ptr %2, i64 %i.bas
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bat, ptr noundef nonnull %i.acv)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit1110 unwind label %bb.ga, !noalias !1362

bb.fz:                                            ; preds = %.lr.ph2099
  %i.bau = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.bav = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.acv) #24, !noalias !1362
  br label %bb.gb

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1094, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, %.body.i888, %bb.gb
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i1109, %bb.gb ], [ %eh.lpad-body.i889, %.body.i888 ], [ %.pn204.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn196.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn159.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1094 ], [ %.pn154.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085 ], [ %i.bmp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070 ], [ %i.bmk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067 ], [ %i.ber, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961 ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %.pn143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %.pn141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %.pn139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551 ], [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.pn129.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %.pn118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.pn114.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.pn187.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869 ], [ %.pn170.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933 ], [ %i.beh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953 ], [ %i.bdw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941 ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887 ]
  resume { ptr, i32 } %common.resume.op

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.pn.pn.i1109 = phi { ptr, i32 } [ %i.bau, %bb.fz ], [ %i.bav, %bb.ga ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.acq) #24, !noalias !1362
  br label %common.resume

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit1110: ; preds = %bb.fy
  %i.baw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %storemerge2098)
          to label %bb.gc unwind label %bb.gg, !noalias !1362 ; 0 uses

bb.gc:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit1110
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  store ptr %i.adc, ptr %58, align 8, !tbaa !163, !alias.scope !1365
  store i64 0, ptr %i.add, align 8, !tbaa !35, !alias.scope !1365
  store i8 0, ptr %i.adc, align 8, !tbaa !36, !alias.scope !1365
  %i.bax = load ptr, ptr %i.ade, align 16, !tbaa !377, !noalias !1365 ; 3 uses
  %.not.i.not.i.i.i890 = icmp eq ptr %i.bax, null
  %i.bay = load ptr, ptr %i.adf, align 16, !noalias !1365 ; 2 uses
  %i.baz = icmp ugt ptr %i.bax, %i.bay
  %.08.i.i.i.i891 = select i1 %i.baz, ptr %i.bax, ptr %i.bay ; 2 uses
  %.not5.i.i.i892 = icmp eq ptr %.08.i.i.i.i891, null
  %.not.i.i.i893 = select i1 %.not.i.not.i.i.i890, i1 true, i1 %.not5.i.i.i892
  br i1 %.not.i.i.i893, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.bba = load ptr, ptr %i.adg, align 8, !tbaa !378, !noalias !1365 ; 2 uses
  %i.bbb = ptrtoint ptr %.08.i.i.i.i891 to i64
  %i.bbc = ptrtoint ptr %i.bba to i64
  %i.bbd = sub i64 %i.bbb, %i.bbc
  %i.bbe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %58, i64 noundef 0, i64 noundef 0, ptr noundef %i.bba, i64 noundef %i.bbd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i896 unwind label %bb.ge ; 0 uses

bb.ge:                                            ; preds = %bb.gf, %bb.gd
  %i.bbf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbg = load ptr, ptr %58, align 8, !tbaa !34, !alias.scope !1365 ; 2 uses
  %i.bbh = icmp eq ptr %i.bbg, %i.adc
  br i1 %i.bbh, label %.body.i888, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i894

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i894: ; preds = %bb.ge
  %i.bbi = load i64, ptr %i.adc, align 8, !tbaa !36, !alias.scope !1365
  %i.bbj = add i64 %i.bbi, 1
  call void @_ZdlPvm(ptr noundef %i.bbg, i64 noundef %i.bbj) #25
  br label %.body.i888

bb.gf:                                            ; preds = %bb.gc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %i.acz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i896 unwind label %bb.ge

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i896: ; preds = %bb.gf, %bb.gd
  store ptr %i.zt, ptr %2, align 16, !tbaa !137, !noalias !1362
  %i.bbk = load i64, ptr %i.zv, align 8
  %i.bbl = getelementptr inbounds i8, ptr %2, i64 %i.bbk
  store ptr %i.zu, ptr %i.bbl, align 8, !tbaa !137, !noalias !1362
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.acv, align 8, !tbaa !137, !noalias !1362
  %i.bbm = load ptr, ptr %i.acz, align 16, !tbaa !34, !noalias !1362 ; 2 uses
  %i.bbn = icmp eq ptr %i.bbm, %i.ada
  br i1 %i.bbn, label %_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit899, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i897

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i897: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i896
  %i.bbo = load i64, ptr %i.ada, align 16, !tbaa !36, !noalias !1362
  %i.bbp = add i64 %i.bbo, 1
  call void @_ZdlPvm(ptr noundef %i.bbm, i64 noundef %i.bbp) #25
  br label %_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit899

bb.gg:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit1110
  %i.bbq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i888

.body.i888:                                       ; preds = %bb.ge, %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i894
  %eh.lpad-body.i889 = phi { ptr, i32 } [ %i.bbq, %bb.gg ], [ %i.bbf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i894 ], [ %i.bbf, %bb.ge ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !1362
  br label %common.resume

_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit899: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i897
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.acv, align 8, !tbaa !137, !noalias !1362
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acx) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.acq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !1362
  %i.bbr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %58, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.643, i64 noundef 5)
          to label %.noexc904 unwind label %bb.gm ; 6 uses

.noexc904:                                        ; preds = %_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit899
  store ptr %i.adh, ptr %57, align 8, !tbaa !163, !alias.scope !1366
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !34 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16 ; 5 uses
  %i.bbu = icmp eq ptr %i.bbs, %i.bbt
  br i1 %i.bbu, label %bb.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i900

bb.gh:                                            ; preds = %.noexc904
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bbw = load i64, ptr %i.bbv, align 8, !tbaa !35 ; 3 uses
  %i.bbx = icmp ult i64 %i.bbw, 16
  call void @llvm.assume(i1 %i.bbx)
  %i.bby = add nuw nsw i64 %i.bbw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adh, ptr noundef nonnull align 8 dereferenceable(1) %i.bbt, i64 %i.bby, i1 false)
  br label %bb.gi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i900: ; preds = %.noexc904
  store ptr %i.bbs, ptr %57, align 8, !tbaa !34, !alias.scope !1366
  %i.bbz = load i64, ptr %i.bbt, align 8, !tbaa !36
  store i64 %i.bbz, ptr %i.adh, align 8, !tbaa !36, !alias.scope !1366
  %.phi.trans.insert.i901 = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %.pre.i902 = load i64, ptr %.phi.trans.insert.i901, align 8, !tbaa !35
  br label %bb.gi

bb.gi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i900, %bb.gh
  %i.bca = phi i64 [ %i.bbw, %bb.gh ], [ %.pre.i902, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i900 ]
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  store i64 %i.bca, ptr %i.adi, align 8, !tbaa !35, !alias.scope !1366
  store ptr %i.bbt, ptr %i.bbr, align 8, !tbaa !34
  store i64 0, ptr %i.bcb, align 8, !tbaa !35
  store i8 0, ptr %i.bbt, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.bcc = load i64, ptr %i.adi, align 8, !tbaa !35, !noalias !1367
  %i.bcd = icmp eq i64 %i.bcc, 4611686018427387903
  br i1 %i.bcd, label %bb.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i906

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.505) #28
          to label %.noexc911 unwind label %.loopexit.split-lp

.noexc911:                                        ; preds = %bb.gj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i906: ; preds = %bb.gi
  %i.bce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.644, i64 noundef 1)
          to label %.noexc912 unwind label %.loopexit ; 6 uses

.noexc912:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i906
  store ptr %i.adj, ptr %56, align 8, !tbaa !163, !alias.scope !1367
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !34 ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bce, i64 16 ; 5 uses
  %i.bch = icmp eq ptr %i.bcf, %i.bcg
  br i1 %i.bch, label %bb.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907

bb.gk:                                            ; preds = %.noexc912
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !35 ; 3 uses
  %i.bck = icmp ult i64 %i.bcj, 16
  call void @llvm.assume(i1 %i.bck)
  %i.bcl = add nuw nsw i64 %i.bcj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adj, ptr noundef nonnull align 8 dereferenceable(1) %i.bcg, i64 %i.bcl, i1 false)
  br label %bb.gl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907: ; preds = %.noexc912
  store ptr %i.bcf, ptr %56, align 8, !tbaa !34, !alias.scope !1367
  %i.bcm = load i64, ptr %i.bcg, align 8, !tbaa !36
  store i64 %i.bcm, ptr %i.adj, align 8, !tbaa !36, !alias.scope !1367
  %.phi.trans.insert.i908 = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  %.pre.i909 = load i64, ptr %.phi.trans.insert.i908, align 8, !tbaa !35
  br label %bb.gl

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907, %bb.gk
  %i.bcn = phi i64 [ %i.bcj, %bb.gk ], [ %.pre.i909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907 ]
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  store i64 %i.bcn, ptr %i.adk, align 8, !tbaa !35, !alias.scope !1367
  store ptr %i.bcg, ptr %i.bce, align 8, !tbaa !34
  store i64 0, ptr %i.bco, align 8, !tbaa !35
  store i8 0, ptr %i.bcg, align 8, !tbaa !36
  %i.bcp = load ptr, ptr %i.z, align 8, !tbaa !172
  %i.bcq = load ptr, ptr %56, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.bcp, ptr noundef null, ptr noundef %i.bcq)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit915 unwind label %bb.gn

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit915: ; preds = %bb.gl
  %i.bcr = load ptr, ptr %56, align 8, !tbaa !34  ; 2 uses
  %i.bcs = icmp eq ptr %i.bcr, %i.adj
  br i1 %i.bcs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit915
  %i.bct = load i64, ptr %i.adj, align 8, !tbaa !36
  %i.bcu = add i64 %i.bct, 1
  call void @_ZdlPvm(ptr noundef %i.bcr, i64 noundef %i.bcu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit915, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916
  %i.bcv = load ptr, ptr %57, align 8, !tbaa !34  ; 2 uses
  %i.bcw = icmp eq ptr %i.bcv, %i.adh
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918
  %i.bcx = load i64, ptr %i.adh, align 8, !tbaa !36
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919
  %i.bcz = load ptr, ptr %58, align 8, !tbaa !34  ; 2 uses
  %i.bda = icmp eq ptr %i.bcz, %i.adc
  br i1 %i.bda, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921
  %i.bdb = load i64, ptr %i.adc, align 8, !tbaa !36
  %i.bdc = add i64 %i.bdb, 1
  call void @_ZdlPvm(ptr noundef %i.bcz, i64 noundef %i.bdc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  %i.bdd = add nuw i32 %storemerge2098, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.bdd, %.043.lcssa
  br i1 %exitcond.not, label %._crit_edge.i.i878, label %.lr.ph2099, !llvm.loop !1269

bb.gm:                                            ; preds = %_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit899
  %i.bde = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i906
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

.loopexit.split-lp:                               ; preds = %bb.gj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

bb.gn:                                            ; preds = %bb.gl
  %i.bdf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdg = load ptr, ptr %56, align 8, !tbaa !34  ; 2 uses
  %i.bdh = icmp eq ptr %i.bdg, %i.adj
  br i1 %i.bdh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925: ; preds = %bb.gn
  %i.bdi = load i64, ptr %i.adj, align 8, !tbaa !36
  %i.bdj = add i64 %i.bdi, 1
  call void @_ZdlPvm(ptr noundef %i.bdg, i64 noundef %i.bdj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927: ; preds = %bb.gn, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925
  %.pn170 = phi { ptr, i32 } [ %i.bdf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bdf, %bb.gn ] ; 2 uses
  %i.bdk = load ptr, ptr %57, align 8, !tbaa !34  ; 2 uses
  %i.bdl = icmp eq ptr %i.bdk, %i.adh
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927
  %i.bdm = load i64, ptr %i.adh, align 8, !tbaa !36
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdk, i64 noundef %i.bdn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928, %bb.gm
  %.pn170.pn = phi { ptr, i32 } [ %i.bde, %bb.gm ], [ %.pn170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928 ], [ %.pn170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927 ]
  %i.bdo = load ptr, ptr %58, align 8, !tbaa !34  ; 2 uses
  %i.bdp = icmp eq ptr %i.bdo, %i.adc
  br i1 %i.bdp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930
  %i.bdq = load i64, ptr %i.adc, align 8, !tbaa !36
  %i.bdr = add i64 %i.bdq, 1
  call void @_ZdlPvm(ptr noundef %i.bdo, i64 noundef %i.bdr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  br label %common.resume

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit935: ; preds = %._crit_edge.i.i878
  %i.bds = load ptr, ptr %59, align 8, !tbaa !34  ; 2 uses
  %i.bdt = icmp eq ptr %i.bds, %i.adl
  br i1 %i.bdt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit935
  %i.bdu = load i64, ptr %i.adl, align 8, !tbaa !36
  %i.bdv = add i64 %i.bdu, 1
  call void @_ZdlPvm(ptr noundef %i.bds, i64 noundef %i.bdv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit935, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br i1 %.not2104, label %_ZNK6AstVar11isNonOutputEv.exit, label %._crit_edge.i.i942

bb.go:                                            ; preds = %._crit_edge.i.i878
  %i.bdw = landingpad { ptr, i32 }
          cleanup
  %i.bdx = load ptr, ptr %59, align 8, !tbaa !34  ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, %i.adl
  br i1 %i.bdy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939: ; preds = %bb.go
  %i.bdz = load i64, ptr %i.adl, align 8, !tbaa !36
  %i.bea = add i64 %i.bdz, 1
  call void @_ZdlPvm(ptr noundef %i.bdx, i64 noundef %i.bea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %common.resume

._crit_edge.i.i942:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950
  %.02100 = phi i32 [ %i.beg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  store ptr %i.adn, ptr %60, align 8, !tbaa !163
  store i16 2685, ptr %i.adn, align 8
  store i64 2, ptr %i.ado, align 8, !tbaa !35
  store i8 0, ptr %i.adq, align 2, !tbaa !36
  %i.beb = load ptr, ptr %i.z, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.beb, ptr noundef null, ptr noundef nonnull %i.adn)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit947 unwind label %bb.gp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit947: ; preds = %._crit_edge.i.i942
  %i.bec = load ptr, ptr %60, align 8, !tbaa !34  ; 2 uses
  %i.bed = icmp eq ptr %i.bec, %i.adn
  br i1 %i.bed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit947
  %i.bee = load i64, ptr %i.adn, align 8, !tbaa !36
  %i.bef = add i64 %i.bee, 1
  call void @_ZdlPvm(ptr noundef %i.bec, i64 noundef %i.bef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit947, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  %i.beg = add nuw i32 %.02100, 1                 ; 2 uses
  %exitcond2196.not = icmp eq i32 %i.beg, %.043.lcssa
  br i1 %exitcond2196.not, label %_ZNK6AstVar11isNonOutputEv.exit, label %._crit_edge.i.i942, !llvm.loop !1270

bb.gp:                                            ; preds = %._crit_edge.i.i942
  %i.beh = landingpad { ptr, i32 }
          cleanup
  %i.bei = load ptr, ptr %60, align 8, !tbaa !34  ; 2 uses
  %i.bej = icmp eq ptr %i.bei, %i.adn
  br i1 %i.bej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951: ; preds = %bb.gp
  %i.bek = load i64, ptr %i.adn, align 8, !tbaa !36
  %i.bel = add i64 %i.bek, 1
  call void @_ZdlPvm(ptr noundef %i.bei, i64 noundef %i.bel) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  br label %common.resume

_ZNK6AstVar11isNonOutputEv.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %bb.ci, %bb.ch, %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit
  %i.bem = getelementptr inbounds nuw i8, ptr %.0442103, i64 8
  %.044 = load ptr, ptr %i.bem, align 8, !tbaa !211 ; 2 uses
  %.not147 = icmp eq ptr %.044, null
  br i1 %.not147, label %._crit_edge.i.i575, label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit, !llvm.loop !1271

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit955: ; preds = %._crit_edge.i.i575
  %i.ben = load ptr, ptr %61, align 8, !tbaa !34  ; 2 uses
  %i.beo = icmp eq ptr %i.ben, %i.adr
  br i1 %i.beo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit955
  %i.bep = load i64, ptr %i.adr, align 8, !tbaa !36
  %i.beq = add i64 %i.bep, 1
  call void @_ZdlPvm(ptr noundef %i.ben, i64 noundef %i.beq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit955, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %._crit_edge.i.i962

bb.gq:                                            ; preds = %._crit_edge.i.i575
  %i.ber = landingpad { ptr, i32 }
          cleanup
  %i.bes = load ptr, ptr %61, align 8, !tbaa !34  ; 2 uses
  %i.bet = icmp eq ptr %i.bes, %i.adr
  br i1 %i.bet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959: ; preds = %bb.gq
  %i.beu = load i64, ptr %i.adr, align 8, !tbaa !36
  %i.bev = add i64 %i.beu, 1
  call void @_ZdlPvm(ptr noundef %i.bes, i64 noundef %i.bev) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %common.resume

._crit_edge.i.i962:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  %i.bew = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 7 uses
  store ptr %i.bew, ptr %62, align 8, !tbaa !163
  store i16 2685, ptr %i.bew, align 8
  %i.bex = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 2, ptr %i.bex, align 8, !tbaa !35
  %i.bey = getelementptr inbounds nuw i8, ptr %62, i64 18
  store i8 0, ptr %i.bey, align 2, !tbaa !36
  %i.bez = load ptr, ptr %i.z, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.bez, ptr noundef null, ptr noundef nonnull %i.bew)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit967 unwind label %bb.ho

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit967: ; preds = %._crit_edge.i.i962
  %i.bfa = load ptr, ptr %62, align 8, !tbaa !34  ; 2 uses
  %i.bfb = icmp eq ptr %i.bfa, %i.bew
  br i1 %i.bfb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit967
  %i.bfc = load i64, ptr %i.bew, align 8, !tbaa !36
  %i.bfd = add i64 %i.bfc, 1
  call void @_ZdlPvm(ptr noundef %i.bfa, i64 noundef %i.bfd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit967, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.bfe = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1024), align 8, !tbaa !346, !range !115, !noundef !116
  %i.bff = trunc nuw i8 %i.bfe to i1
  br i1 %i.bff, label %bb.hy, label %._crit_edge.i.i971

._crit_edge.i.i971:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.bfg = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  store ptr %i.bfg, ptr %63, align 8, !tbaa !163
  store i8 10, ptr %i.bfg, align 8, !tbaa !36
  %i.bfh = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 1, ptr %i.bfh, align 8, !tbaa !35
  %i.bfi = getelementptr inbounds nuw i8, ptr %63, i64 17
  store i8 0, ptr %i.bfi, align 1, !tbaa !36
  %i.bfj = load ptr, ptr %i.z, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.bfj, ptr noundef null, ptr noundef nonnull %i.bfg)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit976 unwind label %bb.hp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit976: ; preds = %._crit_edge.i.i971
  %i.bfk = load ptr, ptr %63, align 8, !tbaa !34  ; 2 uses
  %i.bfl = icmp eq ptr %i.bfk, %i.bfg
  br i1 %i.bfl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit976
  %i.bfm = load i64, ptr %i.bfg, align 8, !tbaa !36
  %i.bfn = add i64 %i.bfm, 1
  call void @_ZdlPvm(ptr noundef %i.bfk, i64 noundef %i.bfn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit976, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i977
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.bfo = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 7 uses
  store ptr %i.bfo, ptr %67, align 8, !tbaa !163, !alias.scope !1370
  %i.bfp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1608), align 8, !tbaa !34, !noalias !1370 ; 2 uses
  %i.bfq = load i64, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1616), align 8, !tbaa !35, !noalias !1370 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !1370
  store i64 %i.bfq, ptr %i.c, align 8, !tbaa !171, !noalias !1370
  %i.bfr = icmp ugt i64 %i.bfq, 15
  br i1 %i.bfr, label %.noexc.i.i.i981, label %._crit_edge.i.i.i.i980

.noexc.i.i.i981:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979
  %i.bfs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bfs, ptr %67, align 8, !tbaa !34, !alias.scope !1370
  %i.bft = load i64, ptr %i.c, align 8, !tbaa !171, !noalias !1370
  store i64 %i.bft, ptr %i.bfo, align 8, !tbaa !36, !alias.scope !1370
  br label %._crit_edge.i.i.i.i980

._crit_edge.i.i.i.i980:                           ; preds = %.noexc.i.i.i981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979
  %i.bfu = phi ptr [ %i.bfs, %.noexc.i.i.i981 ], [ %i.bfo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979 ] ; 2 uses
  switch i64 %i.bfq, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i.i.i980
  %i.bfv = load i8, ptr %i.bfp, align 1, !tbaa !36
  store i8 %i.bfv, ptr %i.bfu, align 1, !tbaa !36
  br label %_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982

bb.gs:                                            ; preds = %._crit_edge.i.i.i.i980
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfu, ptr align 1 %i.bfp, i64 %i.bfq, i1 false)
  br label %_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982

_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982:     ; preds = %._crit_edge.i.i.i.i980, %bb.gr, %bb.gs
  %i.bfw = load i64, ptr %i.c, align 8, !tbaa !171, !noalias !1370 ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  store i64 %i.bfw, ptr %i.bfx, align 8, !tbaa !35, !alias.scope !1370
  %i.bfy = load ptr, ptr %67, align 8, !tbaa !34, !alias.scope !1370
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %i.bfw
  store i8 0, ptr %i.bfz, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !1370
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.bga = load i64, ptr %i.bfx, align 8, !tbaa !35, !noalias !1371
  %i.bgb = and i64 %i.bga, -2
  %i.bgc = icmp eq i64 %i.bgb, 4611686018427387902
  br i1 %i.bgc, label %bb.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i983

bb.gt:                                            ; preds = %_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.505) #28
          to label %.noexc988 unwind label %bb.hq

.noexc988:                                        ; preds = %bb.gt
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i983: ; preds = %_ZN9EmitCUtil12topClassNameB5cxx11Ev.exit982
  %i.bgd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.617, i64 noundef 2)
          to label %.noexc989 unwind label %bb.hq ; 6 uses

.noexc989:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i983
  %i.bge = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 9 uses
  store ptr %i.bge, ptr %66, align 8, !tbaa !163, !alias.scope !1371
  %i.bgf = load ptr, ptr %i.bgd, align 8, !tbaa !34 ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgd, i64 16 ; 5 uses
  %i.bgh = icmp eq ptr %i.bgf, %i.bgg
  br i1 %i.bgh, label %bb.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984

bb.gu:                                            ; preds = %.noexc989
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  %i.bgj = load i64, ptr %i.bgi, align 8, !tbaa !35 ; 3 uses
  %i.bgk = icmp ult i64 %i.bgj, 16
  call void @llvm.assume(i1 %i.bgk)
  %i.bgl = add nuw nsw i64 %i.bgj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bge, ptr noundef nonnull align 8 dereferenceable(1) %i.bgg, i64 %i.bgl, i1 false)
  br label %bb.gv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984: ; preds = %.noexc989
  store ptr %i.bgf, ptr %66, align 8, !tbaa !34, !alias.scope !1371
  %i.bgm = load i64, ptr %i.bgg, align 8, !tbaa !36
  store i64 %i.bgm, ptr %i.bge, align 8, !tbaa !36, !alias.scope !1371
  %.phi.trans.insert.i985 = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  %.pre.i986 = load i64, ptr %.phi.trans.insert.i985, align 8, !tbaa !35
  br label %bb.gv
end_hunk_0
