Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyDepthwiseConv?download=true
inline.NumInlined: 1646
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL28matchAndReplaceDepthwiseConvPN4mlir9OperationENS_5ValueES2_S2_S2_S2_NS_9AttributeES3_RNS_15PatternRewriterE:bb.a
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit63

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit63:          ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit62, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %i.fg = load ptr, ptr %26, align 8, !tbaa !13   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit63
  call void @free(ptr noundef %i.fg) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64:          ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit63, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.fj = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !47
  store i64 %i.fl, ptr %i.b, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fn = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !47
  store i64 %i.fq, ptr %i.fm, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fs = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !47
  store i64 %i.fv, ptr %i.fr, align 8, !tbaa !47
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fx = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.fy = extractvalue { ptr, i64 } %i.fx, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !47
  store i64 %i.ga, ptr %i.fw, align 8, !tbaa !47
  %i.gb = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.gc = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.b, i64 4, ptr %i.gb, ptr null) #17 ; 2 uses
  store ptr %i.gc, ptr %30, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.gd = load ptr, ptr %24, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !48
  %i.gg = zext i32 %i.gf to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.gh = call ptr @_ZN4mlir6tensor15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr %.sroa.0.0.copyload.i, ptr %i.gc, ptr nonnull %5, ptr %i.gd, i64 %i.gg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.293") align 8 %32) #17
  store ptr %i.gh, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  %i.gi = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store ptr %i.gi, ptr %33, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i32 0, ptr %i.gj, align 8, !tbaa !48
  %i.gk = getelementptr inbounds nuw i8, ptr %33, i64 12
  store i32 3, ptr %i.gk, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  store ptr %0, ptr %34, align 8, !tbaa !218
  %i.gl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store i8 0, ptr %i.gl, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  store ptr %33, ptr %35, align 8, !tbaa !219
  %i.gm = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %8, ptr %i.gm, align 8, !tbaa !220
  %i.gn = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %14, ptr %i.gn, align 8, !tbaa !221
  %i.go = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %30, ptr %i.go, align 8, !tbaa !222
  %i.gp = getelementptr inbounds nuw i8, ptr %35, i64 32
  store ptr %9, ptr %i.gp, align 8, !tbaa !223
  %i.gq = getelementptr inbounds nuw i8, ptr %35, i64 40
  store ptr %22, ptr %i.gq, align 8, !tbaa !224
  %i.gr = getelementptr inbounds nuw i8, ptr %35, i64 48
  store ptr %31, ptr %i.gr, align 8, !tbaa !224
  %i.gs = getelementptr inbounds nuw i8, ptr %35, i64 56
  store ptr %12, ptr %i.gs, align 8, !tbaa !225
  %i.gt = getelementptr inbounds nuw i8, ptr %35, i64 64
  store ptr %13, ptr %i.gt, align 8, !tbaa !225
  %i.gu = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationES5_EES5_E4CaseIZL28matchAndReplaceDepthwiseConvS5_NS3_5ValueES9_S9_S9_S9_NS3_9AttributeESA_RNS3_15PatternRewriterEE3$_0EERS6_OT_"(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(72) %35) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  store ptr %33, ptr %36, align 8, !tbaa !219
  %i.gv = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %8, ptr %i.gv, align 8, !tbaa !220
  %i.gw = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %14, ptr %i.gw, align 8, !tbaa !221
  %i.gx = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr %30, ptr %i.gx, align 8, !tbaa !222
  %i.gy = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %9, ptr %i.gy, align 8, !tbaa !223
  %i.gz = getelementptr inbounds nuw i8, ptr %36, i64 40
  store ptr %22, ptr %i.gz, align 8, !tbaa !224
  %i.ha = getelementptr inbounds nuw i8, ptr %36, i64 48
  store ptr %10, ptr %i.ha, align 8, !tbaa !223
  %i.hb = getelementptr inbounds nuw i8, ptr %36, i64 56
  store ptr %11, ptr %i.hb, align 8, !tbaa !223
  %i.hc = getelementptr inbounds nuw i8, ptr %36, i64 64
  store ptr %31, ptr %i.hc, align 8, !tbaa !224
  %i.hd = getelementptr inbounds nuw i8, ptr %36, i64 72
  store ptr %12, ptr %i.hd, align 8, !tbaa !225
  %i.he = getelementptr inbounds nuw i8, ptr %36, i64 80
  store ptr %13, ptr %i.he, align 8, !tbaa !225
  %i.hf = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationES5_EES5_E4CaseIZL28matchAndReplaceDepthwiseConvS5_NS3_5ValueES9_S9_S9_S9_NS3_9AttributeESA_RNS3_15PatternRewriterEE3$_1EERS6_OT_"(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(88) %36) ; 0 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.hh = load i8, ptr %i.gl, align 8, !tbaa !90, !range !58, !noundef !59
  %i.hi = trunc nuw i8 %i.hh to i1
  %i.hj = load ptr, ptr %i.hg, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %.not3494 = icmp ne ptr %i.hj, null
  %.not34.not = select i1 %i.hi, i1 %.not3494, i1 false
  br i1 %.not34.not, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64
  %i.hk = load ptr, ptr %33, align 8, !tbaa !13   ; 2 uses
  %i.hl = load i32, ptr %i.gj, align 8, !tbaa !48 ; 2 uses
  %i.hm = zext i32 %i.hl to i64
  %.idx = shl nuw nsw i64 %i.hm, 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx
  %.not3595 = icmp eq i32 %i.hl, 0
  br i1 %.not3595, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw i8, ptr %37, i64 8
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ae, %bb.ad
  %i.hp = getelementptr inbounds i8, ptr %i.hj, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  %i.hq = load ptr, ptr %24, align 8, !tbaa !13
  %i.hr = load i32, ptr %i.ge, align 8, !tbaa !48
  %i.hs = zext i32 %i.hr to i64
  %i.ht = call ptr @_ZN4mlir6tensor13ExpandShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.ao, ptr nonnull %i.hp, ptr %i.hq, i64 %i.hs) #17
  %i.hu = load ptr, ptr %8, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %0, ptr noundef %i.ht) #17, !inline_history !215
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph, %bb.ae
  %.096 = phi ptr [ %i.hk, %.lr.ph ], [ %i.hy, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %.096, i64 16, i1 false), !tbaa.struct !99
  %i.hx = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #17
  %.sroa.0.0.copyload.i67 = load ptr, ptr %i.ho, align 8, !tbaa !98
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, ptr %i.hx, ptr %.sroa.0.0.copyload.i67)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  %i.hy = getelementptr inbounds nuw i8, ptr %.096, i64 16 ; 2 uses
  %.not35 = icmp eq ptr %i.hy, %i.hn
  br i1 %.not35, label %._crit_edge, label %bb.ae

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64, %._crit_edge
  %.sroa.032.0 = phi i8 [ 1, %._crit_edge ], [ 0, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit64 ]
  %i.hz = load ptr, ptr %33, align 8, !tbaa !13   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gi
  br i1 %i.ia, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.hz) #17
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @_ZN4llvm11SmallVectorINS0_IlLj2EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @_ZN4llvm11SmallVectorINS0_IlLj2EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit
  %.sroa.032.1 = phi i8 [ %.sroa.032.0, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %_ZN4mlir6linalg8LinalgOp22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6linalg8LinalgOp22hasPureTensorSemanticsEv.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir6linalg8LinalgOp22hasPureTensorSemanticsEv.exit, %bb.ah
  %.sroa.032.2 = phi i8 [ %.sroa.032.1, %bb.ah ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ], [ 0, %_ZN4mlir6linalg8LinalgOp22hasPureTensorSemanticsEv.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  ret i8 %.sroa.032.2
}

declare noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN4mlir6linalg25DepthwiseConv2DNhwcHwcmOp17getOutputsMutableEv(ptr dead_on_unwind writable sret(%"class.mlir::MutableOperandRange") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4mlir19MutableOperandRangeixEj(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16getIndicesVectorii(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 1, 6) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.257", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = zext nneg i32 %1 to i64                  ; 6 uses
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !13, !alias.scope !228
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !48, !alias.scope !228
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.e, align 4, !tbaa !14, !alias.scope !228
  %i.f = sub nsw i64 %i.b, %i.a                   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 8) #17
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !48, !alias.scope !228 ; 2 uses
  %.pre15.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.a ], [ %.pre15.i.i.i, %bb.b ]
  %i.h = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i:           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.j = load ptr, ptr %3, align 8, !tbaa !13, !alias.scope !228
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre-phi.i.i.i ; 5 uses
  store i64 %i.a, ptr %i.k, align 8, !tbaa !47
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %4 = add nuw nsw i64 %i.a, 1
  store i64 %4, ptr %i.l, align 8, !tbaa !47
  %5 = icmp sgt i64 %i.f, 2
  br i1 %5, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %vector.body
  %6 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %7 = add nuw nsw i64 %i.a, 2
  store i64 %7, ptr %6, align 8, !tbaa !47
  %.not3 = icmp eq i64 %i.f, 3
  br i1 %.not3, label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = add nuw nsw i64 %i.a, 3
  store i64 %i.n, ptr %i.m, align 8, !tbaa !47
  %8 = icmp sgt i64 %i.f, 4
  br i1 %8, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %9 = or disjoint i64 %i.a, 4
  store i64 %9, ptr %i.o, align 8, !tbaa !47
  br label %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit

_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, %vector.body, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.p = trunc nsw i64 %i.f to i32
  %i.q = add i32 %i.h, %i.p                       ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !48, !alias.scope !228
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.t, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit

_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit: ; preds = %_ZN4llvm9to_vectorILj2ENS_10iota_rangeIlEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS6_.exit, %bb.c
  %i.v = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit
  call void @free(ptr noundef %i.v) #17
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorINS0_IlLj2EEELj4EEC2ESt16initializer_listIS1_E(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !14
  %.idx.i = shl nuw nsw i64 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.e = icmp ugt i64 %2, 4
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i.thread: ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %2)
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !48
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph.i.i.i.i.preheader.i.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not9.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE6appendESt16initializer_listIS2_E.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i.thread ], [ %i.a, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i ]
  %.pre-phi.i.i5 = phi i64 [ %.pre9.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i ]
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.pre-phi.i.i5
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader.i.i ] ; 8 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.h, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12
  store i32 2, ptr %i.j, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48   ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  %i.m = icmp eq ptr %.012.i.i.i.i.i.i, %.0810.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.m, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = icmp ugt i32 %i.l, 2
  br i1 %i.n, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = zext i32 %i.l to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull %i.h, i64 noundef %i.o, i64 noundef 8) #17
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !13
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.b
  %i.p = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.h, %bb.b ]
  %i.q = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.l, %bb.b ]
  %i.r = zext i32 %i.q to i64
  %i.s = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !13
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 8 %i.s, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.l, ptr %i.i, align 8, !tbaa !48
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18uninitialized_copyIPKS2_PS2_EEvT_S8_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !229

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18uninitialized_copyIPKS2_PS2_EEvT_S8_T0_.exit.loopexit.i.i: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre8.i.i = load i32, ptr %i.b, align 8, !tbaa !48
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE6appendESt16initializer_listIS2_E.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE6appendESt16initializer_listIS2_E.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18uninitialized_copyIPKS2_PS2_EEvT_S8_T0_.exit.loopexit.i.i
  %i.v = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18uninitialized_copyIPKS2_PS2_EEvT_S8_T0_.exit.loopexit.i.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i.i ]
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.v, %i.w
  store i32 %i.x, ptr %i.b, align 8, !tbaa !48
  ret void
}

declare ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir6tensor15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.293") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationES5_EES5_E4CaseIZL28matchAndReplaceDepthwiseConvS5_NS3_5ValueES9_S9_S9_S9_NS3_9AttributeESA_RNS3_15PatternRewriterEE3$_0EERS6_OT_"(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.422", align 8 ; 10 uses
  %3 = alloca %"class.llvm::SmallVector.294", align 8 ; 6 uses
  %4 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 4 uses
  %8 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %9 = alloca %"class.llvm::ArrayRef.293", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !90, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationES3_E4CaseINS1_6linalg25DepthwiseConv2DNhwcHwcmOpEZL28matchAndReplaceDepthwiseConvS3_NS1_5ValueES8_S8_S8_S8_NS1_9AttributeES9_RNS1_15PatternRewriterEE3$_0EERS4_OT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !100    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = icmp ne ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_6linalg25DepthwiseConv2DNhwcHwcmOpEvE2idE
  %.not4.i = icmp eq ptr %i.e, null
  %.not.i = or i1 %.not4.i, %i.i
  br i1 %.not.i, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationES3_E4CaseINS1_6linalg25DepthwiseConv2DNhwcHwcmOpEZL28matchAndReplaceDepthwiseConvS3_NS1_5ValueES8_S8_S8_S8_NS1_9AttributeES9_RNS1_15PatternRewriterEE3$_0EERS4_OT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !234
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !13, !alias.scope !235, !noalias !234
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.l, align 4, !tbaa !14, !alias.scope !235, !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 16 dereferenceable(48) @_ZZN4mlir6linalg25DepthwiseConv2DNhwcHwcmOp17getAttributeNamesEvE9attrNames, i64 48, i1 false), !noalias !234
  store i32 3, ptr %i.k, align 8, !tbaa !48, !alias.scope !235, !noalias !234
  %i.m = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.e), !noalias !234
  %.not.i.i.i = icmp eq ptr %i.m, null
  %.pre4.i.i.i = load i32, ptr %i.k, align 8, !tbaa !48, !noalias !234 ; 3 uses
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !14, !noalias !234
  %.not.i.i.i.i = icmp ult i32 %.pre4.i.i.i, %i.n
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !prof !101

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.16, i64 29), !noalias !234
  %.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !48, !noalias !234
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = zext i32 %.pre4.i.i.i to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !13, !noalias !234
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.o ; 2 uses
  store ptr @.str.16, ptr %i.q, align 1, !noalias !234
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 29, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 1, !noalias !234
  %i.r = load i32, ptr %i.k, align 8, !tbaa !48, !noalias !234
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.k, align 8, !tbaa !48, !noalias !234
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.t = phi i32 [ %i.s, %bb.f ], [ %.pre.i.i.i, %bb.e ], [ %.pre4.i.i.i, %bb.c ]
end_hunk_0
