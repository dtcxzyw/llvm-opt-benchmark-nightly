Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LTOBackend?download=true
inline.NumInlined: 4819
inline.NumDeleted: 2914
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3lto3optERKNS0_6ConfigEPNS_13TargetMachineEjRNS_6ModuleEbPNS_18ModuleSummaryIndexEPKS8_RKSt6vectorIhSaIhEENS_8ArrayRefINS_9StringRefEEE:bb.a
  %i.oh = lshr i64 %i.og, 3
  %i.oi = and i64 %i.oh, 1073741820
  %i.oj = add nuw nsw i64 %i.oi, %i.of
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.od, i64 noundef %i.oj, i64 noundef 8) #25
  br label %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"

"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i": ; preds = %bb.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i.i, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %i.mn, align 8, !tbaa !8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mn, i64 224 ; 2 uses
  store i8 0, ptr %i.ok, align 8, !tbaa !403
  %i.ol = load i8, ptr %i.mo, align 8, !tbaa !403, !range !21, !noundef !22
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.bc, label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i

bb.bc:                                            ; preds = %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"
  %i.on = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  call void @_ZN4llvm21TargetLibraryInfoImplC1EOS0_(ptr noundef nonnull align 8 dereferenceable(224) %i.on, ptr noundef nonnull align 8 dereferenceable(224) %11) #25
  store i8 1, ptr %i.ok, align 8, !tbaa !403
  br label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i

_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i: ; preds = %bb.bc, %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"
  %i.oo = load ptr, ptr %i.ml, align 8, !tbaa !398 ; 3 uses
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !398
  %.not.i.i.i128.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i128.i, label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.oo) #25, !inline_history !416
  br label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i

_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i
  %i.os = load i8, ptr %i.mo, align 8, !tbaa !403, !range !21, !noundef !22
  %i.ot = trunc nuw i8 %i.os to i1
  store i8 0, ptr %i.mo, align 8, !tbaa !403
  br i1 %i.ot, label %bb.bd, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !408
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.ov to i64
  %i.pa = sub i64 %i.oy, %i.oz
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef %i.pa) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %i.pb = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !408
  %i.pf = ptrtoint ptr %i.pe to i64
  %i.pg = ptrtoint ptr %i.pc to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef %i.ph) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i: ; preds = %bb.bf, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 156 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !409 ; 2 uses
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i", label %.lr.ph7.preheader.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i:                      ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i
  %i.pm = load ptr, ptr %i.pi, align 8, !tbaa !412
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !413
  %i.pp = zext i32 %i.pk to i64
  %i.pq = add nuw nsw i64 %i.pp, 31
  %i.pr = lshr i64 %i.pq, 5
  br label %.lr.ph7.i.i.i.i.i

.lr.ph7.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.i.i.i.i.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not11.i2.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph7.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i to i32
  %i.pu = shl i32 %indvars.iv.tr.i.i.i.i.i, 5
  br label %bb.bg

bb.bg:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi i32 [ %i.pt, %.lr.ph.i.i.i.i.i ], [ %i.qg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i ] ; 3 uses
  %i.pv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i, i1 true)
  %i.pw = or disjoint i32 %i.pv, %i.pu
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !32 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 24 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !37
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.qf = add i32 %.0.i3.i.i.i.i.i, -1
  %i.qg = and i32 %i.qf, %.0.i3.i.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.bg, !llvm.loop !414

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph7.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.pr
  br i1 %.not.i.i.i3.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, label %.lr.ph7.i.i.i.i.i, !llvm.loop !415

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.pr.i.i.i.i = load i32, ptr %i.pj, align 4, !tbaa !409 ; 2 uses
  %i.qh = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %i.qh, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i", label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i
  %i.qi = load ptr, ptr %i.pi, align 8, !tbaa !412
  %i.qj = zext i32 %.pr.i.i.i.i to i64            ; 2 uses
  %i.qk = mul nuw nsw i64 %i.qj, 40
  %i.ql = add nuw nsw i64 %i.qj, 31
  %i.qm = lshr i64 %i.ql, 3
  %i.qn = and i64 %i.qm, 1073741820
  %i.qo = add nuw nsw i64 %i.qn, %i.qk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qi, i64 noundef %i.qo, i64 noundef 8) #25
  br label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"

"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i": ; preds = %bb.bh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i, %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !139 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, 0
  br i1 %i.qs, label %bb.bu, label %bb.bo

bb.bi:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, %bb.av
  %indvars.iv.i = phi i64 [ 0, %bb.av ], [ %indvars.iv.next.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i ] ; 10 uses
  %i.qt = lshr i64 %indvars.iv.i, 6
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.qt
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !131
  %i.qw = and i64 %indvars.iv.i, 63
  %i.qx = shl nuw i64 1, %i.qw
  %i.qy = and i64 %i.qx, %i.qv
  %.not.i.i129.i = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i129.i, label %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i: ; preds = %bb.bi
  %i.qz = lshr i64 %indvars.iv.i, 2
  %i.ra = and i64 %i.qz, 1073741823
  %i.rb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !37
  %i.rd = zext i8 %i.rc to i32
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.re = shl i32 %indvars.iv.tr.i, 1
  %i.rf = and i32 %i.re, 6
  %i.rg = lshr i32 %i.rd, %i.rf
  %i.rh = and i32 %i.rg, 3
  switch i32 %i.rh, label %bb.bk [
    i32 0, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
    i32 3, label %bb.bj
  ]

bb.bj:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ri, align 4, !tbaa !129
  %i.rj = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !417
  %i.rk = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv.i
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !37
  %i.ro = zext i8 %i.rn to i64
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

bb.bk:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.rp = load ptr, ptr %i.mh, align 8, !tbaa !412, !noalias !419 ; 2 uses
  %i.rq = load ptr, ptr %i.mi, align 8, !tbaa !413, !noalias !419 ; 2 uses
  %i.rr = load i32, ptr %i.mj, align 4, !tbaa !409, !noalias !419 ; 3 uses
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %.loopexit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rt = add i32 %i.rr, -1                       ; 2 uses
  %i.ru = mul i32 %indvars.iv.tr.i, 37
  %.017.i.i.i.i.i = and i32 %i.rt, %i.ru          ; 3 uses
  %i.rv = zext nneg i32 %.017.i.i.i.i.i to i64    ; 2 uses
  %i.rw = lshr i64 %i.rv, 5
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !129, !noalias !428
  %i.rz = and i32 %.017.i.i.i.i.i, 31
  %i.sa = lshr i32 %i.ry, %i.rz
  %i.sb = trunc i32 %i.sa to i1
  br i1 %i.sb, label %.lr.ph.i.i.i.i130.i, label %.loopexit.i.i.i.i, !prof !130

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i130.i
  %i.sc = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.sc, %i.rt            ; 3 uses
  %i.sd = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.se = lshr i64 %i.sd, 5
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !129, !noalias !428
  %i.sh = and i32 %.0.i.i.i.i.i, 31
  %i.si = lshr i32 %i.sg, %i.sh
  %i.sj = trunc i32 %i.si to i1
  br i1 %i.sj, label %.lr.ph.i.i.i.i130.i, label %.loopexit.i.i.i.i, !prof !135

.lr.ph.i.i.i.i130.i:                              ; preds = %bb.bl, %bb.bm
  %i.sk = phi i64 [ %i.sd, %bb.bm ], [ %i.rv, %bb.bl ] ; 2 uses
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.bm ], [ %.017.i.i.i.i.i, %bb.bl ]
  %i.sl = getelementptr inbounds nuw [40 x i8], ptr %i.rp, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !129, !noalias !428
  %i.sn = zext i32 %i.sm to i64
  %i.so = icmp eq i64 %indvars.iv.i, %i.sn
  br i1 %i.so, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, label %bb.bm, !prof !429

.loopexit.i.i.i.i:                                ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.sp = zext i32 %i.rr to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i: ; preds = %.lr.ph.i.i.i.i130.i, %.loopexit.i.i.i.i
  %i.sq = phi i64 [ %i.sp, %.loopexit.i.i.i.i ], [ %i.sk, %.lr.ph.i.i.i.i130.i ]
  %i.sr = getelementptr inbounds nuw [40 x i8], ptr %i.rp, i64 %i.sq ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !32
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !139
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, %bb.bj, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, %bb.bi
  %.sroa.06.0.i.i = phi ptr [ %i.st, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.rl, %bb.bj ], [ null, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ null, %bb.bi ] ; 2 uses
  %.sroa.57.0.i.i = phi i64 [ %i.sv, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.ro, %bb.bj ], [ 0, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ 0, %bb.bi ]
  %.sroa.22.0.copyload.fr.i.i = freeze i64 %.sroa.57.0.i.i ; 4 uses
  %i.sw = load ptr, ptr %76, align 8, !tbaa !121, !noalias !430 ; 2 uses
  %i.sx = load ptr, ptr %i.mf, align 8, !tbaa !127, !noalias !430 ; 3 uses
  %i.sy = load i32, ptr %i.mg, align 4, !tbaa !128, !noalias !430 ; 2 uses
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
  %i.ta = add i32 %i.sy, -1                       ; 3 uses
  %i.tb = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.06.0.i.i, i64 %.sroa.22.0.copyload.fr.i.i) #25
  %.01627.i.i = and i32 %i.tb, %i.ta              ; 4 uses
  %i.tc = zext i32 %.01627.i.i to i64             ; 3 uses
  %i.td = lshr i64 %i.tc, 5
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !129
  %i.tg = and i32 %.01627.i.i, 31
  %i.th = lshr i32 %i.tf, %i.tg
  %i.ti = trunc i32 %i.th to i1
  br i1 %i.ti, label %.lr.ph.i226.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !130

.lr.ph.i226.i:                                    ; preds = %bb.bn
  %i.tj = icmp eq i64 %.sroa.22.0.copyload.fr.i.i, 0
  br i1 %i.tj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i226.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i
  %i.tk = phi i64 [ %i.tn, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %i.tc, %.lr.ph.i226.i ]
  %.01628.us.i.i = phi i32 [ %.016.us.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.01627.i.i, %.lr.ph.i226.i ]
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %i.tk
  %.sroa.2.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.sroa.2.0.copyload.us.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i, align 8, !tbaa !131
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.2.0.copyload.us.i.i, 0
  br i1 %.not.i.i.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.tm = add nuw i32 %.01628.us.i.i, 1
  %.016.us.i.i = and i32 %i.tm, %i.ta             ; 3 uses
  %i.tn = zext i32 %.016.us.i.i to i64            ; 2 uses
  %i.to = lshr i64 %i.tn, 5
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !129
  %i.tr = and i32 %.016.us.i.i, 31
  %i.ts = lshr i32 %i.tq, %i.tr
  %i.tt = trunc i32 %i.ts to i1
  br i1 %i.tt, label %.lr.ph.split.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !135

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i226.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i
  %i.tu = phi i64 [ %i.ty, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %i.tc, %.lr.ph.i226.i ]
  %.01628.i.i = phi i32 [ %.016.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %.01627.i.i, %.lr.ph.i226.i ]
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %i.tu ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !131
  %.not.i.i.i227.i = icmp eq i64 %.sroa.22.0.copyload.fr.i.i, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i227.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i: ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.copyload.i228.i = load ptr, ptr %i.tv, align 8, !tbaa !133
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.sroa.06.0.i.i, ptr %.sroa.0.0.copyload.i228.i, i64 %.sroa.22.0.copyload.fr.i.i)
  %i.tw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.tw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !134

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.i.i
  %i.tx = add nuw i32 %.01628.i.i, 1
  %.016.i.i = and i32 %i.tx, %i.ta                ; 3 uses
  %i.ty = zext i32 %.016.i.i to i64               ; 2 uses
  %i.tz = lshr i64 %i.ty, 5
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !129
  %i.uc = and i32 %.016.i.i, 31
  %i.ud = lshr i32 %i.ub, %i.uc
  %i.ue = trunc i32 %i.ud to i1
  br i1 %i.ue, label %.lr.ph.split.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !135

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.us.i.i
  %indvars.iv.tr581.i = trunc i64 %indvars.iv.i to i8
  %i.uf = shl i8 %indvars.iv.tr581.i, 1
  %i.ug = and i8 %i.uf, 6
  %i.uh = shl nuw i8 3, %i.ug
  %i.ui = lshr i64 %indvars.iv.i, 2
  %i.uj = and i64 %i.ui, 1073741823
  %i.uk = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !37
  %i.um = xor i8 %i.uh, -1
  %i.un = and i8 %i.ul, %i.um
  store i8 %i.un, ptr %i.uk, align 1, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, %bb.bn, %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 529
  br i1 %.not.i, label %bb.aw, label %bb.bi, !llvm.loop !435

bb.bo:                                            ; preds = %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.uo = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store ptr %i.uo, ptr %47, align 8, !tbaa !14
  %i.up = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  store i32 0, ptr %i.up, align 8, !tbaa !194
  %i.uq = getelementptr inbounds nuw i8, ptr %47, i64 12
  store i32 4, ptr %i.uq, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  %i.ur = load ptr, ptr %i.qp, align 8, !tbaa !32
  call void @_ZN4llvm11PassBuilder15parseAAPipelineERNS_9AAManagerENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %48, ptr noundef nonnull align 8 dereferenceable(2288) %42, ptr noundef nonnull align 8 dereferenceable(48) %47, ptr %i.ur, i64 %i.qr) #25
  %i.us = load ptr, ptr %48, align 8, !tbaa !189
  %.not382.i = icmp eq ptr %i.us, null
  br i1 %.not382.i, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  %i.ut = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.uu = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.uu, align 1, !tbaa !436
  store ptr @.str.45, ptr %52, align 8, !tbaa !37
  store i8 3, ptr %i.ut, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  %i.uv = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 4, ptr %i.uv, align 8, !tbaa !439
  %i.uw = getelementptr inbounds nuw i8, ptr %53, i64 33
  store i8 1, ptr %i.uw, align 1, !tbaa !436
  store ptr %i.qp, ptr %53, align 8, !tbaa !37
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %51, ptr noundef nonnull align 8 dereferenceable(34) %52, ptr noundef nonnull align 8 dereferenceable(34) %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.ux = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.uy = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 1, ptr %i.uy, align 1, !tbaa !436
  store ptr @.str.46, ptr %54, align 8, !tbaa !37
  store i8 3, ptr %i.ux, align 8, !tbaa !439
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %50, ptr noundef nonnull align 8 dereferenceable(34) %51, ptr noundef nonnull align 8 dereferenceable(34) %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  %i.uz = load ptr, ptr %48, align 8, !tbaa !189
  store ptr %i.uz, ptr %57, align 8, !tbaa !189
  store ptr null, ptr %48, align 8, !tbaa !189
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr nofree noundef nonnull align 8 dereferenceable(8) %57) #25
  %i.va = getelementptr inbounds nuw i8, ptr %55, i64 32
  store i8 4, ptr %i.va, align 8, !tbaa !439
  %i.vb = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 1, ptr %i.vb, align 1, !tbaa !436
  store ptr %56, ptr %55, align 8, !tbaa !37
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %49, ptr noundef nonnull align 8 dereferenceable(34) %50, ptr noundef nonnull align 8 dereferenceable(34) %55)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %49, i1 noundef zeroext true) #28
  unreachable

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @_ZN4llvm9AAManager3KeyE, ptr %i.b, align 8, !tbaa !396
  %i.vc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i131.i = extractvalue { ptr, i8 } %i.vc, 0
  %i.vd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i131.i, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !398
end_hunk_0
