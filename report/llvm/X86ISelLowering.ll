Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL18lower512BitShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.058.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !4160

"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i64 [ %i.q, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.t = and i64 %spec.select.i.i.i.lcssa, 4294967295
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.b, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread"

bb.b:                                             ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  %i.v = load i32, ptr %1, align 4, !tbaa !189
  %.not = icmp slt i32 %i.v, %i.a
  br i1 %.not, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0154.0.copyload = load ptr, ptr %6, align 8, !tbaa !449
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2155.0.copyload = load i32, ptr %.sroa.2155.0..sroa_idx, align 8, !tbaa !189
  %i.w = tail call fastcc { ptr, i32 } @_ZL30lowerShuffleAsElementInsertionRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0154.0.copyload, i32 %.sroa.2155.0.copyload, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract150 = extractvalue { ptr, i32 } %i.w, 0 ; 2 uses
  %.not311 = icmp eq ptr %.fca.0.extract150, null
  br i1 %.not311, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread", label %bb.s

"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread": ; preds = %bb.a, %bb.c, %bb.b, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  %.sroa.0143.0.copyload = load ptr, ptr %6, align 8, !tbaa !449 ; 7 uses
  %.sroa.2144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.2144.0.copyload = load i32, ptr %.sroa.2144.0..sroa_idx, align 8, !tbaa !189 ; 7 uses
  %i.x = tail call fastcc { ptr, i32 } @_ZL25lowerShuffleWithUndefHalfRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract139 = extractvalue { ptr, i32 } %i.x, 0 ; 2 uses
  %.not312 = icmp eq ptr %.fca.0.extract139, null
  br i1 %.not312, label %bb.d, label %bb.s

bb.d:                                             ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread"
  %i.y = tail call fastcc { ptr, i32 } @_ZL23lowerShuffleAsBroadcastRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract128 = extractvalue { ptr, i32 } %i.y, 0 ; 2 uses
  %.not313 = icmp eq ptr %.fca.0.extract128, null
  br i1 %.not313, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  switch i16 %3, label %bb.r [
    i16 64, label %bb.f
    i16 50, label %bb.f
    i16 114, label %.critedge2
    i16 126, label %.critedge2
    i16 157, label %bb.l
    i16 145, label %bb.m
    i16 97, label %bb.n
    i16 82, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 395
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !333, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call fastcc { ptr, i32 } @_ZL21lowerShuffleAsBitMaskRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract117 = extractvalue { ptr, i32 } %i.ac, 0 ; 2 uses
  %.not314 = icmp eq ptr %.fca.0.extract117, null
  br i1 %.not314, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call fastcc { ptr, i32 } @_ZL22lowerShuffleAsBitBlendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract106 = extractvalue { ptr, i32 } %i.ad, 0 ; 2 uses
  %.not315 = icmp eq ptr %.fca.0.extract106, null
  br i1 %.not315, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %10, align 8, !tbaa !695
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !722
  %i.ae = tail call fastcc { ptr, i32 } @_ZL20splitAndLowerShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %10, ptr noundef nonnull align 8 dereferenceable(920) %9, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.ae, 0
  br label %bb.s

.critedge2:                                       ; preds = %bb.e, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 395
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !333, !range !23, !noundef !24
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge2
  store ptr %1, ptr %11, align 8, !tbaa !695
  %.sroa.17.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %.sroa.17.0..sroa_idx289, align 8, !tbaa !722
  %i.ai = tail call fastcc { ptr, i32 } @_ZL20splitAndLowerShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr %4, i32 %5, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %11, ptr noundef nonnull align 8 dereferenceable(920) %9, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract84 = extractvalue { ptr, i32 } %i.ai, 0
  br label %bb.s

bb.k:                                             ; preds = %.critedge2
  %i.aj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 64, ptr null, ptr %4, i32 %5) #38 ; 2 uses
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.aj, 1
  %i.ak = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 64, ptr null, ptr %.sroa.0143.0.copyload, i32 %.sroa.2144.0.copyload) #38 ; 2 uses
  %.fca.0.extract66 = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract67 = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract66, ptr %6, align 8, !tbaa !449
  store i32 %.fca.1.extract67, ptr %.sroa.2144.0..sroa_idx, align 8, !tbaa !189
  store ptr %1, ptr %12, align 8, !tbaa !695
  %.sroa.17.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %2, ptr %.sroa.17.0..sroa_idx291, align 8, !tbaa !722
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 64, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract74, i32 %.fca.1.extract75, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %12) #38 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.al, 1
  %i.am = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %3, ptr null, ptr %.fca.0.extract56, i32 %.fca.1.extract57) #38 ; 2 uses
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.am, 0
  br label %bb.s

.thread:                                          ; preds = %bb.f
  %i.an = icmp eq i16 %3, 50
  br i1 %i.an, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.e
  %i.ao = tail call fastcc { ptr, i32 } @_ZL17lowerV8F64ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.ao, 0
  br label %bb.s

bb.m:                                             ; preds = %bb.e
  %i.ap = tail call fastcc { ptr, i32 } @_ZL18lowerV16F32ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.ap, 0
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.aq = tail call fastcc { ptr, i32 } @_ZL17lowerV8I64ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.aq, 0
  br label %bb.s

bb.o:                                             ; preds = %bb.e
  %i.ar = tail call fastcc { ptr, i32 } @_ZL18lowerV16I32ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.ar, 0
  br label %bb.s

bb.p:                                             ; preds = %.thread
  %i.as = tail call fastcc { ptr, i32 } @_ZL18lowerV32I16ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.as, 0
  br label %bb.s

bb.q:                                             ; preds = %.thread
  %i.at = tail call fastcc { ptr, i32 } @_ZL17lowerV64I8ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.at, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  unreachable

bb.s:                                             ; preds = %bb.h, %bb.g, %bb.d, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread", %bb.c, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.0305.0 = phi ptr [ %.fca.0.extract139, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread" ], [ %.fca.0.extract128, %bb.d ], [ %.fca.0.extract52, %bb.k ], [ %.fca.0.extract84, %bb.j ], [ %.fca.0.extract43, %bb.l ], [ %.fca.0.extract34, %bb.m ], [ %.fca.0.extract25, %bb.n ], [ %.fca.0.extract16, %bb.o ], [ %.fca.0.extract7, %bb.p ], [ %.fca.0.extract, %bb.q ], [ %.fca.0.extract117, %bb.g ], [ %.fca.0.extract106, %bb.h ], [ %.fca.0.extract95, %bb.i ], [ %.fca.0.extract150, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.x, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL18lower512BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.thread" ], [ %i.y, %bb.d ], [ %i.am, %bb.k ], [ %i.ai, %bb.j ], [ %i.ao, %bb.l ], [ %i.ap, %bb.m ], [ %i.aq, %bb.n ], [ %i.ar, %bb.o ], [ %i.as, %bb.p ], [ %i.at, %bb.q ], [ %i.ac, %bb.g ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ], [ %i.w, %bb.c ]
  %.sroa.20.0 = extractvalue { ptr, i32 } %.pn, 1
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0305.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.20.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL16lower1BitShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) unnamed_addr #1 {
bb.a:
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %42 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store ptr %4, ptr %21, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %5, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i32                      ; 19 uses
  %.idx.i = shl i64 %2, 2                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 4 uses
  %.not7.i.i.i = icmp eq i64 %2, 0                ; 2 uses
  %.0334.idx573590.sroa.gep798 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.0334.idx573590.sroa.gep799 = getelementptr inbounds nuw i8, ptr %27, i64 16
  br i1 %.not7.i.i.i, label %._crit_edge.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add i64 %.idx.i, -4                      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader795, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi725 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !189
  %wide.load726 = load <2 x i32>, ptr %i.j, align 4, !tbaa !189
  %i.k = icmp sge <2 x i32> %wide.load, %broadcast.splat
  %i.l = icmp sge <2 x i32> %wide.load726, %broadcast.splat
  %i.m = zext <2 x i1> %i.k to <2 x i64>
  %i.n = zext <2 x i1> %i.l to <2 x i64>
  %i.o = add <2 x i64> %vec.phi, %i.m             ; 2 uses
  %i.p = add <2 x i64> %vec.phi725, %i.n          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !4161

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i.preheader795

.lr.ph.i.i.i.preheader795:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  %.058.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader795, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader795 ]
  %.058.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.058.i.i.i.ph, %.lr.ph.i.i.i.preheader795 ] ; 2 uses
  %.05.val.i.i.i = load i32, ptr %.058.i.i.i, align 4, !tbaa !189
  %.not6.i.i.i = icmp sge i32 %.05.val.i.i.i, %i.b
  %i.s = zext i1 %.not6.i.i.i to i64
  %spec.select.i.i.i = add nuw nsw i64 %.09.i.i.i, %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.058.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !4162

"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i64 [ %i.r, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.u = and i64 %spec.select.i.i.i.lcssa, 4294967295
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  %.not553 = icmp eq i32 %i.b, 0
  br i1 %.not553, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  %i.w = and i64 %2, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.0327555 = phi i32 [ -1, %.lr.ph.preheader ], [ %.2, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !189  ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aa = icmp slt i32 %.0327555, 0
  %i.ab = sdiv i32 %i.y, %i.b                     ; 3 uses
  %i.ac = srem i32 %i.y, %i.b
  %.not338 = icmp eq i32 %.0327555, %i.ab
  %or.cond682 = select i1 %i.aa, i1 true, i1 %.not338
  br i1 %or.cond682, label %.thread, label %._crit_edge.split.loop.exit677

.thread:                                          ; preds = %bb.b
  %i.ad = zext nneg i32 %i.ac to i64
  %.not339 = icmp eq i64 %indvars.iv, %i.ad
  br i1 %.not339, label %bb.c, label %._crit_edge.split.loop.exit674

bb.c:                                             ; preds = %.thread, %.lr.ph
  %.2 = phi i32 [ %i.ab, %.thread ], [ %.0327555, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4163

._crit_edge.split.loop.exit674:                   ; preds = %.thread
  %indvars591.le680 = trunc i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.split.loop.exit677:                   ; preds = %bb.b
  %indvars591.le = trunc i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.split.loop.exit677, %._crit_edge.split.loop.exit674
  %.0.lcssa.ph = phi i32 [ %indvars591.le680, %._crit_edge.split.loop.exit674 ], [ %indvars591.le, %._crit_edge.split.loop.exit677 ], [ %i.b, %bb.c ]
  %.3.ph = phi i32 [ %i.ab, %._crit_edge.split.loop.exit674 ], [ %.0327555, %._crit_edge.split.loop.exit677 ], [ %.2, %bb.c ]
  %.0.lcssa.ph.fr = freeze i32 %.0.lcssa.ph       ; 2 uses
  %i.ae = icmp eq i32 %.3.ph, 0
  %i.af = select i1 %i.ae, ptr %21, ptr %6
  %.not.i = icmp eq i32 %.0.lcssa.ph.fr, 0
  %i.ag = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.lcssa.ph.fr, i1 true)
  %i.ah = lshr exact i32 -2147483648, %i.ag
  %spec.select = select i1 %.not.i, i32 0, i32 %i.ah
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  %.3651 = phi ptr [ %i.af, %._crit_edge ], [ %6, %bb.a ], [ %6, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit" ]
  %.0.lcssa.i.i.i639649 = phi i1 [ %i.v, %._crit_edge ], [ true, %bb.a ], [ %i.v, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit" ]
  %i.ai = phi i32 [ %spec.select, %._crit_edge ], [ 0, %bb.a ], [ 0, %"_ZN4llvm8count_ifIRNS_8ArrayRefIiEEZL16lower1BitShuffleRKNS_5SDLocES2_NS_3MVTENS_7SDValueES8_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit" ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !645 ; 3 uses
  %i.al = icmp ult i32 %i.ak, 65
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.thread
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZNK4llvm5APInt10countl_oneEv.exit, label %bb.e, !prof !666

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %7, align 8, !tbaa !314
  %i.ao = sub nuw nsw i32 64, %i.ak
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = xor i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false)
  %i.at = trunc nuw nsw i64 %i.as to i32
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.f:                                             ; preds = %._crit_edge.thread
  %i.au = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #39
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

_ZNK4llvm5APInt10countl_oneEv.exit:               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i350 = phi i32 [ %i.au, %bb.f ], [ %i.at, %bb.e ], [ 0, %bb.d ]
  %i.av = sub nsw i32 %i.b, %i.ai
  %.not340 = icmp slt i32 %.0.i350, %i.av
  br i1 %.not340, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm5APInt10countl_oneEv.exit
  switch i32 %i.ai, label %bb.h [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split511
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split512
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split513
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split514
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split515
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split516
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split517
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split518
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split519
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split520
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split521
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split522
    i32 1024, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split523
    i32 2048, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split524
    i32 4096, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split525
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split:   ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split511: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split512: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split513: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split514: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split515: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split516: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split517: ; preds = %bb.g
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit
end_hunk_0
begin_hunk_1_@_ZL16lower1BitShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %exitcond.not.i.1.i.1 = icmp eq i32 %i.ic, %.02253.i.1
  br i1 %exitcond.not.i.1.i.1, label %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, label %bb.aa, !llvm.loop !4165

bb.aa:                                            ; preds = %.lr.ph722, %.lr.ph7.split.i.1.i.1
  %i.id = phi i32 [ 1, %.lr.ph722 ], [ %i.ic, %.lr.ph7.split.i.1.i.1 ] ; 2 uses
  %i.ie = add nsw i32 %i.id, %i.gm                ; 2 uses
  %i.if = and i32 %i.ie, 63
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = lshr i32 %i.ie, 6
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !314
  %i.im = and i64 %i.il, %i.ih
  %.not.i.1.i.1 = icmp eq i64 %i.im, 0
  br i1 %.not.i.1.i.1, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", label %.lr.ph7.split.i.1.i.1, !llvm.loop !4165

.lr.ph7.split.us.i.1.i.1:                         ; preds = %scalar.ph743
  %i.in = add nuw i32 %i.io, 1                    ; 2 uses
  %exitcond32.not.i.1.i.1 = icmp eq i32 %i.in, %.02253.i.1
  br i1 %exitcond32.not.i.1.i.1, label %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, label %scalar.ph743, !llvm.loop !4170

scalar.ph743:                                     ; preds = %scalar.ph743.preheader, %.lr.ph7.split.us.i.1.i.1
  %i.io = phi i32 [ %i.in, %.lr.ph7.split.us.i.1.i.1 ], [ %.ph767, %scalar.ph743.preheader ] ; 2 uses
  %i.ip = add nsw i32 %i.io, %i.gm
  %i.iq = and i32 %i.ip, 63
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl nuw i64 1, %i.ir
  %i.it = and i64 %i.is, %i.cn
  %.not.us10.i.1.i.1 = icmp eq i64 %i.it, 0
  br i1 %.not.us10.i.1.i.1, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", label %.lr.ph7.split.us.i.1.i.1, !llvm.loop !4165

.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge: ; preds = %.lr.ph7.split.i.1.i.1, %.lr.ph7.split.us.i.1.i.1, %middle.block757
  br label %.lr.ph.i.preheader.i.1.i.1, !llvm.loop !4165

.lr.ph.i.preheader.i.1.i.1:                       ; preds = %.lr.ph7.split.i.1.i.1.preheader, %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, %.lr.ph7.split.us.i.1.i.1.preheader
  %i.iu = add i32 %.02253.i.1, %i.b
  br label %.lr.ph.i.i.1.i.1

.lr.ph.i.i.1.i.1:                                 ; preds = %bb.ab, %.lr.ph.i.preheader.i.1.i.1
  %indvars.iv594.1 = phi i64 [ %indvars.iv.next595.1, %bb.ab ], [ 0, %.lr.ph.i.preheader.i.1.i.1 ] ; 2 uses
  %.01315.i.i.1.i.1 = phi i32 [ %i.ja, %bb.ab ], [ %i.iu, %.lr.ph.i.preheader.i.1.i.1 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv594.1
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !189 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, -1
  %i.iy = icmp eq i32 %i.iw, %.01315.i.i.1.i.1
  %i.iz = or i1 %i.ix, %i.iy
  br i1 %i.iz, label %bb.ab, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1"

bb.ab:                                            ; preds = %.lr.ph.i.i.1.i.1
  %indvars.iv.next595.1 = add nuw nsw i64 %indvars.iv594.1, 1 ; 2 uses
  %i.ja = add nsw i32 %.01315.i.i.1.i.1, 1
  %lftr.wideiv605 = trunc i64 %indvars.iv.next595.1 to i32
  %exitcond606 = icmp eq i32 %indvars.iv597.1, %lftr.wideiv605
  br i1 %exitcond606, label %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit, label %.lr.ph.i.i.1.i.1, !llvm.loop !2933

"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1": ; preds = %bb.aa, %vector.body751, %scalar.ph743, %.lr.ph.i.i.1.i.1, %.lr.ph.split.i.1.i.1
  %i.jb = add nuw nsw i32 %.02253.i.1, 1          ; 2 uses
  %.not.i355.1 = icmp eq i32 %i.jb, %i.b
  %indvars.iv.next598.1 = add i32 %indvars.iv597.1, -1
  %indvar.next742 = add i32 %indvar741, 1
  br i1 %.not.i355.1, label %.split576, label %.lr.ph.split.us.i.i.1, !llvm.loop !4168

bb.ac:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit
  %.sroa.0433.0 = phi ptr [ %.fca.0.extract159, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.0.extract173, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  %.sroa.9.0 = phi i32 [ %.fca.1.extract160, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.1.extract174, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  %.0335 = phi i32 [ %i.gl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.02253.i587, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  store ptr %.sroa.0433.0, ptr %30, align 8, !tbaa !449
  %.sroa.9.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx436, align 8, !tbaa !189
  %i.jc = sext i32 %.0335 to i64
  %i.jd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.jd, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.jd, 1
  store ptr %.fca.0.extract151, ptr %31, align 8
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract152, ptr %.sroa.2154.0..sroa_idx, align 8
  %i.je = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef %.0473, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i358, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #38 ; 2 uses
  %.fca.0.extract147 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract148 = extractvalue { ptr, i32 } %i.je, 1
  store ptr %.fca.0.extract147, ptr %32, align 8, !tbaa !449
  %.sroa.9.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract148, ptr %.sroa.9.0..sroa_idx438, align 8, !tbaa !189
  %i.jf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract142 = extractvalue { ptr, i32 } %i.jf, 0
  %.fca.1.extract143 = extractvalue { ptr, i32 } %i.jf, 1
  store ptr %.fca.0.extract142, ptr %33, align 8
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract143, ptr %.sroa.2145.0..sroa_idx, align 8
  %i.jg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #38 ; 2 uses
  %.fca.0.extract138 = extractvalue { ptr, i32 } %i.jg, 0
  %.fca.1.extract139 = extractvalue { ptr, i32 } %i.jg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread510

.split576:                                        ; preds = %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br i1 %.0.lcssa.i.i.i639649, label %bb.ad, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.ad:                                            ; preds = %.split576
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !452
  %i.jj = icmp eq i32 %i.ji, 222
  br i1 %i.jj, label %bb.ae, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !461 ; 2 uses
  %.not.i.i360 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i360, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.ae
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !462
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.af, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.af:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !636 ; 5 uses
  %.sroa.0419.0.copyload = load ptr, ptr %i.jq, align 8, !tbaa !449 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !189 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %.sroa.0135.0.copyload = load ptr, ptr %i.jr, align 8, !tbaa !449
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  %.sroa.4136.0.copyload = load i32, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !189
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !457
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0419.0.copyload, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !454
  %i.jy = zext i32 %.sroa.6.0.copyload to i64
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.jy ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.jz, align 8, !tbaa !299
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i, ptr %34, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ka, align 8
  %i.kb = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  %i.kc = icmp ugt i64 %i.kb, 31
  br i1 %i.kc, label %.critedge345, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kd = call fastcc noundef zeroext i1 @_ZL22isBroadcastShuffleMaskN4llvm8ArrayRefIiEE(ptr %1, i64 %2)
  br i1 %i.kd, label %.critedge345, label %bb.ah

.critedge345:                                     ; preds = %bb.ag, %bb.af
  %.sroa.0126.0.copyload = load i16, ptr %34, align 8, !tbaa !299 ; 2 uses
  %.sroa.2128.0.copyload = load ptr, ptr %i.ka, align 8, !tbaa !455 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0126.0.copyload, ptr %.sroa.2128.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %.fca.0.extract116 = extractvalue { ptr, i32 } %i.ke, 0
  %.fca.1.extract117 = extractvalue { ptr, i32 } %i.ke, 1
  store ptr %.fca.0.extract116, ptr %35, align 8
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract117, ptr %.sroa.2119.0..sroa_idx, align 8
  store ptr %1, ptr %36, align 8, !tbaa !695
  %.sroa.13.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %2, ptr %.sroa.13.0..sroa_idx479, align 8, !tbaa !722
  %i.kf = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0126.0.copyload, ptr %.sroa.2128.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nonnull %.sroa.0419.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %36) #38 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.kf, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.kf, 1
  %.sroa.0109.0.copyload = load i16, ptr %34, align 8, !tbaa !299 ; 2 uses
  %.sroa.2111.0.copyload = load ptr, ptr %i.ka, align 8, !tbaa !455 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0109.0.copyload, ptr %.sroa.2111.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %.fca.0.extract99 = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract100 = extractvalue { ptr, i32 } %i.kg, 1
  store ptr %.fca.0.extract99, ptr %38, align 8
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract100, ptr %.sroa.2102.0..sroa_idx, align 8
  store ptr %1, ptr %39, align 8, !tbaa !695
  %.sroa.13.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %2, ptr %.sroa.13.0..sroa_idx480, align 8, !tbaa !722
  %i.kh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0109.0.copyload, ptr %.sroa.2111.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.sroa.0135.0.copyload, i32 %.sroa.4136.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %39) #38 ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.kh, 0
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.kh, 1
  store ptr %.fca.0.extract95, ptr %37, align 8
  %.sroa.298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.298.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %i.ki = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr %.fca.0.extract112, i32 %.fca.1.extract113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, i32 noundef %i.jv, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract91 = extractvalue { ptr, i32 } %i.ki, 0
  %.fca.1.extract92 = extractvalue { ptr, i32 } %i.ki, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread510

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.ae, %bb.ah, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.ad, %.split576
  %i.kj = ptrtoint ptr %1 to i64                  ; 4 uses
  br i1 %.not7.i.i.i, label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
  %i.kk = load i32, ptr %i.aj, align 8, !tbaa !645, !noalias !4171
  %.fr4.i.i.i.i.i = freeze i32 %i.kk
  %i.kl = icmp ult i32 %.fr4.i.i.i.i.i, 65
  %47 = add i64 %.idx.i, %i.kj                    ; 2 uses
  br i1 %i.kl, label %.lr.ph.split.us.i.preheader.i.i.i.i, label %.lr.ph.split.i.preheader.i.i.i.i

.lr.ph.split.i.preheader.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.km = load ptr, ptr %7, align 8, !noalias !4171
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.preheader.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i
  %i.kn = load i64, ptr %7, align 8, !tbaa !314, !noalias !4171
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i", %.lr.ph.split.us.i.preheader.i.i.i.i
  %i.ko = phi i64 [ %i.kx, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i" ], [ %i.kj, %.lr.ph.split.us.i.preheader.i.i.i.i ]
  %.sroa.2.0.copyload.us.i.i.i.i.i = phi i64 [ %i.kv, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i" ], [ 0, %.lr.ph.split.us.i.preheader.i.i.i.i ] ; 3 uses
  %i.kp = phi ptr [ %i.kw, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i" ], [ %1, %.lr.ph.split.us.i.preheader.i.i.i.i ] ; 2 uses
  %i.kq = and i64 %.sroa.2.0.copyload.us.i.i.i.i.i, 63
  %i.kr = shl nuw i64 1, %i.kq
  %i.ks = and i64 %i.kr, %i.kn
  %.not.i.i.us.i.i.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i.us.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.us.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.us.i.i.i.i.i": ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.kt = trunc i64 %.sroa.2.0.copyload.us.i.i.i.i.i to i32
  %i.ku = load i32, ptr %i.kp, align 4, !tbaa !189, !noalias !4171
  %.not2.us.i.i.i.i.i = icmp eq i32 %i.ku, %i.kt
  br i1 %.not2.us.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.us.i.i.i.i.i", %.lr.ph.split.us.i.i.i.i.i
  %i.kv = add nuw nsw i64 %.sroa.2.0.copyload.us.i.i.i.i.i, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 3 uses
  %.not.us.i.i.i.i.i = icmp eq ptr %i.kw, %i.c
  %i.kx = ptrtoint ptr %i.kw to i64
  br i1 %.not.us.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit", label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !4178

.lr.ph.split.i.i.i.i.i:                           ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i", %.lr.ph.split.i.preheader.i.i.i.i
  %i.ky = phi i64 [ %i.ll, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i" ], [ %i.kj, %.lr.ph.split.i.preheader.i.i.i.i ]
  %.sroa.2.0.copyload.i.i.i.i.i = phi i64 [ %i.lj, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i" ], [ 0, %.lr.ph.split.i.preheader.i.i.i.i ] ; 4 uses
  %i.kz = phi ptr [ %i.lk, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i" ], [ %1, %.lr.ph.split.i.preheader.i.i.i.i ] ; 2 uses
  %i.la = and i64 %.sroa.2.0.copyload.i.i.i.i.i, 63
  %i.lb = shl nuw i64 1, %i.la
  %i.lc = lshr i64 %.sroa.2.0.copyload.i.i.i.i.i, 6
  %i.ld = and i64 %i.lc, 67108863
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !314, !noalias !4171
  %i.lg = and i64 %i.lf, %i.lb
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.split.i.i.i.i.i
  %i.lh = trunc i64 %.sroa.2.0.copyload.i.i.i.i.i to i32
  %i.li = load i32, ptr %i.kz, align 4, !tbaa !189, !noalias !4171
  %.not2.i.i.i.i.i = icmp eq i32 %i.li, %i.lh
  br i1 %.not2.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.i.i.i.i.i", %.lr.ph.split.i.i.i.i.i
  %i.lj = add nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i, 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lk, %i.c
  %i.ll = ptrtoint ptr %i.lk to i64
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit", label %.lr.ph.split.i.i.i.i.i, !llvm.loop !4178

"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.us.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i", %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
  %i.lm = phi i64 [ %i.kj, %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread ], [ %i.ko, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.us.i.i.i.i.i" ], [ %47, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.us.i.i.i.i.i" ], [ %47, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.thread.i.i.i.i.i" ], [ %i.ky, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL16lower1BitShuffleRKN4llvm5SDLocENS2_8ArrayRefIiEENS2_3MVTENS2_7SDValueES9_RKNS2_5APIntERKNS2_12X86SubtargetERNS2_12SelectionDAGEE3$_1EclINS2_6detail14zip_enumeratorIJNSL_14index_iteratorEPKiEEEEEbT_.exit.i.i.i.i.i" ]
  %i.ln = inttoptr i64 %i.lm to ptr
  %i.lo = icmp eq ptr %i.c, %i.ln
  br i1 %i.lo, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit"
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.b, i32 8) ; 4 uses
  %i.lp = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %.sroa.speculated)
  %i.lq = icmp eq i32 %i.lp, 1                    ; 2 uses
  br i1 %i.lq, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %bb.ai
  %i.lr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %i.ls = icmp samesign ult i32 %i.lr, 10
  br i1 %i.ls, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.lr to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.ai, %.split.i, %switch.lookup.i
  %.sroa.0.0.i363 = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  %i.lt = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 5 uses
  %i.lu = load i32, ptr %i.aj, align 8, !tbaa !645 ; 3 uses
  store i32 %i.lu, ptr %i.lt, align 8, !tbaa !645
  %i.lv = icmp ult i32 %i.lu, 65
  br i1 %i.lv, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %43, ptr noundef nonnull align 8 dereferenceable(12) %7) #38
  %.pr = load i32, ptr %i.lt, align 8, !tbaa !645, !noalias !4179 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4179)
  %i.lw = icmp ult i32 %.pr, 65
  br i1 %i.lw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.aj

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %_ZN4llvm3MVT12getIntegerVTEj.exit
  %.sink = phi ptr [ %7, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %43, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.lx = phi i32 [ %i.lu, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ] ; 3 uses
  %.pre = load i64, ptr %.sink, align 8, !tbaa !314
  %i.ly = xor i64 %.pre, -1
  %i.lz = sub nsw i32 0, %i.lx
  %i.ma = and i32 %i.lz, 63
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = lshr i64 -1, %i.mb
  %i.md = icmp eq i32 %i.lx, 0
  %spec.select.i.i364 = select i1 %i.md, i64 0, i64 %i.mc, !prof !666
  %i.me = and i64 %spec.select.i.i364, %i.ly      ; 2 uses
  store i64 %i.me, ptr %43, align 8, !tbaa !314, !noalias !4179
  br label %_ZN4llvmcoENS_5APIntE.exit

bb.aj:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %43) #38, !noalias !4179
  %.pre.i = load i32, ptr %i.lt, align 8, !tbaa !645, !noalias !4179
  %.pre1.i = load i64, ptr %43, align 8, !noalias !4179
  br label %_ZN4llvmcoENS_5APIntE.exit

_ZN4llvmcoENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.aj
  %i.mf = phi i64 [ %i.me, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre1.i, %bb.aj ]
  %i.mg = phi i32 [ %i.lx, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre.i, %bb.aj ]
  %i.mh = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  store i32 %i.mg, ptr %i.mh, align 8, !tbaa !645, !alias.scope !4179
  store i64 %i.mf, ptr %42, align 8, !alias.scope !4179
  store i32 0, ptr %i.lt, align 8, !tbaa !645, !noalias !4179
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %41, ptr noundef nonnull align 8 dereferenceable(12) %42, i32 noundef %.sroa.speculated) #38
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !645
  %i.mj = icmp ugt i32 %i.mi, 64
  br i1 %i.mj, label %bb.ak, label %_ZN4llvm5APIntD2Ev.exit

bb.ak:                                            ; preds = %_ZN4llvmcoENS_5APIntE.exit
  %i.mk = load ptr, ptr %42, align 8, !tbaa !314  ; 2 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %_ZN4llvm5APIntD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.mk) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvmcoENS_5APIntE.exit, %bb.ak, %bb.al
  %i.mm = load i32, ptr %i.lt, align 8, !tbaa !645
  %i.mn = icmp ugt i32 %i.mm, 64
  br i1 %i.mn, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.mo = load ptr, ptr %43, align 8, !tbaa !314  ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.mo) #41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  %i.mq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %41, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.i363, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract77 = extractvalue { ptr, i32 } %i.mq, 0
  %.fca.1.extract78 = extractvalue { ptr, i32 } %i.mq, 1
  br i1 %i.lq, label %.split, label %_ZN4llvm3MVT11getVectorVTES0_j.exit368

.split:                                           ; preds = %bb.ao
  %i.mr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.speculated, i1 true)
  %switch.tableidx = add nsw i32 %i.mr, -3        ; 2 uses
  %i.ms = icmp ult i32 %switch.tableidx, 10
  br i1 %i.ms, label %switch.lookup, label %_ZN4llvm3MVT11getVectorVTES0_j.exit368

switch.lookup:                                    ; preds = %.split
  %switch.idx.cast = trunc nuw nsw i32 %switch.tableidx to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 26
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit368

_ZN4llvm3MVT11getVectorVTES0_j.exit368:           ; preds = %bb.ao, %.split, %switch.lookup
  %.sroa.0.0.i367 = phi i16 [ 0, %bb.ao ], [ 0, %.split ], [ %switch.offset, %switch.lookup ]
  %i.mt = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0.0.i367, ptr null, ptr %.fca.0.extract77, i32 %.fca.1.extract78) #38 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.mt, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.mt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.fca.0.extract65, ptr %13, align 8, !tbaa !449
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !189
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i369 = extractvalue { ptr, i32 } %i.mu, 0
  %.fca.1.extract2.i370 = extractvalue { ptr, i32 } %i.mu, 1
  store ptr %.fca.0.extract1.i369, ptr %14, align 8
  %.sroa.24.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract2.i370, ptr %.sroa.24.0..sroa_idx.i371, align 8
  %i.mv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.mv, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.mv, 1
  store ptr %.fca.0.extract54, ptr %44, align 8, !tbaa !449
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !189
  %i.mw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #38 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.mw, 0
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.mw, 1
  %i.mx = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !645
  %i.mz = icmp ugt i32 %i.my, 64
  br i1 %i.mz, label %bb.ap, label %_ZN4llvm5APIntD2Ev.exit372

bb.ap:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit368
  %i.na = load ptr, ptr %41, align 8, !tbaa !314  ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %_ZN4llvm5APIntD2Ev.exit372, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.na) #41
  br label %_ZN4llvm5APIntD2Ev.exit372

_ZN4llvm5APIntD2Ev.exit372:                       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit368, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread510

bb.ar:                                            ; preds = %"_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZL16lower1BitShuffleRKNS_5SDLocES6_NS_3MVTENS_7SDValueESD_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit"
  switch i16 %3, label %bb.as [
    i16 20, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375
    i16 22, label %bb.at
    i16 26, label %bb.au
    i16 27, label %bb.av
    i16 28, label %bb.ax
    i16 29, label %bb.az
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375

bb.au:                                            ; preds = %bb.ar
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 503
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !321, !range !23, !noundef !24
  %i.ne = trunc nuw i8 %i.nd to i1
  %i.nf = select i1 %i.ne, i16 77, i16 97
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375

bb.av:                                            ; preds = %bb.ar
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !297
  %i.ni = icmp sgt i32 %i.nh, 8
  br i1 %i.ni, label %bb.aw, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375

bb.aw:                                            ; preds = %bb.av
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 503
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !321, !range !23, !noundef !24
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit, label %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit.thread

_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit: ; preds = %bb.aw
  %i.nm = getelementptr inbounds nuw i8, ptr %8, i64 728
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !677
  %.fr536 = freeze i32 %i.nn
  %i.no = icmp ugt i32 %.fr536, 511
  br i1 %i.no, label %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit.thread, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375

_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit.thread: ; preds = %bb.aw, %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375
end_hunk_1
