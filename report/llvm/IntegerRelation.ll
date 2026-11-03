Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntegerRelation?download=true
inline.NumInlined: 4457
inline.NumDeleted: 1288
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4mlir10presburger15IntegerRelation28computeReprWithOnlyDivLocalsEv:bb.a
  br label %_ZN4mlir10presburger15PresburgerSpaceC2EOS1_.exit.i

_ZN4mlir10presburger15PresburgerSpaceC2EOS1_.exit.i: ; preds = %bb.u, %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.fn, ptr %i.fg, align 8, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.fo, align 8, !tbaa !42
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2, ptr %i.fp, align 4, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !42
  %.not.i.i.i23 = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  br i1 %.not.i.i.i23, label %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit.thread, label %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit

_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit.thread: ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2EOS1_.exit.i
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i

_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit: ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2EOS1_.exit.i
  %i.fu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir10presburger15IntegerRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(1264) %i.fg, ptr noundef nonnull align 8 dereferenceable(1264) %i.fs) ; 0 uses
  %.pr = load i32, ptr %i.fq, align 8, !tbaa !42  ; 2 uses
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !41 ; 3 uses
  %.not4.i.i.i24 = icmp eq i32 %.pr, 0
  br i1 %.not4.i.i.i24, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i, label %.lr.ph.i.preheader.i.i25

.lr.ph.i.preheader.i.i25:                         ; preds = %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit
  %i.fw = zext i32 %.pr to i64
  %.idx.i.i26 = mul nuw nsw i64 %i.fw, 624
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i26
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27, %.lr.ph.i.preheader.i.i25
  %.05.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i27 ], [ %i.fx, %.lr.ph.i.preheader.i.i25 ]
  %i.fy = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -624 ; 4 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !38
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.fy) #17, !inline_history !1
  %.not.i.i.i28 = icmp eq ptr %i.fv, %i.fy
  br i1 %.not.i.i.i28, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i, label %.lr.ph.i.i.i27, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i27
  %.pre.i.i29 = load ptr, ptr %i.fs, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i: ; preds = %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i, %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit
  %i.gb = phi ptr [ %.pre.i.i29, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i ], [ %i.fv, %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit ], [ %i.ft, %_ZN4mlir10presburger18PresburgerRelationC2EOS1_.exit.thread ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i
  call void @free(ptr noundef %i.gb) #17
  br label %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i: ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !41 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fs
  br i1 %i.gg, label %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.gf) #17
  br label %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit

_ZN4mlir10presburger18PresburgerRelationD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i, %bb.w
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i30 = icmp eq i32 %i.gk, 0
  br i1 %.not4.i.i.i30, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i38, label %.lr.ph.i.preheader.i.i31

.lr.ph.i.preheader.i.i31:                         ; preds = %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit
  %i.gl = zext i32 %i.gk to i64
  %.idx.i.i32 = mul nuw nsw i64 %i.gl, 624
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.idx.i.i32
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.lr.ph.i.i.i33, %.lr.ph.i.preheader.i.i31
  %.05.i.i.i34 = phi ptr [ %i.gn, %.lr.ph.i.i.i33 ], [ %i.gm, %.lr.ph.i.preheader.i.i31 ]
  %i.gn = getelementptr inbounds i8, ptr %.05.i.i.i34, i64 -624 ; 4 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !38
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.gn) #17, !inline_history !1
  %.not.i.i.i35 = icmp eq ptr %i.gi, %i.gn
  br i1 %.not.i.i.i35, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i36, label %.lr.ph.i.i.i33, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i36: ; preds = %.lr.ph.i.i.i33
  %.pre.i.i37 = load ptr, ptr %i.gh, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i38

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i38: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i36, %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit
  %i.gq = phi ptr [ %.pre.i.i37, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i36 ], [ %i.gi, %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i39, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i38
  call void @free(ptr noundef %i.gq) #17
  br label %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i39

_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i39: ; preds = %bb.x, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i38
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !41 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gh
  br i1 %i.gv, label %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit40, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i39
  call void @free(ptr noundef %i.gu) #17
  br label %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit40

_ZN4mlir10presburger18PresburgerRelationD2Ev.exit40: ; preds = %_ZN4llvm11SmallVectorIN4mlir10presburger15IntegerRelationELj2EED2Ev.exit.i39, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 17, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store i32 0, ptr %i.gy, align 8, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 0, ptr %i.gz, align 4, !tbaa !43
  %i.ha = load i32, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %.not.i.i.i41 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i41, label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit40
  %i.hb = zext i32 %i.ha to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull %i.gx, i64 noundef %i.hb, i64 noundef 8) #17
  %i.hc = load i32, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %.not.i.i.i.i42 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i.i42, label %.sink.split.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %i.hd = zext i32 %i.hc to i64
  %i.he = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !41
  %gepdiff.i.i.i = shl nuw nsw i64 %i.hd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 8 %i.he, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.z, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !42
  br label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit

_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit: ; preds = %_ZN4mlir10presburger18PresburgerRelationD2Ev.exit40, %.sink.split.i.i.i
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !76
  call void @_ZN4mlir10presburger15PresburgerSpace14removeVarRangeENS0_7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1, i32 noundef 0, i32 noundef %i.hg) #17
  call void @_ZN4mlir10presburger18PresburgerRelation8setSpaceERKNS0_15PresburgerSpaceE(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef nonnull align 8 dereferenceable(40) %13) #17
  %i.hh = load ptr, ptr %i.gw, align 8, !tbaa !41 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gx
  br i1 %i.hi, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit
  call void @free(ptr noundef %i.hh) #17
  br label %.thread

.thread:                                          ; preds = %bb.aa, %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN4mlir10presburger14SymbolicLexOptD2Ev(ptr noundef nonnull align 8 dead_on_return(9360) dereferenceable(9360) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4mlir10presburger12DivisionReprD2Ev.exit
  call void @_ZN4mlir10presburger18PresburgerRelationC1ERKNS0_15IntegerRelationE(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef nonnull align 8 dereferenceable(624) %1) #17
  %.not.i.i.i44 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN4mlir10presburger14MaybeLocalReprESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread89, %.thread, %bb.ab
  %i.hj = ptrtoint ptr %i.bn to i64
  %i.hk = sub i64 %i.bm, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.hk) #18
  br label %_ZNSt6vectorIN4mlir10presburger14MaybeLocalReprESaIS2_EED2Ev.exit

_ZNSt6vectorIN4mlir10presburger14MaybeLocalReprESaIS2_EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4mlir10presburger14MaybeLocalReprESaIS2_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir10presburger15IntegerRelation13getLocalReprsEPSt6vectorINS0_14MaybeLocalReprESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.mlir::presburger::DivisionRepr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DynamicAPInt", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.87", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60
  %i.h = add i32 %i.e, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = add i32 %i.h, %i.j                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 8, ptr %i.o, align 8, !tbaa !93
  %i.p = icmp ugt i32 %i.k, 8
  br i1 %i.p, label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %bb.a
  store i64 0, ptr %i.n, align 8, !tbaa !94
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.m, i64 noundef %i.l, i64 noundef 1) #17
  %i.q = load ptr, ptr %4, align 8, !tbaa !92
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !58
  %.pre45.pre = load i32, ptr %i.c, align 4, !tbaa !59
  %.pre46.pre = load i32, ptr %i.f, align 8, !tbaa !60
  %.pre55 = add i32 %.pre45.pre, %.pre.pre
  %.pre56 = add i32 %.pre55, %.pre46.pre
  br label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIbLj8EEC2EmRKb.exit, label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i: ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %.pre53.pre-phi = phi i32 [ %i.h, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ], [ %.pre56, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ]
  %.sink.i = phi ptr [ %i.m, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ], [ %i.q, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 0, i64 %i.l, i1 false), !tbaa !95
  br label %_ZN4llvm11SmallVectorIbLj8EEC2EmRKb.exit

_ZN4llvm11SmallVectorIbLj8EEC2EmRKb.exit:         ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i
  %.pre-phi54 = phi i32 [ %i.h, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ], [ %.pre53.pre-phi, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i ] ; 2 uses
  %i.r = phi ptr [ %i.m, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ], [ %.sink.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i ]
  store i64 %i.l, ptr %i.n, align 8, !tbaa !94
  %.not36 = icmp eq i32 %.pre-phi54, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIbLj8EEC2EmRKb.exit
  %i.s = zext i32 %.pre-phi54 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 1, i64 %i.s, i1 false), !tbaa !95
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIbLj8EEC2EmRKb.exit
  %i.t = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1) #17 ; 2 uses
  %i.u = load i32, ptr %i.i, align 4, !tbaa !76   ; 2 uses
  %i.v = load <4 x i32>, ptr %i.a, align 8, !tbaa !48
  %i.w = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.v)
  %op.rdx = add i32 %i.w, 1
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2Ejjjj(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.u, i32 noundef %op.rdx, i32 noundef 0, i32 noundef 0) #17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.y = zext i32 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.ab, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 4, ptr %i.ac, align 4, !tbaa !43
  call void @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %.not.i26 = icmp eq i32 %i.ad, 0
  br i1 %.not.i26, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit, label %bb.b, !prof !73

bb.b:                                             ; preds = %._crit_edge
  %i.ae = icmp ugt i32 %i.ad, 64
  br i1 %i.ae, label %bb.c, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.af) #18
  br label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit

_ZN4mlir10presburger12DivisionReprC2Ejj.exit:     ; preds = %._crit_edge, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !76  ; 3 uses
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %.split.us, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader

_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader: ; preds = %_ZN4mlir10presburger12DivisionReprC2Ejj.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph34.a, label %.lr.ph34

_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a: ; preds = %bb.j, %._crit_edge35.loopexit.us
  %.pr = load i32, ptr %i.i, align 4, !tbaa !76   ; 2 uses
  %.not38.a = icmp eq i32 %.pr, 0
  br i1 %.not38.a, label %.split.us, label %.lr.ph34.a

.lr.ph34.a:                                       ; preds = %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a
  %i.ai = phi i32 [ %.pr, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a ], [ %i.ah, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader ]
  %wide.trip.count43 = zext i32 %i.ai to i64      ; 2 uses
  %.pre48 = load ptr, ptr %4, align 8, !tbaa !92
  br label %.lr.ph34.split.us.preheader

.lr.ph34.split.us.preheader:                      ; preds = %bb.j, %.lr.ph34.a
  %.ph = phi ptr [ %7, %bb.j ], [ %.pre48, %.lr.ph34.a ]
  %indvars.iv41.us.ph = phi i64 [ %indvars.iv.next42, %bb.j ], [ 0, %.lr.ph34.a ]
  %.02431.us.us.ph = phi i1 [ true, %bb.j ], [ false, %.lr.ph34.a ]
  br label %.lr.ph34.split.us

.lr.ph34.split.us:                                ; preds = %.lr.ph34.split.us.preheader, %5
  %i.aj = phi ptr [ %6, %5 ], [ %.ph, %.lr.ph34.split.us.preheader ] ; 3 uses
  %indvars.iv41 = phi i64 [ %indvars.iv.next42.us, %5 ], [ %indvars.iv41.us.ph, %.lr.ph34.split.us.preheader ] ; 5 uses
  %i.ak = trunc nuw i64 %indvars.iv41 to i32      ; 2 uses
  %i.al = add i32 %i.t, %i.ak                     ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95, !range !56, !noundef !57
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %5, label %bb.e

bb.e:                                             ; preds = %.lr.ph34.split.us
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !94
  %i.ar = call { ptr, i64 } @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEE6getRowEj(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.ak) #17 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv41
  %i.aw = call { i64, i32 } @_ZN4mlir10presburger20computeSingleVarReprERKNS0_15IntegerRelationEN4llvm8ArrayRefIbEEjNS4_15MutableArrayRefINS4_12DynamicAPIntEEERS8_(ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nonnull %i.aj, i64 %i.aq, i32 noundef %i.al, ptr %i.as, i64 %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.av) #17
  %.fca.0.extract.us = extractvalue { i64, i32 } %i.aw, 0
  %i.ax = and i64 %.fca.0.extract.us, 4294967295
  %.not29.us = icmp eq i64 %i.ax, 2
  br i1 %.not29.us, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv41 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !72 ; 2 uses
  %.not.i27.us = icmp eq i32 %i.bb, 0
  br i1 %.not.i27.us, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us, label %bb.g, !prof !73

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp ugt i32 %i.bb, 64
  br i1 %i.bc, label %bb.h, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !72 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #18
  br label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us

_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  store i64 0, ptr %i.az, align 8, !tbaa !72
  store i32 0, ptr %i.ba, align 8, !tbaa !72
  %.pre47 = load ptr, ptr %4, align 8, !tbaa !92
  br label %5

5:                                                ; preds = %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us, %.lr.ph34.split.us
  %6 = phi ptr [ %i.aj, %.lr.ph34.split.us ], [ %.pre47, %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit.us ]
  %indvars.iv.next42.us = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.us.not = icmp eq i64 %indvars.iv.next42.us, %wide.trip.count43
  br i1 %exitcond44.us.not, label %._crit_edge35.loopexit.us, label %.lr.ph34.split.us, !llvm.loop !258

bb.j:                                             ; preds = %bb.e
  %7 = load ptr, ptr %4, align 8, !tbaa !92       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.am
  store i8 1, ptr %8, align 1, !tbaa !95
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count43
  br i1 %exitcond44.not, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a, label %.lr.ph34.split.us.preheader, !llvm.loop !258

._crit_edge35.loopexit.us:                        ; preds = %5
  br i1 %.02431.us.us.ph, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a, label %.split.us, !llvm.loop !259

_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split: ; preds = %bb.p, %._crit_edge35.loopexit39
  %.pr72 = load i32, ptr %i.i, align 4, !tbaa !76 ; 2 uses
  %.not38 = icmp eq i32 %.pr72, 0
  br i1 %.not38, label %.split.us, label %.lr.ph34

.lr.ph34:                                         ; preds = %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split
  %9 = phi i32 [ %.pr72, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split ], [ %i.ah, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.split.preheader ]
  %wide.trip.count = zext i32 %9 to i64           ; 2 uses
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %bb.p, %.lr.ph34
  %indvars.iv.ph = phi i64 [ %indvars.iv.next75, %bb.p ], [ 0, %.lr.ph34 ]
  %.024.lcssa = phi i1 [ true, %bb.p ], [ false, %.lr.ph34 ]
  br label %.lr.ph34.split

._crit_edge35.loopexit39:                         ; preds = %10
  br i1 %.024.lcssa, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split, label %.split.us, !llvm.loop !259

.lr.ph34.split:                                   ; preds = %._crit_edge35, %10
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ %indvars.iv.ph, %._crit_edge35 ] ; 6 uses
  %i.bf = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bg = add i32 %i.t, %i.bf                     ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !95, !range !56, !noundef !57
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %10, label %bb.k

bb.k:                                             ; preds = %.lr.ph34.split
  %i.bm = load i64, ptr %i.n, align 8, !tbaa !94
  %i.bn = call { ptr, i64 } @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEE6getRowEj(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.bf) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = call { i64, i32 } @_ZN4mlir10presburger20computeSingleVarReprERKNS0_15IntegerRelationEN4llvm8ArrayRefIbEEjNS4_15MutableArrayRefINS4_12DynamicAPIntEEERS8_(ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nonnull %i.bi, i64 %i.bm, i32 noundef %i.bg, ptr %i.bo, i64 %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.br) #17 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.bs, 0 ; 2 uses
  %i.bt = and i64 %.fca.0.extract, 4294967295
  %.not29 = icmp eq i64 %i.bt, 2
  br i1 %.not29, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %.not.i27 = icmp eq i32 %i.bx, 0
  br i1 %.not.i27, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit, label %bb.m, !prof !73

bb.m:                                             ; preds = %bb.l
  %i.by = icmp ugt i32 %i.bx, 64
  br i1 %i.by, label %bb.n, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !72 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #18
  br label %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit

_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  store i64 0, ptr %i.bv, align 8, !tbaa !72
  store i32 0, ptr %i.bw, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %_ZN4mlir10presburger12DivisionRepr9clearReprEj.exit, %.lr.ph34.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge35.loopexit39, label %.lr.ph34.split, !llvm.loop !258

bb.p:                                             ; preds = %bb.k
  %.fca.1.extract = extractvalue { i64, i32 } %i.bs, 1
  %i.cb = load ptr, ptr %4, align 8, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bh
  store i8 1, ptr %i.cc, align 1, !tbaa !95
  %i.cd = load ptr, ptr %2, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  store i64 %.fca.0.extract, ptr %i.ce, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !72
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not76 = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not76, label %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split, label %._crit_edge35, !llvm.loop !258

.split.us:                                        ; preds = %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split, %._crit_edge35.loopexit39, %._crit_edge35.loopexit.us, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit.splitthread-pre-split.a, %_ZN4mlir10presburger12DivisionReprC2Ejj.exit
  %i.cf = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.split.us
  call void @free(ptr noundef %i.cf) #17
  br label %_ZN4llvm11SmallVectorIbLj8EED2Ev.exit

_ZN4llvm11SmallVectorIbLj8EED2Ev.exit:            ; preds = %.split.us, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir10presburger15IntegerRelation7swapVarEjj(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace12getVarKindAtEj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %1) #17 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace12getVarKindAtEj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %2) #17 ; 2 uses
  %i.e = tail call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.c) #17
  %i.f = sub i32 %1, %i.e
  %i.g = tail call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.d) #17
  %i.h = sub i32 %2, %i.g
  tail call void @_ZN4mlir10presburger15PresburgerSpace7swapVarENS0_7VarKindES2_jj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEE11swapColumnsEjj(ptr noundef nonnull align 8 dereferenceable(288) %i.i, i32 noundef %1, i32 noundef %2) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEE11swapColumnsEjj(ptr noundef nonnull align 8 dereferenceable(288) %i.j, i32 noundef %1, i32 noundef %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4mlir10presburger18SymbolicLexSimplex28computeSymbolicIntegerLexMinEv(ptr dead_on_unwind writable sret(%"struct.mlir::presburger::SymbolicLexOpt") align 8, ptr noundef nonnull align 8 dereferenceable(2800)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10presburger18SymbolicLexSimplexD2Ev(ptr noundef nonnull align 8 dead_on_return(2800) dereferenceable(2800) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mlir10presburger18SymbolicLexSimplexE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1712
  tail call void @_ZN4mlir10presburger11SimplexBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(1088) dereferenceable(1088) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.b) #17
  tail call void @_ZN4mlir10presburger11SimplexBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(1088) dereferenceable(1088) %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir10presburger15IntegerRelationE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.g, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -16 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.b, !prof !73

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp ugt i32 %i.i, 64
  br i1 %i.j, label %bb.c, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #18
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i:            ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.a
  %i.m = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  tail call void @free(ptr noundef %i.m) #17
  br label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %.not5.i.i.i1 = icmp eq i32 %i.s, 0
  br i1 %.not5.i.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i11, label %.lr.ph.i.preheader.i.i2

.lr.ph.i.preheader.i.i2:                          ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit
  %i.t = zext i32 %i.s to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i3
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7, %.lr.ph.i.preheader.i.i2
  %.06.i.i.i5 = phi ptr [ %i.v, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7 ], [ %i.u, %.lr.ph.i.preheader.i.i2 ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.06.i.i.i5, i64 -16 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.06.i.i.i5, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %.not4.i.i.i6 = icmp eq i32 %i.x, 0
  br i1 %.not4.i.i.i6, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7, label %bb.f, !prof !73

bb.f:                                             ; preds = %.lr.ph.i.i.i4
  %i.y = icmp ugt i32 %i.x, 64
  br i1 %i.y, label %bb.g, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #18
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7:           ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i.i.i4
  %.not.i.i.i8 = icmp eq ptr %i.q, %i.v
  br i1 %.not.i.i.i8, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i9, label %.lr.ph.i.i.i4, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i9: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i7
  %.pre.i.i10 = load ptr, ptr %i.p, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i11

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i11: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i9, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit
  %i.ab = phi ptr [ %.pre.i.i10, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i9 ], [ %i.q, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i11
  tail call void @free(ptr noundef %i.ab) #17
  br label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit12

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit12: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i11, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit12
  tail call void @free(ptr noundef %i.af) #17
  br label %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit

_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit:   ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit12, %bb.j
  ret void
}

declare void @_ZNK4mlir10presburger12PWMAFunction9getDomainEv(ptr dead_on_unwind writable sret(%"class.mlir::presburger::PresburgerSet") align 8, ptr noundef nonnull align 8 dereferenceable(8056)) local_unnamed_addr #2

declare void @_ZNK4mlir10presburger13PresburgerSet8unionSetERKNS0_18PresburgerRelationE(ptr dead_on_unwind writable sret(%"class.mlir::presburger::PresburgerSet") align 8, ptr noundef nonnull align 8 dereferenceable(1304), ptr noundef nonnull align 8 dereferenceable(1304)) local_unnamed_addr #2

declare void @_ZN4mlir10presburger15PresburgerSpace14removeVarRangeENS0_7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4mlir10presburger18PresburgerRelation8setSpaceERKNS0_15PresburgerSpaceE(ptr noundef nonnull align 8 dereferenceable(1304), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10presburger14SymbolicLexOptD2Ev(ptr noundef nonnull align 8 dead_on_return(9360) dereferenceable(9360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8096 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10presburger15IntegerRelationELb0EE13destroy_rangeEPS3_S5_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = mul nuw nsw i64 %i.e, 624
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

end_hunk_0
