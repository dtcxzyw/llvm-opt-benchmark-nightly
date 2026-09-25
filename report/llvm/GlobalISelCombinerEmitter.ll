Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GlobalISelCombinerEmitter?download=true
inline.NumInlined: 9622
inline.NumDeleted: 4729
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN18CombineRuleBuilder16emitMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERKNS4_16AnyOpcodePatternE:bb.a
  store i32 %i.cp, ptr %i.ax, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread.us

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !165
  %i.cr = call noundef zeroext i1 @_ZN18CombineRuleBuilder23emitPatFragMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERNS4_11RuleMatcherEPNS4_18InstructionMatcherERKNS4_14PatFragPatternERNS0_8DenseSetIS7_S9_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(456) %i.bg, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(312) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.cs = load i32, ptr %i.bb, align 4, !tbaa !337 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %11, align 8, !tbaa !338
  %i.cv = zext i32 %i.cs to i64                   ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cv, 31
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 1073741820
  %i.da = add nuw nsw i64 %i.cz, %i.cw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cu, i64 noundef %i.da, i64 noundef 8) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %i.cr, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread.us, label %.thread

_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread.us: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us, %bb.o, %bb.n, %.lr.ph.split.us
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0102.0124.us, i64 24 ; 2 uses
  %.not113.us = icmp eq ptr %i.db, %i.cd
  br i1 %.not113.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread
  %.sroa.0102.0124 = phi ptr [ %i.ea, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread ], [ %.val, %.lr.ph ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0102.0124, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !165 ; 4 uses
  %i.de = icmp eq ptr %i.dd, %3
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !167
  switch i32 %i.dg, label %.split.us [
    i32 0, label %.split126.us
    i32 3, label %bb.s
    i32 4, label %.split128.us
    i32 2, label %.split130.us
    i32 1, label %bb.u
  ]

.split126.us:                                     ; preds = %bb.r, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.111, ptr %5, align 8
  store i8 3, ptr %.sroa.296.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.497.0..sroa_idx, align 1
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !47, !align !106
  call void @_ZN4llvm10PrintErrorEPKNS_6RecordERKNS_5TwineE(ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(34) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !165
  %i.dj = call noundef zeroext i1 @_ZN18CombineRuleBuilder23emitPatFragMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERNS4_11RuleMatcherEPNS4_18InstructionMatcherERKNS4_14PatFragPatternERNS0_8DenseSetIS7_S9_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(456) %i.bg, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(312) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.dk = load i32, ptr %i.bb, align 4, !tbaa !337 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = load ptr, ptr %11, align 8, !tbaa !338
  %i.dn = zext i32 %i.dk to i64                   ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.dn, 31
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = and i64 %i.dq, 1073741820
  %i.ds = add nuw nsw i64 %i.dr, %i.do
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dm, i64 noundef %i.ds, i64 noundef 8) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit

.split128.us:                                     ; preds = %bb.r, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.109, ptr %4, align 8
  store i8 3, ptr %.sroa.293.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !47, !align !106
  call void @_ZN4llvm10PrintErrorEPKNS_6RecordERKNS_5TwineE(ptr noundef nonnull %i.dt, ptr noundef nonnull align 8 dereferenceable(34) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread

.split130.us:                                     ; preds = %bb.r, %bb.l
  %.us-phi = phi ptr [ %i.cf, %bb.l ], [ %i.dd, %bb.r ]
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !47, !align !106 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !108
  %i.dz = zext i32 %i.dy to i64
  call void @_ZNK4llvm2gi18InstructionPattern17reportUnreachableENS_8ArrayRefINS_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(304) %.us-phi, ptr %i.dw, i64 %i.dz) #29
  br label %.thread

bb.u:                                             ; preds = %bb.r
  call void @_ZN18CombineRuleBuilder15addCXXPredicateERN4llvm2gi11RuleMatcherERKNS0_14CodeExpansionsERKNS1_10CXXPatternERKNS0_8DenseMapIPKNS1_7PatternEjNS0_12DenseMapInfoISD_vEENS0_6detail12DenseMapPairISD_jEEEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(456) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread

.split.us:                                        ; preds = %bb.r, %bb.l
  unreachable

_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %i.dj, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread, label %.thread

_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit, %bb.u, %.lr.ph.split
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0102.0124, i64 24 ; 2 uses
  %.not113 = icmp eq ptr %i.ea, %i.cd
  br i1 %.not113, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.thread.us, %_ZNSt10unique_ptrIN4llvm2gi24InstructionOpcodeMatcherESt14default_deleteIS2_EED2Ev.exit.i
  br i1 %.fr, label %.thread112, label %bb.v

.thread112:                                       ; preds = %._crit_edge
  %i.eb = load ptr, ptr %10, align 8, !tbaa !50
  %i.ec = load i32, ptr %i.ax, align 8, !tbaa !108
  %i.ed = zext i32 %i.ec to i64
  %i.ee = call noundef zeroext i1 @_ZN18CombineRuleBuilder17emitCXXMatchApplyERN4llvm14CodeExpansionsERNS0_2gi11RuleMatcherENS0_8ArrayRefIPNS3_10CXXPatternEEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(456) %i.bg, ptr %i.eb, i64 %i.ed) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ef = call noundef zeroext i1 @_ZN18CombineRuleBuilder17emitApplyPatternsERN4llvm14CodeExpansionsERNS0_2gi11RuleMatcherE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(456) %i.bg)
  br i1 %i.ef, label %bb.w, label %.thread

bb.w:                                             ; preds = %.thread112, %bb.v
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us, %.split128.us, %.split126.us, %.split130.us, %bb.w, %bb.v
  %cond2 = phi i1 [ false, %bb.v ], [ true, %bb.w ], [ false, %.split128.us ], [ false, %.split130.us ], [ false, %.split126.us ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit.us ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPNS_2gi10CXXPatternELb1EE9push_backES3_.exit ] ; 2 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.aw
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIPNS_2gi10CXXPatternELj2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  call void @free(ptr noundef %i.eg) #29
  br label %_ZN4llvm11SmallVectorIPNS_2gi10CXXPatternELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_2gi10CXXPatternELj2EED2Ev.exit: ; preds = %.thread, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %.059132, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.ei, %i.an
  %or.cond.not = select i1 %cond2, i1 %.not, i1 false
  br i1 %or.cond.not, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %.critedge

.critedge:                                        ; preds = %_ZN4llvm11SmallVectorIPNS_2gi10CXXPatternELj2EED2Ev.exit, %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit
  %.not.lcssa = phi i1 [ true, %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit ], [ %cond2, %_ZN4llvm11SmallVectorIPNS_2gi10CXXPatternELj2EED2Ev.exit ]
  call void @_ZN4llvm21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN18CombineRuleBuilder16emitMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERKNS4_18InstructionPatternE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(304) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.(anonymous namespace)::PrettyStackTraceEmit", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 2 uses
  %9 = alloca %"class.llvm::DenseSet.279", align 8 ; 13 uses
  %10 = alloca %class.anon.283, align 8           ; 4 uses
  %11 = alloca %"class.llvm::function_ref.284", align 8 ; 3 uses
  %12 = alloca %"class.llvm::function_ref.285", align 8 ; 3 uses
  %13 = alloca %class.anon.286, align 1           ; 3 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.llvm::SmallVector.288", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !47, !align !106
  call void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_120PrettyStackTraceEmitE, i64 16), ptr %7, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !291
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(456) ptr @_ZN18CombineRuleBuilder14addRuleMatcherERKN4llvm8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_jEEEENS0_5TwineE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %8) ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !145
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !146
  %i.h = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN4llvm2gi11RuleMatcher21addInstructionMatcherENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(456) %i.f, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #29 ; 3 uses
  %.sroa.0.0.copyload.i87 = load ptr, ptr %i.g, align 8, !tbaa !145
  %.sroa.2.0.copyload.i89 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %.val86 = load i32, ptr %i.i, align 8, !tbaa !322
  call fastcc void @_ZL20declareInstExpansionRN4llvm14CodeExpansionsERKNS_2gi18InstructionMatcherENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %.val86, ptr %.sroa.0.0.copyload.i87, i64 %.sroa.2.0.copyload.i89)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %0, ptr %10, align 8, !tbaa !340
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !167  ; 2 uses
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZN4llvm12function_refIFPKNS_2gi18InstructionPatternENS_9StringRefEEE11callback_fnIKZN18CombineRuleBuilder16emitMatchPatternERNS_14CodeExpansionsERKNS_8DenseMapIPKNS1_7PatternEjNS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_jEEEERS3_E3$_0EES4_lS5_", ptr %11, align 8, !tbaa !342
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.m = ptrtoint ptr %10 to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store ptr @_ZN4llvm12function_refIFNS_2gi18InstructionOperandERKS2_EE11callback_fnIZN18CombineRuleBuilder34emitCodeGenInstructionMatchPatternERNS_14CodeExpansionsERKNS_8DenseMapIPKNS1_7PatternEjNS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_jEEEERNS1_11RuleMatcherERNS1_18InstructionMatcherERKNS1_25CodeGenInstructionPatternERNS_8DenseSetISE_SG_EENS0_IFPKNS1_18InstructionPatternENS_9StringRefEEEES6_Ed_UlRKT_E_EES2_lS4_, ptr %12, align 8, !tbaa !345
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = ptrtoint ptr %13 to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !346
  %i.p = call noundef zeroext i1 @_ZN18CombineRuleBuilder34emitCodeGenInstructionMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERNS4_11RuleMatcherERNS4_18InstructionMatcherERKNS4_25CodeGenInstructionPatternERNS0_8DenseSetIS7_S9_EENS0_12function_refIFPKNS4_18InstructionPatternENS0_9StringRefEEEENSQ_IFNS4_18InstructionOperandERKSX_EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(456) %i.f, ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(328) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull byval(%"class.llvm::function_ref.284") align 8 %11, ptr noundef nonnull byval(%"class.llvm::function_ref.285") align 8 %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %i.p, label %bb.e, label %.critedge71

bb.c:                                             ; preds = %bb.a
  %.not144 = icmp eq i32 %i.k, 3
  call void @llvm.assume(i1 %.not144)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !283, !nonnull !47, !align !106
  %i.s = call noundef i32 @_ZNK4llvm2gi7PatFrag9num_rootsEv(ptr noundef nonnull align 8 dereferenceable(288) %i.r) #29
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.u = load ptr, ptr %3, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call { ptr, i64 } %i.w(ptr noundef nonnull align 8 dereferenceable(312) %3) #29 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 3, ptr %i.aa, align 8, !tbaa !152, !alias.scope !912
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 5, ptr %i.ab, align 1, !tbaa !153, !alias.scope !912
  store ptr @.str.106, ptr %14, align 8, !tbaa !62, !alias.scope !912
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !62, !alias.scope !912
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !62, !alias.scope !912
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %14, ptr %6, align 8
  %.sroa.5121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.107, ptr %.sroa.5121.0..sroa_idx124, align 8
  %.sroa.7131.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %.sroa.7131.0..sroa_idx134, align 8
  %.sroa.9136.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %.sroa.9136.0..sroa_idx139, align 1
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !47, !align !106
  call void @_ZN4llvm10PrintErrorEPKNS_6RecordERKNS_5TwineE(ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %.critedge71

bb.d:                                             ; preds = %bb.c
  %i.af = call noundef zeroext i1 @_ZN18CombineRuleBuilder23emitPatFragMatchPatternERN4llvm14CodeExpansionsERKNS0_8DenseMapIPKNS0_2gi7PatternEjNS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_jEEEERNS4_11RuleMatcherEPNS4_18InstructionMatcherERKNS4_14PatFragPatternERNS0_8DenseSetIS7_S9_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(456) %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(312) %3, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br i1 %i.af, label %bb.e, label %.critedge71

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i = load i32, ptr %i.ah, align 8, !tbaa !108
  %i.ai = zext i32 %.val1.i to i64                ; 3 uses
  %.idx1.i.i = mul nuw nsw i64 %i.ai, 24          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx1.i.i ; 2 uses
  %i.ak = lshr i64 %i.ai, 2                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.e
  %i.al = mul nuw nsw i64 %i.ak, 96               ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val.i, i64 %i.al
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.av, %bb.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.au, %bb.i ], [ %.val.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.am = getelementptr i8, ptr %.02949.i.i.i.i.i.i, i64 16
  %.029.val32.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !165
  %i.an = getelementptr i8, ptr %.029.val32.i.i.i.i.i.i, i64 8
  %.029.val32.val.i.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !167
  %.not35.i.i.i.i.i.i = icmp eq i32 %.029.val32.val.i.i.i.i.i.i, 1
  br i1 %.not35.i.i.i.i.i.i, label %bb.f, label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %.02949.i.i.i.i.i.i, i64 40
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !165
  %i.ap = getelementptr i8, ptr %.val31.i.i.i.i.i.i, i64 8
  %.val31.val.i.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !167
  %.not36.i.i.i.i.i.i = icmp eq i32 %.val31.val.i.i.i.i.i.i, 1
  br i1 %.not36.i.i.i.i.i.i, label %bb.g, label %.loopexit.split.loop.exit40.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %.02949.i.i.i.i.i.i, i64 64
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !165
  %i.ar = getelementptr i8, ptr %.val30.i.i.i.i.i.i, i64 8
  %.val30.val.i.i.i.i.i.i = load i32, ptr %i.ar, align 8, !tbaa !167
  %.not37.i.i.i.i.i.i = icmp eq i32 %.val30.val.i.i.i.i.i.i, 1
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %.loopexit.split.loop.exit42.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %.02949.i.i.i.i.i.i, i64 88
  %.val.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.at = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i = load i32, ptr %i.at, align 8, !tbaa !167
  %.not38.i.i.i.i.i.i = icmp eq i32 %.val.val.i.i.i.i.i.i, 1
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %.loopexit.split.loop.exit44.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 96
  %i.av = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.i
  %gepdiff.i.i = sub nsw i64 %.idx1.i.i, %i.al
  %i.ax = sdiv exact i64 %gepdiff.i.i, 24
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.e
  %.pre-phi56.i.i.i.i.i.i = phi i64 [ %i.ax, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ai, %bb.e ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val.i, %bb.e ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i.i, label %bb.o [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 16
  %.029.val.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !165
  %i.az = getelementptr i8, ptr %.029.val.i.i.i.i.i.i, i64 8
  %.029.val.val.i.i.i.i.i.i = load i32, ptr %i.az, align 8, !tbaa !167
  %.not.i.i.i.i.i.i = icmp eq i32 %.029.val.val.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.1.i.i.i.i.i.i, i64 16
  %.1.val.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !165
  %i.bc = getelementptr i8, ptr %.1.val.i.i.i.i.i.i, i64 8
  %.1.val.val.i.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !167
  %.not33.i.i.i.i.i.i = icmp eq i32 %.1.val.val.i.i.i.i.i.i, 1
  br i1 %.not33.i.i.i.i.i.i, label %bb.m, label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.m ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.be = getelementptr i8, ptr %.2.i.i.i.i.i.i, i64 16
  %.2.val.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.bf = getelementptr i8, ptr %.2.val.i.i.i.i.i.i, i64 8
  %.2.val.val.i.i.i.i.i.i = load i32, ptr %i.bf, align 8, !tbaa !167
  %.not34.i.i.i.i.i.i = icmp eq i32 %.2.val.val.i.i.i.i.i.i, 1
  br i1 %.not34.i.i.i.i.i.i, label %bb.o, label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i
  br label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

.loopexit.split.loop.exit40.i.i.i.i.i.i:          ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  br label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

.loopexit.split.loop.exit42.i.i.i.i.i.i:          ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 48
  br label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

.loopexit.split.loop.exit44.i.i.i.i.i.i:          ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 72
  br label %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit

_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %bb.l, %bb.n, %bb.o, %.loopexit.split.loop.exit40.i.i.i.i.i.i, %.loopexit.split.loop.exit42.i.i.i.i.i.i, %.loopexit.split.loop.exit44.i.i.i.i.i.i
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.l ], [ %i.aj, %bb.o ], [ %.2.i.i.i.i.i.i, %bb.n ], [ %.029.lcssa.i.i.i.i.i.i, %bb.j ], [ %i.bh, %.loopexit.split.loop.exit42.i.i.i.i.i.i ], [ %i.bg, %.loopexit.split.loop.exit40.i.i.i.i.i.i ], [ %i.bi, %.loopexit.split.loop.exit44.i.i.i.i.i.i ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bj = icmp eq ptr %i.aj, %.028.i.i.i.i.i.i
  %.fr = freeze i1 %i.bj                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.bk, ptr %15, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 2, ptr %i.bm, align 4, !tbaa !168
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !50 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val78 = load i32, ptr %i.bo, align 8, !tbaa !108 ; 2 uses
  %i.bp = zext i32 %.val78 to i64
  %.idx = mul nuw nsw i64 %i.bp, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx ; 2 uses
  %.not145154 = icmp eq i32 %.val78, 0
  br i1 %.not145154, label %.critedge77, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK18CombineRuleBuilder23hasOnlyCXXApplyPatternsEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge76.us
  %.sroa.0109.0155.us = phi ptr [ %i.dk, %.critedge76.us ], [ %.val, %.lr.ph ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0109.0155.us, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !165 ; 7 uses
  %i.bv = load ptr, ptr %9, align 8, !tbaa !338, !noalias !913
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !347, !noalias !913 ; 2 uses
  %i.bx = load i32, ptr %i.bs, align 4, !tbaa !337, !noalias !913 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.bz = add i32 %i.bx, -1                       ; 2 uses
  %i.ca = ptrtoint ptr %i.bu to i64
end_hunk_0
