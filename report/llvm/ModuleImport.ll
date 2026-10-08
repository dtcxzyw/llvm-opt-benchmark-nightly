Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleImport?download=true
inline.NumInlined: 13241
inline.NumDeleted: 6436
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZZN4mlir4LLVM12ModuleImport18processInstructionEPN4llvm11InstructionEENK3$_0clEv":bb.a
  %i.af = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ac, ptr noundef nonnull align 8 dereferenceable(34) %1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.pr4 = load ptr, ptr %5, align 8, !tbaa !189
  %.not.i = icmp eq ptr %.pr4, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit.thread: ; preds = %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !215, !range !216, !noundef !217
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.ag, align 8, !tbaa !215
  br i1 %i.ai, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aj) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ak = load ptr, ptr %3, align 8, !tbaa !214   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %i.am = load i64, ptr %i.e, align 8, !tbaa !201
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i8 1
}

declare ptr @_ZN4mlir4LLVM10DbgLabelOp6createERNS_9OpBuilderENS_8LocationENS0_11DILabelAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM12ModuleImport20getPersonalityAsAttrEPN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(498) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !307
  %i.c = and i16 %i.b, 8
  %.not23 = icmp eq i16 %i.c, 0
  br i1 %.not23, label %.critedge21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 536870912
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.c, label %.critedge21.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.d, align 8, !tbaa !228
  %.not = icmp eq i8 %i.h, 19
  br i1 %.not, label %bb.d, label %.critedge21

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !307
  %i.k = icmp eq i16 %i.j, 51
  br i1 %i.k, label %bb.e, label %.critedge21

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22
  %i.o = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0) #22
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %.critedge21

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.e, align 4
  %i.r = and i32 %i.q, 268435455
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !282  ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !228
  %.not27 = icmp eq i8 %i.w, 14
  br i1 %.not27, label %.critedge21.sink.split, label %.critedge21

.critedge21.sink.split:                           ; preds = %bb.f, %bb.b
  %.sink32 = phi ptr [ %i.d, %bb.b ], [ %i.v, %bb.f ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !36
  %i.y = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink32) #22 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = tail call ptr @_ZN4mlir13SymbolRefAttr3getEPNS_11MLIRContextEN4llvm9StringRefE(ptr noundef %i.x, ptr %i.z, i64 %i.aa) #22
  br label %.critedge21

.critedge21:                                      ; preds = %.critedge21.sink.split, %bb.c, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.d ], [ %i.ab, %.critedge21.sink.split ]
  ret ptr %.sroa.0.0
}

declare noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM12ModuleImport25processFunctionAttributesEPN4llvm8FunctionENS0_10LLVMFuncOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(498) %0, ptr noundef nonnull %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %4 = alloca %"class.llvm::SetVector.3918", align 8 ; 10 uses
  %5 = alloca %"class.llvm::Attribute", align 8   ; 5 uses
  %6 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %10 = alloca %"class.mlir::LLVM::MemoryEffectsAttr", align 8 ; 5 uses
  %11 = alloca %"class.mlir::LLVM::LLVMFuncOp", align 8 ; 47 uses
  %12 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %13 = alloca %"class.std::optional.151", align 8 ; 4 uses
  %14 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::AttributeSet", align 8 ; 6 uses
  %19 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %20 = alloca %"class.llvm::AttributeSet", align 8 ; 4 uses
  %21 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %22 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %23 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %24 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %29 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %32 = alloca %"class.std::optional.151", align 8 ; 4 uses
  %33 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %34 = alloca %"class.std::optional.151", align 8 ; 4 uses
  %35 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %37 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %38 = alloca %"class.std::optional.151", align 8 ; 4 uses
  %39 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %42 = alloca %"class.llvm::Attribute", align 8  ; 5 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  store ptr %2, ptr %11, align 8
  %i.c = tail call i32 @_ZNK4llvm8Function16getMemoryEffectsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22 ; 6 uses
  %i.d = lshr i32 %i.c, 6
  %i.e = and i32 %i.d, 3
  %switch.idx.cast.i.i = zext nneg i32 %i.e to i64
  %i.f = and i32 %i.c, 3
  %switch.idx.cast.i6.i = zext nneg i32 %i.f to i64
  %i.g = lshr i32 %i.c, 2
  %i.h = and i32 %i.g, 3
  %switch.idx.cast.i7.i = zext nneg i32 %i.h to i64
  %i.i = lshr i32 %i.c, 4
  %i.j = and i32 %i.i, 3
  %switch.idx.cast.i8.i = zext nneg i32 %i.j to i64
  %i.k = lshr i32 %i.c, 8
  %i.l = and i32 %i.k, 3
  %switch.idx.cast.i9.i = zext nneg i32 %i.l to i64
  %i.m = lshr i32 %i.c, 10
  %i.n = and i32 %i.m, 3
  %switch.idx.cast.i10.i = zext nneg i32 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.p = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  %i.q = tail call ptr @_ZN4mlir4LLVM17MemoryEffectsAttr3getEPNS_11MLIRContextENS0_10ModRefInfoES4_S4_S4_S4_S4_(ptr noundef %i.p, i64 noundef %switch.idx.cast.i.i, i64 noundef %switch.idx.cast.i6.i, i64 noundef %switch.idx.cast.i7.i, i64 noundef %switch.idx.cast.i8.i, i64 noundef %switch.idx.cast.i9.i, i64 noundef %switch.idx.cast.i10.i) #22
  store ptr %i.q, ptr %10, align 8
  %i.r = call noundef zeroext i1 @_ZN4mlir4LLVM17MemoryEffectsAttr11isReadWriteEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22
  br i1 %i.r, label %_ZL20processMemoryEffectsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %10, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.t, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = lshr i32 %i.t, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 1
  %i.v = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 304
  store ptr %.sroa.0.0.copyload.i, ptr %i.x, align 8
  br label %_ZL20processMemoryEffectsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit

_ZL20processMemoryEffectsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.y = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22 ; 6 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.y, 8   ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.y, 16
  %.sroa.9.0.extract.shift.i = lshr i32 %i.y, 24  ; 2 uses
  %44 = or i32 %.sroa.5.0.extract.shift.i, %i.y
  %45 = and i32 %44, 255
  %or.cond18.i = icmp eq i32 %45, 0
  br i1 %or.cond18.i, label %_ZNK4llvm13DenormalFPEnveqES0_.exit.i, label %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread.i

_ZNK4llvm13DenormalFPEnveqES0_.exit.i:            ; preds = %_ZL20processMemoryEffectsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit
  %46 = and i32 %i.y, 16711680
  %47 = or disjoint i32 %46, %.sroa.9.0.extract.shift.i
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %_ZL20processDenormalFPEnvPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit, label %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread.i

_ZNK4llvm13DenormalFPEnveqES0_.exit.thread.i:     ; preds = %_ZNK4llvm13DenormalFPEnveqES0_.exit.i, %_ZL20processMemoryEffectsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit
  %i.z = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  %i.aa = add i32 %i.y, 1
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM12ModuleImport25processFunctionAttributesEPN4llvm8FunctionENS0_10LLVMFuncOpE.45, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %narrow = add nuw nsw i32 %.sroa.5.0.extract.shift.i, 1
  %i.ad = and i32 %narrow, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %switch.gep189 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM12ModuleImport25processFunctionAttributesEPN4llvm8FunctionENS0_10LLVMFuncOpE.45, i64 %i.ae
  %switch.load190 = load i8, ptr %switch.gep189, align 1
  %switch.ext191 = zext i8 %switch.load190 to i64
  %narrow196.a = add nuw nsw i32 %.sroa.7.0.extract.shift.i, 1
  %i.af = and i32 %narrow196.a, 255
  %i.ag = zext nneg i32 %i.af to i64
  %switch.gep185 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM12ModuleImport25processFunctionAttributesEPN4llvm8FunctionENS0_10LLVMFuncOpE.45, i64 %i.ag
  %switch.load186 = load i8, ptr %switch.gep185, align 1
  %switch.ext187 = zext i8 %switch.load186 to i64
  %narrow197 = add nuw nsw i32 %.sroa.9.0.extract.shift.i, 1
  %i.ah = and i32 %narrow197, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %switch.gep193 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM12ModuleImport25processFunctionAttributesEPN4llvm8FunctionENS0_10LLVMFuncOpE.45, i64 %i.ai
  %switch.load194 = load i8, ptr %switch.gep193, align 1
  %switch.ext195 = zext i8 %switch.load194 to i64
  %i.aj = call ptr @_ZN4mlir4LLVM17DenormalFPEnvAttr3getEPNS_11MLIRContextENS0_16DenormalModeKindES4_S4_S4_(ptr noundef %i.z, i64 noundef %switch.ext, i64 noundef %switch.ext191, i64 noundef %switch.ext187, i64 noundef %switch.ext195) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i.i.i88 = icmp ugt i32 %i.al, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.am = lshr i32 %i.al, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i89 = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i89 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  store ptr %i.aj, ptr %i.ap, align 8
  br label %_ZL20processDenormalFPEnvPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit

_ZL20processDenormalFPEnvPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit: ; preds = %_ZNK4llvm13DenormalFPEnveqES0_.exit.i, %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread.i
  %.sroa.037.0.copyload = load ptr, ptr %11, align 8 ; 3 uses
  %i.aq = getelementptr i8, ptr %1, i64 128       ; 5 uses
  %.val = load ptr, ptr %i.aq, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %.val, ptr %8, align 8
  %i.ar = call ptr @_ZNK4llvm13AttributeList13getAttributesEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.as, align 8
  %i.at = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #22
  %i.au = call fastcc ptr @_ZL27convertLLVMAttributesToMLIRN4mlir8LocationEPNS_11MLIRContextEN4llvm12AttributeSetENS3_8ArrayRefINS3_13StringLiteralEEES7_(ptr %.sroa.0.0.copyload.i.i.i, ptr noundef %i.at, ptr %i.ar, ptr nonnull @_ZL29kExplicitLLVMFuncOpAttributes, i64 41, ptr nonnull @_ZL36kExplicitLLVMFuncOpAttributePrefixes, i64 1)
  store ptr %i.au, ptr %9, align 8
  %i.av = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.aw = extractvalue { ptr, i64 } %i.av, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZL23processPassthroughAttrsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit, label %bb.c

bb.c:                                             ; preds = %_ZL20processDenormalFPEnvPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit
  %.sroa.0.0.copyload.i90 = load ptr, ptr %9, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 44
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %.not.i.i.i.i91 = icmp ugt i32 %i.az, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.ba = lshr i32 %i.az, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i92 = and i32 %i.ba, 1
  %i.bb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i92 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.037.0.copyload, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  store ptr %.sroa.0.0.copyload.i90, ptr %i.bd, align 8
  br label %_ZL23processPassthroughAttrsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit

_ZL23processPassthroughAttrsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit: ; preds = %_ZL20processDenormalFPEnvPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.be = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 34) #22
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL23processPassthroughAttrsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit
  call void @_ZN4mlir4LLVM10LLVMFuncOp11setNoInlineEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL23processPassthroughAttrsPN4llvm8FunctionEN4mlir4LLVM10LLVMFuncOpE.exit
  %i.bf = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 3) #22
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4mlir4LLVM10LLVMFuncOp15setAlwaysInlineEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 17) #22
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setInlineHintEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 52) #22
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4mlir4LLVM10LLVMFuncOp15setOptimizeNoneEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 6) #22
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setConvergentEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 45) #22
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN4mlir4LLVM10LLVMFuncOp11setNoUnwindEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 81) #22
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setWillReturnEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 40) #22
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN4mlir4LLVM10LLVMFuncOp11setNoreturnEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 51) #22
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN4mlir4LLVM10LLVMFuncOp10setOptsizeEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.28, i64 15) #22
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN4mlir4LLVM10LLVMFuncOp16setSaveRegParamsEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bo = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 19) #22
  br i1 %i.bo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN4mlir4LLVM10LLVMFuncOp10setMinsizeEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bp = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 57) #22
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @_ZN4mlir4LLVM10LLVMFuncOp15setReturnsTwiceEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bq = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 5) #22
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4mlir4LLVM10LLVMFuncOp7setColdEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.br = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 13) #22
  br i1 %i.br, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4mlir4LLVM10LLVMFuncOp6setHotEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bs = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 29) #22
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4mlir4LLVM10LLVMFuncOp14setNoduplicateEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bt = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.29, i64 25) #22
  br i1 %i.bt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4mlir4LLVM10LLVMFuncOp25setNoCallerSavedRegistersEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bu = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 25) #22
  br i1 %i.bu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4mlir4LLVM10LLVMFuncOp13setNocallbackEb(ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext true) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bv = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.30, i64 14) #22
  store ptr %i.bv, ptr %12, align 8
  %i.bw = call noundef zeroext i1 @_ZNK4llvm9Attribute17isStringAttributeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #22
  br i1 %i.bw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bz = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #22 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 5, ptr %i.cc, align 8, !tbaa !212
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.cd, align 1, !tbaa !213
  store ptr %i.ca, ptr %15, align 8, !tbaa !201
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !201
  %i.cf = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(34) %15) #22
  store ptr %i.cf, ptr %14, align 8
  %i.cg = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #22 ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  store ptr %i.ch, ptr %13, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cj = extractvalue { ptr, i64 } %i.cg, 1
  store i64 %i.cj, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
end_hunk_0
