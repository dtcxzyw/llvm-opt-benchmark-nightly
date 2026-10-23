Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleImport?download=true
inline.NumInlined: 13241
inline.NumDeleted: 6436
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4mlir4LLVM12ModuleImport37processDebugOpArgumentsAndInsertionPtENS_8LocationEN4llvm12function_refIFNS3_9FailureOrINS_5ValueEEEvEEEPNS3_5ValueENS3_12PointerUnionIJSB_PNS3_15DILocalVariableEEEEPNS3_12DIExpressionERNS_13DominanceInfoE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr %.sroa.01.0.copyload.i.i.i.i.i.i) #22, !inline_history !1270
  br i1 %i.bf, label %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i, label %bb.r

_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !284 ; 2 uses
  %i.bi = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bh) #22
  %i.bj = call i64 @_ZNK4mlir6detail17DominanceInfoBaseILb0EE16getDominanceInfoEPNS_6RegionEb(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.bi, i1 noundef zeroext true) #22
  %i.bk = and i64 %i.bj, -8
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1289
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !165
  %i.br = icmp ugt i32 %i.bq, %i.bo
  call void @llvm.assume(i1 %i.br)
  %i.bs = zext i32 %i.bo to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1291
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1294 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !1295
  %i.cb = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ca) #22 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !284
  %i.ce = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cb) #22
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !161
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ce, ptr %i.cg, align 8
  br label %bb.z

bb.r:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, %bb.m
  %.sroa.04.0.copyload.i = load ptr, ptr %10, align 8, !tbaa !359 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.cj = icmp ne i64 %i.ci, 7
  %.not2122.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  %.not21.i = or i1 %.not2122.i, %i.cj
  br i1 %.not21.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = call noundef ptr @_ZN4mlir5Value14getParentBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !273
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.cp) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !470
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !373
  %i.cu = icmp eq ptr %i.ct, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12LandingpadOpEvE2idE
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.cv) #22
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.cy = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 noundef 0) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.04.1.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.r ], [ %.sroa.04.0.copyload.i, %bb.s ], [ %i.cy, %bb.u ], [ %.sroa.04.0.copyload.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.04.1.i, ptr %9, align 8
  %i.cz = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22 ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i12, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !284
  %i.dc = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cz) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  br label %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %9, align 8, !tbaa !359
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1301 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  br label %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i

_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i: ; preds = %bb.x, %bb.w
  %.sink3.i.i = phi ptr [ %i.df, %bb.x ], [ %i.db, %bb.w ]
  %.sink.in.i.i = phi ptr [ %i.dg, %bb.x ], [ %i.dd, %bb.w ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !160
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sink3.i.i, ptr %i.dh, align 8, !tbaa !161
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink.i.i, ptr %i.di, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.z

bb.y:                                             ; preds = %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.dk = call ptr @_ZN4mlir4LLVM6detail13DebugImporter19translateExpressionEPN4llvm12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(265) %i.dj, ptr noundef %7) #22
  %i.dl = ptrtoint ptr %i.l to i64
  store i64 %i.dl, ptr %0, align 8, !tbaa !359
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = ptrtoint ptr %i.dk to i64
  store i64 %i.dn, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = ptrtoint ptr %i.i to i64
  store i64 %i.dp, ptr %i.do, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %bb.y, %bb.z, %bb.c
  ret void
}

declare ptr @_ZN4mlir4LLVM6detail13DebugImporter19translateExpressionEPN4llvm12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(265), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::iterator_range.3740", align 8 ; 6 uses
  %4 = alloca %"class.llvm::RawLocationWrapper", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.mlir::Location", align 8    ; 7 uses
  %6 = alloca %class.anon.1742, align 8           ; 9 uses
  %7 = alloca %class.anon.1743, align 8           ; 5 uses
  %8 = alloca %"class.std::tuple.1732", align 8   ; 6 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = tail call ptr @_ZN4mlir4LLVM6detail13DebugImporter12translateLocEPN4llvm10DILocationE(ptr noundef nonnull align 8 dereferenceable(265) %i.f, ptr noundef %i.d) #22
  store ptr %i.g, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %0, ptr %6, align 8, !tbaa !475
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.h, align 8, !tbaa !425
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.i, align 8, !tbaa !1321
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %0, ptr %7, align 8, !tbaa !477
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !1321
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 268435455
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !282
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !427  ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !181   ; 2 uses
  %i.x = icmp eq i8 %i.w, 4
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.v, ptr %4, align 8
  %i.z = add i8 %i.w, -5
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.z, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.3740") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.aa = load i64, ptr %3, align 8, !noalias !1322 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1323 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i, %bb.f
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.a, %bb.f ], [ %i.aa, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i ] ; 5 uses
  %i.ad = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.af = inttoptr i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ag = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1325, !noalias !1326
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = phi ptr [ %i.af, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !224, !noalias !1326
  %i.am = load i8, ptr %i.al, align 8, !tbaa !228, !noalias !1326
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.am, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i
  %storemerge.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ae, i64 144, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i.a = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.a, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1320

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.g

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i
  %.not12.i = icmp eq i64 %i.ac, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not12.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge: ; preds = %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i
  %.pre = load i32, ptr %i.n, align 4
  %.pre29 = and i32 %.pre, 268435455
  %.pre30 = zext nneg i32 %.pre29 to i64
  %.pre32 = sub nsw i64 0, %.pre30
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i
  %.pre-phi33 = phi i64 [ %.pre32, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge ], [ %i.r, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i ]
  %i.an = getelementptr inbounds [32 x i8], ptr %1, i64 %.pre-phi33
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !282 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !228
  %.not.i = icmp eq i8 %i.ap, 25
  br i1 %.not.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread

_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !427
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !181
  %i.at = add i8 %i.as, -3
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.at, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread

bb.h:                                             ; preds = %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit
  %i.au = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.q

_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split: ; preds = %bb.f, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread

_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread: ; preds = %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split, %bb.g, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i, %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %.sroa.017.0.copyload = load ptr, ptr %5, align 8
  %i.av = ptrtoint ptr %7 to i64
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !472 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 268435455
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.bb ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !282
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !282
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !282
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !427
  call void @_ZN4mlir4LLVM12ModuleImport37processDebugOpArgumentsAndInsertionPtENS_8LocationEN4llvm12function_refIFNS3_9FailureOrINS_5ValueEEEvEEEPNS3_5ValueENS3_12PointerUnionIJSB_PNS3_15DILocalVariableEEEEPNS3_12DIExpressionERNS_13DominanceInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1732") align 8 %8, ptr noundef nonnull align 8 dereferenceable(498) %0, ptr %.sroa.017.0.copyload, ptr nonnull @"_ZN4llvm12function_refIFNS_9FailureOrIN4mlir5ValueEEEvEE11callback_fnIZNS2_4LLVM12ModuleImport21processDebugIntrinsicEPNS_20DbgVariableIntrinsicERNS2_13DominanceInfoEE3$_1EES4_l", i64 %i.av, ptr noundef %i.bd, i64 %i.bg, ptr noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !235 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread
  %i.bp = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.p

bb.j:                                             ; preds = %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread
  %i.bq = load ptr, ptr %8, align 8, !tbaa !479   ; 3 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !472
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !282
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !303
  switch i32 %i.bv, label %bb.n [
    i32 78, label %bb.l
    i32 80, label %bb.m
    i32 77, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %.sroa.07.0.copyload = load ptr, ptr %5, align 8
  %.sroa.04.0.copyload = load ptr, ptr %i.bm, align 8
  %i.bw = call ptr @_ZN4mlir4LLVM12DbgDeclareOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS0_19DILocalVariableAttrENS0_16DIExpressionAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.07.0.copyload, ptr nonnull %i.bq, ptr nonnull %i.bn, ptr %.sroa.04.0.copyload) #22
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.k
  %.sroa.03.0.copyload = load ptr, ptr %5, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.bm, align 8
  %i.bx = call ptr @_ZN4mlir4LLVM10DbgValueOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS0_19DILocalVariableAttrENS0_16DIExpressionAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.03.0.copyload, ptr nonnull %i.bq, ptr nonnull %i.bn, ptr %.sroa.0.0.copyload) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.by = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ %i.bw, %bb.l ], [ %i.bx, %bb.m ] ; 2 uses
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !240
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0, ptr %i.cc, align 8, !tbaa !445
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !472
  call void @_ZN4mlir4LLVM12ModuleImport24setNonDebugMetadataAttrsEPN4llvm11InstructionEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr noundef %i.cd, ptr noundef %.0)
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o, %bb.i
  %.sroa.020.1 = phi i8 [ %i.bp, %bb.i ], [ %i.by, %bb.n ], [ 1, %bb.o ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.h, %bb.p
  %.sroa.020.2 = phi i8 [ %i.y, %bb.b ], [ %i.au, %bb.h ], [ %.sroa.020.1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <2 x ptr> %i.k, ptr %i.j, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i8 %.sroa.020.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !475
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.c = load i8, ptr %i.b, align 8, !tbaa !143, !range !216, !noundef !217
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1329, !nonnull !217, !align !319
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8
  call void @_ZN4mlir11emitWarningENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %.sroa.0.0.copyload) #22
  %i.g = load ptr, ptr %4, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !192
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.181, ptr %i.i, align 8, !tbaa !194
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !165  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !164
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !173

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !165
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !165
  br label %_ZN4mlir10Diagnostic6appendIRA20_KcEERS0_OT_.exit.i.i

end_hunk_0
