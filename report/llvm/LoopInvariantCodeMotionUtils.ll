Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopInvariantCodeMotionUtils?download=true
inline.NumInlined: 1372
inline.NumDeleted: 890
begin_hunk_0_@_ZN4mlir21moveLoopInvariantCodeEN4llvm8ArrayRefIPNS_6RegionEEENS0_12function_refIFbNS_5ValueES3_EEENS5_IFbPNS_9OperationES3_EEENS5_IFvSA_S3_EEE:bb.a

bb.bc:                                            ; preds = %_ZNSt11_Deque_baseIPN4mlir9OperationESaIS2_EE15_M_allocate_mapEm.exit.i33
  %i.ha = icmp eq i64 %i.gy, 8
  br i1 %i.ha, label %bb.bd, label %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34

bb.bd:                                            ; preds = %bb.bc
  %i.hb = load ptr, ptr %.sroa.44.2173, align 8, !tbaa !16
  store ptr %i.hb, ptr %i.gv, align 8, !tbaa !16
  br label %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34

_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.hc = shl i64 %.sroa.14.2178, 3
  call void @_ZdlPvm(ptr noundef %.sroa.043.2179, i64 noundef %i.hc) #18
  br label %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36

_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36: ; preds = %bb.aq, %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw, %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34
  %.sroa.14.10 = phi i64 [ %.sroa.14.2178, %bb.aq ], [ %.sroa.14.2178, %bb.as ], [ %.sroa.14.2178, %bb.ar ], [ %.sroa.14.2178, %bb.au ], [ %.sroa.14.2178, %bb.aw ], [ %.sroa.14.2178, %bb.av ], [ %i.go, %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34 ]
  %.sroa.043.10 = phi ptr [ %.sroa.043.2179, %bb.aq ], [ %.sroa.043.2179, %bb.as ], [ %.sroa.043.2179, %bb.ar ], [ %.sroa.043.2179, %bb.au ], [ %.sroa.043.2179, %bb.aw ], [ %.sroa.043.2179, %bb.av ], [ %i.gs, %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34 ]
  %.0.i35 = phi ptr [ %i.fv, %bb.aq ], [ %i.fv, %bb.as ], [ %i.fv, %bb.ar ], [ %i.fv, %bb.au ], [ %i.fv, %bb.aw ], [ %i.fv, %bb.av ], [ %i.gv, %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit24.i34 ] ; 3 uses
  %i.hd = load ptr, ptr %.0.i35, align 8, !tbaa !16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 512
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0.i35, i64 %i.fp
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -8
  br label %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit

_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit: ; preds = %bb.am, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36
  %.sroa.32.9 = phi ptr [ %i.hd, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.32.2171, %bb.am ]
  %.sroa.37.9 = phi ptr [ %i.he, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.37.2172, %bb.am ]
  %.sroa.44.9 = phi ptr [ %.0.i35, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.44.2173, %bb.am ]
  %.sroa.82.8 = phi ptr [ %i.hg, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.82.2177, %bb.am ]
  %.sroa.14.8 = phi i64 [ %.sroa.14.10, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.14.2178, %bb.am ]
  %.sroa.043.8 = phi ptr [ %.sroa.043.10, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb.exit36 ], [ %.sroa.043.2179, %bb.am ]
  %i.hh = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.82.8, i64 8 ; 2 uses
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !16
  store ptr %i.el, ptr %.sroa.56.2174, align 8, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 512
  br label %_ZNSt5queueIPN4mlir9OperationESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5queueIPN4mlir9OperationESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit, %bb.aj, %_ZN4mlir9Operation15getParentRegionEv.exit28
  %.sroa.32.3 = phi ptr [ %.sroa.32.2171, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %.sroa.32.9, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.32.2171, %bb.aj ] ; 2 uses
  %.sroa.37.3 = phi ptr [ %.sroa.37.2172, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %.sroa.37.9, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.37.2172, %bb.aj ] ; 2 uses
  %.sroa.44.3 = phi ptr [ %.sroa.44.2173, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %.sroa.44.9, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.44.2173, %bb.aj ] ; 2 uses
  %.sroa.56.3 = phi ptr [ %.sroa.56.2174, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %i.hh, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %i.et, %bb.aj ] ; 2 uses
  %.sroa.68.3 = phi ptr [ %.sroa.68.2175, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %i.hh, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.68.2175, %bb.aj ] ; 2 uses
  %.sroa.75.3 = phi ptr [ %.sroa.75.2176, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %i.hj, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.75.2176, %bb.aj ] ; 2 uses
  %.sroa.82.3 = phi ptr [ %.sroa.82.2177, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %i.hi, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.82.2177, %bb.aj ] ; 2 uses
  %.sroa.14.3 = phi i64 [ %.sroa.14.2178, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %.sroa.14.8, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.14.2178, %bb.aj ] ; 2 uses
  %.sroa.043.3 = phi ptr [ %.sroa.043.2179, %_ZN4mlir9Operation15getParentRegionEv.exit28 ], [ %.sroa.043.8, %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ], [ %.sroa.043.2179, %bb.aj ] ; 2 uses
  %i.hk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %20) #15 ; 0 uses
  %i.hl = load ptr, ptr %i.r, align 8, !tbaa !149 ; 2 uses
  %.not100 = icmp eq ptr %i.hl, %.sroa.3.0.copyload
  br i1 %.not100, label %._crit_edge182, label %bb.ag

bb.be:                                            ; preds = %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread, %bb.ab, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit, %_ZN4mlir9Operation15getParentRegionEv.exit, %._crit_edge182
  %.sroa.32.4 = phi ptr [ %.sroa.32.2.lcssa, %._crit_edge182 ], [ %.sroa.32.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.32.6, %bb.ab ], [ %.sroa.32.6, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.32.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ]
  %.sroa.37.4 = phi ptr [ %.sroa.37.2.lcssa, %._crit_edge182 ], [ %.sroa.37.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.37.6, %bb.ab ], [ %.sroa.37.6, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.37.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ]
  %.sroa.44.4 = phi ptr [ %.sroa.44.2.lcssa, %._crit_edge182 ], [ %.sroa.44.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.44.6, %bb.ab ], [ %.sroa.44.6, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.44.6, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %.sroa.56.4 = phi ptr [ %.sroa.56.2.lcssa, %._crit_edge182 ], [ %.sroa.56.1196, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.56.1196, %bb.ab ], [ %.sroa.56.1196, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.56.1196, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %.sroa.68.4 = phi ptr [ %.sroa.68.2.lcssa, %._crit_edge182 ], [ %.sroa.68.1197, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.68.1197, %bb.ab ], [ %.sroa.68.1197, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.68.1197, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ]
  %.sroa.75.4 = phi ptr [ %.sroa.75.2.lcssa, %._crit_edge182 ], [ %.sroa.75.1198, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.75.1198, %bb.ab ], [ %.sroa.75.1198, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.75.1198, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ]
  %.sroa.82.4 = phi ptr [ %.sroa.82.2.lcssa, %._crit_edge182 ], [ %.sroa.82.1199, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.82.1199, %bb.ab ], [ %.sroa.82.1199, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.82.1199, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %.sroa.14.4 = phi i64 [ %.sroa.14.2.lcssa, %._crit_edge182 ], [ %.sroa.14.1200, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.14.1200, %bb.ab ], [ %.sroa.14.1200, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.14.1200, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %.sroa.043.4 = phi ptr [ %.sroa.043.2.lcssa, %._crit_edge182 ], [ %.sroa.043.1201, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.sroa.043.1201, %bb.ab ], [ %.sroa.043.1201, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.sroa.043.1201, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %.2 = phi i64 [ %i.dy, %._crit_edge182 ], [ %.1202, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit ], [ %.1202, %bb.ab ], [ %.1202, %_ZN4mlir9Operation15getParentRegionEv.exit ], [ %.1202, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbNS_5ValueEEEE.exit.thread ] ; 2 uses
  %i.hm = icmp eq ptr %.sroa.56.4, %storemerge.i.i
  br i1 %i.hm, label %.loopexit, label %.lr.ph204

.loopexit:                                        ; preds = %bb.be, %._crit_edge, %._crit_edge.thread
  %.sroa.44.1.lcssa = phi ptr [ %.sroa.44.5, %._crit_edge ], [ %i.u, %._crit_edge.thread ], [ %.sroa.44.4, %bb.be ] ; 2 uses
  %.sroa.82.1.lcssa = phi ptr [ %.sroa.82.5, %._crit_edge ], [ %i.u, %._crit_edge.thread ], [ %.sroa.82.4, %bb.be ] ; 2 uses
  %.sroa.14.1.lcssa = phi i64 [ %.sroa.14.5, %._crit_edge ], [ 8, %._crit_edge.thread ], [ %.sroa.14.4, %bb.be ]
  %.sroa.043.1.lcssa = phi ptr [ %.sroa.043.5, %._crit_edge ], [ %i.t, %._crit_edge.thread ], [ %.sroa.043.4, %bb.be ]
  %.1.lcssa = phi i64 [ %.023213, %._crit_edge ], [ %.023213, %._crit_edge.thread ], [ %.2, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.82.1.lcssa, i64 8
  %i.ho = icmp ult ptr %.sroa.44.1.lcssa, %i.hn
  br i1 %i.ho, label %.lr.ph.i.i.i.i, label %_ZNSt5queueIPN4mlir9OperationESt5dequeIS2_SaIS2_EEED2Ev.exit

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i ], [ %.sroa.44.1.lcssa, %.loopexit ] ; 3 uses
  %i.hp = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !16
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef 512) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.hr = icmp ult ptr %.06.i.i.i.i, %.sroa.82.1.lcssa
  br i1 %i.hr, label %.lr.ph.i.i.i.i, label %_ZNSt5queueIPN4mlir9OperationESt5dequeIS2_SaIS2_EEED2Ev.exit, !llvm.loop !126

_ZNSt5queueIPN4mlir9OperationESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %i.hs = shl i64 %.sroa.14.1.lcssa, 3
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.1.lcssa, i64 noundef %i.hs) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ht = getelementptr inbounds nuw i8, ptr %.025212, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ht, %i.d
  br i1 %.not, label %._crit_edge216, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir21moveLoopInvariantCodeENS_19LoopLikeOpInterfaceE(ptr %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::LoopLikeOpInterface", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %4 = alloca %class.anon.26, align 8             ; 4 uses
  %5 = alloca %class.anon.27, align 1             ; 3 uses
  %6 = alloca %"class.llvm::function_ref.1", align 8 ; 3 uses
  %7 = alloca %class.anon.28, align 8             ; 4 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4mlir19LoopLikeOpInterface14getLoopRegionsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %i.b = load ptr, ptr %3, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = zext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %2, ptr %4, align 8, !tbaa !53
  %i.f = ptrtoint ptr %4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.g = ptrtoint ptr %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %2, ptr %7, align 8, !tbaa !53
  store ptr @"_ZN4llvm12function_refIFvPN4mlir9OperationEPNS1_6RegionEEE11callback_fnIZNS1_21moveLoopInvariantCodeENS1_19LoopLikeOpInterfaceEE3$_2EEvlS3_S5_", ptr %6, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = ptrtoint ptr %7 to i64
  store i64 %i.i, ptr %i.h, align 8, !tbaa !44
  %i.j = call noundef i64 @_ZN4mlir21moveLoopInvariantCodeEN4llvm8ArrayRefIPNS_6RegionEEENS0_12function_refIFbNS_5ValueES3_EEENS5_IFbPNS_9OperationES3_EEENS5_IFvSA_S3_EEE(ptr %i.b, i64 %i.e, ptr nonnull @"_ZN4llvm12function_refIFbN4mlir5ValueEPNS1_6RegionEEE11callback_fnIZNS1_21moveLoopInvariantCodeENS1_19LoopLikeOpInterfaceEE3$_0EEblS2_S4_", i64 %i.f, ptr nonnull @"_ZN4llvm12function_refIFbPN4mlir9OperationEPNS1_6RegionEEE11callback_fnIZNS1_21moveLoopInvariantCodeENS1_19LoopLikeOpInterfaceEE3$_1EEblS3_S5_", i64 %i.g, ptr noundef nonnull byval(%"class.llvm::function_ref.1") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.k = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.k) #15
  br label %_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i64 %i.j
}

declare void @_ZN4mlir19LoopLikeOpInterface14getLoopRegionsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4mlir25hoistLoopInvariantSubsetsERNS_12RewriterBaseENS_19LoopLikeOpInterfaceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::function_ref.40", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %class.anon.42, align 8             ; 5 uses
  %5 = alloca %"class.llvm::function_ref.40", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %class.anon.42, align 8             ; 5 uses
  %7 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %8 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %9 = alloca %"class.mlir::LoopLikeOpInterface", align 16 ; 21 uses
  %10 = alloca %"class.(anonymous namespace)::MatchingSubsets", align 8 ; 19 uses
  %11 = alloca %"class.llvm::filter_iterator_impl", align 16 ; 10 uses
  %12 = alloca %"class.mlir::SubsetExtractionOpInterface", align 8 ; 10 uses
  %13 = alloca %"class.mlir::SubsetInsertionOpInterface", align 8 ; 14 uses
  %14 = alloca %class.anon.98, align 8            ; 6 uses
  %15 = alloca %class.anon.99, align 8            ; 6 uses
  %16 = alloca %"class.std::function", align 8    ; 8 uses
  %17 = alloca %"class.llvm::FailureOr", align 8  ; 5 uses
  %18 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %19 = alloca %"class.std::optional.115", align 8 ; 5 uses
  %20 = alloca %"class.mlir::LoopLikeOpInterface", align 16 ; 8 uses
  store ptr %1, ptr %20, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #15
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.i4.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.z = ptrtoint ptr %14 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = ptrtoint ptr %6 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = ptrtoint ptr %15 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = ptrtoint ptr %4 to i64
  %i.ai = ptrtoint ptr %13 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.al = ptrtoint ptr %18 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentE.exit, %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %20, align 16
  %.sroa.26.0.copyload = load ptr, ptr %i.c, align 8
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.05.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.26.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentE.exit
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.ie, %_ZL20hoistSubsetAtIterArgRN4mlir12RewriterBaseENS_19LoopLikeOpInterfaceENS_13BlockArgumentE.exit ] ; 2 uses
  %i.ao = load <2 x ptr>, ptr %20, align 16
  %i.ap = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #15
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.024
  %.sroa.0.0.copyload = load ptr, ptr %i.ar, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x ptr> %i.ao, ptr %9, align 16
  %i.as = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 4 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 4 uses
  %.idx3.i.i = shl nuw nsw i64 %i.au, 3           ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx3.i.i
  %i.aw = lshr i64 %i.au, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.ax = and i64 %.idx3.i.i, 9223372036854775776
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.bk, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.bj, %bb.g ] ; 9 uses
  %i.ay = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !56
  %i.az = icmp eq ptr %i.ay, %.sroa.0.0.copyload
  br i1 %i.az, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bc = icmp eq ptr %i.bb, %.sroa.0.0.copyload
  br i1 %i.bc, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = icmp eq ptr %i.be, %.sroa.0.0.copyload
  br i1 %i.bf, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit53, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = icmp eq ptr %i.bh, %.sroa.0.0.copyload
  br i1 %i.bi, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit55, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.bk = add nsw i64 %.047.i.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.c, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.g
  %i.bm = and i64 %i.au, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.bm, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.au, %bb.b ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.at, %bb.b ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !56
  %i.bo = icmp eq ptr %i.bn, %.sroa.0.0.copyload
  br i1 %i.bo, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.bp, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bq = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !56
  %i.br = icmp eq ptr %i.bq, %.sroa.0.0.copyload
  br i1 %i.br, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.bs, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bt = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !56
  %i.bu = icmp eq ptr %i.bt, %.sroa.0.0.copyload
  br i1 %i.bu, label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit53: ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  br label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit55: ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  br label %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i: ; preds = %bb.c, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit53, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit55, %bb.k, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.h
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %i.av, %bb.k ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.h ], [ %i.bx, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit55 ], [ %i.bw, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit53 ], [ %i.bv, %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.c ]
  %i.by = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.h, ptr %10, align 8, !tbaa !50
  store i32 0, ptr %i.i, align 8, !tbaa !51
  store i32 3, ptr %i.j, align 4, !tbaa !57
  store ptr %i.l, ptr %i.k, align 8, !tbaa !50
  store i32 0, ptr %i.m, align 8, !tbaa !51
  store i32 3, ptr %i.n, align 4, !tbaa !57
  store ptr %i.p, ptr %i.o, align 8, !tbaa !50
  store i32 0, ptr %i.q, align 8, !tbaa !51
  store i32 3, ptr %i.r, align 4, !tbaa !57
  %.sroa.022.0.copyload.i = load ptr, ptr %9, align 16
  %.sroa.2.0.copyload.i = load ptr, ptr %i.g, align 8
  %i.cd = call fastcc i8 @_ZN12_GLOBAL__N_115MatchingSubsets26populateSubsetOpsAtIterArgEN4mlir19LoopLikeOpInterfaceENS1_13BlockArgumentEb(ptr noundef nonnull align 8 dereferenceable(192) %10, ptr %.sroa.022.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload, i1 noundef zeroext true)
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i
  %i.cf = load <2 x ptr>, ptr %9, align 16
  br label %bb.ax

bb.m:                                             ; preds = %_ZN4llvm4findINS_15MutableArrayRefIN4mlir13BlockArgumentEEES3_EEDaOT_RKT0_.exit.i
  %.val.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !176 ; 2 uses
  %.val.val2.i.i = load i32, ptr %i.m, align 8, !tbaa !51, !noalias !177
  %.val1.val.i.i = load ptr, ptr %10, align 8, !tbaa !50, !noalias !176 ; 2 uses
  %.val1.val3.i.i = load i32, ptr %i.i, align 8, !tbaa !51, !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !178
  %i.cg = zext i32 %.val1.val3.i.i to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.val1.val.i.i, i64 %i.cg ; 3 uses
  %i.ci = zext i32 %.val.val2.i.i to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.val.val.i.i, i64 %i.ci ; 3 uses
  %i.ck = ptrtoint ptr %.val.val.i.i to i64
  %i.cl = ptrtoint ptr %.val1.val.i.i to i64
  store i64 %i.ck, ptr %7, align 8, !tbaa !59, !noalias !179
  store i64 %i.cl, ptr %i.s, align 8, !tbaa !61, !noalias !179
  store ptr %i.cj, ptr %i.t, align 8, !noalias !179
  store ptr %i.ch, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !179
  store ptr %10, ptr %i.u, align 8, !tbaa !180, !noalias !179
  call fastcc void @_ZN4llvm20filter_iterator_baseINS_6detail12zip_shortestIJPN4mlir27SubsetExtractionOpInterfaceEPNS3_26SubsetInsertionOpInterfaceEEEEZN12_GLOBAL__N_115MatchingSubsets21getHoistableSubsetOpsEvEUlT_E_St26bidirectional_iterator_tagE13findNextValidEv(ptr noundef nonnull align 8 dereferenceable(40) %7), !noalias !179
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  store i64 %i.cm, ptr %8, align 8, !tbaa !59, !noalias !179
  store i64 %i.cn, ptr %i.v, align 8, !tbaa !61, !noalias !179
  store ptr %i.cj, ptr %i.w, align 8, !noalias !179
  store ptr %i.ch, ptr %.sroa.0.i4.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !179
  store ptr %10, ptr %i.x, align 8, !tbaa !180, !noalias !179
  call fastcc void @_ZN4llvm20filter_iterator_baseINS_6detail12zip_shortestIJPN4mlir27SubsetExtractionOpInterfaceEPNS3_26SubsetInsertionOpInterfaceEEEEZN12_GLOBAL__N_115MatchingSubsets21getHoistableSubsetOpsEvEUlT_E_St26bidirectional_iterator_tagE13findNextValidEv(ptr noundef nonnull align 8 dereferenceable(40) %8), !noalias !179
  %.val.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !180, !noalias !181
  %.val.i.i1.i.i.i.i = load i64, ptr %8, align 8, !tbaa !59, !noalias !181 ; 2 uses
  %.val4.i.i2.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !61, !noalias !181 ; 2 uses
  %i.co = inttoptr i64 %.val.i.i1.i.i.i.i to ptr
  %i.cp = inttoptr i64 %.val4.i.i2.i.i.i.i to ptr
  %21 = load <4 x i64>, ptr %7, align 8, !tbaa !63, !noalias !181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store <4 x i64> %21, ptr %11, align 16
  store i64 %.val.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 16
  %22 = extractelement <4 x i64> %21, i64 1       ; 2 uses
  %i.cq = icmp ne i64 %22, %.val4.i.i2.i.i.i.i
  %23 = extractelement <4 x i64> %21, i64 0       ; 2 uses
  %i.cr = icmp ne i64 %23, %.val.i.i1.i.i.i.i
  %.not6.i115.i = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %.not6.i115.i, label %.lr.ph.i, label %.thread90.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.cs = inttoptr i64 %23 to ptr
  %i.ct = inttoptr i64 %22 to ptr
  br label %bb.n

.thread90.i:                                      ; preds = %bb.av, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.cu = load <2 x ptr>, ptr %9, align 16
  br label %bb.ax

bb.n:                                             ; preds = %bb.av, %.lr.ph.i
  %.val38119.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.val38.i, %bb.av ]
  %.val118.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %.val.i, %bb.av ]
  %i.cv = phi <2 x ptr> [ undef, %.lr.ph.i ], [ %i.hs, %bb.av ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %.val38119.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.val118.i, i64 16, i1 false)
  %i.cw = load ptr, ptr %12, align 8, !tbaa !65   ; 3 uses
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr %9, ptr %14, align 8, !tbaa !53
  store ptr %12, ptr %i.y, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @"_ZN4llvm12function_refIFbRN4mlir9OpOperandEEE11callback_fnIZL20hoistSubsetAtIterArgRNS1_12RewriterBaseENS1_19LoopLikeOpInterfaceENS1_13BlockArgumentEE3$_1EEblS3_", ptr %5, align 8
  store i64 %i.z, ptr %i.aa, align 8
  store ptr %i.cw, ptr %i.b, align 8, !tbaa !20
  %i.cx = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.p, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i, !prof !33

bb.p:                                             ; preds = %bb.o
  %i.cz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 49), i64 34) #15
  store ptr %i.da, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i) #15, !inline_history !172
  br i1 %i.dg, label %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.thread.i, label %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.i

_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.thread.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.r

_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.b, ptr %6, align 8, !tbaa !16
  store ptr %5, ptr %i.ab, align 8, !tbaa !40
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.di = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZL12canBeHoistedS4_NS0_IFbRNS1_9OpOperandEEEEE3$_0EES2_lS4_", i64 %i.ac, i32 noundef 1)
  %.not94.i = icmp eq i32 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br i1 %.not94.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.i, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit.i, %bb.n
  %i.dj = load ptr, ptr %13, align 8, !tbaa !65   ; 3 uses
  %.not95.i = icmp eq ptr %i.dj, null
  br i1 %.not95.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %9, ptr %15, align 8, !tbaa !53
  store ptr %13, ptr %i.ad, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @"_ZN4llvm12function_refIFbRN4mlir9OpOperandEEE11callback_fnIZL20hoistSubsetAtIterArgRNS1_12RewriterBaseENS1_19LoopLikeOpInterfaceENS1_13BlockArgumentEE3$_2EEblS3_", ptr %3, align 8
  store i64 %i.ae, ptr %i.af, align 8
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !20
  %i.dk = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i, !prof !33

bb.u:                                             ; preds = %bb.t
  %i.dm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i47.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i47.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 49), i64 34) #15
  store ptr %i.dn, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i45.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !38
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr %.sroa.01.0.copyload.i.i.i.i.i.i45.i) #15, !inline_history !172
  br i1 %i.dt, label %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit48.thread.i, label %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit48.i

_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit48.thread.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.thread.i

_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit48.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.a, ptr %4, align 8, !tbaa !16
  store ptr %3, ptr %i.ag, align 8, !tbaa !40
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.dv = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZL12canBeHoistedS4_NS0_IFbRNS1_9OpOperandEEEEE3$_0EES2_lS4_", i64 %i.ah, i32 noundef 1)
  %.not96.i = icmp eq i32 %i.dv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br i1 %.not96.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %_ZL12canBeHoistedPN4mlir9OperationEN4llvm12function_refIFbRNS_9OpOperandEEEE.exit48.i
  %.pre = load ptr, ptr %13, align 8
  %i.dw = icmp ne ptr %.pre, null
  %i.dx = load ptr, ptr %12, align 8, !tbaa !65   ; 2 uses
  %i.dy = icmp ne ptr %i.dx, null
  %or.cond.i = select i1 %i.dy, i1 %i.dw, i1 false
  br i1 %or.cond.i, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  store i64 0, ptr %i.ak, align 8
  store i64 %i.ai, ptr %16, align 8, !tbaa !59
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS0_8ArrayRefINS2_13BlockArgumentEEEEZL20hoistSubsetAtIterArgRNS2_12RewriterBaseENS2_19LoopLikeOpInterfaceES9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS0_8ArrayRefINS2_13BlockArgumentEEEEZL20hoistSubsetAtIterArgRNS2_12RewriterBaseENS2_19LoopLikeOpInterfaceES9_E3$_0E9_M_invokeERKSt9_Any_dataS6_OS7_OSA_">, ptr %i.aj, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -16
  store ptr %i.dz, ptr %18, align 8
  call void @_ZN4mlir19LoopLikeOpInterface27replaceWithAdditionalYieldsERNS_12RewriterBaseENS_10ValueRangeEbRKSt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEERNS_9OpBuilderENS_8LocationENS5_8ArrayRefINS_13BlockArgumentEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %i.al, i64 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.ea = load i8, ptr %i.am, align 8, !tbaa !183, !range !66, !noundef !67
  %i.eb = trunc nuw i8 %i.ea to i1                ; 2 uses
  br i1 %i.eb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load <2 x ptr>, ptr %9, align 16
  br label %bb.as

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.ed = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.cc
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = inttoptr i64 %i.eg to ptr               ; 8 uses
  %i.ei = call ptr @_ZN4mlir19LoopLikeOpInterface17getTiedLoopResultENS_13BlockArgumentE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.eh) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN4mlir19LoopLikeOpInterface14getLoopResultsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.115") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  %i.ej = load i64, ptr %i.an, align 8, !tbaa !184
  %i.ek = add i64 %i.ej, -1
  %i.el = load ptr, ptr %19, align 8, !tbaa !70
  %i.em = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 noundef %i.ek) #15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.en = load ptr, ptr %12, align 8, !tbaa !65
  %i.eo = load ptr, ptr %9, align 16, !tbaa !65
  call void @_ZN4mlir12RewriterBase12moveOpBeforeEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.en, ptr noundef %i.eo) #15
  %i.ep = load ptr, ptr %13, align 8, !tbaa !65
  %i.eq = load ptr, ptr %9, align 16, !tbaa !65
  call void @_ZN4mlir12RewriterBase11moveOpAfterEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ep, ptr noundef %i.eq) #15
  %i.er = call ptr @_ZN4mlir26SubsetInsertionOpInterface21getUpdatedDestinationEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #15
  %i.es = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir26SubsetInsertionOpInterface21getDestinationOperandEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.et, align 8, !tbaa !71
  %i.eu = load ptr, ptr %0, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.er, ptr %.sroa.0.0.copyload.i.i) #15, !inline_history !173
  %i.ex = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir27SubsetExtractionOpInterface16getSourceOperandEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #15 ; 6 uses
  %i.ey = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15 ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 6 uses
  %i.fa = extractvalue { ptr, i64 } %i.ey, 1      ; 5 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.fa, 3         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx3.i.i.i
  %i.fc = lshr i64 %i.fa, 2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_0
