Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ElementwiseOpFusion?download=true
inline.NumInlined: 10184
inline.NumDeleted: 5613
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_123computeCollapsedPaddingEN4mlir6tensor5PadOpEN4llvm8ArrayRefINS3_11SmallVectorIlLj2EEEEERNS0_15PatternRewriterE:bb.a
bb.i:                                             ; preds = %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !77, !noalias !1350
  br label %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit

_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit:    ; preds = %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit, %bb.i
  %.sroa.0.0.i.i.i.i.i.i76 = phi ptr [ %i.ew, %bb.i ], [ null, %_ZN4mlir6tensor5PadOp14getMixedLowPadEv.exit ]
  %i.ex = extractvalue { ptr, i64 } %i.ep, 1
  %i.ey = extractvalue { ptr, i64 } %i.ep, 0
  %i.ez = and i64 %i.eq, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i77 = lshr i64 %i.eq, 32
  %i.fa = add i64 %.sroa.5.0.extract.shift.i.i.i77, %i.eq
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i76, i64 %i.ez
  %i.fd = sub nsw i64 %i.fb, %i.ez
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.fc, i64 %i.fd) #19, !noalias !1350
  %i.fe = load i64, ptr %5, align 8, !noalias !1350
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !1350
  call void @_ZN4mlir6tensor5PadOp15getMixedPadImplEN4llvm8ArrayRefIlEENS_10ValueRangeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.ey, i64 %i.ex, i64 %i.fe, i64 %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %.not120134, label %._crit_edge147, label %.lr.ph146

._crit_edge147:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fh, ptr %0, align 8, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.fi, align 8, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.fj, align 4, !tbaa !36
  %i.fk = load i32, ptr %i.ab, align 8, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge147
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(192) %9) ; 0 uses
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %._crit_edge147
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.fo, align 8, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 6, ptr %i.fp, align 4, !tbaa !36
  %i.fq = load i32, ptr %i.af, align 8, !tbaa !44
  %.not.i.i4.i.i.i.i.i.i.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i4.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.fr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, ptr noundef nonnull align 8 dereferenceable(64) %i.ad) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.fu, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 6, ptr %i.fv, align 4, !tbaa !36
  %i.fw = load i32, ptr %i.aj, align 8, !tbaa !44
  %.not.i.i5.i.i.i.i.i.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i, label %_ZN4llvm9FailureOrIN12_GLOBAL__N_110PadDimInfoEEC2EOS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i.i.i.i.i.i.i
  %i.fx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.fs, ptr noundef nonnull align 8 dereferenceable(64) %i.ah) ; 0 uses
  br label %_ZN4llvm9FailureOrIN12_GLOBAL__N_110PadDimInfoEEC2EOS2_.exit

_ZN4llvm9FailureOrIN12_GLOBAL__N_110PadDimInfoEEC2EOS2_.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EOS3_.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.fy, align 8, !tbaa !269
  %i.fz = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm9FailureOrIN12_GLOBAL__N_110PadDimInfoEEC2EOS2_.exit
  call void @free(ptr noundef %i.fz) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4llvm9FailureOrIN12_GLOBAL__N_110PadDimInfoEEC2EOS2_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.gc = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit78, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.gc) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit78

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit78: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.gf = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ai
  br i1 %i.gg, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit78
  call void @free(ptr noundef %i.gf) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i: ; preds = %bb.o, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit78
  %i.gh = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ae
  br i1 %i.gi, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit1.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.gh) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit1.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit1.i: ; preds = %bb.p, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  %i.gj = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.aa
  br i1 %i.gk, label %_ZN12_GLOBAL__N_110PadDimInfoD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit1.i
  call void @free(ptr noundef %i.gj) #19
  br label %_ZN12_GLOBAL__N_110PadDimInfoD2Ev.exit

_ZN12_GLOBAL__N_110PadDimInfoD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit1.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.w

.lr.ph146:                                        ; preds = %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.sroa.087.0145 = phi ptr [ %i.hq, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %2, %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit ] ; 5 uses
  %.sroa.7.0144 = phi i64 [ %i.hp, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ 0, %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.087.0145, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !44 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph146
  %i.go = load ptr, ptr %.sroa.087.0145, align 8, !tbaa !35
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !106
  %i.gq = load ptr, ptr %10, align 8, !tbaa !35
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.7.0144
  %i.gu = load i64, ptr %i.gr, align 8
  store i64 %i.gu, ptr %i.gt, align 8
  %i.gv = load ptr, ptr %.sroa.087.0145, align 8, !tbaa !35
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !106
  %i.gx = load ptr, ptr %11, align 8, !tbaa !35
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.sroa.7.0144
  %i.hb = load i64, ptr %i.gy, align 8
  store i64 %i.hb, ptr %i.ha, align 8
  %.pre = load i32, ptr %i.gl, align 8, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph146
  %i.hc = phi i32 [ %.pre, %bb.r ], [ %i.gm, %.lr.ph146 ] ; 2 uses
  %i.hd = load ptr, ptr %.sroa.087.0145, align 8, !tbaa !35 ; 2 uses
  %i.he = zext i32 %i.hc to i64
  %.idx149 = shl nuw nsw i64 %i.he, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx149
  %.not48137 = icmp eq i32 %i.hc, 0
  br i1 %.not48137, label %._crit_edge, label %.lr.ph141

._crit_edge.loopexit:                             ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit
  %i.hg = trunc nuw i8 %.sroa.08.0.i to i1
  %i.hh = select i1 %i.hg, i64 -9223372036854775808, i64 %.sroa.5.0.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.sroa.0.0.lcssa = phi i64 [ 1, %bb.s ], [ %i.hh, %._crit_edge.loopexit ] ; 2 uses
  %i.hi = load i32, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.hj = load i32, ptr %i.ac, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !63

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %.sroa.0.0.lcssa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.u:                                             ; preds = %._crit_edge
  %i.hk = zext i32 %i.hi to i64
  %i.hl = load ptr, ptr %9, align 8, !tbaa !35
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hk
  store i64 %.sroa.0.0.lcssa, ptr %i.hm, align 1
  %i.hn = load i32, ptr %i.ab, align 8, !tbaa !44
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.ab, align 8, !tbaa !44
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.t, %bb.u
  %i.hp = add nuw nsw i64 %.sroa.7.0144, 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.087.0145, i64 32 ; 2 uses
  %.not121 = icmp eq ptr %i.hq, %i.g
  br i1 %.not121, label %._crit_edge147, label %.lr.ph146

.lr.ph141:                                        ; preds = %bb.s, %_ZN4mlir16SaturatedIntegermlES0_.exit
  %.043140 = phi ptr [ %i.hz, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ %i.hd, %bb.s ] ; 2 uses
  %.sroa.0.0139 = phi i8 [ %.sroa.08.0.i, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ 0, %bb.s ] ; 2 uses
  %.sroa.682.0138 = phi i64 [ %.sroa.5.0.i, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ 1, %bb.s ] ; 2 uses
  %i.hr = load i64, ptr %.043140, align 8, !tbaa !106
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !106 ; 3 uses
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = trunc nuw i8 %.sroa.0.0139 to i1
  %i.hw = icmp ne i64 %.sroa.682.0138, 0
  %or.cond.not14.i = select i1 %i.hv, i1 true, i1 %i.hw
  %or.cond118 = select i1 %i.hu, i1 %or.cond.not14.i, i1 false
  br i1 %or.cond118, label %bb.v, label %_ZN4mlir16SaturatedIntegermlES0_.exit

bb.v:                                             ; preds = %.lr.ph141
  %12 = icmp eq i64 %i.ht, -9223372036854775808   ; 2 uses
  %.2.i = select i1 %12, i64 0, i64 %i.ht
  %..i = zext i1 %12 to i8
  %i.hx = or i8 %.sroa.0.0139, %..i               ; 2 uses
  %or.cond5.not.not.i = icmp eq i8 %i.hx, 0
  %i.hy = mul nsw i64 %.2.i, %.sroa.682.0138
  %spec.select12.i = select i1 %or.cond5.not.not.i, i64 %i.hy, i64 0
  br label %_ZN4mlir16SaturatedIntegermlES0_.exit

_ZN4mlir16SaturatedIntegermlES0_.exit:            ; preds = %.lr.ph141, %bb.v
  %.sroa.08.0.i = phi i8 [ 0, %.lr.ph141 ], [ %i.hx, %bb.v ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ 0, %.lr.ph141 ], [ %spec.select12.i, %bb.v ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.043140, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.hz, %i.hf
  br i1 %.not48, label %._crit_edge.loopexit, label %.lr.ph141

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_110PadDimInfoD2Ev.exit, %.split.us, %bb.b
  ret void
}

declare ptr @_ZN4mlir9AffineMap3getEjjNS_10AffineExprE(i32 noundef, i32 noundef, ptr) local_unnamed_addr #2

declare i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #11 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #19, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.f) #19
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.i) #19
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #11 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #19, !inline_history !1351 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #19, !inline_history !1352
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.i) #19, !inline_history !1352
  br label %_ZN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingD2Ev.exit

_ZN12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsingD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor15CollapseShapeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_140FoldReshapeWithProducerPadOpByCollapsing15matchAndRewriteEN4mlir6tensor15CollapseShapeOpERNS1_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.1518, align 8           ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.mlir::tensor::CollapseShapeOp", align 8 ; 5 uses
  %6 = alloca %"class.mlir::tensor::PadOp", align 8 ; 7 uses
  %7 = alloca %"struct.mlir::detail::TypedValue.254", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.179", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SmallVector.1505", align 8 ; 9 uses
  %10 = alloca %"class.llvm::FailureOr.1507", align 8 ; 14 uses
  %11 = alloca %"class.llvm::ArrayRef.598", align 8 ; 2 uses
  %12 = alloca %"class.llvm::ArrayRef.208", align 8 ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef.598", align 8 ; 2 uses
  %14 = alloca %"struct.mlir::detail::TypedValue.254", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !88
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %7, align 8
  %i.e = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !125
  store ptr @.str.27, ptr %4, align 8, !tbaa !126
  store i8 3, ptr %i.q, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %4, ptr %3, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !136  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #19
  br i1 %i.u, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.v, align 8
  %i.w = ptrtoint ptr %3 to i64
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr %.sroa.0.0.copyload.i.i.i.i20, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor5PadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.w) #19, !inline_history !20
end_hunk_0
