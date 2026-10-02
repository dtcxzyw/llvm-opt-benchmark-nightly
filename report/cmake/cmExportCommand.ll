Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportCommand?download=true
inline.NumInlined: 2945
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !68
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 72
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(136) %i.oc) #22, !inline_history !3
  br label %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit187

_ZNKSt14default_deleteI33cmExportBuildCMakeConfigGeneratorEclEPS0_.exit.i186: ; preds = %_ZN19cmDiagnosticContextD2Ev.exit
  %i.og = landingpad { ptr, i32 }
          cleanup
  %i.oh = load ptr, ptr %i.ma, align 8, !tbaa !68
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 144
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(160) %i.ma) #22, !inline_history !2
  br label %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit187

_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.cz, %_ZNKSt14default_deleteI26cmExportBuildFileGeneratorEclEPS0_.exit.i, %bb.ds, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit158, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit158 ], [ true, %bb.ds ], [ true, %_ZNKSt14default_deleteI26cmExportBuildFileGeneratorEclEPS0_.exit.i ], [ false, %bb.cz ]
  %i.ok = load ptr, ptr %17, align 8, !tbaa !32   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.em
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit
  %i.om = load i64, ptr %i.em, align 8, !tbaa !34
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.critedge

_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit187: ; preds = %_ZNKSt14default_deleteI26cmExportBuildFileGeneratorEclEPS0_.exit.i183, %bb.dw, %bb.da, %_ZNKSt14default_deleteI33cmExportBuildCMakeConfigGeneratorEclEPS0_.exit.i186, %bb.dv, %bb.cw, %bb.cx, %bb.cn, %bb.ca, %bb.bz, %.body119
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %i.lt, %bb.cw ], [ %.pn74.pn.pn, %bb.cn ], [ %i.ij, %bb.ca ], [ %i.ob, %_ZNKSt14default_deleteI26cmExportBuildFileGeneratorEclEPS0_.exit.i183 ], [ %i.fd, %.body119 ], [ %.pn68.pn.pn, %bb.bz ], [ %i.lu, %bb.cx ], [ %i.lz, %bb.da ], [ %.pn78, %bb.dv ], [ %i.og, %_ZNKSt14default_deleteI33cmExportBuildCMakeConfigGeneratorEclEPS0_.exit.i186 ], [ %i.ob, %bb.dw ]
  %i.oo = load ptr, ptr %17, align 8, !tbaa !32   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.em
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit187
  %i.oq = load i64, ptr %i.em, align 8, !tbaa !34
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt10unique_ptrI33cmExportBuildCMakeConfigGeneratorSt14default_deleteIS0_EED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body113

.critedge:                                        ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ false, %bb.ay ]
  %i.os = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.cc
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.ou = load i64, ptr %i.cc, align 8, !tbaa !34
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ow = load ptr, ptr %i.by, align 8, !tbaa !32 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bz
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.oy = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.pa = load ptr, ptr %i.bv, align 8, !tbaa !32 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.bw
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.pc = load i64, ptr %i.bw, align 8, !tbaa !34
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.pe = load ptr, ptr %i.bs, align 8, !tbaa !32 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.bt
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.pg = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.pi = load ptr, ptr %i.bo, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(177) %15, ptr noundef %i.pi)
          to label %_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit unwind label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.pj = landingpad { ptr, i32 }
          catch ptr null
  %i.pk = extractvalue { ptr, i32 } %i.pj, 0
  call void @__clang_call_terminate(ptr %i.pk) #23
  unreachable

_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.pl = load ptr, ptr %14, align 8, !tbaa !29   ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pl, %i.pn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.pl, %_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit ] ; 3 uses
  %i.po = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !34
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pt, %i.pn
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit
  %i.pu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.pl, %_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !103
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pu to i64
  %i.pz = sub i64 %i.px, %i.py
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.pz) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret i1 %.3

.body113:                                         ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ba, %bb.ao, %bb.at
  %.pn80.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ao ], [ %i.cy, %bb.at ], [ %.pn80.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.dn, %bb.az ], [ %i.do, %bb.ba ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  call fastcc void @_ZZL16HandleExportModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15ExportArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(177) dereferenceable(177) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body111

.body111:                                         ; preds = %bb.am, %bb.aj, %bb.ai, %.body113
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn.pn, %.body113 ], [ %i.bm, %bb.am ], [ %i.bg, %bb.aj ], [ %i.bg, %bb.ai ]
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #22
  br label %bb.dz

bb.dz:                                            ; preds = %.body111, %.body
  %.pn80.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn.pn.pn, %.body111 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.458"], align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.ArgumentParser::Instance", align 8 ; 13 uses
  %4 = alloca %"class.std::function.19", align 8  ; 10 uses
  %5 = alloca [3 x %"struct.std::pair.458"], align 8 ; 12 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca [3 x %"struct.std::pair.458"], align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.ArgumentParser::Instance", align 8 ; 13 uses
  %9 = alloca %"class.std::function.19", align 8  ; 11 uses
  %10 = alloca %"class.std::function.19", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.ArgumentParser::Instance", align 8 ; 13 uses
  %12 = alloca %"class.std::function.19", align 8 ; 11 uses
  %13 = alloca %"class.std::function.19", align 8 ; 11 uses
  %14 = alloca %"class.std::function.19", align 8 ; 10 uses
  %15 = alloca %class.cmArgumentParser.531, align 8 ; 10 uses
  %16 = alloca %"class.std::vector", align 8      ; 15 uses
  %17 = alloca %struct.SetupArguments, align 8    ; 17 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %class.cmArgumentParser.534, align 8 ; 7 uses
  %21 = alloca %class.cmArgumentParser.534, align 8 ; 9 uses
  %22 = alloca %struct.PackageDependencyArguments, align 8 ; 17 uses
  %23 = alloca %class.cmRange, align 16           ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %class.cmArgumentParser.544, align 8 ; 7 uses
  %27 = alloca %class.cmArgumentParser.544, align 8 ; 8 uses
  %28 = alloca %struct.TargetArguments, align 8   ; 11 uses
  %29 = alloca %class.cmRange, align 16           ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %15, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_NS0_8NonEmptyISB_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.e, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_NS0_8NonEmptyISB_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.d, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %15, i64 5, ptr nonnull @.str.3, ptr noundef nonnull align 8 %14)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %.not.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i5.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.o = load ptr, ptr %1, align 8, !tbaa !78, !nonnull !79, !align !80
  %i.p = invoke noundef zeroext i1 @_ZN14cmExperimental17HasSupportEnabledERK10cmMakefileNS_7FeatureE(ptr noundef nonnull align 8 dereferenceable(2952) %i.o, i32 noundef 0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  br i1 %i.p, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.s, align 8
  store i64 64, ptr %13, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_S5_ISD_SaISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.r, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_S5_ISD_SaISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.q, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %15, i64 18, ptr nonnull @.str.38, ptr noundef nonnull align 8 %13)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.t, null
  br i1 %.not.i.i116, label %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSD_S0_IS8_SaIS8_EESD_SH_vvEERSE_N2cm18static_string_viewET_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSD_S0_IS8_SaIS8_EESD_SH_vvEERSE_N2cm18static_string_viewET_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %.not.i5.i114 = icmp eq ptr %i.y, null
  br i1 %.not.i5.i114, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body unwind label %bb.p      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSD_S0_IS8_SaIS8_EESD_SH_vvEERSE_N2cm18static_string_viewET_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.i, %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSD_S0_IS8_SaIS8_EESD_SH_vvEERSE_N2cm18static_string_viewET_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.af, align 8
  store i64 88, ptr %12, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_S5_ISD_SaISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.ae, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE14SetupArgumentsE4BindIMSI_S5_ISD_SaISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.ad, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %15, i64 6, ptr nonnull @.str.39, ptr noundef nonnull align 8 %12)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i121, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %bb.y unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #23
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not.i5.i119 = icmp eq ptr %i.al, null
  br i1 %.not.i5.i119, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body unwind label %bb.x      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable

bb.y:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ap, ptr %17, align 8, !tbaa !42, !alias.scope !384
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !33, !alias.scope !384
  store i8 0, ptr %i.ap, align 8, !tbaa !34, !alias.scope !384
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !42, !alias.scope !384
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !33, !alias.scope !384
  store i8 0, ptr %i.as, align 8, !tbaa !34, !alias.scope !384
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, i8 0, i64 48, i1 false), !alias.scope !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !384
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !noalias !384
  store ptr %16, ptr %i.av, align 8, !tbaa !52, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !384
  store ptr %17, ptr %i.c, align 8, !tbaa !53, !noalias !384
  invoke void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr null, ptr noundef nonnull align 8 dereferenceable(144) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %11) #22
  br label %.body125

_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  invoke void @_ZN14ArgumentParser8Instance5ParseIKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i
  %i.ax = load ptr, ptr %11, align 8, !tbaa !54, !noalias !384 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55, !noalias !384 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.az
end_hunk_0
begin_hunk_1_@_ZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ak
  %i.cw = phi i64 [ %i.cs, %bb.ak ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !33, !alias.scope !387
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !32
  store i64 0, ptr %i.cx, align 8, !tbaa !33
  store i8 0, ptr %i.cp, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.an

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.al
  %i.da = load ptr, ptr %18, align 8, !tbaa !32   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cn
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !34
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  %i.de = load ptr, ptr %19, align 8, !tbaa !32   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bv
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dg = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dj

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.aj
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.an:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %18, align 8, !tbaa !32   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cn
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.an
  %i.dm = load i64, ptr %i.cn, align 8, !tbaa !34
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.am
  %.pn = phi { ptr, i32 } [ %i.di, %bb.am ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.dj, %bb.an ] ; 2 uses
  %i.do = load ptr, ptr %19, align 8, !tbaa !32   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bv
  br i1 %i.dp, label %.body128, label %.body128.sink.split

.body128.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.ai
  %.sink365 = phi ptr [ %i.ch, %bb.ai ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %i.dq = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink365, i64 noundef %i.dr) #24
  br label %.body128

.body128:                                         ; preds = %.body128.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn.pn.ph, %.body128.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body125

bb.ao:                                            ; preds = %bb.af
  %i.ds = load ptr, ptr %1, align 8, !tbaa !78, !nonnull !79, !align !80
  %i.dt = invoke noundef ptr @_ZNK10cmMakefile18GetGlobalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(2952) %i.ds)
          to label %bb.ap unwind label %bb.bf

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 288
  %i.dv = invoke noundef nonnull align 8 dereferenceable(132) ptr @_ZN14cmExportSetMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.aq unwind label %bb.bg     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %21, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE26PackageDependencyArgumentsE4BindIMSI_SB_SI_SB_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.dx, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE26PackageDependencyArgumentsE4BindIMSI_SB_SI_SB_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.dw, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %21, i64 7, ptr nonnull @.str.41, ptr noundef nonnull align 8 %10)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !38 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i144, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dz = invoke noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %bb.ax unwind label %bb.at     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #23
  unreachable

bb.au:                                            ; preds = %bb.aq
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !38 ; 2 uses
  %.not.i5.i142 = icmp eq ptr %i.ed, null
  br i1 %.not.i5.i142, label %.body145, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = invoke noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body145 unwind label %bb.aw  ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #23
  unreachable

bb.ax:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ej, align 8
  store i64 32, ptr %9, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE26PackageDependencyArgumentsE4BindIMSI_NS0_10MaybeEmptyISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.ei, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE26PackageDependencyArgumentsE4BindIMSI_NS0_10MaybeEmptyISD_EESI_SM_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.eh, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %21, i64 10, ptr nonnull @.str.42, ptr noundef nonnull align 8 %9)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !38 ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i149, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %bb.be unwind label %bb.ba     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #23
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %i.eh, align 8, !tbaa !38 ; 2 uses
  %.not.i5.i147 = icmp eq ptr %i.ep, null
  br i1 %.not.i5.i147, label %.body145, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eq = invoke noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body145 unwind label %bb.bd  ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #23
  unreachable

bb.be:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  invoke void @_ZN14ArgumentParser9ActionMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %20, ptr noundef nonnull align 8 dereferenceable(144) %21)
          to label %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE26PackageDependencyArgumentsEC2ERKSE_.exit unwind label %bb.bh

_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE26PackageDependencyArgumentsEC2ERKSE_.exit: ; preds = %bb.be
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.et = load ptr, ptr %i.au, align 8, !tbaa !388 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !388 ; 2 uses
  %.not273 = icmp eq ptr %i.et, %i.ev
  br i1 %.not273, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE26PackageDependencyArgumentsEC2ERKSE_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0..sroa_idx.i10.i184 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %22, i64 48
  br label %bb.bi

bb.bf:                                            ; preds = %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.bg:                                            ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.bh:                                            ; preds = %bb.be
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body145

.body145:                                         ; preds = %bb.bh, %bb.bc, %bb.bb, %bb.au, %bb.av
  %eh.lpad-body146 = phi { ptr, i32 } [ %i.ec, %bb.au ], [ %i.ec, %bb.av ], [ %i.fv, %bb.bh ], [ %i.eo, %bb.bc ], [ %i.eo, %bb.bb ]
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.di

bb.bi:                                            ; preds = %.lr.ph, %.thread
  %.sroa.0248.0274 = phi ptr [ %i.et, %.lr.ph ], [ %i.jh, %.thread ] ; 5 uses
  %i.fw = load ptr, ptr %.sroa.0248.0274, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0248.0274, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !24
  %i.fz = icmp eq ptr %i.fw, %i.fy
  br i1 %i.fz, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %31 = load <2 x ptr>, ptr %.sroa.0248.0274, align 8, !tbaa !24
  %32 = getelementptr inbounds nuw i8, <2 x ptr> %31, <2 x i64> <i64 32, i64 0>
  store <2 x ptr> %32, ptr %23, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  store ptr %i.ew, ptr %22, align 8, !tbaa !42, !alias.scope !389
  store i64 0, ptr %i.ex, align 8, !tbaa !33, !alias.scope !389
  store i8 0, ptr %i.ew, align 8, !tbaa !34, !alias.scope !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false), !alias.scope !389
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !noalias !389
  store ptr %16, ptr %i.ez, align 8, !tbaa !52, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !389
  store ptr %22, ptr %i.b, align 8, !tbaa !53, !noalias !389
  invoke void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr null, ptr noundef nonnull align 8 dereferenceable(144) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i157 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %8) #22
  br label %.body.i155

_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i157: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !389
  invoke void @_ZN14ArgumentParser8Instance5ParseIK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 noundef 0)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i157
  %i.gb = load ptr, ptr %8, align 8, !tbaa !54, !noalias !389 ; 3 uses
  %i.gc = load ptr, ptr %i.fa, align 8, !tbaa !55, !noalias !389 ; 2 uses
  %.not4.i.i.i.i.i.i158 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not4.i.i.i.i.i.i158, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i166, label %.lr.ph.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i159:                            ; preds = %bb.bl, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162
  %.05.i.i.i.i.i.i160 = phi ptr [ %i.gj, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162 ], [ %i.gb, %bb.bl ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i160, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i161 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i.i.i161, label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i159
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i160, i64 40 ; 2 uses
  %i.gg = invoke noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i32 noundef 3)
          to label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162 unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #23
  unreachable

_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162: ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i159
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i160, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gj, %i.gc
  br i1 %.not.i.i.i.i.i.i163, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i164, label %.lr.ph.i.i.i.i.i.i159, !llvm.loop !0

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i164: ; preds = %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i162
  %.pr.i.i.i.i165 = load ptr, ptr %8, align 8, !tbaa !54, !noalias !389
  br label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i166

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i166: ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i164, %bb.bl
  %i.gk = phi ptr [ %.pr.i.i.i.i165, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i164 ], [ %i.gb, %bb.bl ] ; 3 uses
  %.not.i.i1.i.i.i.i167 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i.i.i.i167, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i166
  %i.gl = load ptr, ptr %i.fb, align 8, !tbaa !57, !noalias !389
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #24
  br label %bb.bq

bb.bp:                                            ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i157
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser8InstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !389
  br label %.body.i155

.body.i155:                                       ; preds = %bb.bp, %bb.bk
  %eh.lpad-body.i156 = phi { ptr, i32 } [ %i.gp, %bb.bp ], [ %i.ga, %bb.bk ]
  call fastcc void @_ZZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN26PackageDependencyArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.cg

bb.bq:                                            ; preds = %bb.bo, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.gq = load ptr, ptr %16, align 8, !tbaa !24   ; 3 uses
  %i.gr = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !390
  store i64 44, ptr %7, align 8, !tbaa !58, !alias.scope !391, !noalias !390
  store ptr @.str.43, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !59, !alias.scope !391, !noalias !390
  store ptr null, ptr %i.fc, align 8, !tbaa !61, !alias.scope !391, !noalias !390
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !32, !noalias !390
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !33, !noalias !390
  store i64 %i.gv, ptr %i.fd, align 8, !tbaa !58, !alias.scope !392, !noalias !390
  store ptr %i.gt, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !59, !alias.scope !392, !noalias !390
  store ptr null, ptr %i.fe, align 8, !tbaa !61, !alias.scope !392, !noalias !390
  store i64 2, ptr %i.ff, align 8, !tbaa !58, !alias.scope !393, !noalias !390
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !59, !alias.scope !393, !noalias !390
  store ptr null, ptr %i.fg, align 8, !tbaa !61, !alias.scope !393, !noalias !390
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull %7, i64 3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !390
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172 unwind label %bb.bu

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172: ; preds = %bb.bs
  %i.gw = load ptr, ptr %24, align 8, !tbaa !32   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fi
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172
  %i.gy = load i64, ptr %i.fi, align 8, !tbaa !34
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit

bb.bt:                                            ; preds = %bb.br
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

bb.bu:                                            ; preds = %bb.bs
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %24, align 8, !tbaa !32   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fi
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.bu
  %i.he = load i64, ptr %i.fi, align 8, !tbaa !34
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.bt
  %.pn91 = phi { ptr, i32 } [ %i.ha, %bb.bt ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %i.hb, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bq
  %i.hg = load ptr, ptr %.sroa.0248.0274, align 8, !tbaa !24
  %i.hh = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN11cmExportSet28GetPackageDependencyForSetupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.hg)
          to label %bb.bw unwind label %bb.bx     ; 3 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hi = load i64, ptr %i.ex, align 8, !tbaa !33 ; 2 uses
  switch i64 %i.hi, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 0, label %bb.cd
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %bb.bw
  %.pre = load ptr, ptr %22, align 8, !tbaa !32
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bw
  %i.hj = load ptr, ptr %22, align 8, !tbaa !32   ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 1
  %i.hl = icmp ne i32 %i.hk, 1330926913
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.bx:                                            ; preds = %bb.cd, %bb.bv
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hp = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.hj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.hq = call noundef zeroext i1 @_ZN7cmValue5IsOffESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.hi, ptr %i.hp) #22
  br i1 %i.hq, label %.sink.split, label %bb.by

bb.by:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hr = load ptr, ptr %22, align 8, !tbaa !32
  %i.hs = load i64, ptr %i.ex, align 8, !tbaa !33
  %i.ht = call noundef zeroext i1 @_ZN7cmValue4IsOnESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.hs, ptr %i.hr) #22
  br i1 %i.ht, label %.sink.split, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !394
  store i64 48, ptr %5, align 8, !tbaa !58, !alias.scope !395, !noalias !394
  store ptr @.str.45, ptr %.sroa.4.0..sroa_idx.i.i183, align 8, !tbaa !59, !alias.scope !395, !noalias !394
  store ptr null, ptr %i.fj, align 8, !tbaa !61, !alias.scope !395, !noalias !394
  %i.hu = load ptr, ptr %22, align 8, !tbaa !32, !noalias !394
end_hunk_1
begin_hunk_2_@_ZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !394
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit187 unwind label %bb.cc

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit187: ; preds = %bb.ca
  %i.hw = load ptr, ptr %25, align 8, !tbaa !32   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.fq
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit187
  %i.hy = load i64, ptr %i.fq, align 8, !tbaa !34
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.cc:                                            ; preds = %bb.ca
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %25, align 8, !tbaa !32   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fq
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.cc
  %i.ie = load i64, ptr %i.fq, align 8, !tbaa !34
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.cb
  %.pn93 = phi { ptr, i32 } [ %i.ia, %bb.cb ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %i.ib, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.cf

.sink.split:                                      ; preds = %bb.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sink = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 2, %bb.by ]
  store i32 %.sink, ptr %i.hh, align 8, !tbaa !404
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %bb.bw
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !24
  %i.ij = load ptr, ptr %i.ey, align 8, !tbaa !24
  %i.ik = load ptr, ptr %i.fr, align 8, !tbaa !24
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !24 ; 2 uses
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.il, i64 %i.io
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEvNSA_IPS5_S7_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, ptr %i.ip, ptr %i.ij, ptr %i.ik)
          to label %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit unwind label %bb.bx

_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit: ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %cond254 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ true, %bb.cd ]
  %i.iq = load ptr, ptr %i.ey, align 8, !tbaa !29 ; 3 uses
  %i.ir = load ptr, ptr %i.fr, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.iq, %i.ir
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ix, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.iq, %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit ] ; 3 uses
  %i.is = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !34
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ix, %i.ir
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ey, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit
  %i.iy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.iq, %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEN14ArgumentParser10MaybeEmptyIS9_EETnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSE_10value_typeEEE5valuentsr2cm13is_unique_ptrINSF_10value_typeEEE5valuesr3std14is_convertibleISH_SG_EE5valueEiE4typeELi0EEEvRSE_RKSF_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.iz = load ptr, ptr %i.fs, align 8, !tbaa !103
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ce, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jd = load ptr, ptr %22, align 8, !tbaa !32   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ew
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.jf = load i64, ptr %i.ew, align 8, !tbaa !34
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %cond254, label %.thread, label %.loopexit

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.bi
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0248.0274, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.jh, %i.ev
  br i1 %.not, label %._crit_edge, label %bb.bi

bb.cf:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %.pn95.pn = phi { ptr, i32 } [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %i.ho, %bb.bx ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call fastcc void @_ZZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN26PackageDependencyArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.body.i155
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn, %bb.cf ], [ %eh.lpad-body.i156, %.body.i155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.dh

._crit_edge:                                      ; preds = %.thread, %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE26PackageDependencyArgumentsEC2ERKSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %27, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE15TargetArgumentsE4BindIMSI_SB_SI_SB_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.jj, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EER17cmExecutionStatusE15TargetArgumentsE4BindIMSI_SB_SI_SB_vvEERSJ_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.ji, align 8, !tbaa !38
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %27, i64 20, ptr nonnull @.str.46, ptr noundef nonnull align 8 %4)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %._crit_edge
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !38 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i197, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jl = invoke noundef zeroext i1 %i.jk(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.cn unwind label %bb.cj     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #23
  unreachable

bb.ck:                                            ; preds = %._crit_edge
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %i.ji, align 8, !tbaa !38 ; 2 uses
  %.not.i5.i195 = icmp eq ptr %i.jp, null
  br i1 %.not.i5.i195, label %.body198, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jq = invoke noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body198 unwind label %bb.cm  ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #23
  unreachable

bb.cn:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN14ArgumentParser9ActionMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %26, ptr noundef nonnull align 8 dereferenceable(144) %27)
          to label %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE15TargetArgumentsEC2ERKSE_.exit unwind label %bb.co

_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE15TargetArgumentsEC2ERKSE_.exit: ; preds = %bb.cn
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !388 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !388 ; 2 uses
  %.not255275 = icmp eq ptr %i.ju, %i.jw
  br i1 %.not255275, label %.critedge113, label %.lr.ph278

.lr.ph278:                                        ; preds = %_ZN16cmArgumentParserIZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusE15TargetArgumentsEC2ERKSE_.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0..sroa_idx.i10.i225 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4.0..sroa_idx.i18.i226 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.body198

.body198:                                         ; preds = %bb.ck, %bb.cl, %bb.co
  %eh.lpad-body199 = phi { ptr, i32 } [ %i.kj, %bb.co ], [ %i.jo, %bb.cl ], [ %i.jo, %bb.ck ]
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.dg

bb.cp:                                            ; preds = %.lr.ph278, %.thread252
  %.sroa.0242.0276 = phi ptr [ %i.ju, %.lr.ph278 ], [ %i.md, %.thread252 ] ; 5 uses
  %i.kk = load ptr, ptr %.sroa.0242.0276, align 8, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0242.0276, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !24
  %i.kn = icmp eq ptr %i.kk, %i.km
  br i1 %i.kn, label %.thread252, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %33 = load <2 x ptr>, ptr %.sroa.0242.0276, align 8, !tbaa !24
  %34 = getelementptr inbounds nuw i8, <2 x ptr> %33, <2 x i64> <i64 32, i64 0>
  store <2 x ptr> %34, ptr %29, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  store ptr %i.jx, ptr %28, align 8, !tbaa !42, !alias.scope !405
  store i64 0, ptr %i.jy, align 8, !tbaa !33, !alias.scope !405
  store i8 0, ptr %i.jx, align 8, !tbaa !34, !alias.scope !405
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !noalias !405
  store ptr %16, ptr %i.jz, align 8, !tbaa !52, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !405
  store ptr %28, ptr %i.a, align 8, !tbaa !53, !noalias !405
  invoke void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(144) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i211 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %3) #22
  br label %.body.i207

_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i211: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !405
  invoke void @_ZN14ArgumentParser8Instance5ParseIK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i211
  %i.kp = load ptr, ptr %3, align 8, !tbaa !54, !noalias !405 ; 3 uses
  %i.kq = load ptr, ptr %i.ka, align 8, !tbaa !55, !noalias !405 ; 2 uses
  %.not4.i.i.i.i.i.i212 = icmp eq ptr %i.kp, %i.kq
  br i1 %.not4.i.i.i.i.i.i212, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i220, label %.lr.ph.i.i.i.i.i.i213

.lr.ph.i.i.i.i.i.i213:                            ; preds = %bb.cs, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216
  %.05.i.i.i.i.i.i214 = phi ptr [ %i.kx, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216 ], [ %i.kp, %bb.cs ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i214, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i215 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i.i.i215, label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i.i213
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i214, i64 40 ; 2 uses
  %i.ku = invoke noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.kt, i32 noundef 3)
          to label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216 unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #23
  unreachable

_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216: ; preds = %bb.ct, %.lr.ph.i.i.i.i.i.i213
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i214, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i217 = icmp eq ptr %i.kx, %i.kq
  br i1 %.not.i.i.i.i.i.i217, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i218, label %.lr.ph.i.i.i.i.i.i213, !llvm.loop !0

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i218: ; preds = %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i216
  %.pr.i.i.i.i219 = load ptr, ptr %3, align 8, !tbaa !54, !noalias !405
  br label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i220

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i220: ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i218, %bb.cs
  %i.ky = phi ptr [ %.pr.i.i.i.i219, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i218 ], [ %i.kp, %bb.cs ] ; 3 uses
  %.not.i.i1.i.i.i.i221 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i1.i.i.i.i221, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i220
  %i.kz = load ptr, ptr %i.kb, align 8, !tbaa !57, !noalias !405
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #24
  br label %bb.cx

bb.cw:                                            ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i211
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser8InstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !405
  br label %.body.i207

.body.i207:                                       ; preds = %bb.cw, %bb.cr
  %eh.lpad-body.i208 = phi { ptr, i32 } [ %i.ld, %bb.cw ], [ %i.ko, %bb.cr ]
  %i.le = load ptr, ptr %28, align 8, !tbaa !32, !alias.scope !405 ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.jx
  br i1 %i.lf, label %.body222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209: ; preds = %.body.i207
  %i.lg = load i64, ptr %i.jx, align 8, !tbaa !34, !alias.scope !405
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #24
  br label %.body222

bb.cx:                                            ; preds = %bb.cv, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.li = load ptr, ptr %16, align 8, !tbaa !24   ; 3 uses
  %i.lj = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.lk = icmp eq ptr %i.li, %i.lj                ; 2 uses
  br i1 %i.lk, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !406
  store i64 32, ptr %2, align 8, !tbaa !58, !alias.scope !407, !noalias !406
  store ptr @.str.47, ptr %.sroa.4.0..sroa_idx.i.i224, align 8, !tbaa !59, !alias.scope !407, !noalias !406
  store ptr null, ptr %i.kc, align 8, !tbaa !61, !alias.scope !407, !noalias !406
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !32, !noalias !406
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !33, !noalias !406
  store i64 %i.ln, ptr %i.kd, align 8, !tbaa !58, !alias.scope !408, !noalias !406
  store ptr %i.ll, ptr %.sroa.4.0..sroa_idx.i10.i225, align 8, !tbaa !59, !alias.scope !408, !noalias !406
  store ptr null, ptr %i.ke, align 8, !tbaa !61, !alias.scope !408, !noalias !406
  store i64 2, ptr %i.kf, align 8, !tbaa !58, !alias.scope !409, !noalias !406
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx.i18.i226, align 8, !tbaa !59, !alias.scope !409, !noalias !406
  store ptr null, ptr %i.kg, align 8, !tbaa !61, !alias.scope !409, !noalias !406
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr nonnull %2, i64 3)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !406
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229 unwind label %bb.db

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229: ; preds = %bb.cz
  %i.lo = load ptr, ptr %30, align 8, !tbaa !32   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ki
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229
  %i.lq = load i64, ptr %i.ki, align 8, !tbaa !34
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.dd

.body222:                                         ; preds = %.body.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %_ZZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15TargetArgumentsD2Ev.exit240

bb.da:                                            ; preds = %bb.cy
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.db:                                            ; preds = %bb.cz
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %30, align 8, !tbaa !32   ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.ki
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.db
  %i.lw = load i64, ptr %i.ki, align 8, !tbaa !34
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.da
  %.pn99 = phi { ptr, i32 } [ %i.ls, %bb.da ], [ %i.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %i.lt, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.df

bb.dc:                                            ; preds = %bb.cx
  %i.ly = load ptr, ptr %.sroa.0242.0276, align 8, !tbaa !24
  invoke void @_ZN11cmExportSet22SetXcFrameworkLocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(132) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.ly, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.lz = load ptr, ptr %28, align 8, !tbaa !32   ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.jx
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i236: ; preds = %bb.dd
  %i.mb = load i64, ptr %i.jx, align 8, !tbaa !34
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i237: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br i1 %i.lk, label %.thread252, label %.critedge113

.thread252:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i237, %bb.cp
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0242.0276, i64 24 ; 2 uses
  %.not255 = icmp eq ptr %i.md, %i.jw
  br i1 %.not255, label %.critedge113, label %bb.cp

bb.de:                                            ; preds = %bb.dc
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %.pn101 = phi { ptr, i32 } [ %i.me, %bb.de ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ] ; 2 uses
  %i.mf = load ptr, ptr %28, align 8, !tbaa !32   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.jx
  br i1 %i.mg, label %_ZZL15HandleSetupModeRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN15TargetArgumentsD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238: ; preds = %bb.df
  %i.mh = load i64, ptr %i.jx, align 8, !tbaa !34
end_hunk_2
