Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelDAGToDAG?download=true
inline.NumInlined: 5475
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm18AMDGPUDAGToDAGISel11SelectS_BFEEPNS_6SDNodeE:bb.a
  switch i32 %i.ba, label %.critedge.thread [
    i32 193, label %bb.g
    i32 198, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !415 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !388
  switch i32 %i.be, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75 [
    i32 37, label %bb.h
    i32 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75: ; preds = %bb.g, %bb.h
  %.0.i.i.i74 = phi ptr [ %i.bc, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !384 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !415 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !388
  switch i32 %i.bk, label %.critedge.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit77
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit77
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit77: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75
  %.not101 = icmp eq ptr %.0.i.i.i74, null
  br i1 %.not101, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit77
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !404 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !407
  %i.bq = icmp ult i32 %i.bp, 65
  %i.br = load ptr, ptr %i.bn, align 8
  %spec.select.i.i.i78 = select i1 %i.bq, ptr %i.bn, ptr %i.br
  %.0.i.i.i79 = load i64, ptr %spec.select.i.i.i78, align 8, !tbaa !201 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !404 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !407
  %i.bx = icmp ult i32 %i.bw, 65
  %i.by = load ptr, ptr %i.bu, align 8
  %spec.select.i.i.i80 = select i1 %i.bx, ptr %i.bu, ptr %i.by
  %.0.i.i.i81 = load i64, ptr %spec.select.i.i.i80, align 8, !tbaa !201
  %i.bz = and i64 %.0.i.i.i79, 4294967295
  %i.ca = lshr i64 %.0.i.i.i81, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 4 uses
  %.not.i82 = icmp ne i32 %i.cb, 0
  %i.cc = add i32 %i.cb, 1
  %i.cd = and i32 %i.cc, %i.cb
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = and i1 %.not.i82, %i.ce
  br i1 %i.cf, label %.critedge68, label %.critedge.thread

.critedge68:                                      ; preds = %bb.i
  %i.cg = trunc i64 %.0.i.i.i79 to i32
  %i.ch = tail call noundef range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !393
  store i64 %i.cj, ptr %3, align 8, !tbaa !393
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !394
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !395
  %.sroa.08.0.copyload = load ptr, ptr %i.bg, align 8, !tbaa !385
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !387
  %i.cn = call noundef ptr @_ZN4llvm18AMDGPUDAGToDAGISel8getBFE32EbRKNS_5SDLocENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(965) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.08.0.copyload, i32 %.sroa.29.0.copyload, i32 noundef %i.cg, i32 noundef %i.ch) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !392
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.cp, ptr noundef nonnull %1, ptr noundef %i.cn) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.cn) #24
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !392
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.cq, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  tail call void @_ZN4llvm18AMDGPUDAGToDAGISel21SelectS_BFEFromShiftsEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull %1)
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !384
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !415
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !388
  %i.cw = icmp eq i32 %i.cv, 198
  br i1 %i.cw, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm18AMDGPUDAGToDAGISel21SelectS_BFEFromShiftsEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull %1)
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !384 ; 2 uses
  %.sroa.088.0.copyload = load ptr, ptr %i.cy, align 8, !tbaa !385 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !388
  %.not = icmp eq i32 %i.da, 200
  br i1 %.not, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !384 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !415 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !388
  switch i32 %i.dg, label %.critedge.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit84
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit84
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit84: ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !415 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.dj, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.dk, align 8
  %.not.i85 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit84
  %i.dl = zext i16 %.sroa.0.0.copyload.i to i64
  %i.dm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dn, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit84
  %i.do = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.o, %bb.p
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.o ], [ %i.do, %bb.p ] ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i, 1
  %i.dp = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #25
  unreachable

bb.r:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i, 0
  %i.dq = trunc i64 %.fca.0.extract to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !393
  store i64 %i.ds, ptr %5, align 8, !tbaa !393
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !394
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !395
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !385
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !387
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !404 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !407
  %i.eb = icmp ult i32 %i.ea, 65
  %i.ec = load ptr, ptr %i.dy, align 8
  %spec.select.i.i.i86 = select i1 %i.eb, ptr %i.dy, ptr %i.ec
  %.0.i.i.i87 = load i64, ptr %spec.select.i.i.i86, align 8, !tbaa !201
  %i.ed = trunc i64 %.0.i.i.i87 to i32
  %i.ee = call noundef ptr @_ZN4llvm18AMDGPUDAGToDAGISel8getBFE32EbRKNS_5SDLocENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(965) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %i.ed, i32 noundef %i.dq) ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !392
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.eg, ptr noundef nonnull %1, ptr noundef %i.ee) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ee) #24
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !392
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.s

.critedge.thread:                                 ; preds = %bb.f, %bb.n, %bb.m, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit75, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit77, %bb.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit70, %bb.e, %bb.k, %bb.b, %bb.a
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm18AMDGPUDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 781906, ptr noundef nonnull @_ZZN4llvm18AMDGPUDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge68, %.critedge, %.critedge.thread, %bb.l, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AMDGPUDAGToDAGISel12SelectBRCONDEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 15 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.083.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !385 ; 7 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !387 ; 5 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !388
  %i.f = add i32 %i.e, -53
  %spec.select.i.i = icmp ult i32 %i.f, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !392
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = tail call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr noundef nonnull %1, i32 noundef 4332, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.b) #24 ; 0 uses
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1024
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel12isCBranchSCCEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull %1)
  br i1 %i.n, label %bb.d, label %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !538
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 680
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !539
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !597
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !640  ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !643
  %i.z = icmp ne ptr %i.y, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %i.ad, label %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.i, label %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit

_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.i: ; preds = %bb.d
  %i.ae = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr nonnull @.str, i64 14) #24
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.thread.i, label %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit

_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.thread.i: ; preds = %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !643
  %.pre10.i = load i32, ptr %i.aa, align 8
  %i.af = icmp ne ptr %.pre.i, null
  %i.ag = icmp ne i32 %.pre10.i, 0
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit

bb.e:                                             ; preds = %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.thread.i
  %i.ai = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr nonnull @.str.1, i64 22) #24
  %i.aj = icmp ne ptr %i.ai, null
  br label %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit

_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit: ; preds = %bb.e, %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.thread.i, %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.i, %bb.d, %bb.c
  %i.ak = phi i1 [ false, %bb.c ], [ true, %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.i ], [ %i.aj, %bb.e ], [ false, %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit.thread.i ], [ false, %bb.d ] ; 5 uses
  %i.al = xor i1 %i.ak, true                      ; 2 uses
  %i.am = load i32, ptr %i.d, align 8, !tbaa !388
  %i.an = icmp eq i32 %i.am, 222
  br i1 %i.an, label %bb.f, label %.thread123

bb.f:                                             ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel11isUniformBrEPKNS_6SDNodeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !384 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !415 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !388
  %i.at = icmp eq i32 %i.as, 656
  br i1 %i.at, label %bb.g, label %.thread123

bb.g:                                             ; preds = %bb.f
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.678.0.copyload = load i32, ptr %.sroa.678.0..sroa_idx, align 8, !tbaa !387 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !415
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !644 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 17                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  switch i32 %i.ax, label %.critedge [
    i32 22, label %bb.h
    i32 17, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.024.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !385
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.225.0.copyload = load i32, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !387
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.024.0.copyload, i32 %.sroa.225.0.copyload) #24
  br i1 %i.ba, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !372
  %i.bd = zext i32 %.sroa.678.0.copyload to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.be, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.bf, align 8
  %.not.i52 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.bh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -16
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %i.bi, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bh, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i54 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i53, 0
  %.fca.1.insert.i.i55 = insertvalue { i64, i8 } %.fca.0.insert.i.i54, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.j, %bb.k
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i55, %bb.j ], [ %i.bj, %bb.k ] ; 2 uses
  %.fca.1.extract21 = extractvalue { i64, i8 } %.pn.i, 1
  %i.bk = trunc nuw i8 %.fca.1.extract21 to i1
  br i1 %i.bk, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract20 = extractvalue { i64, i8 } %.pn.i, 0
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 384
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !647
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp eq i64 %.fca.0.extract20, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.br, label %bb.m, label %.thread123

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !384 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !415
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !644 ; 2 uses
  switch i32 %i.bx, label %_ZL20combineBallotPatternN4llvm7SDValueERb.exit.thread [
    i32 22, label %bb.n
    i32 17, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.sroa.02.0.copyload.i = load ptr, ptr %i.by, align 8, !tbaa !385
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %.sroa.23.0.copyload.i = load i32, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !387
  %i.bz = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.02.0.copyload.i, i32 %.sroa.23.0.copyload.i) #24
  br i1 %i.bz, label %bb.o, label %_ZL20combineBallotPatternN4llvm7SDValueERb.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !384 ; 2 uses
  %.sroa.09.0.copyload.i = load ptr, ptr %i.ca, align 8, !tbaa !385 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !388
  %i.cd = add i32 %i.cc, -227
  %spec.select.i.i56 = icmp ult i32 %i.cd, 3
  br i1 %spec.select.i.i56, label %bb.p, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN4llvm9KnownBitsD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !407
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !407
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit1

bb.d:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !201    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4llvm5APIntD2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #27
  br label %_ZN4llvm5APIntD2Ev.exit1

_ZN4llvm5APIntD2Ev.exit1:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel26isBaseWithConstantOffset64ENS_7SDValueERS1_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %1, i32 %2) #24
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !397
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !397
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.i = tail call fastcc noundef zeroext i1 @_ZL29getBaseWithOffsetUsingSplitORRN4llvm12SelectionDAGENS_7SDValueERS2_S3_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL29getBaseWithOffsetUsingSplitORRN4llvm12SelectionDAGENS_7SDValueERS2_S3_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !372
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !382
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  %i.e = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %.not4.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !388
  %i.h = icmp eq i32 %i.g, 248
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !415  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !388
  %i.n = icmp eq i32 %i.m, 162
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !384  ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !385 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !388
  %i.s = icmp eq i32 %i.r, 194
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !387
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.021.0.copyload, i32 %.sroa.7.0.copyload) #24
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !384
  %.sroa.016.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !385 ; 2 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !384
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !415
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !384
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.0.0.copyload15 = load ptr, ptr %i.aa, align 8, !tbaa !385 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !388
  %i.ad = icmp eq i32 %i.ac, 164
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload15, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !388
  %i.ag = icmp eq i32 %i.af, 164
  br i1 %i.ag, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !384 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload15, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !384 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !415 ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !415
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ap, %i.ar
  %i.at = select i1 %i.an, i1 %i.as, i1 false
  br i1 %i.at, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !415 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !388
  switch i32 %i.ax, label %.critedge [
    i32 37, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !404 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !407
  %i.bd = icmp ult i32 %i.bc, 65
  %i.be = load ptr, ptr %i.ba, align 8
  %spec.select.i.i.i.i.i = select i1 %i.bd, ptr %i.ba, ptr %i.be
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !201
  %i.bf = icmp eq i64 %.0.i.i.i.i.i, 0
  br i1 %i.bf, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !415 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !388
  switch i32 %i.bj, label %.critedge [
    i32 37, label %bb.l
    i32 12, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !404 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !407
  %i.bp = icmp ult i32 %i.bo, 65
  %i.bq = load ptr, ptr %i.bm, align 8
  %spec.select.i.i.i.i.i10 = select i1 %i.bp, ptr %i.bm, ptr %i.bq
  %.0.i.i.i.i.i11 = load i64, ptr %spec.select.i.i.i.i.i10, align 8, !tbaa !201
  %i.br = icmp eq i64 %.0.i.i.i.i.i11, 1
  br i1 %i.br, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.bt, i64 12, i1 false), !tbaa.struct !397
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !384
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !397
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm24AMDGPUDAGToDAGISelLegacy11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.2, i64 45 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22AMDGPUISelDAGToDAGPassC2ERNS_13TargetMachineE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1728) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN4llvm18AMDGPUDAGToDAGISelESt14default_deleteIS1_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.b = load i32, ptr %i.a, align 8, !tbaa !663
  %i.c = tail call noalias noundef nonnull dereferenceable(968) ptr @_Znwm(i64 noundef 968) #26, !noalias !759 ; 2 uses
  tail call void @_ZN4llvm18AMDGPUDAGToDAGISelC1ERNS_13TargetMachineENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(965) %i.c, ptr noundef nonnull align 8 dereferenceable(1728) %1, i32 noundef %i.b) #24, !noalias !759
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !762
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22AMDGPUISelDAGToDAGPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm20SelectionDAGISelPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #24
  ret void
}

declare void @_ZN4llvm20SelectionDAGISelPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18AMDGPUDAGToDAGISel18SelectADDRVTX_READENS_7SDValueERS1_S2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18AMDGPUDAGToDAGISel18SelectADDRIndirectENS_7SDValueERS1_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.b, ptr %5, align 8, !tbaa !393
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394
  store i32 %i.e, ptr %i.c, align 8, !tbaa !395
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !388
  switch i32 %i.g, label %.thread84 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 598, label %bb.b
    i32 59, label %bb.c
    i32 194, label %bb.c
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !392
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.i, i32 9, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.j, 1
  store ptr %.fca.0.extract30, ptr %3, align 8, !tbaa !385
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract31, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !387
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !392
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !404  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !407
  %i.q = icmp ult i32 %i.p, 65
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.r
  %.0.i.i.i54 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !201
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.k, i64 noundef %.0.i.i.i54, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !384
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !415  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !388
  switch i32 %i.x, label %.thread84 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.b, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !392
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i32 9, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract16, ptr %3, align 8, !tbaa !385
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !387
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !392
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !404 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !407
  %i.ah = icmp ult i32 %i.ag, 65
  %i.ai = load ptr, ptr %i.ae, align 8
  %spec.select.i.i.i56 = select i1 %i.ah, ptr %i.ae, ptr %i.ai
  %.0.i.i.i57 = load i64, ptr %spec.select.i.i.i56, align 8, !tbaa !201
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ab, i64 noundef %.0.i.i.i57, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !384 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !415 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !388
  switch i32 %i.ap, label %.thread84 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit59
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit59
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit59: ; preds = %bb.c, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !397
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !392
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !404 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !407
  %i.ax = icmp ult i32 %i.aw, 65
  %i.ay = load ptr, ptr %i.au, align 8
  %spec.select.i.i.i60 = select i1 %i.ax, ptr %i.au, ptr %i.ay
  %.0.i.i.i61 = load i64, ptr %spec.select.i.i.i60, align 8, !tbaa !201
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ar, i64 noundef %.0.i.i.i61, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.d

.thread84:                                        ; preds = %bb.a, %bb.c, %bb.b
  store ptr %1, ptr %3, align 8, !tbaa !385
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !387
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !392
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bb, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %.thread84, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit59, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %.sink87 = phi { ptr, i32 } [ %i.aj, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %i.bc, %.thread84 ], [ %i.az, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit59 ], [ %i.s, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ] ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %.sink87, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %.sink87, 1
  store ptr %.fca.0.extract9, ptr %4, align 8, !tbaa !385
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 true
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i32, i16, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm18AMDGPUDAGToDAGISel26getMaterializedScalarImm32ElRKNS_5SDLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.c, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.c, 1
  store ptr %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.d = tail call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 5256, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #24
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.d, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.392") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel15SelectVOP3Mods0ENS_7SDValueERS1_S2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.b, ptr %8, align 8, !tbaa !393
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394
end_hunk_1
begin_hunk_2_@_ZNK4llvm18AMDGPUDAGToDAGISel20SelectDS1Addr1OffsetENS_7SDValueERS1_S2_:bb.a
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !388
  switch i32 %i.az, label %.critedge121 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.i, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !404 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !407 ; 3 uses
  %i.bf = icmp ult i32 %i.be, 65
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !201
  %i.bh = icmp eq i32 %i.be, 0
  %i.bi = sub nuw nsw i32 64, %i.be
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = shl i64 %i.bg, %i.bj
  %i.bl = ashr exact i64 %i.bk, %i.bj
  %.0.i.i.i.i131 = select i1 %i.bh, i64 0, i64 %i.bl
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132

bb.k:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !201
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132: ; preds = %bb.j, %bb.k
  %.0.i.i.i130 = phi i64 [ %.0.i.i.i.i131, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bo = and i64 %.0.i.i.i130, 4294901760
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %.critedge121

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.br, 0 ; 2 uses
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.br, 1 ; 2 uses
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !392
  store ptr %.fca.0.extract58, ptr %6, align 8, !tbaa !385
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract59, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !387
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !384
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bs, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bu) #24 ; 2 uses
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.bv, 0 ; 2 uses
  %.fca.1.extract53 = extractvalue { ptr, i32 } %i.bv, 1
  %.not.i136 = icmp eq ptr %.fca.0.extract52, null
  br i1 %.not.i136, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 496
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !203
  %i.ca = icmp sgt i32 %i.bz, 5
  br i1 %i.ca, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 650
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !764, !range !518, !noundef !142
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137

_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137: ; preds = %bb.n
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.cf = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ce, ptr nonnull %.fca.0.extract52, i32 %.fca.1.extract53, i32 noundef 0) #24
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141, label %.critedge121

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141: ; preds = %bb.m, %bb.n, %bb.l, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cg, ptr %7, align 8, !tbaa !482
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 3, ptr %i.ci, align 4, !tbaa !493
  store ptr %.fca.0.extract58, ptr %i.cg, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.fca.1.extract59, ptr %.sroa.32.0..sroa_idx.i, align 8
  %i.cj = load ptr, ptr %i.av, align 8, !tbaa !384 ; 2 uses
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.244.0.copyload = load i32, ptr %.sroa.244.0..sroa_idx, align 8, !tbaa !387
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %.sroa.043.0.copyload = load ptr, ptr %i.ck, align 8, !tbaa !385
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.sroa.043.0.copyload, ptr %i.cl, align 8
  %.sroa.32.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.sroa.244.0.copyload, ptr %.sroa.32.0..sroa_idx.i140, align 8
  store i32 2, ptr %i.ch, align 8, !tbaa !494
  %.pre201.pre = load ptr, ptr %i.f, align 8, !tbaa !392 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !144
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %.pre, i64 659
  %.pre199 = load i8, ptr %.phi.trans.insert198, align 1, !tbaa !765, !range !518
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
  %.pre200 = load ptr, ptr %i.f, align 8, !tbaa !392
  %.pre202 = load ptr, ptr %7, align 8, !tbaa !482
  %.pre203 = load i32, ptr %i.ch, align 8, !tbaa !494
  %i.co = zext i32 %.pre203 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141
  %i.cp = phi i64 [ %i.co, %bb.o ], [ 2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %i.cq = phi ptr [ %.pre202, %bb.o ], [ %i.cg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %i.cr = phi ptr [ %.pre200, %bb.o ], [ %.pre201.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  %.0115 = phi i32 [ 11118, %bb.o ], [ 11073, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit141 ]
  store ptr %i.cq, ptr %9, align 8, !tbaa !400
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !403
  %i.ct = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cr, i32 noundef %.0115, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %9) #24
  store ptr %i.ct, ptr %3, align 8, !tbaa !385
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4161.0..sroa_idx, align 8, !tbaa !387
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cu, i64 noundef %.0.i.i.i130, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract29, ptr %4, align 8, !tbaa !385
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !387
  %i.cw = load ptr, ptr %7, align 8, !tbaa !482   ; 2 uses
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
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.cy, ptr %10, align 8, !tbaa !393
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.da = load i32, ptr %i.d, align 4, !tbaa !394
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !395
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !404 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !407
  %i.dg = icmp ult i32 %i.df, 65
  %i.dh = load ptr, ptr %i.dd, align 8
  %spec.select.i.i.i143 = select i1 %i.dg, ptr %i.dd, ptr %i.dh
  %.0.i.i.i144 = load i64, ptr %spec.select.i.i.i143, align 8, !tbaa !201
  %i.di = and i64 %.0.i.i.i144, 4294901760
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.r, label %.critedge125

bb.r:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dk, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.dl, 1
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !392
  store ptr %.fca.0.extract16, ptr %11, align 8, !tbaa !385
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !387
  %i.dn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dm, i32 noundef 10458, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #24
  store ptr %i.dn, ptr %3, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx152, align 8, !tbaa !387
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !404 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !407
  %i.dt = icmp ult i32 %i.ds, 65
  %i.du = load ptr, ptr %i.dq, align 8
  %spec.select.i.i.i147 = select i1 %i.dt, ptr %i.dq, ptr %i.du
  %.0.i.i.i148 = load i64, ptr %spec.select.i.i.i147, align 8, !tbaa !201
  %i.dv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.do, i64 noundef %.0.i.i.i148, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.dv, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.dv, 1
  store ptr %.fca.0.extract9, ptr %4, align 8, !tbaa !385
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge123

.critedge125:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge121

.critedge121:                                     ; preds = %bb.h, %bb.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit132, %.critedge125, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit137
  store ptr %1, ptr %3, align 8, !tbaa !385
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !387
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.dx, ptr %12, align 8, !tbaa !393
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dz = load i32, ptr %i.d, align 4, !tbaa !394
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !395
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dw, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
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
  %i.b = udiv i32 %3, %5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = urem i32 %4, %5
  %i.d = udiv i32 %4, %5
  %.not9 = icmp eq i32 %i.c, 0
  %i.e = icmp ult i32 %i.b, 256
  %or.cond = and i1 %.not9, %i.e
  %i.f = icmp ult i32 %i.d, 256
  %or.cond12 = and i1 %or.cond, %i.f
  br i1 %or.cond12, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load i32, ptr %i.i, align 8, !tbaa !203
  %i.k = icmp sgt i32 %i.j, 5
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 650
  %i.m = load i8, ptr %i.l, align 2, !tbaa !764, !range !518, !noundef !142
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !392
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388  ; 2 uses
  %i.c = icmp eq i32 %i.b, 59                     ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !387
  %i.e = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.e, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit:        ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 194
  br i1 %i.f, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18: ; preds = %bb.b, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load i32, ptr %i.i, align 8, !tbaa !203
  %i.k = icmp sgt i32 %i.j, 10
  br i1 %i.k, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !384  ; 3 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !385 ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !388
  switch i32 %i.p, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.d, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !404  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !407  ; 3 uses
  %i.v = icmp ult i32 %i.u, 65
  br i1 %i.v, label %bb.e, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.w = load i64, ptr %i.s, align 8, !tbaa !201
  %i.x = icmp ne i32 %i.u, 0
  %i.y = sub nuw nsw i32 64, %i.u
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl i64 %i.w, %i.z                      ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %or.cond = select i1 %i.x, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread22: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !201
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !392
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr %.sroa.02.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread: ; preds = %bb.b, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit
  %.1 = phi i1 [ true, %bb.b ], [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit ], [ true, %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread18 ], [ %i.aj, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread ], [ true, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel24isFlatScratchBaseLegalSVENS_7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388
  switch i32 %i.b, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13 [
    i32 59, label %bb.b
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4, !tbaa !387
  %i.d = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.d, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i32, ptr %i.g, align 8, !tbaa !203
  %i.i = icmp sgt i32 %i.h, 10
  br i1 %i.i, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !384  ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !385
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !387
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !392
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.n, ptr %.sroa.04.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br i1 %i.o, label %bb.d, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !392
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU11isGFX12PlusERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320) %i.b) #24
  br i1 %i.c, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !385 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !388
  switch i32 %i.i, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25 [
    i32 59, label %bb.c
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4, !tbaa !387
  %i.k = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.k, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !388
  switch i32 %i.m, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26 [
    i32 59, label %bb.d
    i32 194, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread
  ]

bb.d:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i17 = load i32, ptr %i.n, align 4, !tbaa !387
  %i.o = trunc i32 %.sroa.0.0.copyload.i.i17 to i1
  br i1 %i.o, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26

_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26: ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !404  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !407  ; 3 uses
  %i.u = icmp ult i32 %i.t, 65
  br i1 %i.u, label %bb.e, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28

bb.e:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26
  %i.v = load i64, ptr %i.r, align 8, !tbaa !201
  %i.w = icmp ne i32 %i.t, 0
  %i.x = sub nuw nsw i32 64, %i.t
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl i64 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  %or.cond = select i1 %i.w, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread28: ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread26
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !201
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !384 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !385
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !387
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !392
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr %.sroa.04.0.copyload, i32 %.sroa.4.0.copyload, i32 noundef 0) #24
  br i1 %i.al, label %bb.g, label %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit18.thread

bb.g:                                             ; preds = %_ZL16isNoUnsignedWrapN4llvm7SDValueE.exit.thread25
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !392
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.b, ptr %7, align 8, !tbaa !393
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394
  store i32 %i.e, ptr %i.c, align 8, !tbaa !395
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 17 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %1, i32 %2) #24
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !384  ; 3 uses
  %.sroa.0125.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !385 ; 3 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5127.0.copyload = load i32, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !387 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0242.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !385
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0242.0.copyload, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !404  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !407
  %i.q = icmp ult i32 %i.p, 65
  %i.r = load ptr, ptr %i.n, align 8
end_hunk_2
begin_hunk_3_@_ZNK4llvm18AMDGPUDAGToDAGISel18SelectDSReadWrite2ENS_7SDValueERS1_S2_S2_j:bb.a
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !393
  store i64 %i.bm, ptr %8, align 8, !tbaa !393
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !394
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !395
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.bq, 0 ; 2 uses
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.bq, 1 ; 2 uses
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !392
  store ptr %.fca.0.extract78, ptr %9, align 8, !tbaa !385
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract79, ptr %.sroa.583.0..sroa_idx, align 8, !tbaa !387
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !384
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.br, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bt) #24 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.bu, 0 ; 2 uses
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.bu, 1
  %.not10.i194 = icmp eq ptr %.fca.0.extract72, null
  br i1 %.not10.i194, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !144 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !203
  %i.bz = icmp sgt i32 %i.by, 5
  br i1 %i.bz, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 650
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !764, !range !518, !noundef !142
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195: ; preds = %bb.l
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.ce = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.cd, ptr nonnull %.fca.0.extract72, i32 %.fca.1.extract73, i32 noundef 0) #24
  br i1 %i.ce, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199, label %.critedge175

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit199: ; preds = %bb.k, %bb.l, %bb.j, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.cf, ptr %10, align 8, !tbaa !482
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 3, ptr %i.ch, align 4, !tbaa !493
  store ptr %.fca.0.extract78, ptr %i.cf, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract79, ptr %.sroa.32.0..sroa_idx.i, align 8
  %i.ci = load ptr, ptr %i.as, align 8, !tbaa !384 ; 2 uses
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %.sroa.265.0.copyload = load i32, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !387
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.sroa.064.0.copyload = load ptr, ptr %i.cj, align 8, !tbaa !385
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.sroa.064.0.copyload, ptr %i.ck, align 8
  %.sroa.32.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %.sroa.265.0.copyload, ptr %.sroa.32.0..sroa_idx.i198, align 8
  store i32 2, ptr %i.cg, align 8, !tbaa !494
  %.pre272.pre = load ptr, ptr %i.f, align 8, !tbaa !392 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !144
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %.pre, i64 659
  %.pre270 = load i8, ptr %.phi.trans.insert269, align 1, !tbaa !765, !range !518
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
  %.pre271 = load ptr, ptr %i.f, align 8, !tbaa !392
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
  %i.ct = load ptr, ptr %10, align 8, !tbaa !482
  store ptr %i.ct, ptr %12, align 8, !tbaa !400
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = load i32, ptr %i.cg, align 8, !tbaa !494
  %i.cw = zext i32 %i.cv to i64
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !403
  %i.cx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cn, i32 noundef %.0171, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %12) #24
  store ptr %i.cx, ptr %3, align 8, !tbaa !385
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4225.0..sroa_idx, align 8, !tbaa !387
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.cz = zext nneg i32 %i.bh to i64
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cy, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.da, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.da, 1
  store ptr %.fca.0.extract48, ptr %4, align 8, !tbaa !385
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.453.0..sroa_idx, align 8, !tbaa !387
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.dc = zext nneg i32 %i.bj to i64
  %i.dd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.db, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.dd, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.dd, 1
  store ptr %.fca.0.extract41, ptr %5, align 8, !tbaa !385
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract42, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !387
  %i.de = load ptr, ptr %10, align 8, !tbaa !482  ; 2 uses
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
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !404 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !407
  %i.dl = icmp ult i32 %i.dk, 65
  %i.dm = load ptr, ptr %i.di, align 8
  %spec.select.i.i.i201 = select i1 %i.dl, ptr %i.di, ptr %i.dm
  %.0.i.i.i202 = load i64, ptr %spec.select.i.i.i201, align 8, !tbaa !201
  %i.dn = trunc i64 %.0.i.i.i202 to i32           ; 3 uses
  %i.do = add i32 %6, %i.dn                       ; 2 uses
  %i.dp = urem i32 %i.dn, %6
  %i.dq = udiv i32 %i.dn, %6                      ; 2 uses
  %.not.i203 = icmp eq i32 %i.dp, 0
  br i1 %.not.i203, label %bb.p, label %.critedge177

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.dr = urem i32 %i.do, %6
  %i.ds = udiv i32 %i.do, %6                      ; 2 uses
  %.not9.i205 = icmp eq i32 %i.dr, 0
  %i.dt = icmp ult i32 %i.dq, 256
  %or.cond284 = and i1 %.not9.i205, %i.dt
  %i.du = icmp ult i32 %i.ds, 256
  %or.cond285 = and i1 %or.cond284, %i.du
  br i1 %or.cond285, label %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit206, label %.critedge177

_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit206: ; preds = %bb.p
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.dw, 1
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !392
  store ptr %.fca.0.extract28, ptr %13, align 8, !tbaa !385
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !387
  %i.dy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dx, i32 noundef 10458, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #24
  store ptr %i.dy, ptr %3, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx214, align 8, !tbaa !387
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.ea = zext nneg i32 %i.dq to i64
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dz, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract21, ptr %4, align 8, !tbaa !385
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !387
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.ed = zext nneg i32 %i.ds to i64
  %i.ee = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ec, i64 noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.ee, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.ee, 1
  store ptr %.fca.0.extract14, ptr %5, align 8, !tbaa !385
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !387
  br label %.critedge179

.critedge177:                                     ; preds = %bb.g, %bb.p, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.h, %bb.c, %bb.b, %_ZNK4llvm18AMDGPUDAGToDAGISel16isDSOffset2LegalENS_7SDValueEjjj.exit, %.critedge175
  store ptr %1, ptr %3, align 8, !tbaa !385
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !387
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ef, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.eg, 1
  store ptr %.fca.0.extract7, ptr %4, align 8, !tbaa !385
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !387
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ei, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 907
  %i.d = load i8, ptr %i.c, align 1, !tbaa !766, !range !518, !noundef !142
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !393
  store i64 %i.g, ptr %10, align 8, !tbaa !393
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !394
  store i32 %i.j, ptr %i.h, align 8, !tbaa !395
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.l, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract79 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract79, ptr %8, align 8, !tbaa !385
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract80, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !387
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.n, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.o, 1
  store ptr %.fca.0.extract72, ptr %7, align 8, !tbaa !385
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !387
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.q, 1
  store ptr %.fca.0.extract65, ptr %9, align 8, !tbaa !385
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %.fca.1.extract66, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !387
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 835
  %i.t = load i8, ptr %i.s, align 1, !tbaa !767, !range !518, !noundef !142
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !392  ; 2 uses
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
  store ptr %.sroa.063.0, ptr %5, align 8, !tbaa !385
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %.sroa.564.0, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !387
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.z = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.y, ptr nonnull %1, i32 %2) #24
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !384 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !415 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !404 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !407
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %i.ag, align 8
  %spec.select.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ak
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !201
  %i.al = icmp ult i64 %.0.i.i.i, 4294967296
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0158.0.copyload162 = load ptr, ptr %i.ab, align 8, !tbaa !385
  %.sroa.11.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11.sroa.0.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx166, align 8, !tbaa !387
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.0158.0 = phi ptr [ %.sroa.0158.0.copyload162, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ] ; 6 uses
  %.sroa.11.sroa.0.0 = phi i32 [ %.sroa.11.sroa.0.0.copyload, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ] ; 3 uses
  %.0112 = phi ptr [ %i.ad, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0158.0, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !388
  switch i32 %i.an, label %bb.m [
    i32 420, label %bb.i
    i32 59, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0158.0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !384 ; 4 uses
  %.sroa.0152.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !385 ; 3 uses
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aq = load i64, ptr %.sroa.6155.0..sroa_idx, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.0147.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !385 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.as = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.at, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract41, ptr %9, align 8, !tbaa !385
  store i32 %.fca.1.extract42, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !387
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0152.0.copyload, i64 32
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 4
  %.not187 = icmp eq i8 %i.ax, 0
  br i1 %.not187, label %13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0147.0.copyload, i64 32
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, 4
  %.not188 = icmp eq i8 %i.ba, 0
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %.not188, label %12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call noundef ptr @_ZNK4llvm18AMDGPUDAGToDAGISel14buildSMovImm64ERNS_5SDLocEmNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 noundef 0, i16 71, ptr null)
  store ptr %i.bb, ptr %3, align 8, !tbaa !385
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4143.0..sroa_idx, align 8, !tbaa !387
  store ptr %.sroa.0158.0, ptr %4, align 8, !tbaa !385
  store i32 %.sroa.11.sroa.0.0, ptr %.sroa.6157.0..sroa_idx158, align 8, !tbaa !387
  br label %bb.l

12:                                               ; preds = %bb.j
  store ptr %.sroa.0147.0.copyload, ptr %3, align 8, !tbaa !385
  %.sroa.6.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.extract.trunc = trunc i64 %i.as to i32
  store i32 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx150, align 8, !tbaa !387
  store ptr %.sroa.0152.0.copyload, ptr %4, align 8, !tbaa !385
  %.sroa.6157.0.extract.trunc = trunc i64 %i.aq to i32
  store i32 %.sroa.6157.0.extract.trunc, ptr %.sroa.6157.0..sroa_idx158, align 8, !tbaa !387
  br label %bb.l

13:                                               ; preds = %bb.i
  store ptr %.sroa.0152.0.copyload, ptr %3, align 8, !tbaa !385
  %.sroa.6157.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6157.0.extract.trunc161 = trunc i64 %i.aq to i32
  store i32 %.sroa.6157.0.extract.trunc161, ptr %.sroa.6157.0..sroa_idx159, align 8, !tbaa !387
  store ptr %.sroa.0147.0.copyload, ptr %4, align 8, !tbaa !385
  %.sroa.6.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0.extract.trunc153 = trunc i64 %i.as to i32
  store i32 %.sroa.6.0.extract.trunc153, ptr %.sroa.6.0..sroa_idx151, align 8, !tbaa !387
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %12, %13
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bc, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %.fca.0.extract34, ptr %6, align 8, !tbaa !385
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !387
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0158.0, i64 32
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = and i8 %i.bf, 4
  %.not189 = icmp eq i8 %i.bg, 0
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %.not189, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call noundef ptr @_ZNK4llvm18AMDGPUDAGToDAGISel14buildSMovImm64ERNS_5SDLocEmNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 noundef 0, i16 71, ptr null)
  store ptr %i.bh, ptr %3, align 8, !tbaa !385
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !387
  store ptr %.sroa.0158.0, ptr %4, align 8, !tbaa !385
  store i32 %.sroa.11.sroa.0.0, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !387
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract27, ptr %9, align 8, !tbaa !385
  store i32 %.fca.1.extract28, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !387
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bk, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract20, ptr %4, align 8, !tbaa !385
  store i32 %.fca.1.extract21, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !387
  store ptr %.sroa.0158.0, ptr %3, align 8, !tbaa !385
  %.sroa.11.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.11.sroa.0.0, ptr %.sroa.11.0..sroa_idx169, align 8, !tbaa !387
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.not = icmp eq ptr %.0112, null
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.bn, 1
  store ptr %.fca.0.extract13, ptr %6, align 8, !tbaa !385
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !387
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 912
  %i.bq = getelementptr inbounds nuw i8, ptr %.0112, i64 88 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !404 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !407
  %i.bv = icmp ult i32 %i.bu, 65
  %i.bw = load ptr, ptr %i.bs, align 8
  %spec.select.i.i.i114 = select i1 %i.bv, ptr %i.bs, ptr %i.bw
  %.0.i.i.i115 = load i64, ptr %spec.select.i.i.i114, align 8, !tbaa !201
  %i.bx = trunc i64 %.0.i.i.i115 to i32
  %i.by = call noundef zeroext i1 @_ZNK4llvm11SIInstrInfo21isLegalMUBUFImmOffsetEj(ptr noundef nonnull align 8 dereferenceable(840) %i.bp, i32 noundef %i.bx) #24
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !392 ; 2 uses
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !404 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !407
  %i.ce = icmp ult i32 %i.cd, 65
  %i.cf = load ptr, ptr %i.cb, align 8
  %spec.select.i.i.i116 = select i1 %i.ce, ptr %i.cb, ptr %i.cf
  %.0.i.i.i117 = load i64, ptr %spec.select.i.i.i116, align 8, !tbaa !201
  %i.cg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bz, i64 noundef %.0.i.i.i117, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.cg, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.cg, 1
  store ptr %.fca.0.extract6, ptr %6, align 8, !tbaa !385
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !387
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bz, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ch, 1
  store ptr %.fca.0.extract1, ptr %6, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !392 ; 2 uses
  %i.cj = load ptr, ptr %i.bq, align 8, !tbaa !404 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !407
  %i.cn = icmp ult i32 %i.cm, 65
  %i.co = load ptr, ptr %i.ck, align 8
  %spec.select.i.i.i118 = select i1 %i.cn, ptr %i.ck, ptr %i.co
  %.0.i.i.i119 = load i64, ptr %spec.select.i.i.i118, align 8, !tbaa !201
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ci, i64 noundef %.0.i.i.i119, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cp, 1
  store ptr %.fca.0.extract, ptr %11, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ci, i32 noundef 5256, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #24
  store ptr %i.cq, ptr %5, align 8, !tbaa !385
  store i32 0, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !387
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.2 = xor i1 %i.e, true
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm11SIInstrInfo21isLegalMUBUFImmOffsetEj(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel17SelectMUBUFAddr64ENS_7SDValueERS1_S2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr null, ptr %7, align 8, !tbaa !415
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr null, ptr %10, align 8, !tbaa !415
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.e = load i32, ptr %i.d, align 8, !tbaa !203
  %i.f = icmp slt i32 %i.e, 7
  br i1 %i.f, label %bb.b, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel11SelectMUBUFENS_7SDValueERS1_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %10)
  br i1 %i.g, label %bb.c, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %10, align 8, !tbaa !415
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !404  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !407  ; 3 uses
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !201
  %i.p = icmp eq i32 %i.m, 0
  %i.q = sub nuw nsw i32 64, %i.m
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = shl i64 %i.o, %i.r
  %i.t = ashr exact i64 %i.s, %i.r
  br i1 %i.p, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.v, %bb.e ]
  %.not.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.not, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !393
  store i64 %i.x, ptr %11, align 8, !tbaa !393
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !394
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !395
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !500
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !392
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !385
end_hunk_3
begin_hunk_4_@_ZNK4llvm18AMDGPUDAGToDAGISel12isCBranchSCCEPKNS_6SDNodeE:bb.a
  br i1 %.not, label %bb.e, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.p, align 8, !tbaa !389 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.t, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.q, align 8, !tbaa !389 ; 2 uses
  %.not.i.i6 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i6, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.f ], [ %.sroa.018.022.i.i, %bb.e ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !390
  %i.t = icmp ne i32 %i.s, %.sroa.10.0            ; 2 uses
  %i.u = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %cond.i.i, label %bb.f, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.f
  %i.v = icmp eq i32 %.214.i.i, 0
  br i1 %i.v, label %bb.g, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !384  ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !415
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !390
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !372
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ae, align 8, !tbaa !382
  switch i16 %.sroa.0.0.copyload.i.i.i, label %.critedge [
    i16 7, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
    i16 8, label %bb.h
    i16 13, label %bb.j
    i16 14, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !415
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !644
  switch i32 %i.ai, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread [
    i32 22, label %bb.i
    i32 17, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 496
  %i.am = load i32, ptr %i.al, align 8, !tbaa !203
  %i.an = icmp sgt i32 %i.am, 6
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 836
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !648, !range !518, !noundef !142
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.j
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %.lr.ph.i.i, %bb.g, %bb.e, %bb.a, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.d, %bb.j, %bb.i, %bb.h, %.critedge, %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %.2 = phi i1 [ true, %bb.j ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %bb.e ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ false, %bb.d ], [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.g ], [ %i.an, %bb.i ], [ false, %bb.h ], [ false, %.lr.ph.i.i ]
  ret i1 %.2
}

declare i32 @_ZNK4llvm14SIRegisterInfo6getVCCEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114isExtractHiEltEN4llvm7SDValueERS1_(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388  ; 2 uses
  %i.c = icmp eq i32 %i.b, 248
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.e, align 8, !tbaa !385 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !388
  br label %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit

_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit: ; preds = %bb.a, %bb.b
  %.pr = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.pre.i, %bb.b ], [ %0, %bb.a ] ; 2 uses
  switch i32 %.pr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 164, label %bb.c
    i32 230, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !384  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !415  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !388
  switch i32 %i.k, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %bb.d
    i32 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !404  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !407  ; 2 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %.split, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit

.split:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.n, align 8, !tbaa !201
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZNK4llvm14ConstantSDNode5isOneEv.exit:           ; preds = %bb.d
  %i.t = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #28
  %i.u = add i32 %i.p, -1
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

bb.e:                                             ; preds = %.split, %_ZNK4llvm14ConstantSDNode5isOneEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !397
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !384
  %.sroa.0.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !385 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !388
  %i.aa = icmp eq i32 %i.z, 200
  br i1 %i.aa, label %bb.g, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !384 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !415 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !388
  switch i32 %i.ag, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29: ; preds = %bb.g, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !404 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !407
  %i.am = icmp ult i32 %i.al, 65
  %i.an = load ptr, ptr %i.aj, align 8
  %spec.select.i.i.i = select i1 %i.am, ptr %i.aj, ptr %i.an
  %.0.i.i.i30 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !201
  %i.ao = icmp eq i64 %.0.i.i.i30, 16
  br i1 %i.ao, label %bb.h, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29
  %.sroa.01.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !385 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !388
  %i.ar = icmp eq i32 %i.aq, 248
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !384 ; 2 uses
  %.sroa.0.0.copyload.pre.i35 = load ptr, ptr %i.at, align 8, !tbaa !385
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi ptr [ %i.at, %bb.i ], [ %i.ac, %bb.h ]
  %.sroa.0.0.copyload.i32 = phi ptr [ %.sroa.0.0.copyload.pre.i35, %bb.i ], [ %.sroa.01.0.copyload, %bb.h ]
  %.sroa.2.0.copyload.i31.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.2.0.copyload.i31 = load i32, ptr %.sroa.2.0.copyload.i31.in, align 8, !tbaa !387
  store ptr %.sroa.0.0.copyload.i32, ptr %1, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.2.0.copyload.i31, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit, %bb.c, %bb.e, %_ZNK4llvm14ConstantSDNode5isOneEv.exit, %.split, %bb.g, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29, %bb.j, %bb.f
  %.4 = phi i1 [ false, %bb.g ], [ false, %_ZN12_GLOBAL__N_112stripBitcastEN4llvm7SDValueE.exit ], [ true, %bb.j ], [ false, %bb.f ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit29 ], [ true, %bb.e ], [ false, %_ZNK4llvm14ConstantSDNode5isOneEv.exit ], [ false, %.split ], [ false, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AMDGPUDAGToDAGISel21SelectDSAppendConsumeEPNS_6SDNodeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.392", align 8 ; 3 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !397
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.064.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !385 ; 3 uses
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !387 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.j, ptr %.sroa.064.0.copyload, i32 %.sroa.766.0.copyload) #24
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !384  ; 3 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !385 ; 3 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.528.0.copyload = load i32, ptr %.sroa.528.0..sroa_idx, align 8, !tbaa !387 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.061.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !385
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.061.0.copyload, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !404  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !407
  %i.t = icmp ult i32 %i.s, 65
  %i.u = load ptr, ptr %i.q, align 8
  %spec.select.i = select i1 %i.t, ptr %i.q, ptr %i.u
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !201
  %i.v = and i64 %.0.i, 4294901760
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.sroa.027.0.copyload, null
  br i1 %.not.i, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 496
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !203
  %i.ab = icmp sgt i32 %i.aa, 5
  br i1 %i.ab, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 650
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !764, !range !518, !noundef !142
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit

_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.af, ptr nonnull %.sroa.027.0.copyload, i32 %.sroa.528.0.copyload, i32 noundef 0) #24
  br i1 %i.ag, label %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread, label %.thread

_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !500
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !384 ; 2 uses
  %.sroa.09.0.copyload.i = load ptr, ptr %i.ak, align 8, !tbaa !385
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.210.0.copyload.i = load i32, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !393
  store i64 %i.am, ptr %5, align 8, !tbaa !393
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !394
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !395
  store ptr %.sroa.027.0.copyload, ptr %6, align 8, !tbaa !385
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.528.0.copyload, ptr %.sroa.217.0..sroa_idx.i, align 8, !tbaa !387
  %i.aq = call { ptr, i32 } @_ZNK4llvm16SITargetLowering8copyToM0ERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocES3_(ptr noundef nonnull align 8 dereferenceable(518456) %i.ai, ptr noundef nonnull align 8 dereferenceable(920) %i.aj, ptr %.sroa.09.0.copyload.i, i32 %.sroa.210.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #24 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.aq, 0 ; 2 uses
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ar = call noundef ptr @_ZNK4llvm18AMDGPUDAGToDAGISel12glueCopyToOpEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull readonly align 8 dereferenceable(965) %0, ptr noundef nonnull %1, ptr %.fca.0.extract5.i, i32 %.fca.1.extract6.i, ptr %.fca.0.extract5.i, i32 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.at, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not = icmp eq ptr %.fca.0.extract12, null
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit, %bb.a, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread
  %.173 = phi ptr [ %i.ar, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread ], [ %1, %bb.a ], [ %1, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit ], [ %1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !500
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.ax = getelementptr inbounds nuw i8, ptr %.173, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !384 ; 2 uses
  %.sroa.09.0.copyload.i49 = load ptr, ptr %i.ay, align 8, !tbaa !385
  %.sroa.210.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.210.0.copyload.i51 = load i32, ptr %.sroa.210.0..sroa_idx.i50, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.az = getelementptr inbounds nuw i8, ptr %.173, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !393
  store i64 %i.ba, ptr %3, align 8, !tbaa !393
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.173, i64 68
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !394
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !395
  store ptr %.sroa.064.0.copyload, ptr %4, align 8, !tbaa !385
  %.sroa.217.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.766.0.copyload, ptr %.sroa.217.0..sroa_idx.i52, align 8, !tbaa !387
  %i.be = call { ptr, i32 } @_ZNK4llvm16SITargetLowering8copyToM0ERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocES3_(ptr noundef nonnull align 8 dereferenceable(518456) %i.av, ptr noundef nonnull align 8 dereferenceable(920) %i.aw, ptr %.sroa.09.0.copyload.i49, i32 %.sroa.210.0.copyload.i51, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #24 ; 2 uses
  %.fca.0.extract5.i53 = extractvalue { ptr, i32 } %i.be, 0 ; 2 uses
  %.fca.1.extract6.i54 = extractvalue { ptr, i32 } %i.be, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bf = call noundef ptr @_ZNK4llvm18AMDGPUDAGToDAGISel12glueCopyToOpEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull readonly align 8 dereferenceable(965) %0, ptr noundef nonnull %.173, ptr %.fca.0.extract5.i53, i32 %.fca.1.extract6.i54, ptr %.fca.0.extract5.i53, i32 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bg, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.f

bb.f:                                             ; preds = %.thread, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread
  %.sroa.063.2 = phi ptr [ %.fca.0.extract12, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread ], [ %.fca.0.extract5, %.thread ]
  %.pn = phi { ptr, i32 } [ %i.at, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread ], [ %i.bh, %.thread ]
  %.2 = phi ptr [ %i.ar, %_ZNK4llvm18AMDGPUDAGToDAGISel15isDSOffsetLegalENS_7SDValueEj.exit.thread ], [ %i.bf, %.thread ] ; 5 uses
  %.sroa.7.2 = extractvalue { ptr, i32 } %.pn, 1
  %i.bi = icmp eq i32 %i.h, 2
  %i.bj = icmp eq i32 %2, 2445
  %i.bk = select i1 %i.bj, i32 3134, i32 3198
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %.sroa.063.2, ptr %10, align 16, !tbaa !385
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !387
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.bn = zext i1 %i.bi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bo, 1
  store ptr %.fca.0.extract, ptr %i.bl, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !397
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %.2, i64 64
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !495
  %i.bt = zext i16 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw i8, ptr %.2, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !384
  %i.bx = and i64 %i.bu, 4294967295
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bw, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !397
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.ca = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !372
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 66
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !497
  %i.ce = zext i16 %i.cd to i32
  store ptr %10, ptr %12, align 8, !tbaa !400
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.cf, align 8, !tbaa !403
  %i.cg = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bz, ptr noundef nonnull %.2, i32 noundef %i.bk, ptr %i.cb, i32 %i.ce, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %12) #24
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.g, ptr %i.a, align 8, !tbaa !649
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ch, ptr noundef %i.cg, ptr nonnull %i.a, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

declare void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AMDGPUDAGToDAGISel25SelectDSBvhStackIntrinsicEPNS_6SDNodeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %4 = alloca %"class.llvm::ArrayRef.392", align 8 ; 3 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %switch.selectcmp = icmp eq i32 %2, 2451
  %switch.select = select i1 %switch.selectcmp, i32 3141, i32 3143
  %switch.selectcmp15 = icmp eq i32 %2, 2452
  %switch.select16 = select i1 %switch.selectcmp15, i32 3142, i32 %switch.select
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !397
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !397
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !397
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !397
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !397
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !392
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !372
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.t = load i16, ptr %i.s, align 2, !tbaa !497
  %i.u = zext i16 %i.t to i32
  store ptr %3, ptr %4, align 8, !tbaa !400
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.v, align 8, !tbaa !403
  %i.w = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr noundef nonnull %1, i32 noundef %switch.select16, ptr %i.r, i32 %i.u, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %4) #24
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.n, ptr %i.a, align 8, !tbaa !649
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.x, ptr noundef %i.w, ptr nonnull %i.a, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AMDGPUDAGToDAGISel21SelectTensorLoadStoreEPNS_6SDNodeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33:
  %3 = alloca %"class.llvm::SmallVector.685", align 8 ; 21 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.392", align 8 ; 3 uses
  %i.a = icmp eq i32 %2, 3650                     ; 2 uses
  %i.b = select i1 %i.a, i32 5864, i32 5868       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !482
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 6 uses
  store i32 7, ptr %i.e, align 4, !tbaa !493
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !384  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.017.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !385
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.218.0.copyload = load i32, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !387
  store ptr %.sroa.017.0.copyload, ptr %i.c, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.218.0.copyload, ptr %.sroa.32.0..sroa_idx.i, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.215.0.copyload = load i32, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !387
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.014.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sroa.014.0.copyload, ptr %i.j, align 8
  %.sroa.32.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.sroa.215.0.copyload, ptr %.sroa.32.0..sroa_idx.i32, align 8
  store i32 2, ptr %i.d, align 8, !tbaa !494
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %.sroa.051.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !385 ; 3 uses
  %.sroa.552.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.552.0.copyload.pre = load i32, ptr %.sroa.552.0..sroa_idx.phi.trans.insert, align 8, !tbaa !387 ; 2 uses
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.050.0.copyload.pre = load ptr, ptr %.phi.trans.insert56, align 8, !tbaa !385 ; 3 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %.sroa.5.0.copyload.pre = load i32, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8, !tbaa !387 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.051.0.copyload.pre) #24
  br i1 %i.k, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33
  %i.l = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.050.0.copyload.pre) #24
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = select i1 %i.a, i32 5863, i32 5867
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39

bb.c:                                             ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33
  %i.n = load i32, ptr %i.d, align 8, !tbaa !494  ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !493
  %.not.i34 = icmp ult i32 %i.n, %i.o
  br i1 %.not.i34, label %bb.e, label %bb.d, !prof !498

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZNK4llvm18AMDGPUDAGToDAGISel15SelectVOP3PModsENS_7SDValueERS1_S2_b:bb.a
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract63, ptr %.sroa.265.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.gt, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false), !tbaa.struct !397
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.gv = load ptr, ptr %i.fx, align 8, !tbaa !392
  %i.gw = call noundef i32 @_ZN4llvm14SIRegisterInfo20getSubRegFromChannelEjj(i32 noundef 0, i32 noundef %i.gn) #24
  %i.gx = zext i32 %i.gw to i64
  %i.gy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.gv, i64 noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.gy, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.gy, 1
  store ptr %.fca.0.extract58, ptr %i.gu, align 16
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 %.fca.1.extract59, ptr %.sroa.261.0..sroa_idx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 48
  %. = select i1 %i.r, ptr %13, ptr %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.gz, ptr noundef nonnull align 8 dereferenceable(12) %., i64 12, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.hb = load ptr, ptr %i.fx, align 8, !tbaa !392
  %i.hc = call noundef i32 @_ZN4llvm14SIRegisterInfo20getSubRegFromChannelEjj(i32 noundef %i.gn, i32 noundef %i.gn) #24
  %i.hd = zext i32 %i.hc to i64
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.hb, i64 noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.he, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.he, 1
  store ptr %.fca.0.extract54, ptr %i.ha, align 16
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.hf = load ptr, ptr %i.fx, align 8, !tbaa !392
  %i.hg = load ptr, ptr %3, align 8, !tbaa !415
  %i.hh = load i32, ptr %.sroa.10.0..0.229.sroa_idx, align 8, !tbaa !390
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !372
  %i.hk = zext i32 %i.hh to i64
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.hk ; 2 uses
  %.sroa.0.0.copyload.i.i359 = load i16, ptr %i.hl, align 8, !tbaa !382
  %.sroa.21.0..sroa_idx.i.i360 = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.sroa.21.0.copyload.i.i361 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i360, align 8, !tbaa !398
  store ptr %18, ptr %19, align 8, !tbaa !400
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.hm, align 8, !tbaa !403
  %i.hn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.hf, i32 noundef 19, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0.0.copyload.i.i359, ptr %.sroa.21.0.copyload.i.i361, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %19) #24
  store ptr %i.hn, ptr %3, align 8, !tbaa !385
  store i32 0, ptr %.sroa.10.0..0.229.sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.au

bb.au:                                            ; preds = %bb.ao, %_ZNK4llvm8TypeSizecvmEv.exit358, %bb.am
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !392
  %i.hq = zext nneg i32 %.4270 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !393
  store i64 %i.hs, ptr %20, align 8, !tbaa !393
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !394
  store i32 %i.hv, ptr %i.ht, align 8, !tbaa !395
  %i.hw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.hp, i64 noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.hw, 0
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.hw, 1
  store ptr %.fca.0.extract42, ptr %4, align 8, !tbaa !385
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.critedge276

_ZNK4llvm18AMDGPUDAGToDAGISel17isInlineImmediateEPKNS_6SDNodeE.exit.thread: ; preds = %bb.ah, %.split, %_ZNK4llvm18AMDGPUDAGToDAGISel17isInlineImmediateEPKNS_6SDNodeE.exit
  %.not = icmp eq i32 %i.cd, 64
  br i1 %.not, label %bb.av, label %.critedge

bb.av:                                            ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel17isInlineImmediateEPKNS_6SDNodeE.exit.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !388
  switch i32 %i.hy, label %.critedge [
    i32 38, label %bb.aw
    i32 13, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !409
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  call void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !407
  %i.ie = icmp ult i32 %i.id, 65                  ; 2 uses
  %i.if = load ptr, ptr %21, align 8              ; 3 uses
  %spec.select.i = select i1 %i.ie, ptr %21, ptr %i.if
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !201 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  %or.cond = select i1 %i.ie, i1 true, i1 %i.ig
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.if) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.ih = trunc i64 %.0.i to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !144
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 780
  %i.il = load i8, ptr %i.ik, align 4, !tbaa !883, !range !518, !noundef !142
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = call noundef zeroext i1 @_ZN4llvm6AMDGPU20isInlinableLiteral32Eib(i32 noundef %i.ih, i1 noundef zeroext %i.im) #29
  br i1 %i.in, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !393
  store i64 %i.ir, ptr %22, align 8, !tbaa !393
  %i.is = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !394
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !395
  %i.iv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ip, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.iv, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.iv, 1
  store ptr %.fca.0.extract28, ptr %3, align 8, !tbaa !385
  store i32 %.fca.1.extract29, ptr %.sroa.10.0..0.229.sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.iw = load ptr, ptr %i.io, align 8, !tbaa !392
  %i.ix = zext nneg i32 %.4270 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.iy = load i64, ptr %i.iq, align 8, !tbaa !393
  store i64 %i.iy, ptr %23, align 8, !tbaa !393
  %i.iz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ja = load i32, ptr %i.it, align 4, !tbaa !394
  store i32 %i.ja, ptr %i.iz, align 8, !tbaa !395
  %i.jb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.iw, i64 noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.jb, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.jb, 1
  store ptr %.fca.0.extract18, ptr %4, align 8, !tbaa !385
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %.critedge276

.critedge:                                        ; preds = %_ZNK4llvm18AMDGPUDAGToDAGISel17isInlineImmediateEPKNS_6SDNodeE.exit.thread, %bb.ag, %bb.av, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.thread

bb.az:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.jd = load i16, ptr %i.jc, align 8, !tbaa !495
  %i.je = icmp eq i16 %i.jd, 2
  br i1 %i.je, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.sroa.0.0.copyload.i.i364 = load i16, ptr %i.i, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i365 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i366 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i365, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i364, ptr %6, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i366, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !530 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i364, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ba
  %i.ji = add i16 %.sroa.0.0.copyload.i.i364, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.ji, 53
  br i1 %spec.select.i.i.i.i, label %bb.bb, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.ba
  %i.jj = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br i1 %i.jj, label %bb.bb, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.bb:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !387 ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 2
  br i1 %i.jl, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !387 ; 2 uses
  %i.jo = icmp slt i32 %i.jn, 2
  br i1 %i.jo, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !384 ; 2 uses
  %.sroa.0371.0.copyload = load ptr, ptr %i.jq, align 8, !tbaa !385 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jr = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 24
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !388
  %i.ju = icmp eq i32 %i.jt, 260
  br i1 %i.ju, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !384 ; 2 uses
  %.sroa.0371.0.copyload373 = load ptr, ptr %i.jw, align 8, !tbaa !385
  %.sroa.7.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jx = load i32, ptr %.sroa.7.0..sroa_idx375, align 8, !tbaa !387
  %.sroa.7.0.insert.ext = zext i32 %i.jx to i64
  %i.jy = xor i32 %.0266, 3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.insert.ext, %bb.be ], [ %i.jr, %bb.bd ]
  %.sroa.0371.0 = phi ptr [ %.sroa.0371.0.copyload373, %bb.be ], [ %.sroa.0371.0.copyload, %bb.bd ]
  %.6 = phi i32 [ %i.jy, %bb.be ], [ %.0266, %bb.bd ] ; 2 uses
  %i.jz = icmp eq i32 %i.jk, 1
  %i.ka = or i32 %.6, 4
  %spec.select277 = select i1 %i.jz, i32 %i.ka, i32 %.6 ; 2 uses
  %i.kb = icmp eq i32 %i.jn, 1
  %i.kc = or i32 %spec.select277, 8
  %.8 = select i1 %i.kb, i32 %i.kc, i32 %spec.select277
  store ptr %.sroa.0371.0, ptr %3, align 8, !tbaa !385
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0 to i32
  store i32 %.sroa.7.0.extract.trunc, ptr %.sroa.10.0..0.229.sroa_idx, align 8, !tbaa !387
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !392
  %i.kf = zext nneg i32 %.8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !393
  store i64 %i.kh, ptr %24, align 8, !tbaa !393
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !394
  store i32 %i.kk, ptr %i.ki, align 8, !tbaa !395
  %i.kl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ke, i64 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(12) %24, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.kl, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.kl, 1
  store ptr %.fca.0.extract7, ptr %4, align 8, !tbaa !385
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.bg

.thread:                                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit, %bb.bc, %bb.g, %bb.i, %.critedge, %bb.az
  %i.km = or disjoint i32 %.0266, 8
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !392
  %i.kp = zext nneg i32 %i.km to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !393
  store i64 %i.kr, ptr %25, align 8, !tbaa !393
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !394
  store i32 %i.ku, ptr %i.ks, align 8, !tbaa !395
  %i.kv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ko, i64 noundef %i.kp, ptr noundef nonnull align 8 dereferenceable(12) %25, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.kv, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.kv, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.bg

.critedge276:                                     ; preds = %bb.ay, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.critedge276, %.thread
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !415
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !372
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.h, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.j = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.k, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i4 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3, 0
  %.fca.1.insert.i.i5 = insertvalue { i64, i8 } %.fca.0.insert.i.i4, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b, %bb.c
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i5, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret { i64, i8 } %.pn.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_117stripExtractLoEltEN4llvm7SDValueE(ptr %0, i32 %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388  ; 2 uses
  %i.c = icmp eq i32 %i.b, 164
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.015.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.g = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.015.0.copyload, i32 %.sroa.4.0.copyload) #24
  br i1 %i.g, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !372
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.k, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.l, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.o, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.n, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.d, %bb.e
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.fca.1.extract9 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.q = trunc nuw i8 %.fca.1.extract9 to i1
  br i1 %i.q, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract8 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.r = icmp ult i64 %.fca.0.extract8, 33
  br i1 %i.r, label %.thread.sink.split, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.b
  %.pr = load i32, ptr %i.a, align 8, !tbaa !388
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread, %bb.a
  %i.s = phi i32 [ %.pr, %.critedge.thread ], [ %i.b, %bb.a ]
  %i.t = icmp eq i32 %i.s, 230
  br i1 %i.t, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !384  ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !385 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !387 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !372
  %i.y = zext i32 %.sroa.5.0.copyload to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.z, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.aa, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.ac = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %i.ad, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ac, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i24 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i23, 0
  %.fca.1.insert.i.i25 = insertvalue { i64, i8 } %.fca.0.insert.i.i24, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
end_hunk_5
