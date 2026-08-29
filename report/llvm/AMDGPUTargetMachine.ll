Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUTargetMachine?download=true
inline.NumInlined: 16009
inline.NumDeleted: 7166
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm19AMDGPUTargetMachine11splitModuleERNS_6ModuleEjNS_12function_refIFvSt10unique_ptrIS1_St14default_deleteIS1_EEEEE:bb.a

.lr.ph.i.i.i.i100.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i
  %i.ag = add i64 %i.t, -8
  %i.ah = sub i64 %i.ag, %i.u                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i100.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i100.preheader
  %i.ak = add i64 %i.t, -8
  %i.al = sub i64 %i.ak, %i.u
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.an
  %scevgep162 = getelementptr i8, ptr %i.s, i64 %i.an
  %bound0 = icmp ult ptr %i.ad, %scevgep162
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i100.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.s, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.as = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep163, align 8, !tbaa !1009, !alias.scope !1017, !noalias !1012
  %wide.load164 = load <2 x i64>, ptr %i.as, align 8, !tbaa !1009, !alias.scope !1017, !noalias !1012
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1009, !alias.scope !1020, !noalias !1017
  store <2 x i64> %wide.load164, ptr %i.at, align 8, !tbaa !1009, !alias.scope !1020, !noalias !1017
  %i.au = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep163, align 8, !tbaa !1009, !alias.scope !1017, !noalias !1012
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !1009, !alias.scope !1017, !noalias !1012
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i100.preheader166

.lr.ph.i.i.i.i100.preheader166:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i100.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i100.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i100.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i100

.lr.ph.i.i.i.i100:                                ; preds = %.lr.ph.i.i.i.i100.preheader166, %.lr.ph.i.i.i.i100
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i100 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader166 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i100 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader166 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1009, !alias.scope !1015, !noalias !1012
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !1009, !alias.scope !1012, !noalias !1015
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1009, !alias.scope !1015, !noalias !1012
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i.i.i101, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i100, !llvm.loop !1023

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i: ; preds = %.lr.ph.i.i.i.i100, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i100 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !1008
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bc) #34
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, %bb.h
  store ptr %i.ad, ptr %13, align 8, !tbaa !1011
  store ptr %i.az, ptr %i.m, align 8, !tbaa !1005
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !1008
  br label %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_21AMDGPUSplitModulePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit

_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_21AMDGPUSplitModulePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit, %bb.e
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE3runERS1_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::PreservedAnalyses") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 8 dereferenceable(72) %8) #33
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !32, !range !36, !noundef !37
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_21AMDGPUSplitModulePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  call void @free(ptr noundef %i.bi) #33
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.i, %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_21AMDGPUSplitModulePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !32, !range !36, !noundef !37
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.bm = load ptr, ptr %14, align 8, !tbaa !38
  call void @free(ptr noundef %i.bm) #33
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.j
  %i.bn = load ptr, ptr %13, align 8, !tbaa !1011 ; 3 uses
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !1005 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm17PreservedAnalysesD2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i ], [ %i.bn, %_ZN4llvm17PreservedAnalysesD2Ev.exit ] ; 2 uses
  %i.bp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !1009 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #33, !inline_history !1024
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.bo
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1025

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %13, align 8, !tbaa !1011
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  %i.bu = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i ], [ %i.bn, %_ZN4llvm17PreservedAnalysesD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !1008
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #34
  br label %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit

_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @_ZN4llvm11PassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(2288) dereferenceable(2288) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1026 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1029
  %i.ce = zext i32 %i.ca to i64                   ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 24
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.l, %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !1030 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1033
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1034
  %i.cr = zext i32 %i.cm to i64
  %i.cs = add nuw nsw i64 %i.cr, 31
  %i.ct = lshr i64 %i.cs, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.cw = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.m

bb.m:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.cv, %.lr.ph.i.i ], [ %i.dk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cy = or disjoint i32 %i.cx, %i.cw
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1036 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.dc, %i.db
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.dd, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.dc, %bb.m ] ; 3 uses
  %i.dd = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !1036 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1039 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #33, !inline_history !1041
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #34
  %.not.i.i.i.i.i47 = icmp eq ptr %i.dd, %i.db
  br i1 %.not.i.i.i.i.i47, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1042

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.m
  %i.dj = add i32 %.0.i3.i.i, -1
  %i.dk = and i32 %i.dj, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.m, !llvm.loop !1043

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ct
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1044

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.cl, align 4, !tbaa !1030 ; 2 uses
  %i.dl = icmp eq i32 %.pr.i, 0
  br i1 %i.dl, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !1033
  %i.dn = zext i32 %.pr.i to i64                  ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 5
  %i.dp = add nuw nsw i64 %i.dn, 31
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = and i64 %i.dq, 1073741820
  %i.ds = add nuw nsw i64 %i.dr, %i.do
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dm, i64 noundef %i.ds, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !1045 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.dw = load ptr, ptr %8, align 8, !tbaa !1048
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1049
  %i.dz = zext i32 %i.du to i64
  %i.ea = add nuw nsw i64 %i.dz, 31
  %i.eb = lshr i64 %i.ea, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ee = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.o

bb.o:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ed, %.lr.ph.i.i.i ], [ %i.ep, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ef = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.eg = or disjoint i32 %i.ef, %i.ee
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1050 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.o
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #33, !inline_history !1052
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.o
  %i.eo = add i32 %.0.i3.i.i.i, -1
  %i.ep = and i32 %i.eo, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !1053

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i64 %indvars.iv.next.i.i.i, %i.eb
  br i1 %.not.i.i.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1054

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i6 = load i32, ptr %i.dt, align 4, !tbaa !1045 ; 2 uses
  %i.eq = icmp eq i32 %.pr.i.i6, 0
  br i1 %i.eq, label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i
  %i.er = load ptr, ptr %8, align 8, !tbaa !1048
  %i.es = zext i32 %.pr.i.i6 to i64               ; 2 uses
  %i.et = shl nuw nsw i64 %i.es, 4
  %i.eu = add nuw nsw i64 %i.es, 31
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 1073741820
  %i.ex = add nuw nsw i64 %i.ew, %i.et
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.er, i64 noundef %i.ex, i64 noundef 8) #33
  br label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1055 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1058
  %i.fd = zext i32 %i.ez to i64                   ; 2 uses
  %i.fe = mul nuw nsw i64 %i.fd, 24
  %i.ff = add nuw nsw i64 %i.fd, 31
  %i.fg = lshr i64 %i.ff, 3
  %i.fh = and i64 %i.fg, 1073741820
  %i.fi = add nuw nsw i64 %i.fh, %i.fe
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fc, i64 noundef %i.fi, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i: ; preds = %bb.q, %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1059 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit, label %.lr.ph7.preheader.i.i48

.lr.ph7.preheader.i.i48:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !1062
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1063
  %i.fq = zext i32 %i.fl to i64
  %i.fr = add nuw nsw i64 %i.fq, 31
  %i.fs = lshr i64 %i.fr, 5
  br label %.lr.ph7.i.i49

.lr.ph7.i.i49:                                    ; preds = %._crit_edge.i.i61, %.lr.ph7.preheader.i.i48
  %indvars.iv.i.i50 = phi i64 [ 0, %.lr.ph7.preheader.i.i48 ], [ %indvars.iv.next.i.i62, %._crit_edge.i.i61 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.i50
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i51 = icmp eq i32 %i.fu, 0
  br i1 %.not11.i2.i.i51, label %._crit_edge.i.i61, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %.lr.ph7.i.i49
  %indvars.iv.tr.i.i53 = trunc i64 %indvars.iv.i.i50 to i32
  %i.fv = shl i32 %indvars.iv.tr.i.i53, 5
  br label %bb.r

bb.r:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i52
  %.0.i3.i.i54 = phi i32 [ %i.fu, %.lr.ph.i.i52 ], [ %i.gj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.fw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i54, i1 true)
  %i.fx = or disjoint i32 %i.fw, %i.fv
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1036 ; 2 uses
  %.not8.i.i.i.i.i55 = icmp eq ptr %i.gb, %i.ga
  br i1 %.not8.i.i.i.i.i55, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %bb.r, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i57 = phi ptr [ %i.gc, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i ], [ %i.gb, %bb.r ] ; 3 uses
  %i.gc = load ptr, ptr %.09.i.i.i.i.i57, align 8, !tbaa !1036 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i57, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1064 ; 3 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.ge) #33, !inline_history !1066
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i57, i64 noundef 32) #34
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gc, %i.ga
  br i1 %.not.i.i.i.i.i59, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i56, !llvm.loop !1067

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i, %bb.r
  %i.gi = add i32 %.0.i3.i.i54, -1
  %i.gj = and i32 %i.gi, %.0.i3.i.i54             ; 2 uses
  %.not11.i.i.i60 = icmp eq i32 %i.gj, 0
  br i1 %.not11.i.i.i60, label %._crit_edge.i.i61, label %bb.r, !llvm.loop !1068

._crit_edge.i.i61:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i49
  %indvars.iv.next.i.i62 = add nuw nsw i64 %indvars.iv.i.i50, 1 ; 2 uses
  %.not.i.i.i63 = icmp eq i64 %indvars.iv.next.i.i62, %i.fs
  br i1 %.not.i.i.i63, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i, label %.lr.ph7.i.i49, !llvm.loop !1069

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i61
  %.pr.i64 = load i32, ptr %i.fk, align 4, !tbaa !1059 ; 2 uses
  %i.gk = icmp eq i32 %.pr.i64, 0
  br i1 %i.gk, label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i
  %i.gl = load ptr, ptr %i.fj, align 8, !tbaa !1062
  %i.gm = zext i32 %.pr.i64 to i64                ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 5
  %i.go = add nuw nsw i64 %i.gm, 31
  %i.gp = lshr i64 %i.go, 3
  %i.gq = and i64 %i.gp, 1073741820
  %i.gr = add nuw nsw i64 %i.gq, %i.gn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gl, i64 noundef %i.gr, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i, %bb.s
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1070 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit, label %.lr.ph7.preheader.i.i.i7

.lr.ph7.preheader.i.i.i7:                         ; preds = %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit
  %i.gv = load ptr, ptr %7, align 8, !tbaa !1073
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1074
  %i.gy = zext i32 %i.gt to i64
  %i.gz = add nuw nsw i64 %i.gy, 31
  %i.ha = lshr i64 %i.gz, 5
  br label %.lr.ph7.i.i.i8

.lr.ph7.i.i.i8:                                   ; preds = %._crit_edge.i.i.i16, %.lr.ph7.preheader.i.i.i7
  %indvars.iv.i.i.i9 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i7 ], [ %indvars.iv.next.i.i.i17, %._crit_edge.i.i.i16 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i.i.i9
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i.i10 = icmp eq i32 %i.hc, 0
  br i1 %.not11.i2.i.i.i10, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %.lr.ph7.i.i.i8
  %indvars.iv.tr.i.i.i12 = trunc i64 %indvars.iv.i.i.i9 to i32
  %i.hd = shl i32 %indvars.iv.tr.i.i.i12, 5
  br label %bb.t

bb.t:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i11
  %.0.i3.i.i.i13 = phi i32 [ %i.hc, %.lr.ph.i.i.i11 ], [ %i.ho, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.he = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i13, i1 true)
  %i.hf = or disjoint i32 %i.he, %i.hd
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1075 ; 3 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i14, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i: ; preds = %bb.t
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hj) #33, !inline_history !1077
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i, %bb.t
  %i.hn = add i32 %.0.i3.i.i.i13, -1
  %i.ho = and i32 %i.hn, %.0.i3.i.i.i13           ; 2 uses
  %.not11.i.i.i.i15 = icmp eq i32 %i.ho, 0
  br i1 %.not11.i.i.i.i15, label %._crit_edge.i.i.i16, label %bb.t, !llvm.loop !1078

._crit_edge.i.i.i16:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i8
  %indvars.iv.next.i.i.i17 = add nuw nsw i64 %indvars.iv.i.i.i9, 1 ; 2 uses
  %.not.i.i.i.i18 = icmp eq i64 %indvars.iv.next.i.i.i17, %i.ha
  br i1 %.not.i.i.i.i18, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i8, !llvm.loop !1079

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i16
  %.pr.i.i19 = load i32, ptr %i.gs, align 4, !tbaa !1070 ; 2 uses
  %i.hp = icmp eq i32 %.pr.i.i19, 0
  br i1 %i.hp, label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i
  %i.hq = load ptr, ptr %7, align 8, !tbaa !1073
  %i.hr = zext i32 %.pr.i.i19 to i64              ; 2 uses
  %i.hs = shl nuw nsw i64 %i.hr, 4
  %i.ht = add nuw nsw i64 %i.hr, 31
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = and i64 %i.hu, 1073741820
  %i.hw = add nuw nsw i64 %i.hv, %i.hs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hq, i64 noundef %i.hw, i64 noundef 8) #33
  br label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit

_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1080 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1083
  %i.ic = zext i32 %i.hy to i64                   ; 2 uses
  %i.id = mul nuw nsw i64 %i.ic, 24
  %i.ie = add nuw nsw i64 %i.ic, 31
  %i.if = lshr i64 %i.ie, 3
  %i.ig = and i64 %i.if, 1073741820
  %i.ih = add nuw nsw i64 %i.ig, %i.id
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ib, i64 noundef %i.ih, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.v, %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !1084 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i65

.lr.ph7.preheader.i.i65:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !1087
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !1088
  %i.ip = zext i32 %i.ik to i64
  %i.iq = add nuw nsw i64 %i.ip, 31
  %i.ir = lshr i64 %i.iq, 5
  br label %.lr.ph7.i.i66

.lr.ph7.i.i66:                                    ; preds = %._crit_edge.i.i78, %.lr.ph7.preheader.i.i65
  %indvars.iv.i.i67 = phi i64 [ 0, %.lr.ph7.preheader.i.i65 ], [ %indvars.iv.next.i.i79, %._crit_edge.i.i78 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i.i67
  %i.it = load i32, ptr %i.is, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i68 = icmp eq i32 %i.it, 0
  br i1 %.not11.i2.i.i68, label %._crit_edge.i.i78, label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %.lr.ph7.i.i66
  %indvars.iv.tr.i.i70 = trunc i64 %indvars.iv.i.i67 to i32
  %i.iu = shl i32 %indvars.iv.tr.i.i70, 5
  br label %bb.w

bb.w:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i69
  %.0.i3.i.i71 = phi i32 [ %i.it, %.lr.ph.i.i69 ], [ %i.ji, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.iv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i71, i1 true)
  %i.iw = or disjoint i32 %i.iv, %i.iu
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !1036 ; 2 uses
  %.not8.i.i.i.i.i72 = icmp eq ptr %i.ja, %i.iz
  br i1 %.not8.i.i.i.i.i72, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %bb.w, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i74 = phi ptr [ %i.jb, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.ja, %bb.w ] ; 3 uses
  %i.jb = load ptr, ptr %.09.i.i.i.i.i74, align 8, !tbaa !1036 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i74, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1089 ; 3 uses
  %.not.i.i.i.i.i.i.i75 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i.i.i.i75, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i73
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %i.jd) #33, !inline_history !1091
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i74, i64 noundef 32) #34
  %.not.i.i.i.i.i76 = icmp eq ptr %i.jb, %i.iz
  br i1 %.not.i.i.i.i.i76, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1092

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.w
  %i.jh = add i32 %.0.i3.i.i71, -1
  %i.ji = and i32 %i.jh, %.0.i3.i.i71             ; 2 uses
  %.not11.i.i.i77 = icmp eq i32 %i.ji, 0
  br i1 %.not11.i.i.i77, label %._crit_edge.i.i78, label %bb.w, !llvm.loop !1093

._crit_edge.i.i78:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i66
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i67, 1 ; 2 uses
  %.not.i.i.i80 = icmp eq i64 %indvars.iv.next.i.i79, %i.ir
  br i1 %.not.i.i.i80, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i66, !llvm.loop !1094

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i78
  %.pr.i81 = load i32, ptr %i.ij, align 4, !tbaa !1084 ; 2 uses
  %i.jj = icmp eq i32 %.pr.i81, 0
  br i1 %i.jj, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.jk = load ptr, ptr %i.ii, align 8, !tbaa !1087
  %i.jl = zext i32 %.pr.i81 to i64                ; 2 uses
  %i.jm = shl nuw nsw i64 %i.jl, 5
  %i.jn = add nuw nsw i64 %i.jl, 31
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = and i64 %i.jo, 1073741820
  %i.jq = add nuw nsw i64 %i.jp, %i.jm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jk, i64 noundef %i.jq, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.x
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !1095 ; 2 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i20

.lr.ph7.preheader.i.i.i20:                        ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.ju = load ptr, ptr %6, align 8, !tbaa !1098
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1099
  %i.jx = zext i32 %i.js to i64
  %i.jy = add nuw nsw i64 %i.jx, 31
  %i.jz = lshr i64 %i.jy, 5
  br label %.lr.ph7.i.i.i21

.lr.ph7.i.i.i21:                                  ; preds = %._crit_edge.i.i.i29, %.lr.ph7.preheader.i.i.i20
  %indvars.iv.i.i.i22 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i20 ], [ %indvars.iv.next.i.i.i30, %._crit_edge.i.i.i29 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.i.i22
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i.i23 = icmp eq i32 %i.kb, 0
  br i1 %.not11.i2.i.i.i23, label %._crit_edge.i.i.i29, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %.lr.ph7.i.i.i21
  %indvars.iv.tr.i.i.i25 = trunc i64 %indvars.iv.i.i.i22 to i32
  %i.kc = shl i32 %indvars.iv.tr.i.i.i25, 5
  br label %bb.y

bb.y:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i24
  %.0.i3.i.i.i26 = phi i32 [ %i.kb, %.lr.ph.i.i.i24 ], [ %i.kn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.kd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i26, i1 true)
  %i.ke = or disjoint i32 %i.kd, %i.kc
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !1100 ; 3 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i27, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.y
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) #33, !inline_history !1102
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.y
  %i.km = add i32 %.0.i3.i.i.i26, -1
  %i.kn = and i32 %i.km, %.0.i3.i.i.i26           ; 2 uses
  %.not11.i.i.i.i28 = icmp eq i32 %i.kn, 0
  br i1 %.not11.i.i.i.i28, label %._crit_edge.i.i.i29, label %bb.y, !llvm.loop !1103

._crit_edge.i.i.i29:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i21
  %indvars.iv.next.i.i.i30 = add nuw nsw i64 %indvars.iv.i.i.i22, 1 ; 2 uses
  %.not.i.i.i.i31 = icmp eq i64 %indvars.iv.next.i.i.i30, %i.jz
  br i1 %.not.i.i.i.i31, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i21, !llvm.loop !1104

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i29
  %.pr.i.i32 = load i32, ptr %i.jr, align 4, !tbaa !1095 ; 2 uses
  %i.ko = icmp eq i32 %.pr.i.i32, 0
  br i1 %i.ko, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i
  %i.kp = load ptr, ptr %6, align 8, !tbaa !1098
  %i.kq = zext i32 %.pr.i.i32 to i64              ; 2 uses
  %i.kr = shl nuw nsw i64 %i.kq, 4
  %i.ks = add nuw nsw i64 %i.kq, 31
  %i.kt = lshr i64 %i.ks, 3
  %i.ku = and i64 %i.kt, 1073741820
  %i.kv = add nuw nsw i64 %i.ku, %i.kr
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kp, i64 noundef %i.kv, i64 noundef 8) #33
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !1105 ; 2 uses
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1108
  %i.lb = zext i32 %i.kx to i64                   ; 2 uses
  %i.lc = mul nuw nsw i64 %i.lb, 24
  %i.ld = add nuw nsw i64 %i.lb, 31
  %i.le = lshr i64 %i.ld, 3
  %i.lf = and i64 %i.le, 1073741820
  %i.lg = add nuw nsw i64 %i.lf, %i.lc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.la, i64 noundef %i.lg, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i: ; preds = %bb.aa, %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !1109 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit, label %.lr.ph7.preheader.i.i82

.lr.ph7.preheader.i.i82:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !1112
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !1113
  %i.lo = zext i32 %i.lj to i64
  %i.lp = add nuw nsw i64 %i.lo, 31
  %i.lq = lshr i64 %i.lp, 5
  br label %.lr.ph7.i.i83

.lr.ph7.i.i83:                                    ; preds = %._crit_edge.i.i95, %.lr.ph7.preheader.i.i82
  %indvars.iv.i.i84 = phi i64 [ 0, %.lr.ph7.preheader.i.i82 ], [ %indvars.iv.next.i.i96, %._crit_edge.i.i95 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i84
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i85 = icmp eq i32 %i.ls, 0
  br i1 %.not11.i2.i.i85, label %._crit_edge.i.i95, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph7.i.i83
  %indvars.iv.tr.i.i87 = trunc i64 %indvars.iv.i.i84 to i32
  %i.lt = shl i32 %indvars.iv.tr.i.i87, 5
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i86
  %.0.i3.i.i88 = phi i32 [ %i.ls, %.lr.ph.i.i86 ], [ %i.mh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.lu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i88, i1 true)
  %i.lv = or disjoint i32 %i.lu, %i.lt
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1036 ; 2 uses
  %.not8.i.i.i.i.i89 = icmp eq ptr %i.lz, %i.ly
  br i1 %.not8.i.i.i.i.i89, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %bb.ab, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i91 = phi ptr [ %i.ma, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i ], [ %i.lz, %bb.ab ] ; 3 uses
  %i.ma = load ptr, ptr %.09.i.i.i.i.i91, align 8, !tbaa !1036 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i91, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !1114 ; 3 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i90
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %i.mc) #33, !inline_history !1116
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i91, i64 noundef 32) #34
  %.not.i.i.i.i.i93 = icmp eq ptr %i.ma, %i.ly
  br i1 %.not.i.i.i.i.i93, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i90, !llvm.loop !1117

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i, %bb.ab
  %i.mg = add i32 %.0.i3.i.i88, -1
  %i.mh = and i32 %i.mg, %.0.i3.i.i88             ; 2 uses
  %.not11.i.i.i94 = icmp eq i32 %i.mh, 0
  br i1 %.not11.i.i.i94, label %._crit_edge.i.i95, label %bb.ab, !llvm.loop !1118

._crit_edge.i.i95:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i83
  %indvars.iv.next.i.i96 = add nuw nsw i64 %indvars.iv.i.i84, 1 ; 2 uses
  %.not.i.i.i97 = icmp eq i64 %indvars.iv.next.i.i96, %i.lq
  br i1 %.not.i.i.i97, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i, label %.lr.ph7.i.i83, !llvm.loop !1119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i95
  %.pr.i98 = load i32, ptr %i.li, align 4, !tbaa !1109 ; 2 uses
  %i.mi = icmp eq i32 %.pr.i98, 0
  br i1 %i.mi, label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i
  %i.mj = load ptr, ptr %i.lh, align 8, !tbaa !1112
  %i.mk = zext i32 %.pr.i98 to i64                ; 2 uses
  %i.ml = shl nuw nsw i64 %i.mk, 5
  %i.mm = add nuw nsw i64 %i.mk, 31
  %i.mn = lshr i64 %i.mm, 3
  %i.mo = and i64 %i.mn, 1073741820
  %i.mp = add nuw nsw i64 %i.mo, %i.ml
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mj, i64 noundef %i.mp, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i, %bb.ac
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !1120 ; 2 uses
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i33

.lr.ph7.preheader.i.i.i33:                        ; preds = %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit
  %i.mt = load ptr, ptr %5, align 8, !tbaa !1123
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !1124
  %i.mw = zext i32 %i.mr to i64
  %i.mx = add nuw nsw i64 %i.mw, 31
  %i.my = lshr i64 %i.mx, 5
  br label %.lr.ph7.i.i.i34

.lr.ph7.i.i.i34:                                  ; preds = %._crit_edge.i.i.i42, %.lr.ph7.preheader.i.i.i33
  %indvars.iv.i.i.i35 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i33 ], [ %indvars.iv.next.i.i.i43, %._crit_edge.i.i.i42 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i.i.i35
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i.i36 = icmp eq i32 %i.na, 0
  br i1 %.not11.i2.i.i.i36, label %._crit_edge.i.i.i42, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph7.i.i.i34
  %indvars.iv.tr.i.i.i38 = trunc i64 %indvars.iv.i.i.i35 to i32
  %i.nb = shl i32 %indvars.iv.tr.i.i.i38, 5
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i37
  %.0.i3.i.i.i39 = phi i32 [ %i.na, %.lr.ph.i.i.i37 ], [ %i.nm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.nc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i39, i1 true)
  %i.nd = or disjoint i32 %i.nc, %i.nb
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !1125 ; 3 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i40, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !20
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(8) %i.nh) #33, !inline_history !1127
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i, %bb.ad
  %i.nl = add i32 %.0.i3.i.i.i39, -1
  %i.nm = and i32 %i.nl, %.0.i3.i.i.i39           ; 2 uses
  %.not11.i.i.i.i41 = icmp eq i32 %i.nm, 0
  br i1 %.not11.i.i.i.i41, label %._crit_edge.i.i.i42, label %bb.ad, !llvm.loop !1128

._crit_edge.i.i.i42:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i34
  %indvars.iv.next.i.i.i43 = add nuw nsw i64 %indvars.iv.i.i.i35, 1 ; 2 uses
  %.not.i.i.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i43, %i.my
  br i1 %.not.i.i.i.i44, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i34, !llvm.loop !1129

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i42
  %.pr.i.i45 = load i32, ptr %i.mq, align 4, !tbaa !1120 ; 2 uses
  %i.nn = icmp eq i32 %.pr.i.i45, 0
  br i1 %i.nn, label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i
  %i.no = load ptr, ptr %5, align 8, !tbaa !1123
  %i.np = zext i32 %.pr.i.i45 to i64              ; 2 uses
  %i.nq = shl nuw nsw i64 %i.np, 4
  %i.nr = add nuw nsw i64 %i.np, 31
  %i.ns = lshr i64 %i.nr, 3
  %i.nt = and i64 %i.ns, 1073741820
  %i.nu = add nuw nsw i64 %i.nt, %i.nq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.no, i64 noundef %i.nu, i64 noundef 8) #33
  br label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 true
}

declare void @_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN4llvm21PipelineTuningOptionsC1Ev(ptr noundef nonnull align 4 dereferenceable(26)) unnamed_addr #5

declare void @_ZN4llvm3vfs17getRealFileSystemEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8) local_unnamed_addr #5

declare void @_ZN4llvm11PassBuilderC1EPNS_13TargetMachineENS_21PipelineTuningOptionsESt8optionalINS_10PGOOptionsEEPNS_28PassInstrumentationCallbacksENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef, ptr noundef byval(%"class.llvm::PipelineTuningOptions") align 8, ptr nofree noundef align 8 dereferenceable(152), ptr noundef, ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm11PassBuilder22registerModuleAnalysesERNS_15AnalysisManagerINS_6ModuleEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN4llvm11PassBuilder24registerFunctionAnalysesERNS_15AnalysisManagerINS_8FunctionEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN4llvm11PassBuilder20crossRegisterProxiesERNS_15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEERNS1_INS_8FunctionEJEEERNS1_INS_13LazyCallGraph3SCCEJRSA_EEERNS1_INS_6ModuleEJEEEPNS1_INS_15MachineFunctionEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE3runERS1_RS3_(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11PassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(2288) dereferenceable(2288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load i32, ptr %i.c, align 8, !tbaa !731  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3) #33, !inline_history !1130 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1131

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i, %bb.a
  %i.k = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i
  tail call void @free(ptr noundef %i.k) #33
  br label %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.q = load i32, ptr %i.p, align 8, !tbaa !731  ; 2 uses
  %.not4.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i, label %.lr.ph.i.preheader.i2

.lr.ph.i.preheader.i2:                            ; preds = %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit
  %i.r = zext i32 %i.q to i64
  %.idx.i3 = shl nuw nsw i64 %i.r, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i7, %.lr.ph.i.preheader.i2
  %.05.i.i5 = phi ptr [ %i.t, %_ZNSt14_Function_baseD2Ev.exit.i.i7 ], [ %i.s, %.lr.ph.i.preheader.i2 ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i5, i64 -32 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i5, i64 -16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i6, label %_ZNSt14_Function_baseD2Ev.exit.i.i7, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3) #33, !inline_history !1132 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i7

_ZNSt14_Function_baseD2Ev.exit.i.i7:              ; preds = %bb.d, %.lr.ph.i.i4
  %.not.i.i8 = icmp eq ptr %i.o, %i.t
  br i1 %.not.i.i8, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !1133

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i7
  %.pre.i9 = load ptr, ptr %i.n, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i, %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit
  %i.x = phi ptr [ %.pre.i9, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i ], [ %i.o, %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i
  tail call void @free(ptr noundef %i.x) #33
  br label %_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !731 ; 2 uses
  %.not4.i.i10 = icmp eq i32 %i.ad, 0
  br i1 %.not4.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.i, label %.lr.ph.i.preheader.i11

.lr.ph.i.preheader.i11:                           ; preds = %_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit
  %i.ae = zext i32 %i.ad to i64
  %.idx.i12 = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i12
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i16, %.lr.ph.i.preheader.i11
  %.05.i.i14 = phi ptr [ %i.ag, %_ZNSt14_Function_baseD2Ev.exit.i.i16 ], [ %i.af, %.lr.ph.i.preheader.i11 ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i14, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i14, i64 -16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i15, label %_ZNSt14_Function_baseD2Ev.exit.i.i16, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i13
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3) #33, !inline_history !1134 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i16

_ZNSt14_Function_baseD2Ev.exit.i.i16:             ; preds = %bb.f, %.lr.ph.i.i13
  %.not.i.i17 = icmp eq ptr %i.ab, %i.ag
  br i1 %.not.i.i17, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i, label %.lr.ph.i.i13, !llvm.loop !1135

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i16
  %.pre.i18 = load ptr, ptr %i.aa, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i, %_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit
  %i.ak = phi ptr [ %.pre.i18, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_15AnalysisManagerINS_15MachineFunctionEJEEEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i ], [ %i.ab, %_ZN4llvm11SmallVectorISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELj2EED2Ev.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2713
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2686
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !779

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2713
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2708
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2702
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1035
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !1035
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2686
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !1035
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !1035
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2702, !noalias !2714 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2708, !noalias !2714 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2709, !noalias !2714 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !2390   ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1035
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !2710

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1035
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !2711, !llvm.loop !2712

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !2390
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !779

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2713
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1163", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2709
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #33 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !2702
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2708
  store i32 0, ptr %i.p, align 16, !tbaa !2686
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !42
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2713
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !42
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !42
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1035 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !1035
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !1035
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !1035
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !1035
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #33
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2702   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2708
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2709 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2708 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2702
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2709
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1035 ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2390 ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1035
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2719

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !1035
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !1035
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !1035
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2720

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2721

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2709
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2686
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !2686
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #33
  store i32 0, ptr %i.d, align 4, !tbaa !2709
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !731
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #33
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %i.g = load i32, ptr %i.a, align 8, !tbaa !731
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !731
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !731
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !731  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.h = zext i32 %i.g to i64
  %.idx.i = mul nuw nsw i64 %i.h, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.j, %_ZN4llvm7SMFixItD2Ev.exit.i.i ], [ %i.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvm7SMFixItD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #34
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i:                    ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.e, %i.j
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2441

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %bb.c
  %i.q = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE12assignRemoteEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.q) #33
  br label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE12assignRemoteEOS2_.exit

_ZN4llvm15SmallVectorImplINS_7SMFixItEE12assignRemoteEOS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %i.t, ptr %0, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load <2 x i32>, ptr %i.u, align 8, !tbaa !1035
  store <2 x i32> %i.w, ptr %i.f, align 8, !tbaa !1035
  store ptr %i.c, ptr %1, align 8, !tbaa !29
  store i32 0, ptr %i.v, align 4, !tbaa !730
  store i32 0, ptr %i.u, align 8, !tbaa !731
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !731  ; 6 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !731 ; 4 uses
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %.not = icmp ult i32 %i.ab, %i.y
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %_ZSt4moveIPN4llvm7SMFixItES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZN4llvm7SMFixItaSEOS0_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.bh, %_ZN4llvm7SMFixItaSEOS0_.exit.i.i.i.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.bg, %_ZN4llvm7SMFixItaSEOS0_.exit.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %_ZN4llvm7SMFixItaSEOS0_.exit.i.i.i.i.i ], [ %i.b, %bb.f ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0812.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2391
  %i.ae = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 32 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !46 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.g, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4llvm6detail9PassModelINS_6ModuleENS_24AMDGPULowerModuleLDSPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_24AMDGPULowerModuleLDSPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.314, i64 55), i64 24) #33, !inline_history !3010 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_24AMDGPULowerModuleLDSPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_24AMDGPULowerModuleLDSPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_24AMDGPULowerModuleLDSPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_24AMDGPULowerModuleLDSPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_24AMDGPULowerModuleLDSPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.314, i64 55), i64 24 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_24AMDGPULowerModuleLDSPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm24AMDGPULowerModuleLDSPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1818 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm26AMDGPUPerfHintAnalysisPassD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm8ValueMapIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.b) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 176) #34
  br label %_ZN4llvm26AMDGPUPerfHintAnalysisPassD2Ev.exit

_ZN4llvm26AMDGPUPerfHintAnalysisPassD2Ev.exit:    ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1818 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm8ValueMapIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.b) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 176) #34
  br label %_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEED2Ev.exit

_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22AMDGPUPerfHintAnalysisEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm26AMDGPUPerfHintAnalysisPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.315, i64 55), i64 26) #33, !inline_history !3011 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_26AMDGPUPerfHintAnalysisPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_26AMDGPUPerfHintAnalysisPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_26AMDGPUPerfHintAnalysisPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_26AMDGPUPerfHintAnalysisPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.315, i64 55), i64 26 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_26AMDGPUPerfHintAnalysisPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm26AMDGPUPerfHintAnalysisPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8ValueMapIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = mul nuw nsw i64 %i.i, 24
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #33
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1815, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !1815
  br i1 %i.r, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3012 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !3015
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3016
  %i.y = zext i32 %i.t to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.ad = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3017 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %i.aj) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ak = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.al = and i32 %i.ak, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !3020

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !3021

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !3012 ; 2 uses
  %i.am = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !3015
  %i.ao = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #33
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1809 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1812
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1813
  %i.ba = zext i32 %i.av to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.bf = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.be, %.lr.ph.i.i ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bh = or disjoint i32 %i.bg, %i.bf
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3022
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.bn = add i32 %.0.i3.i.i, -1
  %i.bo = and i32 %i.bn, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.h, !llvm.loop !3027

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bc
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3028

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.au, align 4, !tbaa !1809 ; 2 uses
  %i.bp = icmp eq i32 %.pr.i, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEv.exit.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !1812
  %i.br = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 6
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEED2Ev.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_8FunctionENS_22AMDGPUPerfHintAnalysis8FuncInfoENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES7_NS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_S7_EEEESD_S7_SF_SI_E10destroyAllEv.exit.i, %bb.j
  ret void
}

declare void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_32AMDGPUPreloadKernelArgumentsPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_32AMDGPUPreloadKernelArgumentsPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm32AMDGPUPreloadKernelArgumentsPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_32AMDGPUPreloadKernelArgumentsPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.316, i64 55), i64 32) #33, !inline_history !3029 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_32AMDGPUPreloadKernelArgumentsPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_32AMDGPUPreloadKernelArgumentsPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_32AMDGPUPreloadKernelArgumentsPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_32AMDGPUPreloadKernelArgumentsPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_32AMDGPUPreloadKernelArgumentsPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.316, i64 55), i64 32 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_32AMDGPUPreloadKernelArgumentsPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm32AMDGPUPreloadKernelArgumentsPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_30AMDGPUPrintfRuntimeBindingPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_30AMDGPUPrintfRuntimeBindingPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm30AMDGPUPrintfRuntimeBindingPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_30AMDGPUPrintfRuntimeBindingPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.317, i64 55), i64 30) #33, !inline_history !3030 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_30AMDGPUPrintfRuntimeBindingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_30AMDGPUPrintfRuntimeBindingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_30AMDGPUPrintfRuntimeBindingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_30AMDGPUPrintfRuntimeBindingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_30AMDGPUPrintfRuntimeBindingPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.317, i64 55), i64 30 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_30AMDGPUPrintfRuntimeBindingPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm30AMDGPUPrintfRuntimeBindingPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37AMDGPURemoveIncompatibleFunctionsPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37AMDGPURemoveIncompatibleFunctionsPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm37AMDGPURemoveIncompatibleFunctionsPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37AMDGPURemoveIncompatibleFunctionsPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.318, i64 55), i64 37) #33, !inline_history !3031 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1926
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1035
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !2711, !llvm.loop !3395

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3396
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3397
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit, label %bb.d, !prof !779

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3396
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1099
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1098
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1035
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !1035
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3397
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1926
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !3398
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1098, !noalias !3400 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1099, !noalias !3400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1095, !noalias !3400 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1926   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1035
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2710

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1926
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2711, !llvm.loop !3395

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3396
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.759", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1095
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1098
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1099
  store i32 0, ptr %i.p, align 16, !tbaa !3397
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3396   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3405 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !42
  store ptr %i.z, ptr %2, align 16, !tbaa !3396
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !42
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !3405
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !1035
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !1035
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !1035
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !1035
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1100 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #33, !inline_history !3406
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1103

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1104

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1095 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !1098
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1098   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1099
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1095 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1099 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1098
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1095
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1035 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1926 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1035 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !3407

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1926
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1100
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1100
  store ptr null, ptr %i.av, align 8, !tbaa !1100
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !1035
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3408

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3409

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1095
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3397
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3397
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #33
  store i32 0, ptr %i.d, align 4, !tbaa !1095
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_8AMDGPUAAENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_8AMDGPUAAENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1510") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_8AMDGPUAAENS0_14AMDGPUAAResultENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %2) #33, !noalias !3410
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !3413 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_8AMDGPUAAENS_14AMDGPUAAResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !20, !noalias !3413
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !3416, !noalias !3413
  store ptr %i.b, ptr %0, align 8, !tbaa !3418
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_8AMDGPUAAENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.336, i64 55), i64 8 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail21AnalysisResultConceptINS_8FunctionENS_15AnalysisManagerIS2_JEE11InvalidatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_8AMDGPUAAENS_14AMDGPUAAResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_8AMDGPUAAENS_14AMDGPUAAResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm9StringRefERNS0_9AAManagerEEZNS0_19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10E9_M_invokeERKSt9_Any_dataOS1_S3_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq i64 %.val3, 9
  br i1 %.not.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10JNS0_9StringRefERNS0_9AAManagerEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i:          ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.b = load i64, ptr %.val, align 1
  %i.c = xor i64 %i.b, 7002382121262411105
  %i.d = getelementptr i8, ptr %.val, i64 8
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64
  %i.g = xor i64 %i.f, 97
  %i.h = or i64 %i.c, %i.g
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10JNS0_9StringRefERNS0_9AAManagerEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !731  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !730
  %.not.i.i.i.i.i = icmp ult i32 %i.m, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !779

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPFvRNS_8FunctionERNS_15AnalysisManagerIS1_JEEERNS_9AAResultsEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @_ZN4llvm9AAManager23getFunctionAAResultImplINS_8AMDGPUAAEEEvRNS_8FunctionERNS_15AnalysisManagerIS3_JEEERNS_9AAResultsE)
  br label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10JNS0_9StringRefERNS0_9AAManagerEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i
  %i.p = zext i32 %i.m to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  store ptr @_ZN4llvm9AAManager23getFunctionAAResultImplINS_8AMDGPUAAEEEvRNS_8FunctionERNS_15AnalysisManagerIS3_JEEERNS_9AAResultsE, ptr %i.r, align 1
  %i.s = load i32, ptr %i.l, align 8, !tbaa !731
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.l, align 8, !tbaa !731
  br label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10JNS0_9StringRefERNS0_9AAManagerEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIbRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10JNS0_9StringRefERNS0_9AAManagerEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, %bb.b, %bb.c
  %.0.i2.i.i.i = phi i1 [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i ], [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i2.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm9StringRefERNS0_9AAManagerEEZNS0_19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_10E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #25 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_10E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_10E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1926
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1035
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !2711, !llvm.loop !3436

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3437
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3438
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit, label %bb.d, !prof !779

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3437
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3434
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3426
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1035
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !1035
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3438
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1926
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !3439
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3426, !noalias !3441 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3434, !noalias !3441 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3435, !noalias !3441 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1926   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1035
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2710

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1926
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2711, !llvm.loop !3436

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3437
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2153", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3435
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3426
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3434
  store i32 0, ptr %i.p, align 16, !tbaa !3438
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3437   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3405 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !42
  store ptr %i.z, ptr %2, align 16, !tbaa !3437
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !42
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !3405
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !1035
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !1035
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !1035
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !1035
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3422 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #33, !inline_history !3446
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !3447

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3448

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !3435 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !3426
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3426   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3434
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3435 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3434 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3426
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3435
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1035 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1926 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1035 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !3449

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1926
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !3422
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !3422
  store ptr null, ptr %i.av, align 8, !tbaa !3422
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !1035
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3450

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3451

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3435
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3438
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3438
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #33
  store i32 0, ptr %i.d, align 4, !tbaa !3435
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_15MachineFunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2355") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::AMDGPUResourceUsageAnalysisImpl::SIFunctionResourceInfo", align 8 ; 8 uses
  %5 = alloca %"struct.llvm::AMDGPUResourceUsageAnalysisImpl::SIFunctionResourceInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm27AMDGPUResourceUsageAnalysis3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::AMDGPUResourceUsageAnalysisImpl::SIFunctionResourceInfo") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #35, !noalias !3452 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %5, i64 38, i1 false), !noalias !3452
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !29, !noalias !3452
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !731, !noalias !3452
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 16, ptr %i.f, align 4, !tbaa !730, !noalias !3452
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !731, !noalias !3452
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.thread.i, label %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.i

_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.thread.i: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEE, i64 16), ptr %i.b, align 8, !tbaa !20, !noalias !3452
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %5, i64 38, i1 false), !noalias !3452
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.k, ptr %i.j, align 8, !tbaa !29, !noalias !3452
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !731, !noalias !3452
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 16, ptr %i.m, align 4, !tbaa !730, !noalias !3452
  br label %_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i

_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKNS_8FunctionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.n), !noalias !3452 ; 0 uses
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !731, !noalias !3452
  %i.p = icmp eq i32 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEE, i64 16), ptr %i.b, align 8, !tbaa !20, !noalias !3452
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %4, i64 38, i1 false), !noalias !3452
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29, !noalias !3452
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !731, !noalias !3452
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 16, ptr %i.u, align 4, !tbaa !730, !noalias !3452
  br i1 %i.p, label %_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.i
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKNS_8FunctionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.c), !noalias !3452 ; 0 uses
  br label %_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i

_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i: ; preds = %bb.b, %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.i, %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoC2EOS1_.exit.thread.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !29, !noalias !3452 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_15MachineFunctionENS0_27AMDGPUResourceUsageAnalysisENS0_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb0EEESt14default_deleteISA_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i
  call void @free(ptr noundef %i.w) #33, !noalias !3452
  br label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_15MachineFunctionENS0_27AMDGPUResourceUsageAnalysisENS0_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb0EEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_15MachineFunctionENS0_27AMDGPUResourceUsageAnalysisENS0_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb0EEESt14default_deleteISA_EED2Ev.exit: ; preds = %bb.c, %_ZN4llvm6detail19AnalysisResultModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb0EEC2ES5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.b, ptr %0, align 8, !tbaa !3455
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_15MachineFunctionENS0_27AMDGPUResourceUsageAnalysisENS0_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb0EEESt14default_deleteISA_EED2Ev.exit
  call void @free(ptr noundef %i.z) #33
  br label %_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoD2Ev.exit

_ZN4llvm31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_15MachineFunctionENS0_27AMDGPUResourceUsageAnalysisENS0_31AMDGPUResourceUsageAnalysisImpl22SIFunctionResourceInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb0EEESt14default_deleteISA_EED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_15MachineFunctionENS_27AMDGPUResourceUsageAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.337, i64 55), i64 27 }
}

declare void @_ZN4llvm27AMDGPUResourceUsageAnalysis3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"struct.llvm::AMDGPUResourceUsageAnalysisImpl::SIFunctionResourceInfo") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKNS_8FunctionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelENS0_18ThinOrFullLTOPhaseEEZNS0_19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_16E9_M_invokeERKSt9_Any_dataS6_OS7_OS8_":bb.a

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i137.i.i.i: ; preds = %.lr.ph.i.i.i.i126.i.i.i, %middle.block158, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i122.i.i.i
  %.0.lcssa.i.i.i.i131.i.i.i = phi ptr [ %i.jt, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i122.i.i.i ], [ %i.kf, %middle.block158 ], [ %i.ko, %.lr.ph.i.i.i.i126.i.i.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i131.i.i.i, i64 8
  %.not.i23.i139.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i23.i139.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit140.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i137.i.i.i
  %i.kq = load ptr, ptr %i.je, align 8, !tbaa !1008
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.kr, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.ks) #34
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit140.i.i.i

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit140.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i137.i.i.i
  store ptr %i.jt, ptr %1, align 8, !tbaa !1011
  store ptr %i.kp, ptr %i.jc, align 8, !tbaa !1005
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jr
  store ptr %i.kt, ptr %i.je, align 8, !tbaa !1008
  br label %"_ZSt10__invoke_rIvRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_16JRNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS7_JEEEJEEENS0_17OptimizationLevelENS0_18ThinOrFullLTOPhaseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_16JRNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS7_JEEEJEEENS0_17OptimizationLevelENS0_18ThinOrFullLTOPhaseEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_30AMDGPUPrintfRuntimeBindingPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit.i.i.i, %bb.y, %bb.aa, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit140.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelENS0_18ThinOrFullLTOPhaseEEZNS0_19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !42
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !2979
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !923
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS1_11PassBuilderEE4$_16E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL14mustPreserveGVRKN4llvm11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !977
  %i.b = icmp eq i8 %i.a, 14
  br i1 %i.b, label %bb.b, label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #33
  br i1 %i.c, label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #33 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.not.i = icmp ult i64 %i.e, 7
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread19, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 1935761247
  %i.i = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i32, ptr %i.i, align 1
  %i.k = xor i32 %i.j, 1601069427
  %i.l = or i32 %i.h, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread19

_ZNK4llvm9StringRef11starts_withES0_.exit.thread19: ; preds = %bb.c, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.p = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #33 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1
  %.not.i11 = icmp ult i64 %i.q, 12
  br i1 %.not.i11, label %_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20, label %_ZNK4llvm9StringRef11starts_withES0_.exit13

_ZNK4llvm9StringRef11starts_withES0_.exit13:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread19
  %i.r = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7598814394083139423
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i32, ptr %i.u, align 1
  %i.w = zext i32 %i.v to i64
  %i.x = xor i64 %i.w, 1601332602
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20

_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread19, %_ZNK4llvm9StringRef11starts_withES0_.exit13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !983
  %i.ae = lshr i16 %i.ad, 4
  %i.af = and i16 %i.ae, 1023
  %switch.tableidx = add nsw i16 %i.af, -76       ; 2 uses
  %i.ag = icmp ult i16 %switch.tableidx, 21
  br i1 %i.ag, label %switch.lookup, label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread

_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit:        ; preds = %bb.a
  tail call void @_ZNK4llvm8Constant23removeDeadConstantUsersEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3619
  %i.aj = icmp ne ptr %i.ai, null
  br label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread

switch.lookup:                                    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20
  %switch.cast = zext nneg i16 %switch.tableidx to i21
  %switch.downshift = lshr i21 -329727, %switch.cast
  %switch.masked = trunc i21 %switch.downshift to i1
  br label %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread

_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20, %switch.lookup, %_ZNK4llvm9StringRef11starts_withES0_.exit13, %_ZNK4llvm9StringRef11starts_withES0_.exit, %bb.b, %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit
  %.1 = phi i1 [ %i.aj, %_ZN4llvm6AMDGPU17isEntryFunctionCCEj.exit ], [ %switch.masked, %switch.lookup ], [ true, %bb.b ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit13 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit13.thread20 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13GlobalDCEPassD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.e) #33
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3620 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !3621 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3622

_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !3592
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !3593
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !3592 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !3593
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit

_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3623 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3624
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3625
  %i.aa = zext i32 %i.v to i64
  %i.ab = add nuw nsw i64 %i.aa, 31
  %i.ac = lshr i64 %i.ab, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.af = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ae, %.lr.ph.i.i ], [ %i.aq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !32, !range !36, !noundef !37
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.ao) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ap = add i32 %.0.i3.i.i, -1
  %i.aq = and i32 %i.ap, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !3626

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ac
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3627

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.u, align 4, !tbaa !3623 ; 2 uses
  %i.ar = icmp eq i32 %.pr.i, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !3624
  %i.at = zext i32 %.pr.i to i64                  ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 96
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3628 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i1

.lr.ph7.preheader.i.i1:                           ; preds = %_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !3629
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3630
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  br label %.lr.ph7.i.i2

.lr.ph7.i.i2:                                     ; preds = %._crit_edge.i.i9, %.lr.ph7.preheader.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph7.preheader.i.i1 ], [ %indvars.iv.next.i.i10, %._crit_edge.i.i9 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i3
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i4 = icmp eq i32 %i.bk, 0
  br i1 %.not11.i2.i.i4, label %._crit_edge.i.i9, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph7.i.i2
  %indvars.iv.tr.i.i6 = trunc i64 %indvars.iv.i.i3 to i32
  %i.bl = shl i32 %indvars.iv.tr.i.i6, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i5
  %.0.i3.i.i7 = phi i32 [ %i.bk, %.lr.ph.i.i5 ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i7, i1 true)
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !32, !range !36, !noundef !37
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.bu) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bv = add i32 %.0.i3.i.i7, -1
  %i.bw = and i32 %i.bv, %.0.i3.i.i7              ; 2 uses
  %.not11.i.i.i8 = icmp eq i32 %i.bw, 0
  br i1 %.not11.i.i.i8, label %._crit_edge.i.i9, label %bb.g, !llvm.loop !3631

._crit_edge.i.i9:                                 ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i2
  %indvars.iv.next.i.i10 = add nuw nsw i64 %indvars.iv.i.i3, 1 ; 2 uses
  %.not.i.i.i11 = icmp eq i64 %indvars.iv.next.i.i10, %i.bi
  br i1 %.not.i.i.i11, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i2, !llvm.loop !3632

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i9
  %.pr.i12 = load i32, ptr %i.ba, align 4, !tbaa !3628 ; 2 uses
  %i.bx = icmp eq i32 %.pr.i12, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !3629
  %i.bz = zext i32 %.pr.i12 to i64                ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 6
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8ConstantENS_11SmallPtrSetIPNS_11GlobalValueELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !32, !range !36, !noundef !37
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.cj) #33
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit13

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit13:         ; preds = %_ZN4llvm8DenseMapIPNS_11GlobalValueENS_11SmallPtrSetIS2_Lj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_22HipStdParMathFixupPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_22HipStdParMathFixupPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm22HipStdParMathFixupPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_22HipStdParMathFixupPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.406, i64 55), i64 22) #33, !inline_history !3633 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_22HipStdParMathFixupPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_22HipStdParMathFixupPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_22HipStdParMathFixupPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_22HipStdParMathFixupPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_22HipStdParMathFixupPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.406, i64 55), i64 22 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_22HipStdParMathFixupPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4llvm22HipStdParMathFixupPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37HipStdParAcceleratorCodeSelectionPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37HipStdParAcceleratorCodeSelectionPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm37HipStdParAcceleratorCodeSelectionPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_37HipStdParAcceleratorCodeSelectionPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.407, i64 55), i64 37) #33, !inline_history !3634 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_37HipStdParAcceleratorCodeSelectionPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_37HipStdParAcceleratorCodeSelectionPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_37HipStdParAcceleratorCodeSelectionPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_37HipStdParAcceleratorCodeSelectionPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_37HipStdParAcceleratorCodeSelectionPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.407, i64 55), i64 37 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_37HipStdParAcceleratorCodeSelectionPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4llvm37HipStdParAcceleratorCodeSelectionPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_15InternalizePassENS_15AnalysisManagerIS2_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1189
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i.i = load ptr, ptr %i.a, align 8, !tbaa !1182 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit.i, label %bb.b

end_hunk_5
begin_hunk_6_@_ZN4llvm13GlobalDCEPassC2EOS0_:bb.a
  store i8 %i.a, ptr %0, align 8, !tbaa !3575
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef nonnull %i.d, i32 noundef 32, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(280) %i.c) #33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.i = load <2 x ptr>, ptr %i.g, align 8, !tbaa !42
  store <2 x ptr> %i.i, ptr %i.f, align 8, !tbaa !42
  store ptr null, ptr %i.g, align 8, !tbaa !3639
  store ptr null, ptr %i.h, align 8, !tbaa !3405
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1035
  store i32 %i.l, ptr %i.j, align 8, !tbaa !1035
  store i32 0, ptr %i.k, align 8, !tbaa !1035
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 308 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !1035
  %i.p = load i32, ptr %i.n, align 4, !tbaa !1035
  store i32 %i.p, ptr %i.m, align 4, !tbaa !1035
  store i32 %i.o, ptr %i.n, align 4, !tbaa !1035
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !42
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !42
  store ptr null, ptr %i.r, align 8, !tbaa !3640
  store ptr null, ptr %i.s, align 8, !tbaa !3405
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1035
  store i32 %i.w, ptr %i.u, align 8, !tbaa !1035
  store i32 0, ptr %i.v, align 8, !tbaa !1035
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 332 ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !1035
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !1035
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !1035
  store i32 %i.z, ptr %i.y, align 4, !tbaa !1035
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3592 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !3592
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !3593 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !3593
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3620 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !3621
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.am = load i64, ptr %i.al, align 8, !tbaa !3641
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !3641
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !3642
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !3644
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !3592
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 4 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !3592
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !3644
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !3644
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.au = phi ptr [ %i.ap, %bb.b ], [ %i.ad, %bb.a ]
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEC2EOSD_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3645
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = urem i64 %i.ax, %i.ag
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ay
  store ptr %i.ah, ptr %i.az, align 8, !tbaa !3647
  br label %_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEC2EOSD_.exit

_ZNSt18unordered_multimapIPN4llvm6ComdatEPNS0_11GlobalValueESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEEC2EOSD_.exit: ; preds = %bb.c, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 0, ptr %i.ba, align 8, !tbaa !3648
  store i64 1, ptr %i.af, align 8, !tbaa !3593
  store ptr null, ptr %i.ar, align 8, !tbaa !3644
  store ptr %i.ar, ptr %i.ac, align 8, !tbaa !3592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !42
  store <2 x ptr> %i.be, ptr %i.bb, align 8, !tbaa !42
  store ptr null, ptr %i.bc, align 8, !tbaa !3649
  store ptr null, ptr %i.bd, align 8, !tbaa !3405
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1035
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !1035
  store i32 0, ptr %i.bg, align 8, !tbaa !1035
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 412 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !1035
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !1035
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !1035
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !1035
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 440
  tail call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.bm, ptr noundef nonnull %i.bo, i32 noundef 32, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(280) %i.bn) #33
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(704) dereferenceable(704) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm13GlobalDCEPassD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) %i.a) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm13GlobalDCEPassD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) %i.a) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 704) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(704) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm13GlobalDCEPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm13GlobalDCEPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 8 dereferenceable(696) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.411, i64 55), i64 13 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_13GlobalDCEPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm13GlobalDCEPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(696), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN4llvm13GlobalDCEPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 8 dereferenceable(696), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3650 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3651
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3652
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2879
  tail call void @_ZNSt8_Rb_treeISt4pairIPN4llvm14GlobalVariableEmES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.u) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3653

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3654

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !3650 ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3651
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 136
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS7_EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_8SmallSetISt4pairIPNS_14GlobalVariableEmELj4ESt4lessIS8_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt4pairIPN4llvm14GlobalVariableEmES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3655
  tail call void @_ZNSt8_Rb_treeISt4pairIPN4llvm14GlobalVariableEmES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3656 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3657

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_8FunctionENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelEEZNS0_19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_17E9_M_invokeERKSt9_Any_dataS6_OS7_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #1 align 2 {
bb.a:
  %.val = load i32, ptr %2, align 4, !tbaa !3492
  %i.a = icmp eq i32 %.val, 0
  br i1 %i.a, label %"_ZSt10__invoke_rIvRZN4llvm19AMDGPUTargetMachine28registerPassBuilderCallbacksERNS0_11PassBuilderEE4$_17JRNS0_11PassManagerINS0_8FunctionENS0_15AnalysisManagerIS7_JEEEJEEENS0_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_8FunctionENS_24AMDGPUUseNativeCallsPassENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1461 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1462
  %.not.i.i7.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i7.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.b to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1463
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !1461
  br label %_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_24AMDGPUUseNativeCallsPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !1465   ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i12.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i12.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #35 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.b to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !1463
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep23 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep23
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  %i.ai = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !1463, !alias.scope !3663, !noalias !3658
  %wide.load25 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !1463, !alias.scope !3663, !noalias !3658
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1463, !alias.scope !3666, !noalias !3663
  store <2 x i64> %wide.load25, ptr %i.aj, align 8, !tbaa !1463, !alias.scope !3666, !noalias !3663
  %i.ak = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !1463, !alias.scope !3663, !noalias !3658
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !1463, !alias.scope !3663, !noalias !3658
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader72

.lr.ph.i.i.i.i.i.i.i.preheader72:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader72, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1463, !alias.scope !3661, !noalias !3658
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1463, !alias.scope !3658, !noalias !3661
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1463, !alias.scope !3661, !noalias !3658
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3669

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.i, null
end_hunk_6
begin_hunk_7_@_ZN4llvm6detail9PassModelINS_8FunctionENS_30SeparateConstOffsetFromGEPPassENS_15AnalysisManagerIS2_JEEEJEED0Ev:bb.a
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_30SeparateConstOffsetFromGEPPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm30SeparateConstOffsetFromGEPPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_30SeparateConstOffsetFromGEPPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm30SeparateConstOffsetFromGEPPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_8FunctionENS_30SeparateConstOffsetFromGEPPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.444, i64 55), i64 30 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_8FunctionENS_30SeparateConstOffsetFromGEPPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm30SeparateConstOffsetFromGEPPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN4llvm30SeparateConstOffsetFromGEPPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_30StraightLineStrengthReducePassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_30StraightLineStrengthReducePassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm30StraightLineStrengthReducePass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_30StraightLineStrengthReducePassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.445, i64 55), i64 30) #33, !inline_history !5716 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_30StraightLineStrengthReducePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_30StraightLineStrengthReducePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_30StraightLineStrengthReducePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_30StraightLineStrengthReducePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_8FunctionENS_30StraightLineStrengthReducePassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.445, i64 55), i64 30 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_8FunctionENS_30StraightLineStrengthReducePassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm30StraightLineStrengthReducePass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm19NaryReassociatePass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.446, i64 55), i64 19) #33, !inline_history !5717 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #33 ; 0 uses
  br label %_ZN4llvm13PassInfoMixinINS_19NaryReassociatePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_19NaryReassociatePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !2642
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !2642
  br label %_ZN4llvm13PassInfoMixinINS_19NaryReassociatePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_19NaryReassociatePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.446, i64 55), i64 19 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_8FunctionENS_19NaryReassociatePassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm19NaryReassociatePass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !5718 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !5720
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5721
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ad, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !731  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -24 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3022
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #33
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i:       ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5722

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %bb.b
  %i.z = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  tail call void @free(ptr noundef %i.z) #33
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  %i.ac = add i32 %.0.i3.i, -1
  %i.ad = and i32 %i.ac, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !5723

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !5724

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !5718 ; 2 uses
  %i.ae = icmp eq i32 %.pr, 0
  br i1 %i.ae, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !5720
  %i.ag = zext i32 %.pr to i64                    ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 72
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14WeakTrackingVHELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_12EarlyCSEPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_12EarlyCSEPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm12EarlyCSEPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_12EarlyCSEPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm12EarlyCSEPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_8FunctionENS_12EarlyCSEPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.447, i64 55), i64 12 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_8FunctionENS_12EarlyCSEPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm12EarlyCSEPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN4llvm12EarlyCSEPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_25FunctionToLoopPassAdaptorENS_15AnalysisManagerIS2_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1465 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1461 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !1463 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #33, !inline_history !5428
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2127

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1465
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1462
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #34
  br label %_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit.i

_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !5425 ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm25FunctionToLoopPassAdaptorD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEEEJS6_RNS0_10LPMUpdaterEEEEEclEPSA_.exit.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEEEJS6_RNS0_10LPMUpdaterEEEEEclEPSA_.exit.i.i: ; preds = %_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #33, !inline_history !5429
  br label %_ZN4llvm25FunctionToLoopPassAdaptorD2Ev.exit

_ZN4llvm25FunctionToLoopPassAdaptorD2Ev.exit:     ; preds = %_ZN4llvm11PassManagerINS_8FunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit.i, %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEEEJS6_RNS0_10LPMUpdaterEEEEEclEPSA_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_25FunctionToLoopPassAdaptorENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1465 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1461 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !1463 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1926
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1035
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !2711, !llvm.loop !5943

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !5944
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !5945
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit, label %bb.d, !prof !779

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !5944
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1049
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1048
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1035
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !1035
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !5945
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !5945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1926
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !5946
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1048, !noalias !5948 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1049, !noalias !5948 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1045, !noalias !5948 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1926   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1035
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2710

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1926
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !779

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2711, !llvm.loop !5943

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !5944
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.773", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1045
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1048
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1049
  store i32 0, ptr %i.p, align 16, !tbaa !5945
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !5944   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3405 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !42
  store ptr %i.z, ptr %2, align 16, !tbaa !5944
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !42
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !3405
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !1035
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !1035
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !1035
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !1035
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1035 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1050 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #33, !inline_history !5953
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1053

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1054

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1045 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !1048
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #33
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1048   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1049
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1045 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1049 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1048
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1045
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1035 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1926 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1035 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1035 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !5954

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1926
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1050
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1050
  store ptr null, ptr %i.av, align 8, !tbaa !1050
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !1035
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5955

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !5956

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1045
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !5945
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !5945
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #33
  store i32 0, ptr %i.d, align 4, !tbaa !1045
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1928 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm18AsmPrinterAnalysisD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(1073) %i.b) #33, !inline_history !5957
  br label %_ZN4llvm18AsmPrinterAnalysisD2Ev.exit

_ZN4llvm18AsmPrinterAnalysisD2Ev.exit:            ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1928 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(1073) %i.b) #33, !inline_history !5958
  br label %_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm10AsmPrinterEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1434") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_6ModuleENS0_18AsmPrinterAnalysisENS4_6ResultENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1928
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !5959 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_6ModuleENS_18AsmPrinterAnalysisENS3_6ResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.c, align 8, !tbaa !20, !noalias !5959
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !1928, !noalias !5959
  store ptr %i.c, ptr %0, align 8, !tbaa !5962
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_6ModuleENS_18AsmPrinterAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.492, i64 55), i64 18 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail21AnalysisResultConceptINS_6ModuleENS_15AnalysisManagerIS2_JEE11InvalidatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_6ModuleENS_18AsmPrinterAnalysisENS3_6ResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_6ModuleENS_18AsmPrinterAnalysisENS3_6ResultENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_25AMDGPUAsmPrinterBeginPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_25AMDGPUAsmPrinterBeginPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm25AMDGPUAsmPrinterBeginPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_25AMDGPUAsmPrinterBeginPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.400, i64 55), i64 25) #33, !inline_history !5964 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2641
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2642 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
end_hunk_8
