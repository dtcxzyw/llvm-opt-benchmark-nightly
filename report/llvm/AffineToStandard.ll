Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineToStandard?download=true
inline.NumInlined: 3264
inline.NumDeleted: 2030
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK12_GLOBAL__N_116AffineIfLowering15matchAndRewriteEN4mlir6affine10AffineIfOpERNS1_15PatternRewriterE:bb.a
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !134
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  %i.fe = load ptr, ptr %2, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.fd) #17
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit
  %i.fh = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %i.fj = load i32, ptr %i.fi, align 4            ; 3 uses
  %i.fk = and i32 %i.fj, 8388607
  %i.fl = icmp ne i32 %i.fk, 0
  call void @llvm.assume(i1 %i.fl)
  %i.fm = lshr i32 %i.fj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i55 = and i32 %i.fm, 1
  %i.fn = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i55 to i64
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = lshr i32 %i.fj, 21
  %i.fq = and i32 %i.fp, 2040
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !130
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.fy = load i32, ptr %i.dx, align 4            ; 3 uses
  %i.fz = and i32 %i.fy, 8388607
  %i.ga = icmp ne i32 %i.fz, 0
  call void @llvm.assume(i1 %i.ga)
  %i.gb = lshr i32 %i.fy, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i56 = and i32 %i.gb, 1
  %i.gc = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i56 to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.gc
  %i.ge = lshr i32 %i.fy, 21
  %i.gf = and i32 %i.ge, 2040
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %i.gi = load i32, ptr %i.ej, align 8, !tbaa !130
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !134
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  call void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.fx, ptr noundef nonnull %i.gn) #17
  %i.go = load i32, ptr %i.dx, align 4            ; 3 uses
  %i.gp = and i32 %i.go, 8388607
  %i.gq = icmp ne i32 %i.gp, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = lshr i32 %i.go, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i57 = and i32 %i.gr, 1
  %i.gs = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i57 to i64
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.gs
  %i.gu = lshr i32 %i.go, 21
  %i.gv = and i32 %i.gu, 2040
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = load i32, ptr %i.ej, align 8, !tbaa !130
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !134
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.he = load ptr, ptr %2, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.hd) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit
  %i.hh = load ptr, ptr %5, align 8, !tbaa !23
  %i.hi = call i64 @_ZN4mlir3scf4IfOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #17 ; 3 uses
  %i.hj = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !132
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -16 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.hm, ptr null, ptr %i.hn
  %i.ho = and i64 %i.hi, 4294967295               ; 3 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_ZN4mlir3scf4IfOp10getResultsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 noundef %i.ho) #17
  br label %_ZN4mlir3scf4IfOp10getResultsEv.exit

_ZN4mlir3scf4IfOp10getResultsEv.exit:             ; preds = %bb.i, %bb.j
  %i.hr = phi ptr [ %i.hq, %bb.j ], [ %.sroa.0.0.i.i.i.i, %bb.i ]
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.hi, 32
  %i.hs = add i64 %.sroa.5.0.extract.shift.i.i, %i.hi
  %i.ht = and i64 %i.hs, 4294967295
  %i.hu = sub nsw i64 %i.ht, %i.ho
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.hr, i64 %i.hu) #17
  %i.hv = load i64, ptr %13, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = load ptr, ptr %2, align 8, !tbaa !17
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.hh, i64 %i.hv, i64 %i.hx) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.thread89

.thread89:                                        ; preds = %bb.b, %_ZN4mlir3scf4IfOp10getResultsEv.exit
  %.sroa.048.3 = phi i8 [ 1, %_ZN4mlir3scf4IfOp10getResultsEv.exit ], [ 0, %bb.b ]
  %i.ia = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ay
  br i1 %i.ib, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread89
  call void @free(ptr noundef %i.ia) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit: ; preds = %.thread89, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i8 %.sroa.048.3
}

declare ptr @_ZN4mlir6affine10AffineIfOp13getIntegerSetEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK4mlir10IntegerSet17getNumConstraintsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZNK4mlir10IntegerSet13getConstraintEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4mlir10IntegerSet4isEqEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK4mlir10IntegerSet10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZN4mlir6affine16expandAffineExprERNS_9OpBuilderENS_8LocationENS_10AffineExprENS_10ValueRangeES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64, ptr noundef byval(%"class.mlir::ValueRange") align 8) local_unnamed_addr #1

declare ptr @_ZN4mlir5arith6CmpIOp6createERNS_9OpBuilderENS_8LocationENS0_13CmpIPredicateENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef, ptr, ptr) local_unnamed_addr #1

declare ptr @_ZN4mlir5arith6AndIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #1

declare ptr @_ZN4mlir5arith13ConstantIntOp6createERNS_9OpBuilderENS_8LocationElj(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_ZN4mlir3scf4IfOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #1

declare void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) unnamed_addr #1

declare i64 @_ZN4mlir3scf4IfOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121AffineYieldOpLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6affine13AffineYieldOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_121AffineYieldOpLowering15matchAndRewriteEN4mlir6affine13AffineYieldOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
_ZN4mlir9Operation11getParentOpEv.exit:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::affine::AffineYieldOp", align 8 ; 3 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133, !nonnull !32, !noundef !32
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  %5 = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_6affine16AffineParallelOpEvE2idE
  %spec.select.i = or i1 %i.g, %5
  br i1 %spec.select.i, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.h = call i64 @_ZN4mlir6affine13AffineYieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #17 ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6affine13AffineYieldOp11getOperandsEv.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %_ZN4mlir6affine13AffineYieldOp11getOperandsEv.exit

_ZN4mlir6affine13AffineYieldOp11getOperandsEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = and i64 %i.h, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.h, 32
  %i.p = add i64 %.sroa.5.0.extract.shift.i.i, %i.h
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.o
  %i.s = sub nsw i64 %i.q, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.u, align 8
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.r, i64 %i.s) #17
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr %.sroa.0.0.copyload.i.i, i64 %i.v, i64 %i.x) #17
  %i.z = load ptr, ptr %2, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, ptr noundef %i.y) #17, !inline_history !562
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir6affine13AffineYieldOp11getOperandsEv.exit
  %.sroa.01.0 = phi i8 [ 1, %_ZN4mlir6affine13AffineYieldOp11getOperandsEv.exit ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret i8 %.sroa.01.0
}

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64) local_unnamed_addr #1

declare i64 @_ZN4mlir6affine13AffineYieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124AffineVectorLoadLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6affine18AffineVectorLoadOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_124AffineVectorLoadLowering15matchAndRewriteEN4mlir6affine18AffineVectorLoadOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.45", align 8 ; 14 uses
  %6 = alloca %"class.std::optional", align 8     ; 8 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread, label %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit, !prof !24

_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !14, !alias.scope !568
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !33, !alias.scope !568
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !15, !alias.scope !568
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i

_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %i.k = zext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !14, !alias.scope !569
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !33, !alias.scope !569
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.p, align 4, !tbaa !15, !alias.scope !569
  %i.q = icmp ugt i64 %i.l, 8
  br i1 %i.q, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit
  %i.r = phi ptr [ %i.e, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread ], [ %i.o, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit ] ; 2 uses
  %i.s = phi ptr [ %i.d, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread ], [ %i.n, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit ] ; 2 uses
  %i.t = phi ptr [ inttoptr (i64 32 to ptr), %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread ], [ %i.m, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit ]
  %.sroa.4.0.i.i.i.i20 = phi i64 [ -1, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit.thread ], [ %i.l, %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit ] ; 2 uses
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.s, i64 noundef %.sroa.4.0.i.i.i.i20, i64 noundef 8) #17
  %.pre.i.i.i = load i32, ptr %i.r, align 8, !tbaa !33, !alias.scope !569 ; 2 uses
  %.pre23.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !569
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4mlir6affine6detail26AffineReadOpInterfaceTraitINS0_18AffineVectorLoadOpEE14getMapOperandsEv.exit
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.u = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.n, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.v = phi ptr [ %i.r, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.o, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.w = phi ptr [ %i.s, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.n, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.x = phi ptr [ %i.t, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.m, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i22 = phi i64 [ %.sroa.4.0.i.i.i.i20, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ] ; 4 uses
  %i.y = phi i32 [ %.pre.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre23.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i ; 2 uses
  %xtraiter = and i64 %.sroa.4.0.i.i.i.i22, 3     ; 3 uses
  %i.aa = icmp ult i64 %.sroa.4.0.i.i.i.i22, 4
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.new:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %unroll_iter = and i64 %.sroa.4.0.i.i.i.i22, -4
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.new
  %.010.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader.i.i.i.new ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.2.09.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.new ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.2.09.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !111
  %i.ad = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.ad, ptr %.010.i.i.i.i.i.i.i, align 8, !tbaa !111
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.2.09.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ag, align 8, !tbaa !111
  %i.ah = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.1 to i64
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.2.09.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ak, align 8, !tbaa !111
  %i.al = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.2 to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 24
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.2.09.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ao, align 8, !tbaa !111
  %i.ap = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.3 to i64
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !111
  %i.aq = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ar, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa ]
  %.sroa.2.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.aq, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %.010.i.i.i.i.i.i.i.epil = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.010.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.sroa.2.09.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.2.09.i.i.i.i.i.i.i.epil
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.au = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.epil to i64
  store i64 %i.au, ptr %.010.i.i.i.i.i.i.i.epil, align 8, !tbaa !111
  %i.av = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.epil, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !566

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit.unr-lcssa
  %i.ax = trunc i64 %.sroa.4.0.i.i.i.i22 to i32
  %i.ay = add i32 %i.y, %i.ax
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i
  %i.az = phi ptr [ %i.o, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ], [ %i.v, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit ] ; 2 uses
  %i.ba = phi ptr [ %i.n, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ], [ %i.w, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit ]
  %i.bb = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ], [ %i.ay, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj8EEEvEEv.exit.loopexit ]
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !33, !alias.scope !569
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.be = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i.i.i.i5 = icmp ugt i32 %i.be, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = lshr i32 %i.be, 23
end_hunk_0
