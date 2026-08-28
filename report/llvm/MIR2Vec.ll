Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MIR2Vec?download=true
inline.NumInlined: 2674
inline.NumDeleted: 1511
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm29MIR2VecVocabPrinterLegacyPass14doFinalizationERNS_6ModuleE:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !490
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm26MIR2VecVocabLegacyAnalysis2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !484, !noalias !493 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !488, !noalias !493 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !488, !noalias !493 ; 2 uses
  %.not1114.i.i.i.i = icmp ne ptr %i.m, %i.o
  tail call void @llvm.assume(i1 %.not1114.i.i.i.i)
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !490, !noalias !493
  %.not.i3.i.i.i = icmp eq ptr %i.p, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit, %.lr.ph.i.i.i.i
  %.sroa.08.015.i4.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.m, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i.i, i64 16 ; 4 uses
  %.not11.i.i.i.i = icmp ne ptr %i.q, %i.o
  tail call void @llvm.assume(i1 %.not11.i.i.i.i)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !490, !noalias !493
  %.not.i.i.i.i = icmp eq ptr %i.r, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i, label %.lr.ph.i.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i.i = phi ptr [ %i.m, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !496, !noalias !493 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit

bb.b:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !493
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !498 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !501, !noalias !498
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !496, !noalias !493 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !496, !noalias !493
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit, label %_ZNKSt14default_deleteIN4llvm20MIR2VecVocabProviderEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm20MIR2VecVocabProviderEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 8) #24, !noalias !493
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !496, !noalias !493
  br label %_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit

_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i, %bb.b, %_ZNKSt14default_deleteIN4llvm20MIR2VecVocabProviderEEclEPS1_.exit.i.i.i.i.i
  %i.z = phi ptr [ %i.x, %bb.b ], [ %.pre.i, %_ZNKSt14default_deleteIN4llvm20MIR2VecVocabProviderEEclEPS1_.exit.i.i.i.i.i ], [ %i.t, %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i ]
  call void @_ZN4llvm20MIR2VecVocabProvider13getVocabularyERKNS_6ModuleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(1288) %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 960 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !502, !nonnull !25, !align !78 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !511 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 55
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.39, i64 noundef 55) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ai, ptr noundef nonnull align 1 dereferenceable(55) @.str.39, i64 55, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !511
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 55
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !511
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.an, %bb.d ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.aq = load i8, ptr %i.aa, align 8, !noalias !512
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.as = load i64, ptr %2, align 8, !tbaa !164, !noalias !512
  %i.at = inttoptr i64 %i.as to ptr
  store ptr null, ptr %2, align 8, !tbaa !164, !noalias !512
  br label %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEE9takeErrorEv.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge.i = phi ptr [ %i.at, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %_ZN4llvm11raw_ostreamlsEPKc.exit ]
  store ptr %storemerge.i, ptr %4, align 8, !tbaa !161, !alias.scope !512
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #23
  %i.au = load ptr, ptr %3, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !116
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.au, i64 noundef %i.aw) #23 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !507
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !511 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEE9takeErrorEv.exit
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.40, i64 noundef 1) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.g:                                             ; preds = %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEE9takeErrorEv.exit
  store i8 10, ptr %i.bb, align 1
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !511
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !511
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.f, %bb.g
  %i.bg = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !19
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = load ptr, ptr %4, align 8, !tbaa !161   ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #23, !inline_history !390
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.z

bb.i:                                             ; preds = %_ZN4llvm26MIR2VecVocabLegacyAnalysis20getMIR2VecVocabularyERKNS_6ModuleE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %i.bq, ptr %5, align 8, !tbaa !515, !alias.scope !518
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.br, align 8, !tbaa !523, !alias.scope !518
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.bs, align 8, !tbaa !524, !alias.scope !518
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !141, !noalias !531
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !139, !noalias !531
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 24
  %i.ca = trunc i64 %i.bz to i32
  store ptr %i.bq, ptr %6, align 8, !tbaa !515, !alias.scope !531
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !523, !alias.scope !531
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.cc, align 8, !tbaa !524, !alias.scope !531
  %i.cd = call noundef zeroext i1 @_ZNK4llvm6ir2vec12VocabStorage14const_iteratorneERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.z

bb.j:                                             ; preds = %.lr.ph, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.ez, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread ] ; 2 uses
  %i.ch = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm6ir2vec12VocabStorage14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23 ; 3 uses
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7mir2vecL20PrintAllVocabEntriesE, i64 120), align 8, !tbaa !532, !range !24, !noundef !25
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !174 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !174 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = ashr i64 %i.cp, 5                       ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.k
  %i.cs = and i64 %i.cp, -32
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ck, i64 %i.cs ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %.lr.ph.preheader.i.i.i.i.i.i
  %.045.i.i.i.i.i.i = phi i64 [ %i.df, %bb.o ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i = phi ptr [ %i.de, %bb.o ], [ %i.ck, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.ct = load double, ptr %.sroa.025.044.i.i.i.i.i.i, align 8, !tbaa !123
  %i.cu = fcmp une double %i.ct, 0.000000e+00
  br i1 %i.cu, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !123
  %i.cx = fcmp une double %i.cw, 0.000000e+00
  br i1 %i.cx, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !123
  %i.da = fcmp une double %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !123
  %i.dd = fcmp une double %i.dc, 0.000000e+00
  br i1 %i.dd, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 32
  %i.df = add nsw i64 %.045.i.i.i.i.i.i, -1
  %i.dg = icmp sgt i64 %.045.i.i.i.i.i.i, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !537

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.o
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i = sub i64 %i.cn, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.k
  %.pre-phi51.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.cp, %bb.k ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ck, %bb.k ] ; 5 uses
  %i.dh = ashr exact i64 %.pre-phi51.i.i.i.i.i.i, 3
  switch i64 %i.dh, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread [
    i64 3, label %bb.p
    i64 2, label %bb.r
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.di = load double, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !123
  %i.dj = fcmp une double %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i = phi ptr [ %i.dk, %bb.q ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.dl = load double, ptr %.sroa.025.1.i.i.i.i.i.i, align 8, !tbaa !123
  %i.dm = fcmp une double %i.dl, 0.000000e+00
  br i1 %i.dm, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.s ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.do = load double, ptr %.sroa.025.2.i.i.i.i.i.i, align 8, !tbaa !123
  %i.dp = fcmp une double %i.do, 0.000000e+00
  br i1 %i.dp, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread

_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 8
  br label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit

_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit51: ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 16
  br label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit

_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit53: ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 24
  br label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit

_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit:         ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit51, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit53, %bb.p, %bb.r, %bb.t
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i, %bb.r ], [ %.sroa.025.2.i.i.i.i.i.i, %bb.t ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %bb.p ], [ %i.ds, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit53 ], [ %i.dq, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit ], [ %i.dr, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.loopexit.split.loop.exit51 ], [ %.sroa.025.044.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dt = icmp eq ptr %i.cm, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.dt, label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit, %bb.j
  %i.du = load ptr, ptr %i.ce, align 8, !tbaa !502, !nonnull !25, !align !78 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !507
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !511 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, 5
  br i1 %i.ec, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ed = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull @.str.41, i64 noundef 5) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dy, ptr noundef nonnull align 1 dereferenceable(5) @.str.41, i64 5, i1 false)
  %i.ee = load ptr, ptr %i.dx, align 8, !tbaa !511
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  store ptr %i.ef, ptr %i.dx, align 8, !tbaa !511
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.v, %bb.w
  %.0.i.i16 = phi ptr [ %i.ed, %bb.v ], [ %i.du, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNK4llvm7mir2vec13MIRVocabulary12getStringKeyB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(960) %2, i32 noundef %.035)
  %i.eg = load ptr, ptr %7, align 8, !tbaa !14
  %i.eh = load i64, ptr %i.cf, align 8, !tbaa !116
  %i.ei = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16, ptr noundef %i.eg, i64 noundef %i.eh) #23 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !507
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !511 ; 2 uses
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult i64 %i.ep, 2
  br i1 %i.eq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull @.str.42, i64 noundef 2) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  store i16 8250, ptr %i.em, align 1
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !511
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store ptr %i.et, ptr %i.el, align 8, !tbaa !511
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.x, %bb.y
  %i.eu = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.cg
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.ew = load i64, ptr %i.cg, align 8, !tbaa !19
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ey = load ptr, ptr %i.ce, align 8, !tbaa !502, !nonnull !25, !align !78
  call void @_ZNK4llvm6ir2vec9Embedding5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.ey) #23
  br label %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread

_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit.thread:  ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNK4llvm6ir2vec9Embedding6isZeroEv.exit
  %i.ez = add i32 %.035, 1
  %i.fa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm6ir2vec12VocabStorage14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23 ; 0 uses
  %i.fb = call noundef zeroext i1 @_ZNK4llvm6ir2vec12VocabStorage14const_iteratorneERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  br i1 %i.fb, label %bb.j, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge, %_ZN4llvm5ErrorD2Ev.exit
  %i.fc = load i8, ptr %i.aa, align 8
  %i.fd = trunc i8 %i.fc to i1
  br i1 %i.fd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm7mir2vec13MIRVocabularyD2Ev(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(961) %2) #23
  br label %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.fe = load ptr, ptr %2, align 8, !tbaa !164   ; 3 uses
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ab
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) #23, !inline_history !538
  br label %_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEED2Ev.exit

_ZN4llvm8ExpectedINS_7mir2vec13MIRVocabularyEED2Ev.exit: ; preds = %bb.aa, %bb.ab, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 false
}

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm6ir2vec12VocabStorage14const_iteratorneERKS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm6ir2vec12VocabStorage14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZNK4llvm6ir2vec9Embedding5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm6ir2vec12VocabStorage14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm35createMIR2VecVocabPrinterLegacyPassERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !484
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN4llvm29MIR2VecVocabPrinterLegacyPass2IDE, ptr %i.c, align 8, !tbaa !539
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !540
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm29MIR2VecVocabPrinterLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.f, align 8, !tbaa !541
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm38initializeMIR2VecPrinterLegacyPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.695, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr @_ZL42initializeMIR2VecPrinterLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !391
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !392
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !391
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !391
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL42InitializeMIR2VecPrinterLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #26
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !391
  store ptr null, ptr %i.c, align 8, !tbaa !391
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL42initializeMIR2VecPrinterLegacyPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  %1 = alloca %class.anon.695, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr @_ZL44initializeMIR2VecVocabLegacyAnalysisPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !391
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !392
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !391
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !391
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL44InitializeMIR2VecVocabLegacyAnalysisPassFlag, ptr noundef nonnull @__once_proxy) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4llvm40initializeMIR2VecVocabLegacyAnalysisPassERNS_12PassRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #26
  unreachable

_ZN4llvm40initializeMIR2VecVocabLegacyAnalysisPassERNS_12PassRegistryE.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !391
  store ptr null, ptr %i.c, align 8, !tbaa !391
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN4llvm42initializeMachineModuleInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #23
  %i.e = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25 ; 9 uses
  store ptr @.str.82, ptr %i.e, align 8, !tbaa !177
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 29, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @.str.83, ptr %i.f, align 8, !tbaa !177
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @_ZN4llvm24MIR2VecPrinterLegacyPass2IDE, ptr %i.g, align 8, !tbaa !394
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !396
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  store i8 1, ptr %i.i, align 1, !tbaa !397
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_24MIR2VecPrinterLegacyPassEEEPNS_4PassEv, ptr %i.j, align 8, !tbaa !398
  call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i1 noundef zeroext true) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24MIR2VecPrinterLegacyPass20runOnMachineFunctionERNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Expected", align 8    ; 7 uses
  %3 = alloca %"struct.llvm::ir2vec::Embedding", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"struct.llvm::ir2vec::Embedding", align 8 ; 6 uses
  %6 = alloca %"struct.llvm::ir2vec::Embedding", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !484  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !488  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !490
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm26MIR2VecVocabLegacyAnalysis2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !490
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm26MIR2VecVocabLegacyAnalysis2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = load ptr, ptr %1, align 8, !tbaa !410, !nonnull !25, !align !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !542
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !484, !noalias !550 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !488, !noalias !550 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !488, !noalias !550 ; 2 uses
  %.not1114.i.i.i.i = icmp ne ptr %i.p, %i.r
  tail call void @llvm.assume(i1 %.not1114.i.i.i.i)
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !490, !noalias !550
  %.not.i3.i.i.i = icmp eq ptr %i.s, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit, %.lr.ph.i.i.i.i
  %.sroa.08.015.i4.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i.i, i64 16 ; 4 uses
  %.not11.i.i.i.i = icmp ne ptr %i.t, %i.r
  tail call void @llvm.assume(i1 %.not11.i.i.i.i)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !490, !noalias !550
  %.not.i.i.i.i = icmp eq ptr %i.u, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i, label %.lr.ph.i.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i.i = phi ptr [ %i.p, %_ZNK4llvm4Pass11getAnalysisINS_26MIR2VecVocabLegacyAnalysisEEERT_v.exit ], [ %i.t, %.lr.ph.i.i.i.i ]
end_hunk_0
