Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerVectorScan?download=true
inline.NumInlined: 541
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_114ScanToArithOps15matchAndRewriteEN4mlir6vector6ScanOpERNS1_15PatternRewriterE:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.n
  store i64 1, ptr %i.bq, align 8, !tbaa !16
  %i.br = load i32, ptr %i.ab, align 8, !tbaa !17
  %i.bs = zext i32 %i.br to i64
  %.sroa.045.0.copyload = load ptr, ptr %7, align 8, !tbaa !101
  %i.bt = load ptr, ptr %10, align 8, !tbaa !81
  %i.bu = load i64, ptr %i.ao, align 8, !tbaa !82
  %i.bv = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %i.bp, i64 %i.bs, ptr %.sroa.045.0.copyload, ptr %i.bt, i64 %i.bu) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bw, ptr %11, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.by, align 4, !tbaa !18
  %i.bz = icmp ugt i64 %i.q, 6
  br i1 %i.bz, label %bb.h, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bx, align 8, !tbaa !17
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.bw, i64 noundef %i.q, i64 noundef 8) #13
  %i.ca = load ptr, ptr %11, align 8, !tbaa !20
  %.idx.i.i.i.i.i.i.i = shl i64 %i.q, 3           ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !16
  %storemerge.i = trunc i64 %i.q to i32           ; 3 uses
  store i32 %storemerge.i, ptr %i.bx, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.cb, ptr %12, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.cd, align 4, !tbaa !18
  store i32 0, ptr %i.cc, align 8, !tbaa !17
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.cb, i64 noundef %i.q, i64 noundef 8) #13
  %i.ce = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i.i.i.i.i
  %i.cg = add i64 %.idx.i.i.i.i.i.i.i, -8         ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i100.prol

.lr.ph.i.i.i.i.i.i.i.i.i100.prol:                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol
  %.06.i.i.i.i.i.i.i.i.i101.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol ], [ %i.ce, %bb.h ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol ], [ 0, %bb.h ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i101.prol, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i100.prol, !llvm.loop !71

.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i100.prol, %bb.h
  %.06.i.i.i.i.i.i.i.i.i101.unr = phi ptr [ %i.ce, %bb.h ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol ]
  %i.ck = icmp ult i64 %i.cg, 56
  br i1 %i.ck, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103, label %.lr.ph.i.i.i.i.i.i.i.i.i100

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.g
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread, label %.lr.ph.i.i.i.i.i.i.i.i95

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i
  store i32 0, ptr %i.bx, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.cl, ptr %12, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.cn, align 4, !tbaa !18
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103

.lr.ph.i.i.i.i.i.i.i.i95:                         ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bw, i8 0, i64 range(i64 0, 49) %.idx.i.i.i.i.i.i, i1 false), !tbaa !16
  %storemerge.i157 = trunc nuw nsw i64 %i.q to i32 ; 2 uses
  store i32 %storemerge.i157, ptr %i.bx, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.co, ptr %12, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.cp, align 4, !tbaa !18
  store i64 1, ptr %i.co, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i97 = icmp eq i64 %i.q, 1
  br i1 %.not.i.i.i.i.i.i.i.i97, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, label %.lr.ph.i.i.i.i.i.i.i.i95.1

.lr.ph.i.i.i.i.i.i.i.i.i100:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i100
  %.06.i.i.i.i.i.i.i.i.i101 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i100 ], [ %.06.i.i.i.i.i.i.i.i.i101.unr, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i101, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 8
  store i64 1, ptr %i.cq, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 16
  store i64 1, ptr %i.cr, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 32
  store i64 1, ptr %i.ct, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 40
  store i64 1, ptr %i.cu, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 48
  store i64 1, ptr %i.cv, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 56
  store i64 1, ptr %i.cw, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i101, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i102.7 = icmp eq ptr %i.cx, %i.cf
  br i1 %.not.i.i.i.i.i.i.i.i.i102.7, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103, label %.lr.ph.i.i.i.i.i.i.i.i.i100, !llvm.loop !72

.lr.ph.i.i.i.i.i.i.i.i95.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i95
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 1, ptr %i.cy, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i97.1 = icmp eq i64 %i.q, 2
  br i1 %.not.i.i.i.i.i.i.i.i97.1, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, label %.lr.ph.i.i.i.i.i.i.i.i95.2

.lr.ph.i.i.i.i.i.i.i.i95.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i95.1
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 1, ptr %i.cz, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i97.2 = icmp eq i64 %i.q, 3
  br i1 %.not.i.i.i.i.i.i.i.i97.2, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, label %.lr.ph.i.i.i.i.i.i.i.i95.3

.lr.ph.i.i.i.i.i.i.i.i95.3:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i95.2
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 1, ptr %i.da, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i97.3 = icmp eq i64 %i.q, 4
  br i1 %.not.i.i.i.i.i.i.i.i97.3, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, label %.lr.ph.i.i.i.i.i.i.i.i95.4

.lr.ph.i.i.i.i.i.i.i.i95.4:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i95.3
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 1, ptr %i.db, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i97.4 = icmp eq i64 %i.q, 5
  br i1 %.not.i.i.i.i.i.i.i.i97.4, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, label %.lr.ph.i.i.i.i.i.i.i.i95.5

.lr.ph.i.i.i.i.i.i.i.i95.5:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i95.4
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 1, ptr %i.dc, align 8, !tbaa !16
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170

_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170: ; preds = %.lr.ph.i.i.i.i.i.i.i.i95.5, %.lr.ph.i.i.i.i.i.i.i.i95.4, %.lr.ph.i.i.i.i.i.i.i.i95.3, %.lr.ph.i.i.i.i.i.i.i.i95.2, %.lr.ph.i.i.i.i.i.i.i.i95.1, %.lr.ph.i.i.i.i.i.i.i.i95
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103

_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i100, %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread
  %i.de = phi ptr [ %i.dd, %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170 ], [ %i.cm, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i100 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit ] ; 4 uses
  %i.df = phi ptr [ %i.co, %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170 ], [ %i.cl, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i100 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit ]
  %storemerge.i158 = phi i32 [ %storemerge.i157, %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103.loopexit170 ], [ 0, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i92.thread ], [ %storemerge.i, %.lr.ph.i.i.i.i.i.i.i.i.i100 ], [ %storemerge.i, %.lr.ph.i.i.i.i.i.i.i.i.i100.prol.loopexit ]
  store i32 %storemerge.i158, ptr %i.de, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.dg, ptr %13, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.di, align 4, !tbaa !18
  br i1 %i.ad, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i109, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i109: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %i.dg, i64 noundef %i.i, i64 noundef 8) #13
  %.pre8.pre.i.i110 = load i32, ptr %i.dh, align 8, !tbaa !17
  %i.dj = zext i32 %.pre8.pre.i.i110 to i64
  %.pre176 = load ptr, ptr %13, align 8, !tbaa !20
  br label %bb.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit103
  %.not.i.i.i106 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i106, label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i109
  %i.dk = phi ptr [ %.pre176, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i109 ], [ %i.dg, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105 ]
  %.pre8.i5.i107 = phi i64 [ %i.dj, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i109 ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105 ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.pre8.i5.i107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 8 %i.h, i64 %.idx.i, i1 false)
  %.pre.i.i108 = load i32, ptr %i.dh, align 8, !tbaa !17
  %.pre177 = load ptr, ptr %13, align 8, !tbaa !20
  br label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111

_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105, %bb.i
  %i.dm = phi ptr [ %i.dg, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105 ], [ %.pre177, %bb.i ] ; 2 uses
  %i.dn = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i105 ], [ %.pre.i.i108, %bb.i ]
  %i.do = add i32 %i.dn, %i.ai                    ; 2 uses
  store i32 %i.do, ptr %i.dh, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.n
  store i64 1, ptr %i.dp, align 8, !tbaa !16
  %i.dq = zext i32 %i.do to i64
  %i.dr = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.dm, i64 %i.dq) #13 ; 2 uses
  %i.ds = load ptr, ptr %12, align 8, !tbaa !20
  %i.dt = load i32, ptr %i.de, align 8, !tbaa !17
  %i.du = zext i32 %i.dt to i64
  %i.dv = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.ds, i64 %i.du) #13
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n ; 3 uses
  %.sroa.052.0164 = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111
  %i.dz = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.n
  store i64 0, ptr %i.ec, align 8, !tbaa !16
  %i.ed = load i32, ptr %i.bx, align 8, !tbaa !17
  %i.ee = zext i32 %i.ed to i64
  %i.ef = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.eb, i64 %i.ee) #13
  %i.eg = load ptr, ptr %5, align 8, !tbaa !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.sroa.0.0.copyload.i.i.i.i112.peel = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.ek = call ptr @_ZN4mlir6vector21ExtractStridedSliceOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrES7_S7_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.bv, ptr %.sroa.0.0.copyload.i.i.i.i112.peel, ptr %i.ef, ptr %i.dr, i64 %i.dz) #13 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -16 ; 2 uses
  br i1 %i.o, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.em = icmp eq i64 %i.z, 0
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %.0.copyload.i.i.i.i.i.peel = load i64, ptr %i.en, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i.i.peel, -8
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  %i.eq = load ptr, ptr %5, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %.sroa.0.0.copyload.i.i.i.i114.peel = load ptr, ptr %i.et, align 8, !tbaa !79 ; 2 uses
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eu = call ptr @_ZN4mlir6vector11ShapeCastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.ep, ptr %.sroa.0.0.copyload.i.i.i.i114.peel) #13
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ew = call ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.ep, ptr %.sroa.0.0.copyload.i.i.i.i114.peel) #13
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.sroa.0131.0.peel = phi ptr [ %i.el, %bb.j ], [ %i.ex, %bb.m ], [ %i.ev, %bb.l ] ; 3 uses
  %i.ey = load ptr, ptr %11, align 8, !tbaa !20
  %i.ez = load i32, ptr %i.bx, align 8, !tbaa !17
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %12, align 8, !tbaa !20
  store ptr %i.fb, ptr %14, align 8, !tbaa !105
  %i.fc = load i32, ptr %i.de, align 8, !tbaa !17
  %i.fd = zext i32 %i.fc to i64
  store i64 %i.fd, ptr %i.ea, align 8, !tbaa !106
  %i.fe = call ptr @_ZN4mlir6vector20InsertStridedSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.0131.0.peel, ptr nonnull %.sroa.052.0164, ptr %i.ey, i64 %i.fa, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %14) #13
  %.sroa.052.0.peel = getelementptr inbounds i8, ptr %i.fe, i64 -16 ; 2 uses
  %i.ff = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.fg = icmp sgt i64 %i.ff, 1
  br i1 %i.fg, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.n, %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111
  %.sroa.0139.0.lcssa = phi ptr [ null, %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111 ], [ %.sroa.0131.0.peel, %bb.n ], [ %i.fu, %.peel.next ] ; 2 uses
  %.sroa.052.0.lcssa = phi ptr [ %.sroa.052.0164, %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit111 ], [ %.sroa.052.0.peel, %bb.n ], [ %.sroa.052.0, %.peel.next ]
  %i.fh = icmp eq i64 %i.z, 0
  br i1 %i.fh, label %bb.o, label %bb.p

.peel.next:                                       ; preds = %bb.n, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.n ] ; 2 uses
  %.sroa.052.0168 = phi ptr [ %.sroa.052.0, %.peel.next ], [ %.sroa.052.0.peel, %bb.n ]
  %.sroa.0139.0166 = phi ptr [ %i.fu, %.peel.next ], [ %.sroa.0131.0.peel, %bb.n ]
  %.sroa.0138.0165 = phi ptr [ %i.fs, %.peel.next ], [ %i.el, %bb.n ]
  %i.fi = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.n
  store i64 %indvars.iv, ptr %i.fj, align 8, !tbaa !16
  %i.fk = load i32, ptr %i.bx, align 8, !tbaa !17
  %i.fl = zext i32 %i.fk to i64
  %i.fm = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.fi, i64 %i.fl) #13
  %i.fn = load ptr, ptr %5, align 8, !tbaa !74
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.0.0.copyload.i.i.i.i112 = load ptr, ptr %i.fq, align 8, !tbaa !79
  %i.fr = call ptr @_ZN4mlir6vector21ExtractStridedSliceOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrES7_S7_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.bv, ptr %.sroa.0.0.copyload.i.i.i.i112, ptr %i.fm, ptr %i.dr, i64 %i.dz) #13
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -16 ; 2 uses
  %.sroa.019.0.copyload = select i1 %i.o, ptr %i.fs, ptr %.sroa.0138.0165
  %i.ft = call noundef i32 @_ZN4mlir6vector6ScanOp7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %i.fu = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, i32 noundef %i.ft, ptr %.sroa.0139.0166, ptr nonnull %.sroa.019.0.copyload, ptr null, i64 0) #13 ; 3 uses
  %i.fv = load ptr, ptr %11, align 8, !tbaa !20
  %i.fw = load i32, ptr %i.bx, align 8, !tbaa !17
  %i.fx = zext i32 %i.fw to i64
  %i.fy = load ptr, ptr %12, align 8, !tbaa !20
  store ptr %i.fy, ptr %14, align 8, !tbaa !105
  %i.fz = load i32, ptr %i.de, align 8, !tbaa !17
  %i.ga = zext i32 %i.fz to i64
  store i64 %i.ga, ptr %i.ea, align 8, !tbaa !106
  %i.gb = call ptr @_ZN4mlir6vector20InsertStridedSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.fu, ptr nonnull %.sroa.052.0168, ptr %i.fv, i64 %i.fx, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %14) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.052.0 = getelementptr inbounds i8, ptr %i.gb, i64 -16 ; 2 uses
  %i.gc = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.gd = icmp sgt i64 %i.gc, %indvars.iv.next
  br i1 %i.gd, label %.peel.next, label %._crit_edge, !llvm.loop !73

bb.o:                                             ; preds = %._crit_edge
  %i.ge = call ptr @_ZN4mlir6vector9ExtractOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEl(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0139.0.lcssa, i64 noundef 0) #13
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -16
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !101
  %i.gg = call ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.05.0.copyload, ptr nonnull %i.gf) #13
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8, !tbaa !101
  %i.gh = call ptr @_ZN4mlir6vector11ShapeCastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.01.0.copyload, ptr %.sroa.0139.0.lcssa) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn162 = phi ptr [ %i.gg, %bb.o ], [ %i.gh, %bb.p ]
  %.sroa.0124.0 = getelementptr inbounds i8, ptr %.pn162, i64 -16
  %i.gi = load ptr, ptr %5, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr %.sroa.052.0.lcssa, ptr %16, align 8, !tbaa !79
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gk = ptrtoint ptr %.sroa.0124.0 to i64
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !79
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull %16, i64 2) #13
  %i.gl = load i64, ptr %15, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = load ptr, ptr %2, align 8, !tbaa !14
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.gi, i64 %i.gl, i64 %i.gn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.gq = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.dg
  br i1 %i.gr, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.gq) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.gs = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.df
  br i1 %i.gt, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit118, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.gs) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit118

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit118:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.gu = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.bw
  br i1 %i.gv, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit119, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit118
  call void @free(ptr noundef %i.gu) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit119

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit119:         ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit118, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit119, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector6ScanOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.085.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector6ScanOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit119 ]
  %i.gw = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.an
  br i1 %i.gx, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.gw) #13
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.gy = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.aa
  br i1 %i.gz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit120, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit
  call void @free(ptr noundef %i.gy) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit120

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit120:         ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %_ZL11isValidKindbN4mlir6vector13CombiningKindE.exit.thread154

_ZL11isValidKindbN4mlir6vector13CombiningKindE.exit.thread154: ; preds = %bb.a, %_ZL11isValidKindbN4mlir6vector13CombiningKindE.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit120
  %.sroa.085.1 = phi i8 [ %.sroa.085.0, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit120 ], [ 0, %_ZL11isValidKindbN4mlir6vector13CombiningKindE.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i8 %.sroa.085.1
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef") align 8) unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4mlir4Type12isIntOrIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef i32 @_ZN4mlir6vector6ScanOp7getKindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef i64 @_ZN4mlir6vector6ScanOp15getReductionDimEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4mlir6vector6ScanOp12getInclusiveEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #6

declare { ptr, ptr } @_ZN4mlir7Builder11getZeroAttrENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr, i64, ptr, ptr, i64) local_unnamed_addr #6

declare ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #6

declare ptr @_ZN4mlir6vector21ExtractStridedSliceOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrES7_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, i64) local_unnamed_addr #6

declare ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir6vector11ShapeCastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #6

end_hunk_0
