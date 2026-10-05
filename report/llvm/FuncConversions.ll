Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FuncConversions?download=true
inline.NumInlined: 1351
inline.NumDeleted: 870
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir48isLegalForBranchOpInterfaceTypeConversionPatternEPNS_9OperationERKNS_13TypeConverterE:bb.a
  %exitcond.not = icmp ne i32 %i.ad, %i.i
  %or.cond.not = select i1 %i.aa, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.e, label %._crit_edge, !llvm.loop !162

._crit_edge:                                      ; preds = %_ZN4mlir17SuccessorOperandsD2Ev.exit, %bb.d, %_ZN4llvm8dyn_castIN4mlir17BranchOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %.3 = phi i1 [ false, %_ZN4llvm8dyn_castIN4mlir17BranchOpInterfaceENS1_9OperationEEEDcPT0_.exit ], [ true, %bb.d ], [ %i.aa, %_ZN4mlir17SuccessorOperandsD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %.3
}

declare noundef i32 @_ZN4mlir5Block16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4mlir17BranchOpInterface20getSuccessorOperandsEj(ptr dead_on_unwind writable sret(%"class.mlir::SuccessorOperands") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir37populateReturnOpTypeConversionPatternERNS_17RewritePatternSetERKNS_13TypeConverterENS_14PatternBenefitE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(508) %1, i16 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.90", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #14, !noalias !175 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr nonnull @.str.12, i64 11, i16 %2, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef.90") align 8 %3) #15, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !59, !noalias !175
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_122ReturnOpTypeConversionE, i64 16), ptr %i.b, align 8, !tbaa !61, !noalias !175
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !176
  %i.e = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.e, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.13, i64 49), ptr %i.f, align 8, !tbaa !63, !noalias !176
  store i64 45, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !176
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.d, i64 noundef %i.l, i64 noundef 16) #15
  %.pre8.pre.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !64
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.h, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_122ReturnOpTypeConversionEJRKNS_13TypeConverterEPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.g, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.p, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !66
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_122ReturnOpTypeConversionEERKNS_13TypeConverterEJPNS_11MLIRContextERNS_14PatternBenefitEEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71   ; 10 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i6.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i6.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #14 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store ptr %i.b, ptr %i.af, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ag = add i64 %i.u, -8
  %i.ah = sub i64 %i.ag, %i.v                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = and i64 %i.ah, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.an = getelementptr i8, ptr %i.t, i64 %i.al
  %bound0 = icmp ult ptr %i.ae, %i.an
  %bound1 = icmp ult ptr %i.t, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.t, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.as = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !72, !alias.scope !179, !noalias !177
  %wide.load10 = load <2 x i64>, ptr %i.as, align 8, !tbaa !72, !alias.scope !179, !noalias !177
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !180, !noalias !179
  store <2 x i64> %wide.load10, ptr %i.at, align 8, !tbaa !72, !alias.scope !180, !noalias !179
  %i.au = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !72, !alias.scope !179, !noalias !177
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !72, !alias.scope !179, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.preheader12:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !72, !alias.scope !178, !noalias !177
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !72, !alias.scope !177, !noalias !178
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !72, !alias.scope !178, !noalias !177
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !174

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_122ReturnOpTypeConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bc) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_122ReturnOpTypeConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_122ReturnOpTypeConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !71
  store ptr %i.az, ptr %i.o, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !67
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_122ReturnOpTypeConversionEERKNS_13TypeConverterEJPNS_11MLIRContextERNS_14PatternBenefitEEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_122ReturnOpTypeConversionEERKNS_13TypeConverterEJPNS_11MLIRContextERNS_14PatternBenefitEEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_122ReturnOpTypeConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir39isLegalForReturnOpTypeConversionPatternEPNS_9OperationERKNS_13TypeConverterEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(508) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %3 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %spec.select.i.i.i.i.i.not = or i1 %3, %i.d
  %or.cond = or i1 %2, %spec.select.i.i.i.i.i.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(508) %1, ptr noundef nonnull %0) #15
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 49), i64 32) #15
  store ptr %i.i, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !78
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr %.sroa.01.0.copyload.i.i.i.i.i) #15, !inline_history !181
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit, %bb.b
  %.0 = phi i1 [ %i.n, %_ZN4mlir9Operation8hasTraitINS_7OpTrait10ReturnLikeEEEbv.exit ], [ %i.e, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(508), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir36isNotBranchOpInterfaceOrReturnLikeOpEPNS_9OperationE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 34) #15
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread, label %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit

_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !78
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %.sroa.01.0.copyload.i.i.i.i.i) #15, !inline_history !182
  br i1 %i.l, label %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit.i.i, %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.p) #15
  %.not9 = icmp eq ptr %i.q, %0
  br i1 %.not9, label %bb.e, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.e
  %i.s = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100
  %.fr = freeze ptr %i.v
  %i.w = icmp ne ptr %.fr, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %1 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.not = or i1 %1, %i.w
  br label %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit, %bb.e, %_ZN4mlir9Operation11getParentOpEv.exit, %bb.d, %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread, %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit
  %.1 = phi i1 [ true, %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit ], [ true, %_ZN4mlir9Operation14mightHaveTraitINS_7OpTrait12IsTerminatorEEEbv.exit.thread ], [ true, %bb.d ], [ true, %bb.e ], [ %spec.select.i.i.i.i.i.i.i.not, %_ZN4llvm15isa_and_nonnullIJN4mlir4func6FuncOpEEPNS1_9OperationEEEbRKT0_.exit ], [ true, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_17BranchOpInterfaceENS_6detail32BranchOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !98 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 23) #15
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !78 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !184

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_17BranchOpInterfaceEPNS_9OperationENS0_32BranchOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !100
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !76

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 23) #15
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !78
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #15, !inline_history !185
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !76

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 23) #15
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17BranchOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !78
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #15, !inline_history !185
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_17BranchOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_17BranchOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir9TypeRangeENS0_12PointerUnionIJPKNS3_5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS0_8RepeatedIS9_EEPKNSH_IS6_EEEEES9_S9_S9_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS3_13TypeConverter7isLegalES4_EUlS9_E_EEET_SX_SX_T0_St26random_access_iterator_tag(i64 %0, i64 %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = ashr i64 %i.a, 2                         ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.090 = phi i64 [ %i.p, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.15.089 = phi i64 [ %i.o, %bb.e ], [ %1, %bb.a ] ; 6 uses
  %i.d = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %.sroa.15.089) #15
  %i.e = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.d) #15
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nsw i64 %.sroa.15.089, 1             ; 2 uses
  %i.g = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %i.f) #15
  %i.h = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.g) #15
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.sroa.15.089, 2             ; 2 uses
  %i.j = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %i.i) #15
  %i.k = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.j) #15
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %.sroa.15.089, 3             ; 2 uses
  %i.m = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %i.l) #15
  %i.n = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.m) #15
  br i1 %i.n, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.sroa.15.089, 4             ; 2 uses
  %i.p = add nsw i64 %.090, -1
  %i.q = icmp sgt i64 %.090, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = sub nsw i64 %3, %.sroa.15.0.lcssa
  switch i64 %i.r, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
end_hunk_0
