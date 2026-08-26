Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering22insertHvxSubvectorPredENS_7SDValueES1_S1_RKNS_5SDLocERNS_12SelectionDAGE:bb.a

_ZN4llvm3MVT11getVectorVTES0_j.exit157:           ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %.not198 = phi i1 [ %.not199, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.0.i.i197 = phi ptr [ %.0.i.i196, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ %i.ag, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.sroa.0182.0 = phi ptr [ %.fca.0.extract55, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract56, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.sroa.083.0 = phi ptr [ %.fca.0.extract47, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ %.fca.0.extract78, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.sroa.10.0 = phi i32 [ %.fca.1.extract48, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ], [ %.fca.1.extract79, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ]
  %.sroa.0.0.i156 = select i1 %i.r, i16 29, i16 30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.as = zext nneg i16 %i.ad to i64
  %i.at = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.at, 1
  store ptr %.fca.0.extract36, ptr %14, align 8
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract37, ptr %.sroa.239.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %14, ptr %9, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !581
  %i.au = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 2668, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i156, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store ptr %i.au, ptr %15, align 8, !tbaa !238
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %.sroa.444.0..sroa_idx, align 8, !tbaa !151
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.fca.0.extract69, ptr %i.av, align 8, !tbaa !238
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.fca.1.extract70, ptr %.sroa.476.0..sroa_idx, align 8, !tbaa !151
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %.sroa.083.0, ptr %i.aw, align 8, !tbaa !238
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx91, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %15, ptr %8, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i160, align 8, !tbaa !581
  %i.ax = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 3177, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %8) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br i1 %.not198, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit157
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i197, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !577
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp slt i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm3MVT11getVectorVTES0_j.exit157
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.be, 1
  store ptr %.fca.0.extract15, ptr %16, align 8, !tbaa !238
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !151
  store ptr %.sroa.0182.0, ptr %17, align 8, !tbaa !238
  %.sroa.6.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx184, align 8, !tbaa !151
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #20 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %i.ax, ptr %18, align 8, !tbaa !238
  %.sroa.10.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %.sroa.10.0..sroa_idx87, align 8, !tbaa !151
  store ptr %.fca.0.extract8, ptr %19, align 8, !tbaa !238
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !151
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 579, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #20 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bg, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.083.1 = phi ptr [ %i.ax, %bb.d ], [ %.fca.0.extract2, %bb.e ]
  %.sroa.10.1 = phi i32 [ 0, %bb.d ], [ %.fca.1.extract3, %bb.e ]
  store ptr %.sroa.083.1, ptr %20, align 8, !tbaa !238
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx89, align 8, !tbaa !151
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 582, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #20
  ret { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering19extendHvxVectorPredENS_7SDValueERKNS_5SDLocENS_3MVTEbRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(920) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  br i1 %5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %11, align 8, !tbaa !238
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %2, ptr %.sroa.342.0..sroa_idx, align 8, !tbaa !151
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 583, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.b, 1
  store ptr %.fca.0.extract14, ptr %12, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.217.0..sroa_idx, align 8
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #20 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.c, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.c, 1
  %i.d = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %6) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.d, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.fca.0.extract4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %.fca.0.extract10, ptr %10, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.249.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.h, align 8, !tbaa !146 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !612
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.i, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.j, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit: ; preds = %bb.d, %bb.e
  %i.l = phi i1 [ %spec.select.i.i.i, %bb.d ], [ %i.k, %bb.e ]
  %i.m = select i1 %i.l, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  store ptr %1, ptr %8, align 8, !tbaa !238
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !151
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, i32 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.n, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ %i.a, %bb.b ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering15compressHvxPredENS_7SDValueERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) local_unnamed_addr #3 align 2 {
_ZN4llvm3MVT11getVectorVTES0_j.exit:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SmallVector.369", align 8 ; 24 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %16 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %17 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %18 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %19 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %21 = alloca %"class.llvm::SmallVector.317", align 8 ; 10 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.312", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !nonnull !19, !align !56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 %i.j, i1 false        ; 4 uses
  %spec.select.i = select i1 %i.k, i32 64, i32 128 ; 4 uses
  %.sroa.0.0.i = select i1 %i.k, i16 50, i16 51   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.n = zext i32 %2 to i64                       ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !146 ; 2 uses
  %i.p = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.p, 53
  br i1 %spec.select.i.i, label %bb.a, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.a:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.q = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.r = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !150  ; 2 uses
  %i.u = zext i16 %i.t to i32
  %spec.select.i.tr = trunc nuw nsw i32 %spec.select.i to i16
  %.lhs.trunc = shl nuw nsw i16 %spec.select.i.tr, 3
  %i.v = udiv i16 %.lhs.trunc, %i.t
  %.zext = zext nneg i16 %i.v to i32              ; 2 uses
  %i.w = tail call range(i32 0, 12) i32 @llvm.ctpop.i32(i32 %.zext)
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.zext, i1 true) ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, 10
  br i1 %i.z, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.y to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %.split.i, %switch.lookup.i
  %.sroa.0.0.i200 = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ]
  %i.aa = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i200, i32 noundef %i.u) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !613
  %i.ad = tail call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ae, ptr %13, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 26 uses
  store i32 0, ptr %i.af, align 8, !tbaa !225
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 9 uses
  store i32 128, ptr %i.ag, align 4, !tbaa !226
  %i.ah = lshr exact i32 %spec.select.i, 3
  br label %.preheader

.preheader:                                       ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7
  %.0252 = phi i32 [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %i.eh, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7 ]
  %i.ai = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !177

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7
  %i.al = load ptr, ptr %13, align 8, !tbaa !21
  %i.am = load i32, ptr %i.af, align 8, !tbaa !225
  %i.an = zext i32 %i.am to i64
  %i.ao = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.al, i64 %i.an) #20
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !502
  %i.aq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ap) #20
  %i.ar = load ptr, ptr %0, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i16 %i.at(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.aq, i32 noundef 0) #20
  %.sroa.0240.0.insert.insert = select i1 %i.k, i16 262, i16 263 ; 2 uses
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getConstantPoolEPKNS_8ConstantENS_3EVTENS_10MaybeAlignEibj(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.ao, i16 %i.au, ptr null, i16 %.sroa.0240.0.insert.insert, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #20 ; 2 uses
  %.fca.0.extract115 = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract116 = extractvalue { ptr, i32 } %i.av, 1
  %i.aw = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerConstantPoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract115, i32 %.fca.1.extract116, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract111 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract112 = extractvalue { ptr, i32 } %i.aw, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 288
  store ptr %.fca.0.extract111, ptr %14, align 8, !tbaa !238
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract112, ptr %.sroa.4124.0..sroa_idx, align 8, !tbaa !151
  call void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nonnull %i.ax, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %15, i16 %.sroa.0240.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef null) #20 ; 2 uses
  %.fca.0.extract96 = extractvalue { ptr, i32 } %i.ay, 0
  %.fca.1.extract97 = extractvalue { ptr, i32 } %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %i.aa, ptr null, ptr %.fca.0.extract96, i32 %.fca.1.extract97) #20 ; 2 uses
  %.fca.0.extract81 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract82 = extractvalue { ptr, i32 } %i.az, 1
  %i.ba = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.aa, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.fca.0.extract76, ptr %11, align 8
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract77, ptr %.sroa.2228.0..sroa_idx, align 8
  store ptr %.fca.0.extract81, ptr %12, align 8
  %.sroa.2232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract82, ptr %.sroa.2232.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i.i201 = load i16, ptr %i.bc, align 8, !tbaa !146 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !612
  store i16 %.sroa.0.0.copyload.i.i.i201, ptr %9, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bd, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i201, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = add i16 %.sroa.0.0.copyload.i.i.i201, -19
  %spec.select.i.i.i = icmp ult i16 %i.be, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

bb.d:                                             ; preds = %bb.b
  %i.bf = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #24
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit: ; preds = %bb.c, %bb.d
  %i.bg = phi i1 [ %spec.select.i.i.i, %bb.c ], [ %i.bf, %bb.d ]
  %i.bh = select i1 %i.bg, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  store ptr %1, ptr %10, align 8, !tbaa !238
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !151
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.aa, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, i32 0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.bi, 1
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.bj, 1
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getSplatBuildVectorENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 43, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract63, i32 %.fca.1.extract64) ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract60 = extractvalue { ptr, i32 } %i.bk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr %.fca.0.extract72, ptr %17, align 8, !tbaa !238
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !151
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.fca.0.extract59, ptr %i.bl, align 8, !tbaa !238
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %.fca.1.extract60, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %17, ptr %8, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !581
  %i.bm = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 3215, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %8) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr %i.bm, ptr %18, align 8, !tbaa !238
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %.sroa.654.0..sroa_idx, align 8, !tbaa !151
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !238
  %.sroa.654.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 0, ptr %.sroa.654.0..sroa_idx55, align 8, !tbaa !151
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.bp, 1
  store ptr %.fca.0.extract35, ptr %i.bo, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 %.fca.1.extract36, ptr %.sroa.238.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %18, ptr %7, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i206, align 8, !tbaa !581
  %i.bq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 2861, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %i.bm, ptr %20, align 8, !tbaa !238
  %.sroa.654.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %.sroa.654.0..sroa_idx57, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !238
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 0, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !151
  store ptr %20, ptr %19, align 8, !tbaa !227
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %i.bs, align 8, !tbaa !230
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %19) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.bu, ptr %21, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !225
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 128, ptr %i.bw, align 4, !tbaa !226
  %24 = add nsw i32 %spec.select.i, -1
  %i.bx = select i1 %i.k, i32 3, i32 4
  br label %bb.x

bb.e:                                             ; preds = %.preheader
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %.preheader
  %i.by = zext i32 %i.aj to i64
  %i.bz = load ptr, ptr %13, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.ai, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.af, align 8, !tbaa !225
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f
  %i.cd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.ce = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.cf = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.1 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i.1, label %bb.h, label %bb.g, !prof !177

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %13, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.cd, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.af, align 8, !tbaa !225
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1: ; preds = %bb.h, %bb.g
  %i.cl = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.cm = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.cn = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.2 = icmp ult i32 %i.cm, %i.cn
  br i1 %.not.i.2, label %bb.j, label %bb.i, !prof !177

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  %i.co = zext i32 %i.cm to i64
  %i.cp = load ptr, ptr %13, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  store ptr %i.cl, ptr %i.cq, align 1
  %i.cr = load i32, ptr %i.af, align 8, !tbaa !225
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2: ; preds = %bb.j, %bb.i
  %i.ct = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 8, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.cu = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.3 = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i.3, label %bb.l, label %bb.k, !prof !177

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2
  %i.cw = zext i32 %i.cu to i64
  %i.cx = load ptr, ptr %13, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  store ptr %i.ct, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.af, align 8, !tbaa !225
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3: ; preds = %bb.l, %bb.k
  %i.db = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 16, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.dc = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.dd = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.4 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not.i.4, label %bb.n, label %bb.m, !prof !177

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.db)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3
  %i.de = zext i32 %i.dc to i64
  %i.df = load ptr, ptr %13, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  store ptr %i.db, ptr %i.dg, align 1
  %i.dh = load i32, ptr %i.af, align 8, !tbaa !225
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4: ; preds = %bb.n, %bb.m
  %i.dj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 32, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.dk = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.dl = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.5 = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i.5, label %bb.p, label %bb.o, !prof !177

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %13, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store ptr %i.dj, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.af, align 8, !tbaa !225
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5: ; preds = %bb.p, %bb.o
  %i.dr = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 64, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.ds = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.dt = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.6 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i.6, label %bb.r, label %bb.q, !prof !177

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %13, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store ptr %i.dr, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.af, align 8, !tbaa !225
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6: ; preds = %bb.r, %bb.q
  %i.dz = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 128, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.ea = load i32, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %i.eb = load i32, ptr %i.ag, align 4, !tbaa !226
  %.not.i.7 = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i.7, label %bb.t, label %bb.s, !prof !177

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %13, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  store ptr %i.dz, ptr %i.ee, align 1
  %i.ef = load i32, ptr %i.af, align 8, !tbaa !225
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.af, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7: ; preds = %bb.t, %bb.s
  %i.eh = add nuw i32 %.0252, 1                   ; 2 uses
  %.not = icmp eq i32 %i.eh, %i.ah
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !614

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.bt, 1
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.bt, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ei, 1
  store ptr %.fca.0.extract8, ptr %22, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.ej = load ptr, ptr %21, align 8, !tbaa !21
  store ptr %i.ej, ptr %23, align 8, !tbaa !497
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.el = load i32, ptr %i.bv, align 8, !tbaa !225
  %i.em = zext i32 %i.el to i64
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !499
  %i.en = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract21, i32 %.fca.1.extract22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %23) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.en, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.en, 1
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract4, i32 %.fca.1.extract5) #20
  %i.ep = load ptr, ptr %21, align 8, !tbaa !21   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bu
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ep) #20
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.er = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ae
  br i1 %i.es, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit
  call void @free(ptr noundef %i.er) #20
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret { ptr, i32 } %i.eo

bb.x:                                             ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0194253 = phi i32 [ 0, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ %i.fe, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 3 uses
  %i.et = shl i32 %.0194253, 3
  %i.eu = and i32 %i.et, %24
  %i.ev = lshr i32 %.0194253, %i.bx
  %i.ew = add nuw nsw i32 %i.eu, %i.ev            ; 2 uses
  %i.ex = load i32, ptr %i.bv, align 8, !tbaa !225 ; 2 uses
  %i.ey = load i32, ptr %i.bw, align 4, !tbaa !226
  %.not.i210 = icmp ult i32 %i.ex, %i.ey
  br i1 %.not.i210, label %bb.z, label %bb.y, !prof !177

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef %i.ew)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.z:                                             ; preds = %bb.x
  %i.ez = zext i32 %i.ex to i64
  %i.fa = load ptr, ptr %21, align 8, !tbaa !21
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  store i32 %i.ew, ptr %i.fb, align 1
  %i.fc = load i32, ptr %i.bv, align 8, !tbaa !225
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.bv, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.y, %bb.z
  %i.fe = add nuw i32 %.0194253, 1                ; 2 uses
  %.not197 = icmp eq i32 %i.fe, %spec.select.i
  br i1 %.not197, label %bb.u, label %bb.x, !llvm.loop !615
}

declare noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG19getSplatBuildVectorENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.459", align 8 ; 9 uses
  %9 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  store i16 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !212
  %i.d = add i32 %i.c, -53
  %spec.select.i.i = icmp ult i32 %i.d, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.e = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.f = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.h = zext i16 %1 to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !150
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.e
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.m, %bb.e ] ; 5 uses
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.r, align 4, !tbaa !226
  %i.s = icmp ugt i32 %i.n, 16
  br i1 %i.s, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 16) #20
  %i.t = load ptr, ptr %8, align 8, !tbaa !21     ; 3 uses
  %xtraiter23 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter25 = phi i64 [ %prol.iter25.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !151
  %i.u = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter25.next = add i64 %prol.iter25, 1     ; 2 uses
  %prol.iter25.cmp.not = icmp eq i64 %prol.iter25.next, %xtraiter23
  br i1 %prol.iter25.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !616

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !151
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.w, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %4, ptr %i.x, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !151
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr %4, ptr %i.y, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %4, ptr %i.z, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr %4, ptr %i.aa, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !151
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr %4, ptr %i.ab, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr %4, ptr %i.ac, align 8, !tbaa !238
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !151
  %i.ad = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !618

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr %4, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !238
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !151
  %i.af = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !619

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i32 %i.n, 8
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr %4, ptr %.09.i.i.i.i.i, align 8, !tbaa !238
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.ai, align 8, !tbaa !238
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !151
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr %4, ptr %i.aj, align 8, !tbaa !238
end_hunk_0
