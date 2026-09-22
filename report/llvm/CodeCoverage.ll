Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeCoverage?download=true
inline.NumInlined: 6125
inline.NumDeleted: 3118
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm8ExpectedISt10unique_ptrINS_11raw_ostreamENS_15CoveragePrinter16StreamDestructorEEED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !280    ; 4 uses
  %.not.i1 = icmp eq ptr %i.d, null               ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4llvm11raw_ostreamENS0_15CoveragePrinter16StreamDestructorEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvm15CoveragePrinter16StreamDestructorclEPNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d) #23
  br label %_ZNSt10unique_ptrIN4llvm11raw_ostreamENS0_15CoveragePrinter16StreamDestructorEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4llvm11raw_ostreamENS0_15CoveragePrinter16StreamDestructorEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i: ; preds = %bb.d
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !761
  br label %_ZNSt10unique_ptrIN4llvm11raw_ostreamENS0_15CoveragePrinter16StreamDestructorEED2Ev.exit

_ZNSt10unique_ptrIN4llvm11raw_ostreamENS0_15CoveragePrinter16StreamDestructorEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116CodeCoverageTool19writeSourceFileViewEN4llvm9StringRefEPNS1_8coverage15CoverageMappingEPNS1_15CoveragePrinterEb(ptr noundef nonnull align 8 dereferenceable(617) %0, ptr %1, i64 %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::ErrorOr.375", align 8 ; 6 uses
  %7 = alloca %"class.llvm::coverage::CoverageData", align 8 ; 22 uses
  %8 = alloca %"class.std::vector.453", align 8   ; 8 uses
  %9 = alloca %"class.llvm::coverage::CoverageData", align 8 ; 17 uses
  %10 = alloca %"class.std::unique_ptr.235", align 8 ; 4 uses
  %11 = alloca %"class.std::unique_ptr.235", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.235", align 8 ; 12 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.llvm::Expected", align 8   ; 9 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %19 = alloca %"class.std::unique_ptr.218", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !774
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool13getSourceFileEN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(617) %0, ptr %1, i64 %2), !noalias !774
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noalias !774
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZN12_GLOBAL__N_116CodeCoverageTool20createSourceFileViewEN4llvm9StringRefERKNS1_8coverage15CoverageMappingE.exit.thread, label %bb.b

_ZN12_GLOBAL__N_116CodeCoverageTool20createSourceFileViewEN4llvm9StringRefERKNS1_8coverage15CoverageMappingE.exit.thread: ; preds = %bb.a
  store ptr null, ptr %12, align 8, !tbaa !286, !alias.scope !774
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !774
  call void @_ZNK4llvm8coverage15CoverageMapping18getCoverageForFileENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::coverage::CoverageData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(98) %3, ptr %1, i64 %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !283, !noalias !774
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !283, !noalias !774
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %12, align 8, !tbaa !286, !alias.scope !774
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289, !noalias !774 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !290, !noalias !774
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 80
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !293, !noalias !774 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !294, !noalias !774
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !297, !noalias !774 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !298, !noalias !774
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 616
  %i.ag = load ptr, ptr %6, align 8, !tbaa !300, !noalias !774 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4llvm18SourceCoverageView6createENS_9StringRefERKNS_12MemoryBufferERKNS_19CoverageViewOptionsEONS_8coverage12CoverageDataE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.235") align 8 %12, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull align 8 dereferenceable(129) %7) #23
  %i.ai = load ptr, ptr %12, align 8, !tbaa !301, !alias.scope !774
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool23attachExpansionSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage15ExpansionRecordEEERKNS5_15CoverageMappingE(ptr noundef nonnull align 8 dereferenceable(617) %0, ptr noundef nonnull align 8 dereferenceable(257) %i.ai, ptr %i.r, i64 %i.x, ptr noundef nonnull align 8 dereferenceable(98) %3)
  %i.aj = load ptr, ptr %12, align 8, !tbaa !301, !alias.scope !774
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %.val69.i = load i8, ptr %i.ak, align 1, !tbaa !243, !range !170, !noalias !774, !noundef !171
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val70.i = load i8, ptr %i.al, align 8, !noalias !774
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool20attachBranchSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage13CountedRegionEEE(i8 %.val69.i, i8 %.val70.i, ptr noundef nonnull align 8 dereferenceable(257) %i.aj, ptr %i.j, i64 %i.p)
  %i.am = load ptr, ptr %12, align 8, !tbaa !301, !alias.scope !774
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %.val72.i = load i8, ptr %i.an, align 1, !tbaa !244, !range !170, !noalias !774, !noundef !171
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool18attachMCDCSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage10MCDCRecordEEE(i8 %.val72.i, ptr noundef nonnull align 8 dereferenceable(257) %i.am, ptr %i.z, i64 %i.af)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !245, !range !170, !noalias !774, !noundef !171
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !774
  call void @_ZNK4llvm8coverage15CoverageMapping22getInstantiationGroupsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.453") align 8 %8, ptr noundef nonnull align 8 dereferenceable(98) %3, ptr %1, i64 %2) #23
  %i.ar = load ptr, ptr %8, align 8, !tbaa !776, !noalias !774 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !776, !noalias !774 ; 2 uses
  %.not130138.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not130138.i, label %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.h

._crit_edge142.i:                                 ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !778, !noalias !774 ; 3 uses
  %.pre143.i = load ptr, ptr %i.as, align 8, !tbaa !779, !noalias !774 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre.i, %.pre143.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge142.i, %_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i ], [ %.pre.i, %._crit_edge142.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !274
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, %.pre143.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !764

_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm8coverage18InstantiationGroupEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !778, !noalias !774
  br label %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exitthread-pre-split.i.i, %._crit_edge142.i, %bb.e
  %i.bp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exitthread-pre-split.i.i ], [ %.pre.i, %._crit_edge142.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4llvm8coverage18InstantiationGroupESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !780, !noalias !774
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIN4llvm8coverage18InstantiationGroupESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4llvm8coverage18InstantiationGroupESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPN4llvm8coverage18InstantiationGroupEEvT_S4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !774
  br label %bb.q

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph141.i
  %.sroa.0127.0139.i = phi ptr [ %i.ar, %.lr.ph141.i ], [ %i.fi, %.loopexit.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0127.0139.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0127.0139.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !273 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !275 ; 3 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ult i64 %i.cb, 9
  %.not135.i = icmp eq ptr %i.by, %i.bx
  %or.cond.i = or i1 %.not135.i, %i.cc
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %bb.h, %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EED2Ev.exit93.i
  %.066136.i = phi ptr [ %i.fb, %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EED2Ev.exit93.i ], [ %i.by, %bb.h ] ; 2 uses
  %i.cd = load ptr, ptr %.066136.i, align 8, !tbaa !262 ; 6 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !176 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !59 ; 4 uses
  %i.ch = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ce, i64 %i.cg) #23
  %i.ci = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr %i.ce, i64 %i.cg, i32 noundef %i.ch) #23 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, -1
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !203, !noalias !774
  br i1 %i.cj, label %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i, label %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %.lr.ph137.i
  %i.cl = sext i32 %i.ci to i64                   ; 2 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !204, !noalias !774
  %.pre5.i.i = zext i32 %.pre.i.i to i64
  %i.cm = icmp eq i64 %i.cl, %.pre5.i.i
  br i1 %i.cm, label %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !176
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !59
  br label %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i

_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i: ; preds = %bb.i, %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %.lr.ph137.i
  %.sroa.04.0.i.i = phi ptr [ %i.cq, %bb.i ], [ %i.ce, %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i ], [ %i.ce, %.lr.ph137.i ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.cs, %bb.i ], [ %i.cg, %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i ], [ %i.cg, %.lr.ph137.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !788
  %.not67.i = icmp eq i64 %i.cu, 0
  br i1 %.not67.i, label %bb.n, label %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !774
  call void @_ZNK4llvm8coverage15CoverageMapping22getCoverageForFunctionERKNS0_14FunctionRecordE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::coverage::CoverageData") align 8 %9, ptr noundef nonnull align 8 dereferenceable(98) %3, ptr noundef nonnull align 8 dereferenceable(136) %i.cd) #23
  %i.cv = load ptr, ptr %i.av, align 8, !tbaa !293, !noalias !774 ; 2 uses
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !294, !noalias !774
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 24
  %i.db = load ptr, ptr %i.ax, align 8, !tbaa !289, !noalias !774 ; 2 uses
  %i.dc = load ptr, ptr %i.ay, align 8, !tbaa !290, !noalias !774
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 80
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !297, !noalias !774 ; 2 uses
  %i.di = load ptr, ptr %i.ba, align 8, !tbaa !298, !noalias !774
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 616
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !774
  call void @_ZN4llvm18SourceCoverageView6createENS_9StringRefERKNS_12MemoryBufferERKNS_19CoverageViewOptionsEONS_8coverage12CoverageDataE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.235") align 8 %10, ptr %.sroa.04.0.i.i, i64 %.sroa.3.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull align 8 dereferenceable(129) %9) #23
  %i.dn = load ptr, ptr %10, align 8, !tbaa !301, !noalias !774 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !774
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool23attachExpansionSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage15ExpansionRecordEEERKNS5_15CoverageMappingE(ptr noundef nonnull align 8 dereferenceable(617) %0, ptr noundef nonnull align 8 dereferenceable(257) %i.dn, ptr %i.cv, i64 %i.da, ptr noundef nonnull align 8 dereferenceable(98) %3)
  %.val.i = load i8, ptr %i.ak, align 1, !tbaa !243, !range !170, !noalias !774, !noundef !171
  %.val68.i = load i8, ptr %i.al, align 8, !noalias !774
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool20attachBranchSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage13CountedRegionEEE(i8 %.val.i, i8 %.val68.i, ptr noundef nonnull align 8 dereferenceable(257) %i.dn, ptr %i.db, i64 %i.dg)
  %.val71.i = load i8, ptr %i.an, align 1, !tbaa !244, !range !170, !noalias !774, !noundef !171
  call fastcc void @_ZN12_GLOBAL__N_116CodeCoverageTool18attachMCDCSubViewsERN4llvm18SourceCoverageViewENS1_8ArrayRefINS1_8coverage10MCDCRecordEEE(i8 %.val71.i, ptr noundef nonnull align 8 dereferenceable(257) %i.dn, ptr %i.dh, i64 %i.dm)
  %i.do = load ptr, ptr %i.az, align 8, !tbaa !297, !noalias !774 ; 3 uses
  %i.dp = load ptr, ptr %i.ba, align 8, !tbaa !298, !noalias !774 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i ] ; 2 uses
  call void @_ZN4llvm8coverage10MCDCRecordD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %.05.i.i.i.i.i) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 616 ; 2 uses
  %.not.i.i.i.i87.i = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i.i.i.i87.i, label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !297, !noalias !774
  br label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i.i.i

_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i.i.i, %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i
  %i.dr = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i.i.i ], [ %i.do, %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i.i.i
  %i.ds = load ptr, ptr %i.bb, align 8, !tbaa !302, !noalias !774
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #25
  br label %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit.i.i: ; preds = %bb.j, %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i.i.i
  %i.dw = load ptr, ptr %i.ax, align 8, !tbaa !289, !noalias !774 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit.i.i
  %i.dx = load ptr, ptr %i.bc, align 8, !tbaa !303, !noalias !774
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #25
  br label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit.i.i
  %i.eb = load ptr, ptr %i.av, align 8, !tbaa !293, !noalias !774 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIN4llvm8coverage15ExpansionRecordESaIS2_EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit.i.i
  %i.ec = load ptr, ptr %i.bd, align 8, !tbaa !304, !noalias !774
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #25
  br label %_ZNSt6vectorIN4llvm8coverage15ExpansionRecordESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm8coverage15ExpansionRecordESaIS2_EED2Ev.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit.i.i
  %i.eg = load ptr, ptr %i.be, align 8, !tbaa !306, !noalias !774 ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIN4llvm8coverage15CoverageSegmentESaIS2_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage15ExpansionRecordESaIS2_EED2Ev.exit.i.i
  %i.eh = load ptr, ptr %i.bf, align 8, !tbaa !307, !noalias !774
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #25
  br label %_ZNSt6vectorIN4llvm8coverage15CoverageSegmentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm8coverage15CoverageSegmentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4llvm8coverage15ExpansionRecordESaIS2_EED2Ev.exit.i.i
  %i.el = load ptr, ptr %9, align 8, !tbaa !176, !noalias !774 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.bg
  br i1 %i.em, label %_ZN4llvm8coverage12CoverageDataD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm8coverage15CoverageSegmentESaIS2_EED2Ev.exit.i.i
  %i.en = load i64, ptr %i.bg, align 8, !tbaa !60, !noalias !774
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #25
  br label %_ZN4llvm8coverage12CoverageDataD2Ev.exit.i

_ZN4llvm8coverage12CoverageDataD2Ev.exit.i:       ; preds = %_ZNSt6vectorIN4llvm8coverage15CoverageSegmentESaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !774
  %i.ep = ptrtoint ptr %i.dn to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm8coverage12CoverageDataD2Ev.exit.i, %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i
  %.sroa.0119.0.i = phi i64 [ 0, %_ZNK4llvm13DemangleCache8demangleENS_9StringRefE.exit.i ], [ %i.ep, %_ZN4llvm8coverage12CoverageDataD2Ev.exit.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !789 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.et = load i32, ptr %i.es, align 4, !tbaa !790
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !789 ; 2 uses
  %.not131132.i = icmp eq ptr %i.er, %i.ev
  br i1 %.not131132.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.0.lcssa.i = phi i32 [ 0, %bb.n ], [ %.1.i, %bb.p ]
  %i.ew = load ptr, ptr %12, align 8, !tbaa !301, !alias.scope !774
  store i64 %.sroa.0119.0.i, ptr %11, align 8, !tbaa !301, !noalias !774
  call void @_ZN4llvm18SourceCoverageView16addInstantiationENS_9StringRefEjSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(257) %i.ew, ptr %.sroa.04.0.i.i, i64 %.sroa.3.0.i.i, i32 noundef %.0.lcssa.i, ptr nofree noundef nonnull align 8 dereferenceable(8) %11) #23
  %i.ex = load ptr, ptr %11, align 8, !tbaa !301, !noalias !774 ; 3 uses
  %.not.i88.i = icmp eq ptr %i.ex, null
  br i1 %.not.i88.i, label %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EED2Ev.exit93.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i89.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i89.i: ; preds = %._crit_edge.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !62
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(257) %i.ex) #23, !inline_history !765
  br label %_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EED2Ev.exit93.i

_ZNSt10unique_ptrIN4llvm18SourceCoverageViewESt14default_deleteIS1_EED2Ev.exit93.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i89.i, %._crit_edge.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.066136.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fb, %i.bx
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph137.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %.sroa.0112.0134.i = phi ptr [ %i.fh, %bb.p ], [ %i.er, %bb.n ] ; 3 uses
  %.0133.i = phi i32 [ %.1.i, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134.i, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !790
  %i.fe = icmp eq i32 %i.fd, %i.et
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134.i, i64 44
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !269
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.fg, i32 %.0133.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.1.i = phi i32 [ %.sroa.speculated.i, %bb.o ], [ %.0133.i, %.lr.ph.i ] ; 2 uses
end_hunk_0
