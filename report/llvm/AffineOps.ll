Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineOps?download=true
inline.NumInlined: 28437
inline.NumDeleted: 11029
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4mlir6affine16AffineParallelOp8setStepsEN4llvm8ArrayRefIlEE:bb.a
  %i.ae = lshr i32 %i.ad, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.ae, 1
  %i.af = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr %i.aa, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6affine16AffineParallelOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %2 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %4 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %5 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %6 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %18 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %19 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %20 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %21 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %22 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %23 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %24 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %25 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %26 = alloca %"class.llvm::SmallVector.895", align 8 ; 6 uses
  %27 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 5 uses
  %28 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 5 uses
  %29 = alloca %"class.llvm::SmallVector.895", align 8 ; 6 uses
  %30 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 32 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %32 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 4 uses
  %33 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 4 uses
  %34 = alloca %"class.llvm::SmallVector.895", align 8 ; 6 uses
  %35 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 6 uses
  %36 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 6 uses
  %37 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 5 uses
  %38 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %39 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %41 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %42 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %44 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 6 uses
  %45 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 6 uses
  %46 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 5 uses
  %47 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %48 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %50 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %51 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %53 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %54 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %56 = alloca %"class.llvm::detail::zippy.914", align 8 ; 6 uses
  %57 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %58 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %60 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %62 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %63 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @_ZN4mlir6affine16AffineParallelOp8getStepsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.895") align 8 %26, ptr noundef nonnull readonly align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = load ptr, ptr %26, align 8, !tbaa !116   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4mlir6affine16AffineParallelOp10getNumDimsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.c) #32
  br label %_ZN4mlir6affine16AffineParallelOp10getNumDimsEv.exit

_ZN4mlir6affine16AffineParallelOp10getNumDimsEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.f = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.h, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %27, align 8
  %i.m = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #32 ; 2 uses
  %i.n = zext i32 %i.b to i64
  %.not = icmp eq i64 %i.m, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  br i1 %.not, label %bb.c, label %.critedge55.thread

bb.c:                                             ; preds = %_ZN4mlir6affine16AffineParallelOp10getNumDimsEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not.i.i.i.i56 = icmp ugt i32 %i.q, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.r = lshr i32 %i.q, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i57 = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i57 to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.sroa.0.0.copyload.i.i.i58 = load ptr, ptr %i.u, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i58, ptr %28, align 8
  %i.v = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #32
  %.not47 = icmp eq i64 %i.v, %i.m
  br i1 %.not47, label %bb.d, label %.critedge55.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @_ZN4mlir6affine16AffineParallelOp8getStepsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.895") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !117
  %.not48 = icmp eq i32 %i.x, %i.b
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !166    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = and i32 %i.aa, 8388607
  %i.ac = icmp ne i32 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = lshr i32 %i.aa, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ad, 1
  %i.ae = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ae
  %i.ag = lshr i32 %i.aa, 21
  %i.ah = and i32 %i.ag, 2040
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !147
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !148 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !298
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !151
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32
  %i.az = icmp ne i32 %i.b, %i.ay
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.ph = phi i1 [ %i.az, %bb.e ], [ true, %bb.d ]
  %i.ba = load ptr, ptr %29, align 8, !tbaa !116  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %.critedge55, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ba) #32
  br label %.critedge55

.critedge55.thread:                               ; preds = %_ZN4mlir6affine16AffineParallelOp10getNumDimsEv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.h

.critedge55:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br i1 %.ph, label %bb.h, label %bb.an

bb.h:                                             ; preds = %.critedge55.thread, %.critedge55
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.bd = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !174
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.be, align 1, !tbaa !172
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %31) #32
  %i.bf = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit.thread, label %bb.i

_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit.thread: ; preds = %bb.h
  %64 = load ptr, ptr %0, align 8, !tbaa !166
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 44
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 8388607
  %68 = icmp ne i32 %67, 0
  call void @llvm.assume(i1 %68)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  store i32 3, ptr %25, align 8, !tbaa !302
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @.str.64, ptr %i.bh, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !156
  %i.bi = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !117 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %30, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167
  %.not.i.i.i.i.i = icmp ult i32 %i.bj, %i.bl
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !prof !204

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %25)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = zext i32 %i.bj to i64
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false)
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !117
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bi, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %.pre264 = load ptr, ptr %30, align 8, !tbaa !182
  %i.br = icmp eq ptr %.pre264, null
  %i.bs = load ptr, ptr %0, align 8, !tbaa !166   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = and i32 %i.bu, 8388607
  %i.bw = icmp ne i32 %i.bv, 0
  call void @llvm.assume(i1 %i.bw)
  br i1 %i.br, label %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit
  %i.bx = lshr i32 %i.bu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i59 = and i32 %i.bx, 1
  %i.by = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i59 to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.by
  %i.ca = lshr i32 %i.bu, 21
  %i.cb = and i32 %i.ca, 2040
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !148 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !298
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !151
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cm, %i.cp
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  store i32 5, ptr %24, align 8, !tbaa !302
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cu = and i64 %i.cr, 4294967295
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !173
  %i.cv = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 6 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !117 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !167
  %.not.i.i.i.i.i61 = icmp ult i32 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i61, label %bb.n, label %bb.m, !prof !204

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %24)
  br label %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = zext i32 %i.cw to i64
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !116
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  %i.dc = load i32, ptr %i.cv, align 8, !tbaa !117
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.cv, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit:  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %.pr = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i62, label %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  store i32 3, ptr %23, align 8, !tbaa !302
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.65, ptr %i.de, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i.i.i.i.i63 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 42, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i63, align 8, !tbaa !156
  %i.df = load i32, ptr %i.cv, align 8, !tbaa !117 ; 2 uses
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !167
  %.not.i.i.i.i.i64 = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i.i.i.i.i64, label %bb.q, label %bb.p, !prof !204

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %23)
  br label %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !116
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  %i.dk = load i32, ptr %i.cv, align 8, !tbaa !117
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.cv, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  %i.dm = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %.not.i.i.i.i65 = icmp ugt i32 %i.do, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dq = lshr i32 %i.do, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i66 = and i32 %i.dq, 1
  %i.dr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i66 to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dr
  %.sroa.0.0.copyload.i.i.i67 = load ptr, ptr %i.ds, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i67, ptr %32, align 8
  %i.dt = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #32
  %i.du = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i68 = icmp eq ptr %i.du, null
  br i1 %.not.i.i68, label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  store i32 2, ptr %22, align 8, !tbaa !302
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.dt, ptr %i.dw, align 8, !tbaa !173
  %i.dx = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 6 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !117 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !167
  %.not.i.i.i.i.i69 = icmp ult i32 %i.dy, %i.ea
  br i1 %.not.i.i.i.i.i69, label %bb.t, label %bb.s, !prof !204

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %22)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

bb.t:                                             ; preds = %bb.r
  %i.eb = zext i32 %i.dy to i64
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !116
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  %i.ee = load i32, ptr %i.dx, align 8, !tbaa !117
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.dx, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit:  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %.pr192 = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i70 = icmp eq ptr %.pr192, null
  br i1 %.not.i.i70, label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  store i32 3, ptr %21, align 8, !tbaa !302
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.66, ptr %i.eg, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i.i.i.i.i71 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i71, align 8, !tbaa !156
  %i.eh = load i32, ptr %i.dx, align 8, !tbaa !117 ; 2 uses
  %i.ei = load i32, ptr %i.dz, align 4, !tbaa !167
  %.not.i.i.i.i.i72 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i.i.i.i.i72, label %bb.w, label %bb.v, !prof !204

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %21)
  br label %_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %i.dv, align 8, !tbaa !116
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  %i.em = load i32, ptr %i.dx, align 8, !tbaa !117
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.dx, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %i.eo = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %.not.i.i.i.i73 = icmp ugt i32 %i.eq, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.er = lshr i32 %i.eq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i74 = and i32 %i.er, 1
  %i.es = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i74 to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %.sroa.0.0.copyload.i.i.i75 = load ptr, ptr %i.eu, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i75, ptr %33, align 8
  %i.ev = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #32
  %i.ew = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i76 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i76, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  store i32 2, ptr %20, align 8, !tbaa !302
  %i.ey = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ev, ptr %i.ey, align 8, !tbaa !173
  %i.ez = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 6 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !117 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !167
  %.not.i.i.i.i.i77 = icmp ult i32 %i.fa, %i.fc
  br i1 %.not.i.i.i.i.i77, label %bb.z, label %bb.y, !prof !204

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %20)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit79

bb.z:                                             ; preds = %bb.x
  %i.fd = zext i32 %i.fa to i64
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !116
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %i.fg = load i32, ptr %i.ez, align 8, !tbaa !117
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ez, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit79

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit79: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.pr194 = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i80 = icmp eq ptr %.pr194, null
  br i1 %.not.i.i80, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i32 3, ptr %19, align 8, !tbaa !302
  %i.fi = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.67, ptr %i.fi, align 8, !tbaa !261
  %.sroa.2.0..sroa_idx.i.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 28, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i81, align 8, !tbaa !156
  %i.fj = load i32, ptr %i.ez, align 8, !tbaa !117 ; 2 uses
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !167
  %.not.i.i.i.i.i82 = icmp ult i32 %i.fj, %i.fk
  br i1 %.not.i.i.i.i.i82, label %bb.ac, label %bb.ab, !prof !204

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.fl = zext i32 %i.fj to i64
  %i.fm = load ptr, ptr %i.ex, align 8, !tbaa !116
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  %i.fo = load i32, ptr %i.ez, align 8, !tbaa !117
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.ez, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit79, %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @_ZN4mlir6affine16AffineParallelOp8getStepsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.895") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.fq = load ptr, ptr %30, align 8, !tbaa !182
  %.not.i.i83 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i83, label %_ZNO4mlir18InFlightDiagnosticlsIRA17_KcEEOS0_OT_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !117
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  store i32 5, ptr %18, align 8, !tbaa !302
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ft, ptr %i.fv, align 8, !tbaa !173
  %i.fw = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 6 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !117 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !167
  %.not.i.i.i.i.i84 = icmp ult i32 %i.fx, %i.fz
  br i1 %.not.i.i.i.i.i84, label %bb.af, label %bb.ae, !prof !204

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %18)
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

bb.af:                                            ; preds = %bb.ad
  %i.ga = zext i32 %i.fx to i64
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !116
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  %i.gd = load i32, ptr %i.fw, align 8, !tbaa !117
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.fw, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

end_hunk_0
