Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TransformOps?download=true
inline.NumInlined: 26617
inline.NumDeleted: 8590
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL48__mlir_ods_local_region_constraint_TransformOps2PN4mlir9OperationERNS_6RegionEN4llvm9StringRefEj:.lr.ph.i.i.i
_ZN4llvm15hasNItemsOrLessIRN4mlir6RegionEEEbOT_j.exit: ; preds = %.lr.ph.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !132
  store ptr @.str.361, ptr %8, align 8, !tbaa !133
  store i8 3, ptr %i.a, align 8, !tbaa !134
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.c = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm15hasNItemsOrLessIRN4mlir6RegionEEEbOT_j.exit
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 5, ptr %6, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = zext i32 %4 to i64
  store i64 %i.f, ptr %i.e, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !115
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !115
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %_ZN4llvm15hasNItemsOrLessIRN4mlir6RegionEEEbOT_j.exit, %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.p = icmp eq i64 %3, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  br i1 %i.p, label %bb.d, label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.d:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !132
  store ptr @.str.267, ptr %9, align 8, !tbaa !133
  store i8 3, ptr %i.q, align 8, !tbaa !134
  br label %bb.e

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !134, !alias.scope !603
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 5, ptr %i.t, align 1, !tbaa !132, !alias.scope !603
  store ptr @.str.362, ptr %10, align 8, !tbaa !133, !alias.scope !603
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %2, ptr %i.u, align 8, !tbaa !133, !alias.scope !603
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %3, ptr %i.v, align 8, !tbaa !133, !alias.scope !603
  store ptr %10, ptr %9, align 8, !alias.scope !604
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.363, ptr %i.w, align 8, !alias.scope !604
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.x, align 8, !tbaa !134, !alias.scope !604
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.y, align 1, !tbaa !132, !alias.scope !604
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.d
  %i.z = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %9) #26 ; 0 uses
  %.pr = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.379, ptr %i.ad, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 57, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !115 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !116
  %.not.i.i.i.i.i5 = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !117

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ai = zext i32 %i.af to i64
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !115
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !115
  br label %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit: ; preds = %bb.e, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i
  %i.an = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ao = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !119, !range !120, !noundef !121
  %i.ar = trunc nuw i8 %i.aq to i1
  store i8 0, ptr %i.ap, align 8, !tbaa !119
  br i1 %i.ar, label %bb.k, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.as) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.an, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %.lr.ph.i.i.i.1 ], [ 1, %.lr.ph.i.i.i ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform25ApplyConversionPatternsOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform25ApplyConversionPatternsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir9transform25ApplyConversionPatternsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform25ApplyConversionPatternsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %17 = alloca %"class.mlir::transform::ConversionPatternDescriptorOpInterface", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = and i32 %i.c, 8388607
  %.off = add nsw i32 %i.d, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !132
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.g = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 3, ptr %6, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.259, ptr %i.i, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 23, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA24_KcEERS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !115
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !115
  br label %_ZN4mlir10Diagnostic6appendIRA24_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA24_KcEERS0_OT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit: ; preds = %bb.b, %_ZN4mlir10Diagnostic6appendIRA24_KcEERS0_OT_.exit.i.i
  %i.s = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  %i.t = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA24_KcEEOS0_OT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !119, !range !120, !noundef !121
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.u, align 8, !tbaa !119
  br i1 %i.w, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.x) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread74

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa
  %i.ac = lshr i32 %i.c, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !152
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %.thread69, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !143 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.064.083 = load ptr, ptr %i.ao, align 8, !tbaa !143 ; 2 uses
  %.not84 = icmp eq ptr %.sroa.064.083, %i.ap
  br i1 %.not84, label %.thread69, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.064.085, i64 8
  %.sroa.064.0 = load ptr, ptr %i.aq, align 8, !tbaa !143 ; 2 uses
  %.not = icmp eq ptr %.sroa.064.0, %i.ap
  br i1 %.not, label %.thread69.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.sroa.064.085 = phi ptr [ %.sroa.064.0, %bb.k ], [ %.sroa.064.083, %bb.j ] ; 2 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.064.085) #26 ; 2 uses
  %i.as = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_9transform38ConversionPatternDescriptorOpInterfaceENS1_6detail53ConversionPatternDescriptorOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ar)
  %.not80 = icmp eq ptr %i.as, null
  br i1 %.not80, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.at, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !132
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #26
  %i.av = load ptr, ptr %10, align 8, !tbaa !106
  %.not.i.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRA82_KcEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.260, ptr %i.ax, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 81, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i25, align 8, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !115 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !116
  %.not.i.i.i.i.i26 = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i.i.i.i26, label %bb.o, label %bb.n, !prof !117

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA82_KcEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !115
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !115
  br label %_ZN4mlir10Diagnostic6appendIRA82_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA82_KcEERS0_OT_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA82_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA82_KcEEOS0_OT_.exit: ; preds = %bb.l, %_ZN4mlir10Diagnostic6appendIRA82_KcEERS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnosticC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %10)
  %i.bh = load ptr, ptr %10, align 8, !tbaa !106
  %.not.i27 = icmp eq ptr %i.bh, null
  br i1 %.not.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA82_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsIRA82_KcEEOS0_OT_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !119, !range !120, !noundef !121
  %i.bk = trunc nuw i8 %i.bj to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !119
  br i1 %i.bk, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit28

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bl) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit28

_ZN4mlir18InFlightDiagnosticD2Ev.exit28:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10Diagnostic10attachNoteESt8optionalINS_8LocationEE(ptr noundef nonnull align 8 dereferenceable(192) %i.bn, ptr %.sroa.0.0.copyload.i, i8 1) #26 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 3, ptr %4, align 8, !tbaa !109
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.253, ptr %i.bq, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 20, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !113
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !116
  %.not.i.i29 = icmp ult i32 %i.bs, %i.bu
  br i1 %.not.i.i29, label %bb.t, label %bb.s, !prof !117

bb.s:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit28
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10DiagnosticlsILm21EEERS0_RAT__Kc.exit

bb.t:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit28
  %i.bv = zext i32 %i.bs to i64
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !118
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.by = load i32, ptr %i.br, align 8, !tbaa !115
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.br, align 8, !tbaa !115
  br label %_ZN4mlir10DiagnosticlsILm21EEERS0_RAT__Kc.exit

_ZN4mlir10DiagnosticlsILm21EEERS0_RAT__Kc.exit:   ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ca = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #26
  %i.cb = load ptr, ptr %9, align 8, !tbaa !106
  %.not.i30 = icmp eq ptr %i.cb, null
  br i1 %.not.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4mlir10DiagnosticlsILm21EEERS0_RAT__Kc.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4mlir10DiagnosticlsILm21EEERS0_RAT__Kc.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !119, !range !120, !noundef !121
  %i.ce = trunc nuw i8 %i.cd to i1
  store i8 0, ptr %i.cc, align 8, !tbaa !119
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bn) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.thread74

.thread69.loopexit:                               ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre91 = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread69

.thread69:                                        ; preds = %.thread69.loopexit, %bb.j, %bb.i
  %i.cf = phi i32 [ %.pre91, %.thread69.loopexit ], [ %i.c, %bb.j ], [ %i.c, %bb.i ] ; 3 uses
  %i.cg = phi ptr [ %.pre, %.thread69.loopexit ], [ %i.a, %bb.j ], [ %i.a, %bb.i ] ; 2 uses
  %i.ch = and i32 %i.cf, 8388607
  %i.ci = icmp eq i32 %i.ch, 2
  br i1 %i.ci, label %bb.y, label %.thread74

bb.y:                                             ; preds = %.thread69
  %i.cj = lshr i32 %i.cf, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i32 = and i32 %i.cj, 1
  %i.ck = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i32 to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ck
  %i.cm = lshr i32 %i.cf, 21
  %i.cn = and i32 %i.cm, 2040
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !84
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !143 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !143 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cx, %i.cy
end_hunk_0
