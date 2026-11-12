Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgInterfaces?download=true
inline.NumInlined: 4089
inline.NumDeleted: 1894
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt14_Optional_baseIN4mlir6linalg21ContractionDimensionsELb0ELb0EED2Ev:bb.a
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.e) #21
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i:    ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.i) #21
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i:   ; preds = %bb.d, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i
  tail call void @free(ptr noundef %i.m) #21
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i:   ; preds = %bb.e, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt17_Optional_payloadIN4mlir6linalg21ContractionDimensionsELb0ELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i
  tail call void @free(ptr noundef %i.p) #21
  br label %_ZNSt17_Optional_payloadIN4mlir6linalg21ContractionDimensionsELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4mlir6linalg21ContractionDimensionsELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir6linalg6detail26getMatchContractionMessageENS1_22MatchContractionResultE(i32 noundef %0) local_unnamed_addr #5 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir6linalg6detail26getMatchContractionMessageENS1_22MatchContractionResultE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir6linalg6detail26getMatchContractionMessageENS1_22MatchContractionResultE.21, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir6linalg25isaContractionOpInterfaceENS0_8LinalgOpE(ptr %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg22ContractionOpInterfaceENS1_6detail37ContractionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %0)
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN4mlir6linalg6detail26isContractionInterfaceImplEPNS_9OperationEPNS0_21ContractionDimensionsE(ptr noundef nonnull %0, ptr noundef null)
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.c, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6linalg6detail26verifyContractionInterfaceEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = tail call noundef i32 @_ZN4mlir6linalg6detail26isContractionInterfaceImplEPNS_9OperationEPNS0_21ContractionDimensionsE(ptr noundef %0, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %switch.tableidx = add nsw i32 %i.a, -1         ; 2 uses
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir6linalg6detail26verifyContractionInterfaceEPNS_9OperationE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir6linalg6detail26verifyContractionInterfaceEPNS_9OperationE.22, i64 %i.c
  %switch.load5 = load ptr, ptr %switch.gep4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.d, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !155
  store ptr %switch.load5, ptr %2, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %switch.ext, ptr %i.f, align 8, !tbaa !145
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #21
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !164, !range !148, !noundef !149
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !164
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

declare void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !164, !range !148, !noundef !149
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !164
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #21
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg20inferConvolutionDimsENS0_8LinalgOpE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.223") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %4 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.37", align 8 ; 9 uses
  %6 = alloca %"struct.(anonymous namespace)::ConvAccessExprWalker", align 8 ; 14 uses
  %7 = alloca %"class.llvm::SmallVector.17", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !349 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57, !noalias !349
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %4, ptr noundef nonnull %i.b, ptr noundef %1) #21, !inline_history !1
  %i.d = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.f) #21
  br label %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit

_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit:  ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = extractvalue { ptr, i64 } %i.d, 1
  %.not = icmp eq i64 %i.i, 1
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i, label %bb.d, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  %i.o = zext i32 %i.n to i64
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit.i

_ZN4mlir9Operation14getNumOperandsEv.exit.i:      ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !350 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57, !noalias !350
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %3, ptr noundef nonnull %i.q, ptr noundef nonnull %1) #21, !inline_history !2
  %i.s = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i
  call void @free(ptr noundef %i.u) #21
  br label %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit

_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.x = extractvalue { ptr, i64 } %i.s, 1
  %i.y = sub nsw i64 %i.p, %i.x
  %.not12 = icmp eq i64 %i.y, 2
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit, %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.z, align 8, !tbaa !166
  br label %bb.p

bb.g:                                             ; preds = %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58, !noalias !351 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60, !noalias !351
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.37") align 8 %5, ptr noundef %i.ab, ptr noundef nonnull %1) #21, !inline_history !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 1, ptr %6, align 8
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 1, ptr %i.af, align 8
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 1, ptr %i.ah, align 8
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 248
  store i32 1, ptr %i.aj, align 8
  store i32 0, ptr %i.ak, align 8
  %i.al = load ptr, ptr %5, align 8, !tbaa !65
  %i.am = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #21 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  %.idx = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %.not1338 = icmp eq i64 %i.ao, 0
  br i1 %.not1338, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.aq = load ptr, ptr %5, align 8, !tbaa !65
  %.sroa.02.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !126
  call fastcc void @_ZN12_GLOBAL__N_120ConvAccessExprWalker17clearMultiUseDimsEN4mlir9AffineMapE(ptr noundef nonnull align 8 dereferenceable(256) %6, ptr %.sroa.02.0.copyload)
  %i.ar = load ptr, ptr %5, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !66
  %i.au = zext i32 %i.at to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50, !noalias !352
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.17") align 8 %7, ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !inline_history !143
  %i.ax = load ptr, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 47 ; 2 uses
  %9 = load i8, ptr %8, align 1
  %.not.i.i14 = icmp eq i8 %9, 0
  br i1 %.not.i.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ay = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.14, i64 7) #21 ; 2 uses
  %i.az = extractvalue { ptr, i8 } %i.ay, 0
  %i.ba = extractvalue { ptr, i8 } %i.ay, 1
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr nonnull @.str.14, i64 7) #21
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.05.1.i.i = phi ptr [ %i.bd, %bb.i ], [ %i.az, %bb.h ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.05.1.i.i, null
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i
  %i.be = call noundef zeroext i1 @_ZN4mlir20DenseIntElementsAttr7classofENS_9AttributeE(ptr nonnull %.sroa.05.1.i.i) #21
  %i.bf = ptrtoint ptr %.sroa.05.1.i.i to i64
  %i.bg = select i1 %i.be, i64 %i.bf, i64 0
  br label %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit

_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit: ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, %bb.j
  %.sroa.02.0.i.i.i = phi i64 [ %i.bg, %bb.j ], [ 0, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i ]
  %10 = load i8, ptr %8, align 1
  %.not.i.i15 = icmp eq i8 %10, 0
  br i1 %.not.i.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit
  %i.bh = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.15, i64 9) #21 ; 2 uses
  %i.bi = extractvalue { ptr, i8 } %i.bh, 0
  %i.bj = extractvalue { ptr, i8 } %i.bh, 1
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr nonnull @.str.15, i64 9) #21
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16: ; preds = %bb.l, %bb.k
  %.sroa.05.1.i.i17 = phi ptr [ %i.bm, %bb.l ], [ %i.bi, %bb.k ] ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %.sroa.05.1.i.i17, null
  br i1 %.not.i.i.i18, label %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit21, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16
  %i.bn = call noundef zeroext i1 @_ZN4mlir20DenseIntElementsAttr7classofENS_9AttributeE(ptr nonnull %.sroa.05.1.i.i17) #21
  %i.bo = ptrtoint ptr %.sroa.05.1.i.i17 to i64
  %i.bp = select i1 %i.bn, i64 %i.bo, i64 0
  br label %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit21

_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit21: ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16, %bb.m
  %.sroa.02.0.i.i.i20 = phi i64 [ %i.bp, %bb.m ], [ 0, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i16 ]
  call fastcc void @_ZL24inferConvolutionDimsImplN4llvm8ArrayRefIN4mlir9AffineMapEEENS0_INS1_5utils12IteratorTypeEEERN12_GLOBAL__N_120ConvAccessExprWalkerEbNS1_20DenseIntElementsAttrESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.ar, i64 %i.au, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(256) %6, i1 noundef zeroext false, i64 %.sroa.02.0.i.i.i, i64 %.sroa.02.0.i.i.i20)
  %i.bq = load ptr, ptr %7, align 8, !tbaa !65    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit21
  call void @free(ptr noundef %i.bq) #21
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit: ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE.exit21, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call fastcc void @_ZN12_GLOBAL__N_120ConvAccessExprWalkerD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bt = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit
  call void @free(ptr noundef %i.bt) #21
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.039 = phi ptr [ %i.bx, %.lr.ph ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %.039, align 8, !tbaa !130
  %i.bw = call fastcc i8 @_ZN4mlir21AffineExprVisitorBaseIN12_GLOBAL__N_120ConvAccessExprWalkerEN4llvm13LogicalResultEE5visitENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %.sroa.05.0.copyload) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.039, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.bx, %i.ap
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @_ZN4mlir21AffineExprVisitorBaseIN12_GLOBAL__N_120ConvAccessExprWalkerEN4llvm13LogicalResultEE5visitENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::AffineSymbolExpr", align 8 ; 3 uses
  %3 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.mlir::AffineConstantExpr", align 8 ; 3 uses
  %5 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %9 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %10 = alloca %"class.mlir::AffineExpr", align 8 ; 3 uses
  store ptr %1, ptr %10, align 8
  %i.b = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  %.sroa.0.0.copyload.i = load ptr, ptr %10, align 8, !tbaa !130 ; 8 uses
  switch i32 %i.b, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.c = load ptr, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.d = call fastcc range(i8 0, 2) i8 @_ZN12_GLOBAL__N_120ConvAccessExprWalker23visitAffineBinaryOpExprEN4mlir18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.c)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.e = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.f = call fastcc range(i8 0, 2) i8 @_ZN12_GLOBAL__N_120ConvAccessExprWalker23visitAffineBinaryOpExprEN4mlir18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.e)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.g = load ptr, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.h = call fastcc range(i8 0, 2) i8 @_ZN12_GLOBAL__N_120ConvAccessExprWalker23visitAffineBinaryOpExprEN4mlir18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.g)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.i = load ptr, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.j = call fastcc range(i8 0, 2) i8 @_ZN12_GLOBAL__N_120ConvAccessExprWalker23visitAffineBinaryOpExprEN4mlir18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.i)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.k = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = call fastcc range(i8 0, 2) i8 @_ZN12_GLOBAL__N_120ConvAccessExprWalker23visitAffineBinaryOpExprEN4mlir18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.k)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4mlir18AffineConstantExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.sroa.0.0.copyload.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.sroa.0.0.copyload.i) #21
  %i.m = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = zext i32 %i.m to i64                     ; 3 uses
  %i.p = load i32, ptr %i.n, align 8, !noalias !367
  %i.q = and i32 %i.p, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !367
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !367
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load i32, ptr %i.v, align 8, !noalias !367
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.s, ptr %i.r
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.u, ptr %i.x ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.w, i32 4 ; 2 uses
  %i.y = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.loopexit20.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add i32 %.sink.i.i.i.i.i.i.i, -1         ; 2 uses
  %i.aa = mul i32 %i.m, 37
  %.019.i.i.i.i.i = and i32 %i.z, %i.aa           ; 3 uses
  %i.ab = zext i32 %.019.i.i.i.i.i to i64         ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !144
  %i.af = and i32 %.019.i.i.i.i.i, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %.loopexit20.i, !prof !167

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.ai, %i.z             ; 3 uses
  %i.aj = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !144
  %i.an = and i32 %.0.i.i.i.i.i, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %.loopexit20.i, !prof !168

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.aq = phi i64 [ %i.aj, %bb.j ], [ %i.ab, %bb.i ]
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.j ], [ %.019.i.i.i.i.i, %bb.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !127
  %i.at = icmp eq i64 %i.as, %i.o
  br i1 %i.at, label %_ZN12_GLOBAL__N_120ConvAccessExprWalker12visitDimExprEN4mlir13AffineDimExprE.exit, label %bb.j, !prof !75

.loopexit20.i:                                    ; preds = %bb.j, %bb.i, %bb.h
  %i.au = load i32, ptr %0, align 8, !noalias !368
  %i.av = and i32 %i.au, 1
  %.not.i.i.i.i.i.i4.i = icmp eq i32 %i.av, 0     ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !368
end_hunk_0
begin_hunk_1_@_ZL24inferConvolutionDimsImplN4llvm8ArrayRefIN4mlir9AffineMapEEENS0_INS1_5utils12IteratorTypeEEERN12_GLOBAL__N_120ConvAccessExprWalkerEbNS1_20DenseIntElementsAttrESA_:bb.a
  %i.rz = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !145 ; 2 uses
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit179, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.sc = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !145
  %i.se = zext i32 %i.sa to i64                   ; 2 uses
  %i.sf = shl nuw nsw i64 %i.se, 3
  %i.sg = add nuw nsw i64 %i.se, 31
  %i.sh = lshr i64 %i.sg, 3
  %i.si = and i64 %i.sh, 1073741820
  %i.sj = add nuw nsw i64 %i.si, %i.sf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.sd, i64 noundef %i.sj, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit179

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit179: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.sk = load i32, ptr %33, align 8
  %i.sl = and i32 %i.sk, 1
  %.not.i.i.i180 = icmp eq i32 %i.sl, 0
  br i1 %.not.i.i.i180, label %bb.ap, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181

bb.ap:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit179
  %i.sm = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !145 ; 2 uses
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !145
  %i.sr = zext i32 %i.sn to i64                   ; 2 uses
  %i.ss = shl nuw nsw i64 %i.sr, 3
  %i.st = add nuw nsw i64 %i.sr, 31
  %i.su = lshr i64 %i.st, 3
  %i.sv = and i64 %i.su, 1073741820
  %i.sw = add nuw nsw i64 %i.sv, %i.ss
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.sq, i64 noundef %i.sw, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit179, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.sx = load i32, ptr %32, align 8
  %i.sy = and i32 %i.sx, 1
  %.not.i.i.i182 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i.i182, label %bb.ar, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183

bb.ar:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181
  %i.sz = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !145 ; 2 uses
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.tc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !145
  %i.te = zext i32 %i.ta to i64                   ; 2 uses
  %i.tf = shl nuw nsw i64 %i.te, 3
  %i.tg = add nuw nsw i64 %i.te, 31
  %i.th = lshr i64 %i.tg, 3
  %i.ti = and i64 %i.th, 1073741820
  %i.tj = add nuw nsw i64 %i.ti, %i.tf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.td, i64 noundef %i.tj, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit181, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.tk = load i32, ptr %31, align 8
  %i.tl = and i32 %i.tk, 1
  %.not.i.i.i184 = icmp eq i32 %i.tl, 0
  br i1 %.not.i.i.i184, label %bb.at, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185

bb.at:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183
  %i.tm = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !145 ; 2 uses
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.tp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !145
  %i.tr = zext i32 %i.tn to i64                   ; 2 uses
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = add nuw nsw i64 %i.tr, 31
  %i.tu = lshr i64 %i.tt, 3
  %i.tv = and i64 %i.tu, 1073741820
  %i.tw = add nuw nsw i64 %i.tv, %i.ts
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.tq, i64 noundef %i.tw, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit183, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.tx = load i32, ptr %30, align 8
  %i.ty = and i32 %i.tx, 1
  %.not.i.i.i186 = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i.i186, label %bb.av, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187

bb.av:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185
  %i.tz = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !145 ; 2 uses
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.uc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !145
  %i.ue = zext i32 %i.ua to i64                   ; 2 uses
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = add nuw nsw i64 %i.ue, 31
  %i.uh = lshr i64 %i.ug, 3
  %i.ui = and i64 %i.uh, 1073741820
  %i.uj = add nuw nsw i64 %i.ui, %i.uf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ud, i64 noundef %i.uj, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit185, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.uk = load i32, ptr %29, align 8
  %i.ul = and i32 %i.uk, 1
  %.not.i.i.i188 = icmp eq i32 %i.ul, 0
  br i1 %.not.i.i.i188, label %bb.ax, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189

bb.ax:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187
  %i.um = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.un = load i32, ptr %i.um, align 8, !tbaa !145 ; 2 uses
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.up = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !145
  %i.ur = zext i32 %i.un to i64                   ; 2 uses
  %i.us = shl nuw nsw i64 %i.ur, 3
  %i.ut = add nuw nsw i64 %i.ur, 31
  %i.uu = lshr i64 %i.ut, 3
  %i.uv = and i64 %i.uu, 1073741820
  %i.uw = add nuw nsw i64 %i.uv, %i.us
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.uq, i64 noundef %i.uw, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit187, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.ux = load i32, ptr %28, align 8
  %i.uy = and i32 %i.ux, 1
  %.not.i.i.i190 = icmp eq i32 %i.uy, 0
  br i1 %.not.i.i.i190, label %bb.az, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191

bb.az:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189
  %i.uz = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !145 ; 2 uses
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.vc = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !145
  %i.ve = zext i32 %i.va to i64                   ; 2 uses
  %i.vf = shl nuw nsw i64 %i.ve, 3
  %i.vg = add nuw nsw i64 %i.ve, 31
  %i.vh = lshr i64 %i.vg, 3
  %i.vi = and i64 %i.vh, 1073741820
  %i.vj = add nuw nsw i64 %i.vi, %i.vf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.vd, i64 noundef %i.vj, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit189, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.vk = load i32, ptr %27, align 8
  %i.vl = and i32 %i.vk, 1
  %.not.i.i.i192 = icmp eq i32 %i.vl, 0
  br i1 %.not.i.i.i192, label %bb.bb, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit193

bb.bb:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191
  %i.vm = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !145 ; 2 uses
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit193, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !145
  %i.vr = zext i32 %i.vn to i64                   ; 2 uses
  %i.vs = shl nuw nsw i64 %i.vr, 3
  %i.vt = add nuw nsw i64 %i.vr, 31
  %i.vu = lshr i64 %i.vt, 3
  %i.vv = and i64 %i.vu, 1073741820
  %i.vw = add nuw nsw i64 %i.vv, %i.vs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.vq, i64 noundef %i.vw, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit193

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit193: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit191, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir9Operation13getAttrOfTypeINS_20DenseIntElementsAttrEEET_N4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 47
  %3 = load i8, ptr %i.a, align 1
  %.not.i = icmp eq i8 %3, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2) #21 ; 2 uses
  %i.c = extractvalue { ptr, i8 } %i.b, 0
  %i.d = extractvalue { ptr, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = tail call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %1, i64 %2) #21
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit: ; preds = %bb.b, %bb.c
  %.sroa.05.1.i = phi ptr [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.05.1.i, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir20DenseIntElementsAttrENS1_9AttributeEEEDaRKT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit
  %i.h = tail call noundef zeroext i1 @_ZN4mlir20DenseIntElementsAttr7classofENS_9AttributeE(ptr nonnull %.sroa.05.1.i) #21
  %spec.select.i.i.i = select i1 %i.h, ptr %.sroa.05.1.i, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir20DenseIntElementsAttrENS1_9AttributeEEEDaRKT0_.exit

_ZN4llvm16dyn_cast_or_nullIN4mlir20DenseIntElementsAttrENS1_9AttributeEEEDaRKT0_.exit: ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit, %bb.d
  %.sroa.02.0.i.i = phi ptr [ %spec.select.i.i.i, %bb.d ], [ null, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit ]
  ret ptr %.sroa.02.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120ConvAccessExprWalkerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(256) dereferenceable(256) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i32, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #21
  br label %_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 1
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i32, ptr %i.r, align 8, !tbaa !145  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145
  %i.w = zext i32 %i.s to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.w, 31
  %i.z = lshr i64 %i.y, 3
  %i.aa = and i64 %i.z, 1073741820
  %i.ab = add nuw nsw i64 %i.aa, %i.x
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.v, i64 noundef %i.ab, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapIlN4mlir10AffineExprELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit, %bb.d, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 1
  %.not.i.i1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i1, label %bb.f, label %_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = add nuw nsw i64 %i.ak, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aj, i64 noundef %i.ap, i64 noundef 8) #21
  br label %_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit

_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit, %bb.f, %bb.g
  %i.aq = load i32, ptr %0, align 8
  %i.ar = and i32 %i.aq, 1
  %.not.i.i.i2 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i2, label %bb.h, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit3

bb.h:                                             ; preds = %_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !145 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !145
  %i.ax = zext i32 %i.at to i64                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aw, i64 noundef %i.bc, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit3

_ZN4llvm6detail12DenseSetImplIlNS_13SmallDenseMapIlNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEED2Ev.exit3: ; preds = %_ZN4llvm13SmallDenseMapIllLj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg20inferConvolutionDimsEN4llvm8ArrayRefINS_9AffineMapEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.223") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::FailureOr.185", align 8 ; 7 uses
  %4 = alloca %"struct.(anonymous namespace)::ConvAccessExprWalker", align 8 ; 14 uses
  %.not = icmp eq i64 %2, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.a, align 8, !tbaa !166
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.012.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !126
  call fastcc void @_ZL24inferIteratorsFromOutMapN4mlir9AffineMapE(ptr dead_on_unwind noalias writable align 8 %3, ptr %.sroa.012.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !147, !range !148, !noundef !149
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.f, align 8, !tbaa !166
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %4, align 8
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 1, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i32 1, ptr %i.j, align 8
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i32 1, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 8
  %i.n = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not1424 = icmp eq i64 %i.p, 0
  br i1 %.not1424, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !126
  call fastcc void @_ZN12_GLOBAL__N_120ConvAccessExprWalker17clearMultiUseDimsEN4mlir9AffineMapE(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr %.sroa.01.0.copyload)
  %i.r = load i8, ptr %i.c, align 8, !tbaa !147, !range !148, !noundef !149
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.025 = phi ptr [ %i.u, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
end_hunk_1
