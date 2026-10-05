Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PipelineGlobalOps?download=true
inline.NumInlined: 1557
inline.NumDeleted: 829
begin_hunk_0_@_ZN4mlir4PassD2Ev:bb.a

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #17
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #17
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !243 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !244
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !83, !range !245, !noundef !85
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !83
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !245
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !247
  tail call void @free(ptr noundef %i.ao) #17
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEES5_NS_6detail12DenseMapPairIS2_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEES5_NS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !0

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEES5_NS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !49
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEES5_NS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEES5_NS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4mlir10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals12processBlockERNS_5BlockERN4llvm8DenseSetINS_13SymbolRefAttrENS5_12DenseMapInfoIS7_vEEEESB_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.210, align 1            ; 3 uses
  %5 = alloca %class.anon.212, align 1            ; 3 uses
  %6 = alloca %class.anon.210, align 1            ; 3 uses
  %7 = alloca %class.anon.210, align 1            ; 3 uses
  %8 = alloca %class.anon.212, align 1            ; 3 uses
  %9 = alloca %class.anon.210, align 1            ; 3 uses
  %10 = alloca %"class.llvm::DenseMap.183", align 8 ; 15 uses
  %11 = alloca %"class.llvm::DenseMap.70", align 8 ; 18 uses
  %12 = alloca %"class.llvm::SmallVector.185", align 8 ; 12 uses
  %13 = alloca %"class.mlir::ml_program::GlobalLoadOp", align 8 ; 7 uses
  %14 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 7 uses
  %15 = alloca %"class.mlir::ml_program::GlobalStoreOp", align 8 ; 6 uses
  %16 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 7 uses
  %17 = alloca %"class.mlir::CallOpInterface", align 8 ; 7 uses
  %18 = alloca %"class.llvm::DenseSet", align 8   ; 9 uses
  %19 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 4 uses
  %20 = alloca %"class.llvm::DenseSet", align 8   ; 9 uses
  %21 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 4 uses
  %22 = alloca %"class.llvm::DenseSet", align 8   ; 9 uses
  %23 = alloca %"class.llvm::DenseSet", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.a, ptr %12, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  store i32 6, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0309.0383 = load ptr, ptr %i.d, align 8, !tbaa !78 ; 2 uses
  %.not313384 = icmp eq ptr %.sroa.0309.0383, %i.e
  br i1 %.not313384, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.a
  %24 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program12GlobalLoadOpEvE2idE
  %25 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program13GlobalStoreOpEvE2idE
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

._crit_edge388:                                   ; preds = %bb.bf
  %.pre440.a = load ptr, ptr %12, align 8, !tbaa !19 ; 3 uses
  %.pre441 = load i32, ptr %i.b, align 8, !tbaa !51 ; 2 uses
  %i.ae = zext i32 %.pre441 to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %.pre440.a, i64 %.idx
  %.not389 = icmp eq i32 %.pre441, 0
  br i1 %.not389, label %._crit_edge393, label %.lr.ph392

bb.b:                                             ; preds = %.lr.ph387, %bb.bf
  %.sroa.0309.0385 = phi ptr [ %.sroa.0309.0383, %.lr.ph387 ], [ %.sroa.0309.0, %bb.bf ] ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0309.0385) #17 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = icmp eq ptr %i.aj, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program12GlobalLoadOpEvE2idE
  %spec.select.i.i.i.i = and i1 %24, %i.ak        ; 2 uses
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %i.ag, ptr null
  store ptr %spec.select.i.i, ptr %13, align 8
  br i1 %spec.select.i.i.i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.al = call ptr @_ZN4mlir10ml_program12GlobalLoadOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  store ptr %i.al, ptr %14, align 8
  %i.am = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %14), !noalias !349 ; 0 uses
  %i.an = load ptr, ptr %10, align 8, !tbaa !88, !noalias !350
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !89, !noalias !350 ; 2 uses
  %i.ap = load i32, ptr %i.r, align 4, !tbaa !90, !noalias !350 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %14, align 8, !tbaa !56 ; 2 uses
  %i.as = ptrtoint ptr %.sroa.03.0.copyload.i.i to i64
  %i.at = mul i64 %i.as, -4658895280553007687     ; 2 uses
  %i.au = lshr i64 %i.at, 31
  %i.av = xor i64 %i.au, %i.at
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.ar, %i.aw                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i, label %.loopexit, !prof !54

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.bf = phi i64 [ %i.bk, %bb.e ], [ %i.ay, %bb.d ]
  %.01419.i.i = phi i32 [ %i.bj, %bb.e ], [ %i.ax, %bb.d ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bf
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bh = icmp eq ptr %.sroa.03.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.bh, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8containsERKS3_.exit, label %bb.e, !prof !57

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bi = add nuw i32 %.01419.i.i, 1
  %i.bj = and i32 %i.bi, %i.ar                    ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = and i32 %i.bj, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i.i, label %.loopexit, !prof !58

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8containsERKS3_.exit: ; preds = %.lr.ph.i.i
  %i.br = load i32, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !20
  %.not.i = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !57

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8containsERKS3_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.ag)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8containsERKS3_.exit
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %12, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store ptr %i.ag, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.b, align 8, !tbaa !51
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.by = load ptr, ptr %13, align 8, !tbaa !352
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16
  %i.ca = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef 0) #17 ; 2 uses
  %i.cb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %.sroa.028.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 4 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !355 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i
  %i.cf = phi ptr [ %i.cn, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i ], [ %i.cd, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !358 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i52
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !359 ; 3 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !360
  %.not2.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !358
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %.sroa.028.0.copyload, ptr %i.ck, align 8, !tbaa !92
  store ptr %.sroa.028.0.copyload, ptr %i.cg, align 8, !tbaa !358
  %i.cl = load ptr, ptr %.sroa.028.0.copyload, align 8, !tbaa !355 ; 3 uses
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !359
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cf, ptr %i.cm, align 8, !tbaa !358
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i: ; preds = %bb.j, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  store ptr %i.cf, ptr %.sroa.028.0.copyload, align 8, !tbaa !355
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !355 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit, label %.lr.ph.i.i52, !llvm.loop !258

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.d
  %i.cp = load ptr, ptr %13, align 8, !tbaa !352
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -16
  %i.cr = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 noundef 0) #17
  %i.cs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %.fca.0.extract.i53 = extractvalue { ptr, i8 } %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i53, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !92
  br label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit

_ZN4mlir5Value18replaceAllUsesWithES0_.exit:      ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bf

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.cv = icmp eq ptr %i.cu, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program13GlobalStoreOpEvE2idE
  %spec.select.i.i.i.i55 = and i1 %25, %i.cv      ; 2 uses
  %spec.select.i.i55 = select i1 %spec.select.i.i.i.i55, ptr %i.ag, ptr null
  store ptr %spec.select.i.i55, ptr %15, align 8
  br i1 %spec.select.i.i.i.i55, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.cw = call ptr @_ZN4mlir10ml_program13GlobalStoreOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  store ptr %i.cw, ptr %16, align 8
  %i.cx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %16), !noalias !361 ; 0 uses
  %i.cy = load ptr, ptr %11, align 8, !tbaa !30, !noalias !362 ; 3 uses
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !31, !noalias !362 ; 2 uses
  %i.da = load i32, ptr %i.m, align 4, !tbaa !32, !noalias !362 ; 4 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = add i32 %i.da, -1                       ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !56, !noalias !363 ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.03.0.copyload.i.i.i.i to i64
  %i.de = mul i64 %i.dd, -4658895280553007687     ; 2 uses
  %i.df = lshr i64 %i.de, 31
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dc, %i.dh                    ; 3 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 5
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !34, !noalias !363
  %i.dn = and i32 %i.di, 31
  %i.do = lshr i32 %i.dm, %i.dn
  %i.dp = trunc i32 %i.do to i1
  br i1 %i.dp, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !54

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %i.dq = phi i64 [ %i.dv, %bb.n ], [ %i.dj, %bb.m ]
  %.01419.i.i.i.i = phi i32 [ %i.du, %bb.n ], [ %i.di, %bb.m ]
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.dq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !56, !noalias !363
  %i.ds = icmp eq ptr %.sroa.03.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ds, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, label %bb.n, !prof !57

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nuw i32 %.01419.i.i.i.i, 1
  %i.du = and i32 %i.dt, %i.dc                    ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !34, !noalias !363
  %i.dz = and i32 %i.du, 31
  %i.ea = lshr i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !58

.loopexit.i.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %i.ec = zext i32 %i.da to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.ec
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre443.a = zext i32 %i.da to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre443.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.ec, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.dr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.ed, %.loopexit.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.pre-phi
  %.not320.a = icmp eq ptr %.lcssa.sink.i.i, %i.ee
  br i1 %.not320.a, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit62, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  %i.eh = load i32, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.ei = load i32, ptr %i.c, align 4, !tbaa !20
  %.not.i61 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i61, label %bb.q, label %bb.p, !prof !57

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.eg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit62

bb.q:                                             ; preds = %bb.o
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %12, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr %i.eg, ptr %i.el, align 1
  %i.em = load i32, ptr %i.b, align 8, !tbaa !51
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit62

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit62: ; preds = %bb.q, %bb.p, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.eo = load ptr, ptr %15, align 8, !tbaa !352
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !366
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.sroa.0.0.copyload.i.i.i.i64 = load ptr, ptr %i.er, align 8, !tbaa !92
  %i.es = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS2_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %.fca.0.extract.i65 = extractvalue { ptr, i8 } %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i65, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i64, ptr %i.et, align 8, !tbaa !92
  %i.eu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %.fca.0.extract.i66 = extractvalue { ptr, i8 } %i.eu, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i66, i64 8
  store ptr %i.ag, ptr %i.ev, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bf

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ew = call noundef ptr @_ZN4mlir11OpInterfaceINS_15CallOpInterfaceENS_6detail30CallOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
  %.not.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir15CallOpInterfaceENS1_9OperationEEEDcRT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = call noundef ptr @_ZN4mlir11OpInterfaceINS_15CallOpInterfaceENS_6detail30CallOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.ag, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.ex, 1
  br label %_ZN4llvm8dyn_castIN4mlir15CallOpInterfaceENS1_9OperationEEEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir15CallOpInterfaceENS1_9OperationEEEDcRT0_.exit: ; preds = %bb.r, %bb.s
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %bb.s ], [ zeroinitializer, %bb.r ] ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  store ptr %i.ey, ptr %17, align 8
  %i.ez = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.ez, ptr %i.f, align 8
  %.not314.a = icmp eq ptr %i.ey, null
  br i1 %.not314.a, label %bb.ai, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir15CallOpInterfaceENS1_9OperationEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.fa = call i64 @_ZN4mlir15CallOpInterface20getCallableForCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #17 ; 2 uses
  %i.fb = and i64 %i.fa, 4
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = and i64 %i.fa, -5
  %i.fe = inttoptr i64 %i.fd to ptr
  %.sroa.0.0.i.i.i = select i1 %i.fc, ptr %i.fe, ptr null
  store ptr %.sroa.0.0.i.i.i, ptr %19, align 8
  %i.ff = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %.fca.0.extract.i68 = extractvalue { ptr, i8 } %i.ff, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i68, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.fh = call i64 @_ZN4mlir15CallOpInterface20getCallableForCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #17 ; 2 uses
  %i.fi = and i64 %i.fh, 4
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = and i64 %i.fh, -5
  %i.fl = inttoptr i64 %i.fk to ptr
  %.sroa.0.0.i.i.i70 = select i1 %i.fj, ptr %i.fl, ptr null
  store ptr %.sroa.0.0.i.i.i70, ptr %21, align 8
  %i.fm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %.fca.0.extract.i71 = extractvalue { ptr, i8 } %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i71, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.fo = load ptr, ptr %18, align 8, !tbaa !43, !noalias !367
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !52, !noalias !367 ; 4 uses
  %i.fq = load i32, ptr %i.j, align 4, !tbaa !42, !noalias !367 ; 2 uses
  %i.fr = load i32, ptr %i.k, align 8, !tbaa !53, !noalias !367
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = zext i32 %i.fq to i64                   ; 4 uses
  %.idx577.a = shl nuw nsw i64 %i.ft, 3           ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.fq, 0
  %or.cond.i = select i1 %i.fs, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fu = add nuw nsw i64 %i.ft, 31
  %i.fv = lshr i64 %i.fu, 5                       ; 2 uses
  %i.fw = load i32, ptr %i.fp, align 4, !tbaa !34, !noalias !368 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i.i.i.i74.preheader, label %_ZN4llvm6detail12DenseSetImplIN4mlir13SymbolRefAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.u
  %i.fy = icmp eq i64 %i.fv, 1
  br i1 %i.fy, label %._crit_edge, label %.lr.ph638

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph638
  %i.fz = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.ga = icmp eq i64 %i.fz, %i.fv
  br i1 %i.ga, label %._crit_edge, label %.lr.ph638, !llvm.loop !4

.lr.ph638:                                        ; preds = %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74
  %i.gb = phi i64 [ %i.fz, %.lr.ph.i.i.i.i74 ], [ 1, %.lr.ph.i.i.i.i74.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !34, !noalias !368 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i.i.i.i74, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !4

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph638
  %i.gf = shl i64 %i.gb, 8
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir13SymbolRefAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

_ZN4llvm6detail12DenseSetImplIN4mlir13SymbolRefAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit: ; preds = %bb.u, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.gf, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.fw, %bb.u ], [ %i.gd, %._crit_edge.i.loopexit.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !34
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !422

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  store ptr %i.au, ptr %i.as, align 8, !tbaa !37
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !34
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !34
  %i.az = add i32 %.0.i17, -1
  %i.ba = and i32 %i.az, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !423

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS2_9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !424

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !32
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !33
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrEPNS1_9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !30
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrEPNS1_9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrEPNS1_9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrEPNS5_9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #17, !inline_history !425
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #17 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !78 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !78 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #17
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #17, !inline_history !425
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS1_8ModuleOpEE3$_1NSB_12GlobalLoadOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ml_program::GlobalLoadOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program12GlobalLoadOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program12GlobalLoadOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %4, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_1NS4_12GlobalLoadOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = call ptr @_ZN4mlir10ml_program12GlobalLoadOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  store ptr %i.f, ptr %3, align 8
  %i.g = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !434 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_1NS4_12GlobalLoadOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_1NS4_12GlobalLoadOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit": ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @_ZN4mlir10ml_program12GlobalLoadOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !43, !noalias !439 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !439 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42, !noalias !439 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !56 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !54

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !57

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !58, !llvm.loop !2

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !53
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !57

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !43
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !34
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !53
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8
  store i64 %i.bf, ptr %i.ar, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43, !noalias !444 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !444 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42, !noalias !444 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !56 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !54

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !57

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !58, !llvm.loop !2

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !44
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.28", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !43
  store ptr %i.y, ptr %i.q, align 8, !tbaa !52
  store i32 0, ptr %i.p, align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !39
  %i.aa = load ptr, ptr %0, align 8, !tbaa !44
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !39
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !39
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !34
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !34
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !34
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !34
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !34
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !445

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa12.i
  store i64 %i.v, ptr %i.ar, align 8
  %i.as = shl nuw i32 1, %.lcssa.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !34
  %i.aw = add i32 %.0.i16, -1
  %i.ax = and i32 %i.aw, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !446

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !447

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !42
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !53
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !43
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS1_8ModuleOpEE3$_2NSB_13GlobalStoreOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ml_program::GlobalStoreOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program13GlobalStoreOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program13GlobalStoreOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %4, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_2NS4_13GlobalStoreOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = call ptr @_ZN4mlir10ml_program13GlobalStoreOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  store ptr %i.f, ptr %3, align 8
  %i.g = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !456 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_2NS4_13GlobalStoreOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_10ml_program12_GLOBAL__N_124MLProgramPipelineGlobals14buildGlobalMapENS_8ModuleOpEE3$_2NS4_13GlobalStoreOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit": ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @_ZN4mlir10ml_program13GlobalStoreOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !49, !noalias !461 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50, !noalias !461 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48, !noalias !461 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !56 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !54

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !57

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !58, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !61
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !57

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !95
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !50
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !34
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !61
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8
  store i64 %i.bf, ptr %i.ar, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49, !noalias !466 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48, !noalias !466 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !56 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !54

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !57

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !58, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !95
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13SymbolRefAttrENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S6_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.25", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
end_hunk_1
