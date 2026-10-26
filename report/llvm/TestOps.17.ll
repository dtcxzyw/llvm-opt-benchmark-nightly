Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOps.17?download=true
inline.NumInlined: 10616
inline.NumDeleted: 4344
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4test12TestReturnOp27setPropertiesFromParsedAttrERN4mlir15EmptyPropertiesENS1_9AttributeEN4llvm12function_refIFNS1_18InFlightDiagnosticEvEEE:bb.a
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !81, !range !82, !noundef !83
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !81
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.u = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26 ; 0 uses
  %i.v = call noundef ptr @_ZNK4mlir14DictionaryAttr5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26 ; 2 uses
  %i.w = call noundef ptr @_ZNK4mlir14DictionaryAttr3endEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !92
  %i.x = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #26, !inline_history !1
  %i.y = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.aa, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %.not.i.i.i.i.i11 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i11, label %bb.l, label %bb.k, !prof !80

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !31
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit: ; preds = %bb.i, %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i
  %i.ak = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  %i.al = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.am, ptr %i.ak) #26 ; 0 uses
  %.pr29 = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i14 = icmp eq ptr %.pr29, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 3, ptr %4, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.ap, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i.i.i.i16, label %bb.o, label %bb.n, !prof !80

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !31
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !31
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  %i.ba = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !81, !range !82, !noundef !83
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !81
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.be) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.h, %bb.s, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.4 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.az, %bb.s ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i8 %.sroa.0.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4test12TestReturnOp10getEffectsERN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS3_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test6detail46TestReturnWithIgnoredValueOpGenericAdaptorBaseC2ENS_28TestReturnWithIgnoredValueOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.g, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4test6detail46TestReturnWithIgnoredValueOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind.a = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.ind.a, zeroinitializer
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind.a, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %i.i = select i1 %.not, i32 %i.e, i32 1
  %.sroa.2.0.insert.ext = zext i32 %i.i to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader17 ]
  %.01114 = phi i32 [ %i.k, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader17 ] ; 2 uses
  %4 = icmp eq i32 %.01114, 0
  %i.j = zext i1 %4 to i32
  %spec.select = add nuw nsw i32 %.015, %i.j      ; 2 uses
  %i.k = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !405
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test35TestReturnWithIgnoredValueOpAdaptorC2ENS_28TestReturnWithIgnoredValueOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !40
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4test42TestReturnWithIgnoredValueOpGenericAdaptorIN4mlir10ValueRangeEEC2INS_28TestReturnWithIgnoredValueOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u
  %i.w = lshr i32 %i.o, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4test42TestReturnWithIgnoredValueOpGenericAdaptorIN4mlir10ValueRangeEEC2INS_28TestReturnWithIgnoredValueOpEvEES2_T_.exit

_ZN4test42TestReturnWithIgnoredValueOpGenericAdaptorIN4mlir10ValueRangeEEC2INS_28TestReturnWithIgnoredValueOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4test35TestReturnWithIgnoredValueOpAdaptor6verifyEN4mlir8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4test28TestReturnWithIgnoredValueOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind.a = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.ind.a, zeroinitializer
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind.a, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %i.p = select i1 %.not, i32 %i.l, i32 1
  %.sroa.2.0.insert.ext = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader16 ]
  %.01013 = phi i32 [ %i.r, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader16 ] ; 2 uses
  %3 = icmp eq i32 %.01013, 0
  %i.q = zext i1 %3 to i32
  %spec.select = add nuw nsw i32 %.014, %i.q      ; 2 uses
  %i.r = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test28TestReturnWithIgnoredValueOp16getValuesMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4test28TestReturnWithIgnoredValueOp27getODSOperandIndexAndLengthEj.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = add i32 %i.f, -1
  br label %_ZN4test28TestReturnWithIgnoredValueOp27getODSOperandIndexAndLengthEj.exit

_ZN4test28TestReturnWithIgnoredValueOp27getODSOperandIndexAndLengthEj.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test28TestReturnWithIgnoredValueOp21setPropertiesFromAttrERN4mlir15EmptyPropertiesENS1_9AttributeEN4llvm12function_refIFNS1_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #26, !inline_history !1
  %i.c = load ptr, ptr %5, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 3, ptr %4, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !31
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr = load ptr, ptr %5, align 8, !tbaa !72
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !81, !range !82, !noundef !83
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !81
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4test28TestReturnWithIgnoredValueOp19getPropertiesAsAttrEPN4mlir11MLIRContextERKNS1_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4test28TestReturnWithIgnoredValueOp21computePropertiesHashERKN4mlir15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1301", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #26
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4test28TestReturnWithIgnoredValueOp15getInherentAttrEPN4mlir11MLIRContextERKNS1_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4test28TestReturnWithIgnoredValueOp15setInherentAttrERN4mlir15EmptyPropertiesEN4llvm9StringRefENS1_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4test28TestReturnWithIgnoredValueOp21populateInherentAttrsEPN4mlir11MLIRContextERKNS1_15EmptyPropertiesERNS1_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4test28TestReturnWithIgnoredValueOp19verifyInherentAttrsEN4mlir13OperationNameERNS1_13NamedAttrListEN4llvm12function_refIFNS1_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test28TestReturnWithIgnoredValueOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_10ValueRangeENS1_5ValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %5, align 8
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3) #26
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28TestReturnWithIgnoredValueOp6createERN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.43, i64 30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %4, ptr %5, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3) #26
  %i.a = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %i.a, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test28TestReturnWithIgnoredValueOpEvE2idE
  %spec.select.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28TestReturnWithIgnoredValueOp6createERN4mlir20ImplicitLocOpBuilderENS1_10ValueRangeENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"struct.mlir::OperationState", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %5, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.43, i64 30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %5, i64 %1, i64 %2) #26
  %i.b = ptrtoint ptr %4 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %5, i64 %i.b, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.c = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %5) #26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
end_hunk_0
