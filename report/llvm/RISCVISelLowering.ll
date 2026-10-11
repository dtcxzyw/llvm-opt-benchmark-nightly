Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 425
begin_hunk_0_@_ZL26performBUILD_VECTORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.cg, align 8, !tbaa !640 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i74, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.q ], [ %.sroa.018.022.i.i, %bb.p ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !471
  %i.cj = icmp ne i32 %i.ci, %.sroa.14.0.copyload ; 2 uses
  %i.ck = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %cond.i.i, label %bb.q, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.q
  %i.cl = icmp eq i32 %.214.i.i, 0
  br i1 %i.cl, label %bb.r, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.r:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload14, i64 40 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !381 ; 2 uses
  %.sroa.022.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !383 ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !222 ; 2 uses
  %i.co = load i32, ptr %i.be, align 8, !tbaa !339 ; 2 uses
  %i.cp = load i32, ptr %i.bf, align 4, !tbaa !340
  %.not.i75 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i75, label %bb.t, label %bb.s, !prof !341

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.022.0.copyload, i32 %.sroa.223.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77

bb.t:                                             ; preds = %bb.r
  %i.cq = zext i32 %i.co to i64
  %i.cr = load ptr, ptr %7, align 8, !tbaa !54
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  store ptr %.sroa.022.0.copyload, ptr %i.cs, align 1
  %.sroa.32.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.sroa.223.0.copyload, ptr %.sroa.32.0..sroa_idx.i76, align 1
  %i.ct = load i32, ptr %i.be, align 8, !tbaa !339
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.be, align 8, !tbaa !339
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77: ; preds = %bb.s, %bb.t
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !381 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !392 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !362
  switch i32 %i.cz, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 37, label %bb.u
    i32 12, label %bb.u
    i32 38, label %bb.u
    i32 13, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !392
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !471
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !361
  %i.df = zext i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.df ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.dg, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !334
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !471 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !361
  %i.dl = zext i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %.sroa.0.0.copyload.i.i79 = load i16, ptr %i.dm, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.21.0.copyload.i.i81 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i80, align 8, !tbaa !334
  %.not.i84 = icmp ne i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i79
  %i.dn = icmp ne ptr %.sroa.21.0.copyload.i.i, %.sroa.21.0.copyload.i.i81
  %i.do = select i1 %.not.i84, i1 true, i1 %i.dn
  br i1 %i.do, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = load i32, ptr %i.bh, align 8, !tbaa !339 ; 2 uses
  %i.dq = load i32, ptr %i.bi, align 4, !tbaa !340
  %.not.i85 = icmp ult i32 %i.dp, %i.dq
  br i1 %.not.i85, label %bb.x, label %bb.w, !prof !341

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.cx, i32 %i.di)
  br label %_ZNK4llvm12SelectionDAG28isSafeToSpeculativelyExecuteEj.exit

bb.x:                                             ; preds = %bb.v
  %i.dr = zext i32 %i.dp to i64
  %i.ds = load ptr, ptr %8, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  store ptr %i.cx, ptr %i.dt, align 1
  %.sroa.32.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.di, ptr %.sroa.32.0..sroa_idx.i86, align 1
  %i.du = load i32, ptr %i.bh, align 8, !tbaa !339
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.bh, align 8, !tbaa !339
  br label %_ZNK4llvm12SelectionDAG28isSafeToSpeculativelyExecuteEj.exit

_ZNK4llvm12SelectionDAG28isSafeToSpeculativelyExecuteEj.exit: ; preds = %bb.m, %bb.n, %bb.w, %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %.06237, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.dw, %i.bm
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %_ZNK4llvm12SelectionDAG28isSafeToSpeculativelyExecuteEj.exit
  %.sroa.015.0.copyload.pre = load i16, ptr %6, align 8, !tbaa !216
  %.sroa.217.0.copyload.pre = load ptr, ptr %i.h, align 8, !tbaa !334
  %.pre = load ptr, ptr %7, align 8, !tbaa !54
  %.pre41 = load i32, ptr %i.be, align 8, !tbaa !339
  %i.dx = zext i32 %.pre41 to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.h
  %i.dy = phi i64 [ %i.dx, %.critedge.loopexit ], [ 0, %bb.h ]
  %i.dz = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.bd, %bb.h ]
  %.sroa.217.0.copyload = phi ptr [ %.sroa.217.0.copyload.pre, %.critedge.loopexit ], [ %.sroa.243.0.copyload, %bb.h ] ; 2 uses
  %.sroa.015.0.copyload = phi i16 [ %.sroa.015.0.copyload.pre, %.critedge.loopexit ], [ %.sroa.041.0.copyload, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.dz, ptr %4, align 8, !tbaa !494
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dy, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !347
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.015.0.copyload, ptr %.sroa.217.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.308") align 8 %4) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract8, ptr %9, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %.sroa.05.0.copyload = load i16, ptr %6, align 8, !tbaa !216
  %.sroa.27.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !334
  %i.eb = load ptr, ptr %8, align 8, !tbaa !54
  %i.ec = load i32, ptr %i.bh, align 8, !tbaa !339
  %i.ed = zext i32 %i.ec to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.eb, ptr %3, align 8, !tbaa !494
  %.sroa.26.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ed, ptr %.sroa.26.0..sroa_idx.i88, align 8, !tbaa !347
  %i.ee = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.308") align 8 %3) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ee, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ee, 1
  store ptr %.fca.0.extract1, ptr %10, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.015.0.copyload, ptr %.sroa.217.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ef, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ef, 1
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77, %bb.p, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.u, %bb.o, %.lr.ph.i.i, %.critedge
  %.sroa.18.2 = phi i32 [ %.fca.1.extract, %.critedge ], [ 0, %.lr.ph.i.i ], [ 0, %bb.o ], [ 0, %bb.u ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ 0, %bb.p ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77 ], [ 0, %bb.i ]
  %.sroa.020.2 = phi ptr [ %.fca.0.extract, %.critedge ], [ null, %.lr.ph.i.i ], [ null, %bb.o ], [ null, %bb.u ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ null, %bb.p ], [ null, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit77 ], [ null, %bb.i ]
  %i.eg = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bg
  br i1 %i.eh, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  call void @free(ptr noundef %i.eg) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ei = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.bd
  br i1 %i.ej, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit
  call void @free(ptr noundef %i.ei) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.f, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89
  %.sroa.18.3 = phi i32 [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ 0, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ %.sroa.18.2, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89 ], [ 0, %bb.d ], [ 0, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.f ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  %.sroa.020.3 = phi ptr [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ null, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ %.sroa.020.2, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit89 ], [ null, %bb.d ], [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %bb.f ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.020.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.18.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519768) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvm::BaseIndexOffset", align 8 ; 7 uses
  %5 = alloca %"class.llvm::BaseIndexOffset", align 8 ; 7 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.1513", align 8 ; 14 uses
  %9 = alloca %"class.std::optional.1519", align 8 ; 9 uses
  %10 = alloca %"class.llvm::MVT", align 2        ; 5 uses
  %11 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !385
  store i64 %i.c, ptr %6, align 8, !tbaa !385
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !386
  store i32 %i.f, ptr %i.d, align 8, !tbaa !388
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361
  %.sroa.0.0.copyload.i = load i16, ptr %i.h, align 8, !tbaa !216 ; 4 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.j = zext i16 %.sroa.0.0.copyload.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !206
  %i.m = icmp eq ptr %i.l, null
  %i.n = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i = icmp ult i16 %i.n, 53
  %or.cond = or i1 %spec.select.i.i, %i.m
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !381
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !392  ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !362
  %i.t = icmp ne i32 %i.s, 316
  %.not320 = icmp eq ptr %i.q, null
  %.not = or i1 %.not320, %i.t
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i16, ptr %i.x, align 4
  %i.z = and i16 %i.y, 3840
  %.not.i164 = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, 8
  %.not1.i = icmp eq i8 %i.ac, 0
  %i.ad = select i1 %.not.i164, i1 %.not1.i, i1 false
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i16, ptr %i.aa, align 8
  %i.af = and i16 %i.ae, 3968
  %or.cond315 = icmp eq i16 %i.af, 0
  br i1 %or.cond315, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.ag, align 8, !tbaa !640 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.ak, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.ah, align 8, !tbaa !640 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.f ], [ %.sroa.018.022.i.i, %bb.e ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !471
  %i.ak = icmp ne i32 %i.aj, 0                    ; 2 uses
  %i.al = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %cond.i.i, label %bb.f, label %.critedge

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.f
  %i.am = icmp eq i32 %.214.i.i, 0
  br i1 %i.am, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361 ; 2 uses
  %.sroa.0.0.copyload.i166 = load i16, ptr %i.ao, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.0.copyload.i168 = load ptr, ptr %.sroa.21.0..sroa_idx.i167, align 8, !tbaa !334
  store i16 %.sroa.0.0.copyload.i166, ptr %7, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i168, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !339
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 6, ptr %i.as, align 4, !tbaa !340
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.q)
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.au) #34 ; 2 uses
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !381 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !522 ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %.idx = mul nuw nsw i64 %i.az, 40
  %i.ba = getelementptr i8, ptr %i.aw, i64 %.idx
  %.not151334 = icmp eq i16 %i.ay, 1
  br i1 %.not151334, label %.critedge159, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.0144333 = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit
  %.0144337 = phi ptr [ %.0144333, %.lr.ph ], [ %.0144, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit ] ; 3 uses
  %.pn322336 = phi ptr [ %i.aw, %.lr.ph ], [ %.0144337, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit ]
  %.sroa.0282.0335 = phi i8 [ %i.av, %.lr.ph ], [ %.sroa.speculated, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit ]
  %.sroa.0273.0.copyload = load ptr, ptr %.0144337, align 8, !tbaa !383 ; 9 uses
  %.sroa.6275.0..0144.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn322336, i64 48
  %.sroa.6275.0.copyload = load i32, ptr %.sroa.6275.0..0144.sroa_idx, align 8, !tbaa !222
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !362
  %i.be = icmp ne i32 %i.bd, 316
  %.not152323 = icmp eq ptr %.sroa.0273.0.copyload, null
  %.not152 = or i1 %.not152323, %i.be
  br i1 %.not152, label %.critedge157, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i174 = load i64, ptr %i.bf, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i.i.i.i.i174, -5
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = and i16 %i.bj, 3840
  %.not.i175 = icmp eq i16 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 32 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, 8
  %.not1.i176 = icmp eq i8 %i.bn, 0
  %i.bo = select i1 %.not.i175, i1 %.not1.i176, i1 false
  br i1 %i.bo, label %bb.j, label %.critedge157

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 56
  %.sroa.018.022.i.i177 = load ptr, ptr %i.bp, align 8, !tbaa !640 ; 2 uses
  %.not23.i.i178 = icmp eq ptr %.sroa.018.022.i.i177, null
  br i1 %.not23.i.i178, label %.critedge157, label %.lr.ph.i.i179

bb.k:                                             ; preds = %.lr.ph.i.i179
  %.214.i.i182 = select i1 %i.bt, i32 %.01224.i.i181, i32 0 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i180, i64 32
  %.sroa.018.0.i.i186 = load ptr, ptr %i.bq, align 8, !tbaa !640 ; 2 uses
  %.not.i.i187 = icmp eq ptr %.sroa.018.0.i.i186, null
  br i1 %.not.i.i187, label %_ZNK4llvm7SDValue9hasOneUseEv.exit188, label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %bb.j, %bb.k
  %.sroa.018.025.i.i180 = phi ptr [ %.sroa.018.0.i.i186, %bb.k ], [ %.sroa.018.022.i.i177, %bb.j ] ; 2 uses
  %.01224.i.i181 = phi i32 [ %.214.i.i182, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i180, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !471
  %i.bt = icmp ne i32 %i.bs, %.sroa.6275.0.copyload ; 2 uses
  %i.bu = icmp ne i32 %.01224.i.i181, 0
  %cond.i.i183 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %cond.i.i183, label %bb.k, label %.critedge157

_ZNK4llvm7SDValue9hasOneUseEv.exit188:            ; preds = %bb.k
  %i.bv = icmp eq i32 %.214.i.i182, 0
  br i1 %i.bv, label %bb.l, label %.critedge157

bb.l:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit188
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !381 ; 2 uses
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !381 ; 2 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !392
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !392
  %i.cb = icmp ne ptr %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = icmp ne i32 %i.cd, %i.cf
  %.not3.i = select i1 %i.cb, i1 true, i1 %i.cg
  br i1 %.not3.i, label %.critedge157, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load i16, ptr %i.bl, align 8
  %i.ci = and i16 %i.ch, 3968
  %or.cond317 = icmp eq i16 %i.ci, 0
  br i1 %or.cond317, label %bb.n, label %.critedge157

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0273.0.copyload, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !361 ; 2 uses
  %.sroa.0.0.copyload.i192 = load i16, ptr %i.ck, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.21.0.copyload.i194 = load ptr, ptr %.sroa.21.0..sroa_idx.i193, align 8, !tbaa !334
  %.sroa.087.0.copyload = load i16, ptr %7, align 8, !tbaa !216
  %.sroa.289.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !334
  %.not.i197 = icmp ne i16 %.sroa.0.0.copyload.i192, %.sroa.087.0.copyload
  %i.cl = icmp ne ptr %.sroa.21.0.copyload.i194, %.sroa.289.0.copyload
  %i.cm = select i1 %.not.i197, i1 true, i1 %i.cl
  br i1 %i.cm, label %.critedge157, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load i32, ptr %i.ar, align 8, !tbaa !339 ; 2 uses
  %i.co = load i32, ptr %i.as, align 4, !tbaa !340
  %.not.i198 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i198, label %bb.q, label %bb.p, !prof !341

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0273.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.q:                                             ; preds = %bb.o
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %8, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  store ptr %.sroa.0273.0.copyload, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.ar, align 8, !tbaa !339
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ar, align 8, !tbaa !339
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit: ; preds = %bb.p, %bb.q
  %.0.copyload.i.i.i.i.i.i.i199 = load i64, ptr %i.bf, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i.i.i.i199, -5
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #34
  %.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.cw, i8 %.sroa.0282.0335) ; 2 uses
  %.0144 = getelementptr inbounds nuw i8, ptr %.0144337, i64 40 ; 2 uses
  %.not151 = icmp eq ptr %.0144, %i.ba
  br i1 %.not151, label %.critedge159, label %bb.h

.critedge159:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit, %bb.g
  %.sroa.0282.0.lcssa = phi i8 [ %i.av, %bb.g ], [ %.sroa.speculated, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.cx = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1876
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1876
  call fastcc void @"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_"(ptr dead_on_unwind noalias writable align 8 %9, ptr %1, ptr noundef %i.cy, ptr noundef %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !931, !range !50, !noundef !51
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.lr.ph342, label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

.lr.ph342:                                        ; preds = %.critedge159
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load i8, ptr %i.dg, align 8             ; 2 uses
  %i.di = icmp eq i8 %i.dh, 0                     ; 2 uses
  %i.dj = load ptr, ptr %9, align 8               ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %.cast = ptrtoint ptr %i.dj to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dn = load i8, ptr %i.dm, align 8             ; 3 uses
  %16 = load i32, ptr %i.ar, align 8, !tbaa !339
  %.not153375 = icmp eq i32 %16, 2
  br i1 %.not153375, label %.critedge161, label %.lr.ph379

.lr.ph379:                                        ; preds = %.lr.ph342
  %17 = load ptr, ptr %8, align 8, !tbaa !54      ; 2 uses
  %.0145374 = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph379, %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a
  %.0145341 = phi ptr [ %.0145374, %.lr.ph379 ], [ %.0145, %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a ] ; 3 uses
  %.pn340 = phi ptr [ %17, %.lr.ph379 ], [ %.0145341, %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a ]
  %i.do = load ptr, ptr %.0145341, align 8, !tbaa !1876 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn340, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1876 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1877
  call void @_ZN4llvm15BaseIndexOffset5matchEPKNS_6SDNodeERKNS_12SelectionDAGE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BaseIndexOffset") align 8 %4, ptr noundef %i.do, ptr noundef nonnull align 8 dereferenceable(920) %1) #34, !noalias !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !1877
  call void @_ZN4llvm15BaseIndexOffset5matchEPKNS_6SDNodeERKNS_12SelectionDAGE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BaseIndexOffset") align 8 %5, ptr noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(920) %1) #34, !noalias !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !1877
  %i.dr = call noundef zeroext i1 @_ZNK4llvm15BaseIndexOffset14equalBaseIndexERKS0_RKNS_12SelectionDAGERl(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34, !noalias !1877 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !1877
  br i1 %i.dr, label %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !381, !noalias !1877 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %.sroa.012.0.copyload.i = load ptr, ptr %i.du, align 8, !tbaa !383, !noalias !1877 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !381, !noalias !1877 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %.sroa.08.0.copyload.i = load ptr, ptr %i.dx, align 8, !tbaa !383, !noalias !1877 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !222, !noalias !1877
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload.i, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !362, !noalias !1877
  %i.ea = icmp eq i32 %i.dz, 59
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %.sroa.716.0.copyload.i = load i32, ptr %.sroa.716.0..sroa_idx.i, align 8, !tbaa !222, !noalias !1877
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload.i, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !381, !noalias !1877 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !392, !noalias !1877
  %i.ee = icmp eq ptr %i.ed, %.sroa.012.0.copyload.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !noalias !1877
  %i.eh = icmp eq i32 %i.eg, %.sroa.716.0.copyload.i
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %i.ei, label %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit", label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !362, !noalias !1877
  %i.el = icmp eq i32 %i.ek, 59
  br i1 %i.el, label %bb.v, label %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread"

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !381, !noalias !1877 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !392, !noalias !1877
  %i.ep = icmp eq ptr %i.eo, %.sroa.08.0.copyload.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !noalias !1877
  %i.es = icmp eq i32 %i.er, %.sroa.7.0.copyload.i
  %i.et = select i1 %i.ep, i1 %i.es, i1 false
  br i1 %i.et, label %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit", label %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread"

"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !1877
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1877
  br label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread, !llvm.loop !1874

"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit": ; preds = %bb.v, %bb.t
  %.sink378 = phi ptr [ %i.ec, %bb.t ], [ %i.en, %bb.v ] ; 2 uses
  %.sroa.12265.0 = phi i8 [ 0, %bb.t ], [ 1, %bb.v ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink378, i64 40
  %.sroa.0256.0.copyload258 = load i64, ptr %i.eu, align 8 ; 2 uses
  %.sroa.7259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %.sink378, i64 48
  %.sroa.7259.0.copyload261 = load i32, ptr %.sroa.7259.0..sroa_idx260, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !1877
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1877
  br i1 %i.di, label %bb.w, label %.backedge

"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363": ; preds = %bb.r
  %i.ev = load i64, ptr %i.de, align 8, !tbaa !347, !noalias !1877
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !347, !noalias !1877
  %i.ex = sub nsw i64 %i.ev, %i.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !1877
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1877
  br i1 %i.di, label %bb.w, label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

bb.w:                                             ; preds = %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363", %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit"
  %.sroa.12265.0370 = phi i8 [ 0, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363" ], [ %.sroa.12265.0, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit" ]
  %.sroa.0256.0369 = phi i64 [ %i.ex, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363" ], [ %.sroa.0256.0.copyload258, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit" ]
  %i.ey = icmp eq i64 %.sroa.0256.0369, %.cast
  %or.cond319 = select i1 %i.dr, i1 %i.ey, i1 false
  %.not326.a = icmp eq i8 %.sroa.12265.0370, %i.dn
  %or.cond346 = select i1 %or.cond319, i1 %.not326.a, i1 false
  br i1 %or.cond346, label %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a, label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a: ; preds = %bb.w, %.backedge
  %.pre = load ptr, ptr %8, align 8, !tbaa !54
  %.0145 = getelementptr inbounds nuw i8, ptr %.0145341, i64 8 ; 2 uses
  %18 = load i32, ptr %i.ar, align 8, !tbaa !339
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %.not153 = icmp eq ptr %.0145, %21
  br i1 %.not153, label %.critedge161, label %bb.r, !llvm.loop !1874

.backedge:                                        ; preds = %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit"
  %22 = inttoptr i64 %.sroa.0256.0.copyload258 to ptr
  %23 = icmp eq ptr %i.dj, %22
  %24 = icmp eq i32 %.sroa.7259.0.copyload261, %i.dl
  %25 = select i1 %23, i1 %24, i1 false
  %.not325.old = icmp eq i8 %.sroa.12265.0, %i.dn
  %or.cond341 = select i1 %25, i1 %.not325.old, i1 false
  br i1 %or.cond341, label %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a, label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

.critedge161:                                     ; preds = %_ZSteqIJlN4llvm7SDValueEEEbRKSt7variantIJDpT_EES7_.exit.i.i.i.a, %.lr.ph342
  %i.ez = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.fa = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = mul i32 %i.fa, %i.fb                    ; 2 uses
  %i.fd = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fc)
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %.critedge161
  %i.ff = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fc, i1 true) ; 2 uses
  %i.fg = icmp samesign ult i32 %i.ff, 10
  br i1 %i.fg, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ff to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %.critedge161, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %.critedge161 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.fh = load i16, ptr %i.ax, align 8, !tbaa !522
  %i.fi = zext i16 %i.fh to i32
  %i.fj = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.fi) ; 4 uses
  store i16 %i.fj, ptr %10, align 2
  %.not.i202 = icmp eq i16 %i.fj, 0
  br i1 %.not.i202, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.fk = zext i16 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !206
  %.not327 = icmp eq ptr %i.fm, null
  br i1 %.not327, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203
  %i.fn = call noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering23isLegalStridedLoadStoreENS_3EVTENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %3, i16 %i.fj, ptr null, i8 %.sroa.0282.0.lcssa)
  br i1 %i.fn, label %bb.y, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread

bb.y:                                             ; preds = %bb.x
  switch i8 %i.dh, label %bb.z [
    i8 1, label %_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit
    i8 0, label %_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit
  ]

_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.y
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.5246.0.copyload = load i32, ptr %.sroa.5246.0..sroa_idx, align 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @abort() #35
  unreachable

_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.y
  %i.fo = load ptr, ptr %8, align 8, !tbaa !54
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1876
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !381 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 80
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !392
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !471
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !361
  %i.fy = zext i32 %i.fv to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fz, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !334
  %i.ga = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.cast, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract68 = extractvalue { ptr, i32 } %i.ga, 0
  %.fca.1.extract69 = extractvalue { ptr, i32 } %i.ga, 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit, %_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit
  %.sroa.13.0 = phi i32 [ %.sroa.5246.0.copyload, %_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit ], [ undef, %_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit ]
  %.sroa.9.0 = phi i32 [ %i.dl, %_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit ], [ %.fca.1.extract69, %_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit ] ; 3 uses
  %.sroa.0238.0 = phi ptr [ %i.dj, %_ZSt3getIN4llvm7SDValueEJlS1_EERT_RSt7variantIJDpT0_EE.exit ], [ %.fca.0.extract68, %_ZSt3getIlJlN4llvm7SDValueEEERT_RSt7variantIJDpT0_EE.exit ] ; 3 uses
  %i.gb = trunc nuw i8 %i.dn to i1
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0238.0, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !361
  %i.ge = zext i32 %.sroa.9.0 to i64
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %.sroa.0.0.copyload.i.i208 = load i16, ptr %i.gf, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i209 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.sroa.21.0.copyload.i.i210 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i209, align 8, !tbaa !334
  %i.gg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0238.0, i32 %.sroa.9.0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i208, ptr %.sroa.21.0.copyload.i.i210) #34 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.gg, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.gg, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.9.1 = phi i32 [ %.fca.1.extract57, %bb.ab ], [ %.sroa.9.0, %bb.aa ]
  %.sroa.0238.1 = phi ptr [ %.fca.0.extract56, %bb.ab ], [ %.sroa.0238.0, %bb.aa ] ; 3 uses
  %i.gh = call i16 @_ZNK4llvm3MVT23changeVectorElementTypeES0_(ptr noundef nonnull align 2 dereferenceable(2) %10, i16 2)
  %i.gi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 2, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.gi, 0
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.gi, 1
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSplatENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %i.gh, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %.fca.0.extract47, i32 %.fca.1.extract48) ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.gj, 0
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.gj, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0238.1, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !362
  switch i32 %i.gl, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.ac, %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0238.1, i64 88
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !368 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !333 ; 5 uses
  %i.gr = icmp ult i32 %i.gq, 65                  ; 2 uses
  br i1 %i.gr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.gs = load i64, ptr %i.go, align 8            ; 3 uses
  %i.gt = icmp eq i32 %i.gq, 0
  %i.gu = sub nuw nsw i32 64, %i.gq
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gw = shl i64 %i.gs, %i.gv
  %i.gx = ashr exact i64 %i.gw, %i.gv             ; 2 uses
  %i.gy = inttoptr i64 %i.gs to ptr
  br i1 %i.gt, label %.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.ae:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.gz = load ptr, ptr %i.go, align 8            ; 3 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !347
  %i.hb = ptrtoint ptr %i.gz to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.ad, %bb.ae
  %i.hc = phi i64 [ %i.gs, %bb.ad ], [ %i.hb, %bb.ae ]
  %i.hd = phi ptr [ %i.gy, %bb.ad ], [ %i.gz, %bb.ae ]
  %.0.i.i.i213 = phi i64 [ %i.gx, %bb.ad ], [ %i.ha, %bb.ae ]
  %i.he = icmp sgt i64 %.0.i.i.i213, -1
  br i1 %i.he, label %bb.af, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.af:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.hf = zext nneg i16 %.sroa.0.0.i to i64
  %i.hg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hf ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 -16
  %.sroa.0.0.copyload.i214 = load i64, ptr %i.hh, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.hg, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.hi = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.hi, label %bb.ag, label %_ZNK4llvm8TypeSizecvmEv.exit

.thread:                                          ; preds = %bb.ad
  %i.hj = zext nneg i16 %.sroa.0.0.i to i64
  %i.hk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -16
  %.sroa.0.0.copyload.i214305 = load i64, ptr %i.hl, align 16
  %.sroa.2.0..sroa_idx.i306 = getelementptr i8, ptr %i.hk, i64 -8
  %.sroa.2.0.copyload.i307 = load i8, ptr %.sroa.2.0..sroa_idx.i306, align 8
  %i.hm = trunc nuw i8 %.sroa.2.0.copyload.i307 to i1
  br i1 %i.hm, label %bb.ag, label %_ZNK4llvm8TypeSizecvmEv.exit.thread

bb.ag:                                            ; preds = %.thread, %bb.af
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.284) #35
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.af
  br i1 %i.gr, label %_ZNK4llvm8TypeSizecvmEv.exit._ZNK4llvm8TypeSizecvmEv.exit.thread_crit_edge, label %bb.ah

_ZNK4llvm8TypeSizecvmEv.exit._ZNK4llvm8TypeSizecvmEv.exit.thread_crit_edge: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.pre.a = sub nuw nsw i32 64, %i.gq
  %.pre352 = zext nneg i32 %.pre.a to i64         ; 2 uses
  %.pre354 = shl i64 %i.hc, %.pre352
  %.pre356 = ashr exact i64 %.pre354, %.pre352
  br label %_ZNK4llvm8TypeSizecvmEv.exit.thread

_ZNK4llvm8TypeSizecvmEv.exit.thread:              ; preds = %_ZNK4llvm8TypeSizecvmEv.exit._ZNK4llvm8TypeSizecvmEv.exit.thread_crit_edge, %.thread
  %.pre-phi357 = phi i64 [ %.pre356, %_ZNK4llvm8TypeSizecvmEv.exit._ZNK4llvm8TypeSizecvmEv.exit.thread_crit_edge ], [ %i.gx, %.thread ]
  %.sroa.0.0.copyload.i214310313 = phi i64 [ %.sroa.0.0.copyload.i214, %_ZNK4llvm8TypeSizecvmEv.exit._ZNK4llvm8TypeSizecvmEv.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i214305, %.thread ]
  %i.hn = icmp eq i32 %i.gq, 0
  %.0.i.i.i.i218 = select i1 %i.hn, i64 0, i64 %.pre-phi357
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit219

bb.ah:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ho = load i64, ptr %i.hd, align 8, !tbaa !347
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit219

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit219: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.thread, %bb.ah
  %.sroa.0.0.copyload.i214310312 = phi i64 [ %.sroa.0.0.copyload.i214310313, %_ZNK4llvm8TypeSizecvmEv.exit.thread ], [ %.sroa.0.0.copyload.i214, %bb.ah ]
  %.0.i.i.i217 = phi i64 [ %.0.i.i.i.i218, %_ZNK4llvm8TypeSizecvmEv.exit.thread ], [ %i.ho, %bb.ah ]
  %i.hp = load i16, ptr %i.ax, align 8, !tbaa !522
  %i.hq = zext i16 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, 4294967295
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = mul nsw i64 %i.hs, %.0.i.i.i217
  %i.hu = add i64 %i.ht, %.sroa.0.0.copyload.i214310312
  %i.hv = freeze i64 %i.hu
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.ac, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit219
  %.0147 = phi i64 [ %i.hv, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit219 ], [ -1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ -1, %bb.ac ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !476
  %.0.copyload.i.i.i.i.i.i.i220 = load i64, ptr %i.u, align 8
  %i.hy = and i64 %.0.copyload.i.i.i.i.i.i.i220, -5
  %i.hz = inttoptr i64 %i.hy to ptr               ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %i.ic = icmp ugt i64 %.0147, 4611686018427387899
  %spec.select = select i1 %i.ic, i64 -4611686018427387906, i64 %.0147
  %i.id = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.hx, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %i.hz, i16 noundef zeroext %i.ib, i64 %spec.select, i8 %.sroa.0282.0.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %.sroa.030.0.copyload = load i16, ptr %10, align 2, !tbaa !216
  %i.ie = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !381 ; 3 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.if, align 8, !tbaa !383
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.sroa.228.0.copyload = load i32, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !222
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 16, i1 false), !tbaa.struct !384
  store ptr %.sroa.0238.1, ptr %13, align 8, !tbaa !383
  %.sroa.9.0..sroa_idx241 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx241, align 8, !tbaa !222
  %.sroa.13.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx243, align 4
  store ptr %.fca.0.extract43, ptr %14, align 8, !tbaa !383
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract44, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !222
  %i.ih = load i16, ptr %i.ax, align 8, !tbaa !522
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !205, !range !50, !noundef !51
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = select i1 %i.il, i16 8, i16 7
  %i.in = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.ii, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %i.im, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.in, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.in, 1
  store ptr %.fca.0.extract22, ptr %15, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  %i.io = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getStridedLoadVPENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_S5_S5_PNS_17MachineMemOperandEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.030.0.copyload, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %.sroa.027.0.copyload, i32 %.sroa.228.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef %i.id, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.io, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.io, 1 ; 2 uses
  %i.ip = load ptr, ptr %i.o, align 8, !tbaa !381 ; 2 uses
  %i.iq = load i16, ptr %i.ax, align 8, !tbaa !522 ; 2 uses
  %i.ir = zext i16 %i.iq to i64
  %.idx349 = mul nuw nsw i64 %i.ir, 40
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx349
  %.not155343 = icmp eq i16 %i.iq, 0
  br i1 %.not155343, label %._crit_edge, label %.lr.ph345

._crit_edge:                                      ; preds = %.lr.ph345, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread
  %i.it = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i, ptr null, ptr %.fca.0.extract18, i32 %.fca.1.extract19) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.it, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.it, 1
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread

.lr.ph345:                                        ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %.lr.ph345
  %.0146344 = phi ptr [ %i.iv, %.lr.ph345 ], [ %i.ip, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread ] ; 2 uses
  %.sroa.0224.0.copyload = load ptr, ptr %.0146344, align 8, !tbaa !383
  %i.iu = call { ptr, i32 } @_ZN4llvm12SelectionDAG28makeEquivalentMemoryOrderingEPNS_10LoadSDNodeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef %.sroa.0224.0.copyload, ptr %.fca.0.extract18, i32 %.fca.1.extract19) #34 ; 0 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0146344, i64 40 ; 2 uses
  %.not155 = icmp eq ptr %i.iv, %i.is
  br i1 %.not155, label %._crit_edge, label %.lr.ph345

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.x, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203, %._crit_edge
  %.sroa.18.0 = phi i32 [ %.fca.1.extract, %._crit_edge ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203 ], [ 0, %bb.x ], [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit ]
  %.sroa.0289.0 = phi ptr [ %.fca.0.extract, %._crit_edge ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203 ], [ null, %bb.x ], [ null, %_ZN4llvm3MVT12getIntegerVTEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread: ; preds = %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363", %bb.w, %.backedge, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread", %.critedge159, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread ], [ 0, %.critedge159 ], [ 0, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread" ], [ 0, %.backedge ], [ 0, %bb.w ], [ 0, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363" ]
  %.sroa.0289.1 = phi ptr [ %.sroa.0289.0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit203.thread ], [ null, %.critedge159 ], [ null, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread" ], [ null, %.backedge ], [ null, %bb.w ], [ null, %"_ZZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringEENK3$_0clEPNS_10LoadSDNodeESC_.exit.thread363" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.critedge157

.critedge157:                                     ; preds = %bb.m, %bb.j, %bb.n, %bb.h, %bb.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit188, %bb.l, %.lr.ph.i.i179, %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread
  %.sroa.18.2 = phi i32 [ %.sroa.18.1, %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread ], [ 0, %.lr.ph.i.i179 ], [ 0, %bb.l ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit188 ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %bb.m ]
  %.sroa.0289.2 = phi ptr [ %.sroa.0289.1, %_ZStneISt4pairISt7variantIJlN4llvm7SDValueEEEbES5_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread ], [ null, %.lr.ph.i.i179 ], [ null, %bb.l ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit188 ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.n ], [ null, %bb.j ], [ null, %bb.m ]
  %i.iw = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.aq
  br i1 %i.ix, label %_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge157
  call void @free(ptr noundef %i.iw) #34
  br label %_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit: ; preds = %.critedge157, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %bb.d, %bb.a, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.b, %bb.c, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit
  %.sroa.18.3 = phi i32 [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.e ], [ %.sroa.18.2, %_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i ]
  %.sroa.0289.3 = phi ptr [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %bb.e ], [ %.sroa.0289.2, %_ZN4llvm11SmallVectorIPNS_10LoadSDNodeELj6EED2Ev.exit ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0289.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.18.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL28performVECTOR_SHUFFLECombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetERKNS_19RISCVTargetLoweringE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519768) %2, ptr noundef nonnull align 8 dereferenceable(518448) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.428", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.296", align 8 ; 6 uses
  %10 = alloca %"class.llvm::ArrayRef.308", align 8 ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 11 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 18 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %16 = alloca %"class.llvm::SmallVector.421", align 8 ; 10 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SmallVector.1205", align 8 ; 9 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.296", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !385
  store i64 %i.c, ptr %13, align 8, !tbaa !385
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !386
  store i32 %i.f, ptr %i.d, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.h, align 8, !tbaa !216 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !334 ; 2 uses
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.21.0.copyload.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %14, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.j = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.j, 197
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.a
  %i.k = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  br i1 %i.k, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.b:                                             ; preds = %.split.i.i
  %i.l = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.m = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !216
  %i.p = insertvalue { i16, ptr } poison, i16 %i.o, 0
  %i.q = insertvalue { i16, ptr } %i.p, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.r = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #34
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.r, %bb.c ], [ %i.q, %bb.b ], [ %.fca.1.insert.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i, %.split.i.i ] ; 2 uses
  %i.s = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.s, ptr %12, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.u, ptr %i.t, align 8
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.v = zext i16 %i.s to i64
  %i.w = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.x, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.y = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #38
  %i.z = extractvalue { i64, i8 } %i.y, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.d, %bb.e
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.aa = trunc i64 %.pn.i.i to i32               ; 2 uses
  %i.ab = load i16, ptr %14, align 8, !tbaa !270  ; 3 uses
  %.not.i.i177 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i177, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ac = add i16 %i.ab, -163
  %spec.select.i.i.i = icmp ult i16 %i.ac, 53
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ad = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.285) #35
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.ae = zext i16 %i.ab to i64
  %i.af = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !217
  %i.ai = zext i16 %i.ah to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.aj = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.g
  %i.ak = phi i32 [ %i.ai, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.aj, %bb.g ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !381 ; 4 uses
  %.sroa.0254.0.copyload = load ptr, ptr %i.am, align 8, !tbaa !383 ; 3 uses
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.6255.0.copyload = load i32, ptr %.sroa.6255.0..sroa_idx, align 8, !tbaa !222 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !383 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !222 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !361 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ao, align 8, !tbaa !216 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !334
  store i16 %.sroa.0.0.copyload.i.i, ptr %11, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !390 ; 5 uses
  %.not.i.i.i178 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i178, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i179

.split.i.i179:                                    ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.as = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i180 = icmp ult i16 %i.as, 53
  br i1 %spec.select.i.i.i.i180, label %bb.h, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.at = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #38
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i179
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.285) #35
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %.split.i.i179
  %i.au = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.av = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !217
  %i.ay = zext i16 %i.ax to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.az = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #38
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
end_hunk_0
