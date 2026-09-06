Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelDAGToDAG?download=true
inline.NumInlined: 5475
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm18AMDGPUDAGToDAGISel20SelectDS1Addr1OffsetENS_7SDValueERS1_S2_:bb.a
  %.0.i.i.i130 = phi i64 [ %.0.i.i.i.i131, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bo = and i64 %.0.i.i.i130, 4294901760
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %.critedge121

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.br, 0 ; 2 uses
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.br, 1 ; 2 uses
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !388
  store ptr %.fca.0.extract58, ptr %6, align 8, !tbaa !382
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract59, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !383
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !380
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bs, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bu) #24 ; 2 uses
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.bv, 0 ; 2 uses
  %.fca.1.extract53 = extractvalue { ptr, i32 } %i.bv, 1
  %.not.i136 = icmp eq ptr %.fca.0.extract52, null
  br i1 %.not.i136, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !197 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 496
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !367
  %i.ca = icmp sgt i32 %i.bz, 5
  br i1 %i.ca, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 650
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !623, !range !493, !noundef !141
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137

_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137: ; preds = %bb.n
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.cf = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ce, ptr nonnull %.fca.0.extract52, i32 %.fca.1.extract53, i32 noundef 0) #24
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %.critedge121

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141: ; preds = %bb.m, %bb.n, %bb.l, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cg, ptr %7, align 8, !tbaa !472
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 3, ptr %i.ci, align 4, !tbaa !477
  store ptr %.fca.0.extract58, ptr %i.cg, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.fca.1.extract59, ptr %.sroa.32.0..sroa_idx.i, align 8
  %i.cj = load ptr, ptr %i.av, align 8, !tbaa !380 ; 2 uses
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.244.0.copyload = load i32, ptr %.sroa.244.0..sroa_idx, align 8, !tbaa !383
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %.sroa.043.0.copyload = load ptr, ptr %i.ck, align 8, !tbaa !382
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.sroa.043.0.copyload, ptr %i.cl, align 8
  %.sroa.32.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.sroa.244.0.copyload, ptr %.sroa.32.0..sroa_idx.i140, align 8
  store i32 2, ptr %i.ch, align 8, !tbaa !478
  %.pre201.pre = load ptr, ptr %i.f, align 8, !tbaa !388 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %.pre, i64 659
  %.pre199 = load i8, ptr %.phi.trans.insert198, align 1, !tbaa !624, !range !493
  %i.cm = trunc nuw i8 %.pre199 to i1
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.pre201.pre, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.cn, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.cn, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.fca.0.extract37, i32 %.fca.1.extract38)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre200 = load ptr, ptr %i.f, align 8, !tbaa !388
  %.pre202 = load ptr, ptr %7, align 8, !tbaa !472
  %.pre203 = load i32, ptr %i.ch, align 8, !tbaa !478
  %i.co = zext i32 %.pre203 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141
  %i.cp = phi i64 [ %i.co, %bb.o ], [ 2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %i.cq = phi ptr [ %.pre202, %bb.o ], [ %i.cg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %i.cr = phi ptr [ %.pre200, %bb.o ], [ %.pre201.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %.0115 = phi i32 [ 11118, %bb.o ], [ 11073, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  store ptr %i.cq, ptr %9, align 8, !tbaa !398
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !399
  %i.ct = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cr, i32 noundef %.0115, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %9) #24
  store ptr %i.ct, ptr %3, align 8, !tbaa !382
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4161.0..sroa_idx, align 8, !tbaa !383
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cu, i64 noundef %.0.i.i.i130, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract29, ptr %4, align 8, !tbaa !382
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !383
  %i.cw = load ptr, ptr %7, align 8, !tbaa !472   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cg
  br i1 %i.cx, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cw) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge123

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.cy, ptr %10, align 8, !tbaa !389
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.da = load i32, ptr %i.d, align 4, !tbaa !390
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !392
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !402 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !404
  %i.dg = icmp ult i32 %i.df, 65
  %i.dh = load ptr, ptr %i.dd, align 8
  %spec.select.i.i.i143 = select i1 %i.dg, ptr %i.dd, ptr %i.dh
  %.0.i.i.i144 = load i64, ptr %spec.select.i.i.i143, align 8, !tbaa !198
  %i.di = and i64 %.0.i.i.i144, 4294901760
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.r, label %.critedge125

bb.r:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dk, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.dl, 1
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !388
  store ptr %.fca.0.extract16, ptr %11, align 8, !tbaa !382
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !383
  %i.dn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dm, i32 noundef 10458, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #24
  store ptr %i.dn, ptr %3, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx152, align 8, !tbaa !383
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !402 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !404
  %i.dt = icmp ult i32 %i.ds, 65
  %i.du = load ptr, ptr %i.dq, align 8
  %spec.select.i.i.i147 = select i1 %i.dt, ptr %i.dq, ptr %i.du
  %.0.i.i.i148 = load i64, ptr %spec.select.i.i.i147, align 8, !tbaa !198
  %i.dv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.do, i64 noundef %.0.i.i.i148, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.dv, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.dv, 1
  store ptr %.fca.0.extract9, ptr %4, align 8, !tbaa !382
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge123

.critedge125:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge121

.critedge121:                                     ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.h, %bb.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132, %.critedge125, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137
  store ptr %1, ptr %3, align 8, !tbaa !382
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !383
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.dx, ptr %12, align 8, !tbaa !389
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dz = load i32, ptr %i.d, align 4, !tbaa !390
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !392
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dw, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.critedge123

.critedge123:                                     ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %bb.r, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread, %.critedge121
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 true
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = urem i32 %3, %5
  %i.b = udiv exact i32 %3, %5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = urem i32 %4, %5
  %i.d = udiv exact i32 %4, %5
  %.not9 = icmp eq i32 %i.c, 0
  %i.e = icmp ult i32 %i.b, 256
  %or.cond = select i1 %.not9, i1 %i.e, i1 false
  %i.f = icmp ult i32 %i.d, 256
  %or.cond12 = select i1 %or.cond, i1 %i.f, i1 false
  br i1 %or.cond12, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load i32, ptr %i.i, align 8, !tbaa !367
  %i.k = icmp sgt i32 %i.j, 5
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 650
  %i.m = load i8, ptr %i.l, align 2, !tbaa !623, !range !493, !noundef !141
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !388
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr nonnull %1, i32 %2, i32 noundef 0) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ %i.q, %bb.f ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel22isFlatScratchBaseLegalENS_7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = icmp eq i32 %i.b, 59                     ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !383
  %i.e = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.e, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit:        ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 194
  br i1 %i.f, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18: ; preds = %bb.b, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load i32, ptr %i.i, align 8, !tbaa !367
  %i.k = icmp sgt i32 %i.j, 10
  br i1 %i.k, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !380  ; 3 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !382 ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !384
  switch i32 %i.p, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.d, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !404  ; 3 uses
  %i.v = icmp ult i32 %i.u, 65
  br i1 %i.v, label %bb.e, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.w = load i64, ptr %i.s, align 8, !tbaa !198
  %i.x = icmp ne i32 %i.u, 0
  %i.y = sub nuw nsw i32 64, %i.u
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl i64 %i.w, %i.z                      ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %or.cond = select i1 %i.x, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !198
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.af = ashr exact i64 %i.aa, %i.z
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22, %bb.f
  %.0.i.i.i10 = phi i64 [ %i.af, %bb.f ], [ %i.ad, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22 ]
  %i.ag = icmp samesign ugt i64 %.0.i.i.i10, -1073741824
  br i1 %i.ag, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.e, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !388
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr %.sroa.02.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12, %bb.b, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit
  %.1 = phi i1 [ true, %bb.b ], [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit ], [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18 ], [ %i.aj, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread ], [ true, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel24isFlatScratchBaseLegalSVENS_7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !384
  switch i32 %i.b, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13 [
    i32 59, label %bb.b
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4, !tbaa !383
  %i.d = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.d, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i32, ptr %i.g, align 8, !tbaa !367
  %i.i = icmp sgt i32 %i.h, 10
  br i1 %i.i, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !380  ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !382
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !383
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.n, ptr %.sroa.04.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br i1 %i.o, label %bb.d, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !388
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr %.sroa.05.0.copyload, i32 %.sroa.46.0.copyload, i32 noundef 0) #24
  br label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13
  %.0 = phi i1 [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13 ], [ true, %bb.a ], [ false, %bb.c ], [ %i.q, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel27isFlatScratchBaseLegalSVImmENS_7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU11isGFX12PlusERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320) %i.b) #24
  br i1 %i.c, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !380  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !382 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !384
  switch i32 %i.i, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25 [
    i32 59, label %bb.c
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4, !tbaa !383
  %i.k = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.k, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !384
  switch i32 %i.m, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26 [
    i32 59, label %bb.d
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread
  ]

bb.d:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i17 = load i32, ptr %i.n, align 4, !tbaa !383
  %i.o = trunc i32 %.sroa.0.0.copyload.i.i17 to i1
  br i1 %i.o, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26: ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !402  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !404  ; 3 uses
  %i.u = icmp ult i32 %i.t, 65
  br i1 %i.u, label %bb.e, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28

bb.e:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26
  %i.v = load i64, ptr %i.r, align 8, !tbaa !198
  %i.w = icmp ne i32 %i.t, 0
  %i.x = sub nuw nsw i32 64, %i.t
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl i64 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  %or.cond = select i1 %i.w, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28: ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !198
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

bb.f:                                             ; preds = %bb.e
  %i.ae = ashr exact i64 %i.z, %i.y
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28, %bb.f
  %.0.i.i.i19 = phi i64 [ %i.ae, %bb.f ], [ %i.ac, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28 ]
  %i.af = icmp samesign ugt i64 %.0.i.i.i19, -1073741824
  br i1 %i.af, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25: ; preds = %bb.b, %bb.e, %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !380 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !382
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !383
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !388
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr %.sroa.04.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br i1 %i.al, label %bb.g, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread

bb.g:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !388
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.am, ptr %.sroa.05.0.copyload, i32 %.sroa.46.0.copyload, i32 noundef 0) #24
  br label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread: ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21, %bb.g, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread ], [ true, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit21 ], [ false, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25 ], [ %i.an, %bb.g ], [ true, %bb.d ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4llvm6AMDGPU11isGFX12PlusERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel25SelectDS64Bit4ByteAlignedENS_7SDValueERS1_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel18SelectDSReadWrite2ENS_7SDValueERS1_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 4) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel18SelectDSReadWrite2ENS_7SDValueERS1_S2_S2_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 12 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.655", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.392", align 8 ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.b, ptr %7, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !390
  store i32 %i.e, ptr %i.c, align 8, !tbaa !392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 17 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %1, i32 %2) #24
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !380  ; 3 uses
  %.sroa.0125.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !382 ; 3 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5127.0.copyload = load i32, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !383 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0242.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !382
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0242.0.copyload, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !402  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !404
  %i.q = icmp ult i32 %i.p, 65
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.r
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !198
  %i.s = trunc i64 %.0.i.i.i to i32               ; 3 uses
  %i.t = add i32 %6, %i.s                         ; 2 uses
  %i.u = urem i32 %i.s, %6
  %i.v = udiv exact i32 %i.s, %6                  ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.c, label %.critedge177

bb.c:                                             ; preds = %bb.b
  %i.w = urem i32 %i.t, %6
  %i.x = udiv exact i32 %i.t, %6                  ; 2 uses
  %.not9.i = icmp eq i32 %i.w, 0
  %i.y = icmp ult i32 %i.v, 256
  %or.cond = select i1 %.not9.i, i1 %i.y, i1 false
  %i.z = icmp ult i32 %i.x, 256
  %or.cond281 = select i1 %or.cond, i1 %i.z, i1 false
  br i1 %or.cond281, label %bb.d, label %.critedge177

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq ptr %.sroa.0125.0.copyload, null
  br i1 %.not10.i, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !367
  %i.ae = icmp sgt i32 %i.ad, 5
  br i1 %i.ae, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 650
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !623, !range !493, !noundef !141
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr nonnull %.sroa.0125.0.copyload, i32 %.sroa.5127.0.copyload, i32 noundef 0) #24
  br i1 %i.aj, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254, label %.critedge177

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254: ; preds = %bb.e, %bb.f, %bb.d, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit
  store ptr %.sroa.0125.0.copyload, ptr %3, align 8, !tbaa !382
  %.sroa.5127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx128, align 8, !tbaa !383
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.al = zext nneg i32 %i.v to i64
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract109 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract110 = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract109, ptr %4, align 8, !tbaa !382
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract110, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !383
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.ao = zext nneg i32 %i.x to i64
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.an, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract103 = extractvalue { ptr, i32 } %i.ap, 1
  store ptr %.fca.0.extract102, ptr %5, align 8, !tbaa !382
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract103, ptr %.sroa.4107.0..sroa_idx, align 8, !tbaa !383
  br label %.critedge179

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !384
  switch i32 %i.ar, label %.critedge177 [
    i32 60, label %bb.h
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !380
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !408 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !384
  switch i32 %i.aw, label %.critedge177 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.h, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !402 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !404
  %i.bc = icmp ult i32 %i.bb, 65
  %i.bd = load ptr, ptr %i.az, align 8
  %spec.select.i.i.i185 = select i1 %i.bc, ptr %i.az, ptr %i.bd
  %.0.i.i.i186 = load i64, ptr %spec.select.i.i.i185, align 8, !tbaa !198
  %i.be = trunc i64 %.0.i.i.i186 to i32           ; 3 uses
  %i.bf = add i32 %6, %i.be                       ; 2 uses
  %i.bg = urem i32 %i.be, %6
  %i.bh = udiv exact i32 %i.be, %6                ; 2 uses
  %.not.i187 = icmp eq i32 %i.bg, 0
  br i1 %.not.i187, label %bb.i, label %.critedge177

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.bi = urem i32 %i.bf, %6
  %i.bj = udiv exact i32 %i.bf, %6                ; 2 uses
  %.not9.i189 = icmp eq i32 %i.bi, 0
  %i.bk = icmp ult i32 %i.bh, 256
  %or.cond282 = select i1 %.not9.i189, i1 %i.bk, i1 false
  %i.bl = icmp ult i32 %i.bj, 256
  %or.cond283 = select i1 %or.cond282, i1 %i.bl, i1 false
  br i1 %or.cond283, label %bb.j, label %.critedge177

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.bm, ptr %8, align 8, !tbaa !389
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !390
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !392
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.bq, 0 ; 2 uses
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.bq, 1 ; 2 uses
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !388
  store ptr %.fca.0.extract78, ptr %9, align 8, !tbaa !382
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract79, ptr %.sroa.583.0..sroa_idx, align 8, !tbaa !383
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !380
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.br, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bt) #24 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.bu, 0 ; 2 uses
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.bu, 1
  %.not10.i194 = icmp eq ptr %.fca.0.extract72, null
  br i1 %.not10.i194, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !367
  %i.bz = icmp sgt i32 %i.by, 5
  br i1 %i.bz, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 650
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !623, !range !493, !noundef !141
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195: ; preds = %bb.l
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.ce = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.cd, ptr nonnull %.fca.0.extract72, i32 %.fca.1.extract73, i32 noundef 0) #24
  br i1 %i.ce, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %.critedge175

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199: ; preds = %bb.k, %bb.l, %bb.j, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.cf, ptr %10, align 8, !tbaa !472
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 3, ptr %i.ch, align 4, !tbaa !477
  store ptr %.fca.0.extract78, ptr %i.cf, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract79, ptr %.sroa.32.0..sroa_idx.i, align 8
  %i.ci = load ptr, ptr %i.as, align 8, !tbaa !380 ; 2 uses
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %.sroa.265.0.copyload = load i32, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !383
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.sroa.064.0.copyload = load ptr, ptr %i.cj, align 8, !tbaa !382
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.sroa.064.0.copyload, ptr %i.ck, align 8
  %.sroa.32.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %.sroa.265.0.copyload, ptr %.sroa.32.0..sroa_idx.i198, align 8
  store i32 2, ptr %i.cg, align 8, !tbaa !478
  %.pre272.pre = load ptr, ptr %i.f, align 8, !tbaa !388 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %.pre, i64 659
  %.pre270 = load i8, ptr %.phi.trans.insert269, align 1, !tbaa !624, !range !493
  %i.cl = trunc nuw i8 %.pre270 to i1
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.cm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.pre272.pre, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.cm, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.cm, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.fca.0.extract57, i32 %.fca.1.extract58)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.pre271 = load ptr, ptr %i.f, align 8, !tbaa !388
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199
  %i.cn = phi ptr [ %.pre271, %bb.m ], [ %.pre272.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199 ]
  %.0171 = phi i32 [ 11118, %bb.m ], [ 11073, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199 ]
  %i.co = shl i32 %6, 3                           ; 2 uses
  %i.cp = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.co)
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %bb.n
  %i.cr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, 10
  br i1 %i.cs, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.cr to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.n, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %bb.n ]
  %i.ct = load ptr, ptr %10, align 8, !tbaa !472
  store ptr %i.ct, ptr %12, align 8, !tbaa !398
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = load i32, ptr %i.cg, align 8, !tbaa !478
  %i.cw = zext i32 %i.cv to i64
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !399
  %i.cx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cn, i32 noundef %.0171, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %12) #24
  store ptr %i.cx, ptr %3, align 8, !tbaa !382
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4225.0..sroa_idx, align 8, !tbaa !383
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.cz = zext nneg i32 %i.bh to i64
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cy, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.da, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.da, 1
  store ptr %.fca.0.extract48, ptr %4, align 8, !tbaa !382
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.453.0..sroa_idx, align 8, !tbaa !383
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.dc = zext nneg i32 %i.bj to i64
  %i.dd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.db, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.dd, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.dd, 1
  store ptr %.fca.0.extract41, ptr %5, align 8, !tbaa !382
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract42, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !383
  %i.de = load ptr, ptr %10, align 8, !tbaa !472  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cf
  br i1 %i.df, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  call void @free(ptr noundef %i.de) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge179

.critedge175:                                     ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge177

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !402 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !404
  %i.dl = icmp ult i32 %i.dk, 65
  %i.dm = load ptr, ptr %i.di, align 8
  %spec.select.i.i.i201 = select i1 %i.dl, ptr %i.di, ptr %i.dm
  %.0.i.i.i202 = load i64, ptr %spec.select.i.i.i201, align 8, !tbaa !198
  %i.dn = trunc i64 %.0.i.i.i202 to i32           ; 3 uses
  %i.do = add i32 %6, %i.dn                       ; 2 uses
  %i.dp = urem i32 %i.dn, %6
  %i.dq = udiv exact i32 %i.dn, %6                ; 2 uses
  %.not.i203 = icmp eq i32 %i.dp, 0
  br i1 %.not.i203, label %bb.p, label %.critedge177

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.dr = urem i32 %i.do, %6
  %i.ds = udiv exact i32 %i.do, %6                ; 2 uses
  %.not9.i205 = icmp eq i32 %i.dr, 0
  %i.dt = icmp ult i32 %i.dq, 256
  %or.cond284 = select i1 %.not9.i205, i1 %i.dt, i1 false
  %i.du = icmp ult i32 %i.ds, 256
  %or.cond285 = select i1 %or.cond284, i1 %i.du, i1 false
  br i1 %or.cond285, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit206, label %.critedge177

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit206: ; preds = %bb.p
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.dw, 1
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !388
  store ptr %.fca.0.extract28, ptr %13, align 8, !tbaa !382
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !383
  %i.dy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dx, i32 noundef 10458, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #24
  store ptr %i.dy, ptr %3, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx214, align 8, !tbaa !383
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.ea = zext nneg i32 %i.dq to i64
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dz, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract21, ptr %4, align 8, !tbaa !382
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !383
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.ed = zext nneg i32 %i.ds to i64
  %i.ee = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ec, i64 noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.ee, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.ee, 1
  store ptr %.fca.0.extract14, ptr %5, align 8, !tbaa !382
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !383
  br label %.critedge179

.critedge177:                                     ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit, %bb.b, %bb.c, %bb.g, %bb.p, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.h, %.critedge175
  store ptr %1, ptr %3, align 8, !tbaa !382
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !383
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ef, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.eg, 1
  store ptr %.fca.0.extract7, ptr %4, align 8, !tbaa !382
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !383
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ei, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  br label %.critedge179

.critedge179:                                     ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit206, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit.thread254, %.critedge177
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel26SelectDS128Bit8ByteAlignedENS_7SDValueERS1_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel18SelectDSReadWrite2ENS_7SDValueERS1_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 8) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel11SelectMUBUFENS_7SDValueERS1_S2_S2_S2_S2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %7, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %8, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 19 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 907
  %i.d = load i8, ptr %i.c, align 1, !tbaa !796, !range !493, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !389
  store i64 %i.g, ptr %10, align 8, !tbaa !389
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !390
  store i32 %i.j, ptr %i.h, align 8, !tbaa !392
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !388
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.l, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract79 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract79, ptr %8, align 8, !tbaa !382
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract80, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !383
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !388
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.n, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.o, 1
  store ptr %.fca.0.extract72, ptr %7, align 8, !tbaa !382
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !383
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !388
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.q, 1
  store ptr %.fca.0.extract65, ptr %9, align 8, !tbaa !382
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %.fca.1.extract66, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !383
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 835
  %i.t = load i8, ptr %i.s, align 1, !tbaa !625, !range !493, !noundef !141
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !388  ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.v, i32 20, i16 7, ptr null) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.v, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.564.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.063.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.063.0, ptr %5, align 8, !tbaa !382
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %.sroa.564.0, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !383
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !388
  %i.z = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.y, ptr nonnull %1, i32 %2) #24
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !380 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !408 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !402 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !404
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %i.ag, align 8
  %spec.select.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ak
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !198
  %i.al = icmp ult i64 %.0.i.i.i, 4294967296
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0158.0.copyload162 = load ptr, ptr %i.ab, align 8, !tbaa !382
  %.sroa.11.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11.sroa.0.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx166, align 8, !tbaa !383
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.0158.0 = phi ptr [ %.sroa.0158.0.copyload162, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ] ; 6 uses
  %.sroa.11.sroa.0.0 = phi i32 [ %.sroa.11.sroa.0.0.copyload, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ] ; 3 uses
  %.0112 = phi ptr [ %i.ad, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0158.0, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !384
  switch i32 %i.an, label %bb.m [
    i32 420, label %bb.i
    i32 59, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0158.0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !380 ; 4 uses
  %.sroa.0152.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !382 ; 3 uses
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aq = load i64, ptr %.sroa.6155.0..sroa_idx, align 8
  %.sroa.6155.sroa.0.0.extract.trunc = trunc i64 %i.aq to i32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.0147.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !382 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.as = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.0.0.extract.trunc = trunc i64 %i.as to i32 ; 2 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !388
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.at, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract41, ptr %9, align 8, !tbaa !382
  store i32 %.fca.1.extract42, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !383
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0152.0.copyload, i64 32
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 4
  %.not187 = icmp eq i8 %i.ax, 0
  br i1 %.not187, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0147.0.copyload, i64 32
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, 4
  %.not188 = icmp eq i8 %i.ba, 0
  br i1 %.not188, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
