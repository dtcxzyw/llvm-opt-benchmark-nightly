Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BuiltinDialectBytecode?download=true
inline.NumInlined: 4360
inline.NumDeleted: 2459
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_117readAffineMapAttrEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE:bb.a

._crit_edge.i:                                    ; preds = %bb.x, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit60.i
  %i.da = load i64, ptr %i.e, align 8, !tbaa !27
  %i.db = trunc i64 %i.da to i32
  %i.dc = load ptr, ptr %4, align 8, !tbaa !183
  %i.dd = load i32, ptr %i.ck, align 8, !tbaa !179
  %i.de = zext i32 %i.dd to i64
  %i.df = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef %i.p, i32 noundef %i.db, ptr %i.dc, i64 %i.de, ptr noundef %0) #17
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i, %.thread77.i
  %.sroa.07.1 = phi ptr [ %i.df, %._crit_edge.i ], [ null, %.thread77.i ]
  %.sroa.054.12.i = phi i1 [ true, %._crit_edge.i ], [ false, %.thread77.i ]
  %i.dg = load ptr, ptr %4, align 8, !tbaa !183   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cj
  br i1 %i.dh, label %.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.dg) #17
  br label %.split

.split.thread:                                    ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ab

.split:                                           ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.sroa.054.12.i, label %bb.aa, label %bb.ab

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.sroa.054.3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split24, %.split, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit.thread, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit
  %.sroa.07.510 = phi ptr [ %i.q, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit.thread ], [ %.sroa.07.4, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit ], [ %.sroa.07.1, %.split ], [ %.sroa.07.3, %.split24 ]
  %i.di = call ptr @_ZN4mlir13AffineMapAttr3getENS_9AffineMapE(ptr %.sroa.07.510) #17
  br label %bb.ab

bb.ab:                                            ; preds = %.split.thread, %.split24.thread, %.split24, %.split, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit.thread11, %bb.aa
  %.sroa.05.0 = phi ptr [ %i.di, %bb.aa ], [ null, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit.thread11 ], [ null, %_ZN12_GLOBAL__N_113readAffineMapERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_9AffineMapE.exit ], [ null, %.split ], [ null, %.split24 ], [ null, %.split24.thread ], [ null, %.split.thread ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_118readIntegerSetAttrEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::FailureOr.362", align 2 ; 5 uses
  %3 = alloca %"class.mlir::AffineExpr", align 8  ; 5 uses
  %4 = alloca %"class.llvm::FailureOr.353", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.327", align 8 ; 11 uses
  %6 = alloca %"class.llvm::SmallVector.340", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !179
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 6, ptr %i.g, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 40, ptr %i.j, align 8, !tbaa !60
  %i.k = load ptr, ptr %1, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i8 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #17
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #17
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.u = load ptr, ptr %1, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !273
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %"_ZN4mlir21DialectBytecodeReader8readListINS_10AffineExprERZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS9_15SmallVectorImplIT_EEOT0_.exit"

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !181
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.thread.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #17
  br label %.lr.ph.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %.loopexit22, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.thread.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.095.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !270
  %i.ae = call fastcc i8 @_ZN12_GLOBAL__N_114readAffineExprERN4mlir21DialectBytecodeReaderEPNS0_11MLIRContextERNS0_10AffineExprE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = inttoptr i64 %i.ag to ptr
  %.sroa.0.0.i.i.i = select i1 %i.af, ptr %i.ah, ptr undef ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr %.sroa.0.0.i.i.i, ptr %4, align 8
  store i8 %i.ae, ptr %i.ad, align 8
  %i.ai = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !179 ; 3 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !181
  %.not.i.i.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i, label %bb.h, label %bb.g, !prof !182

bb.g:                                             ; preds = %bb.f
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = zext i32 %i.aj to i64
  %i.an = load ptr, ptr %5, align 8, !tbaa !183
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  store i64 %i.ai, ptr %i.ao, align 8, !tbaa !42
  %i.ap = add nuw i32 %i.aj, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !179
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aq = add nuw i64 %.095.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aq, %i.z
  br i1 %exitcond.not.i.i, label %.loopexit22, label %bb.e, !llvm.loop !274

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %"_ZN4mlir21DialectBytecodeReader8readListINS_10AffineExprERZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS9_15SmallVectorImplIT_EEOT0_.exit"

"_ZN4mlir21DialectBytecodeReader8readListINS_10AffineExprERZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS9_15SmallVectorImplIT_EEOT0_.exit": ; preds = %bb.c, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.o

.loopexit22:                                      ; preds = %bb.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !179 ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 3 uses
  %i.at = load i64, ptr %i.j, align 8, !tbaa !60
  %i.au = icmp ult i64 %i.at, %i.as
  br i1 %i.au, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i: ; preds = %.loopexit22
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.h, i64 noundef %i.as, i64 noundef 1) #17
  br label %.lr.ph.i.preheader

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i:    ; preds = %.loopexit22
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.n
  %.095.i = phi i64 [ %i.bi, %bb.n ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.av = load ptr, ptr %1, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i8 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17, !inline_history !275 ; 2 uses
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load i8, ptr %i.a, align 1, !range !82  ; 2 uses
  %spec.select1.i.i = select i1 %i.az, i8 %i.ba, i8 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.sroa.2.0.insert.ext.i.i = zext nneg i8 %i.ay to i16
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i16 %.sroa.2.0.insert.ext.i.i, 8
  %i.bb = zext i8 %spec.select1.i.i to i16
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %i.bb
  store i16 %.sroa.0.0.insert.insert.i.i, ptr %2, align 2
  br i1 %i.az, label %bb.k, label %"_ZN4mlir21DialectBytecodeReader21readListWithKnownSizeIbRZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEmOT0_.exit"

bb.k:                                             ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !59  ; 3 uses
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !60
  %.not.i.i14 = icmp ult i64 %i.bc, %i.bd
  br i1 %.not.i.i14, label %bb.m, label %bb.l, !prof !182

bb.l:                                             ; preds = %bb.k
  %i.be = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE18growAndEmplaceBackIJbEEERbDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %6, align 8, !tbaa !57
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.bc
  store i8 %i.ba, ptr %i.bg, align 1, !tbaa !80
  %i.bh = add nuw i64 %i.bc, 1
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bi = add nuw i64 %.095.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.as
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !276

"_ZN4mlir21DialectBytecodeReader21readListWithKnownSizeIbRZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEmOT0_.exit": ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.o

.loopexit.loopexit:                               ; preds = %bb.n
  %.pre = load i32, ptr %i.f, align 8, !tbaa !179
  %i.bj = zext i32 %.pre to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i
  %i.bk = phi i64 [ %i.bj, %.loopexit.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i ]
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !27
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !27
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = load ptr, ptr %5, align 8, !tbaa !183
  %i.bq = load ptr, ptr %6, align 8, !tbaa !57
  %i.br = load i64, ptr %i.i, align 8, !tbaa !59
  %i.bs = call ptr @_ZN4mlir10IntegerSet3getEjjN4llvm8ArrayRefINS_10AffineExprEEENS2_IbEE(i32 noundef %i.bm, i32 noundef %i.bo, ptr %i.bp, i64 %i.bk, ptr %i.bq, i64 %i.br) #17
  %i.bt = call ptr @_ZN4mlir14IntegerSetAttr3getENS_10IntegerSetE(ptr %i.bs) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %"_ZN4mlir21DialectBytecodeReader8readListINS_10AffineExprERZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS9_15SmallVectorImplIT_EEOT0_.exit", %"_ZN4mlir21DialectBytecodeReader21readListWithKnownSizeIbRZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEmOT0_.exit", %.loopexit
  %.sroa.011.0 = phi ptr [ %i.bt, %.loopexit ], [ null, %"_ZN4mlir21DialectBytecodeReader21readListWithKnownSizeIbRZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEmOT0_.exit" ], [ null, %"_ZN4mlir21DialectBytecodeReader8readListINS_10AffineExprERZN12_GLOBAL__N_118readIntegerSetAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS9_15SmallVectorImplIT_EEOT0_.exit" ], [ null, %bb.b ], [ null, %bb.a ]
  %i.bu = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.h
  br i1 %i.bv, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef %i.bu) #17
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bw = load ptr, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.e
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit
  call void @free(ptr noundef %i.bw) #17
  br label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_121readStridedLayoutAttrEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::FailureOr.381", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.369", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 6, ptr %i.f, align 4, !tbaa !181
  %i.g = load ptr, ptr %1, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #17
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.l = load ptr, ptr %1, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !277
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_121readStridedLayoutAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.r = load i32, ptr %i.f, align 4, !tbaa !181
  %i.s = zext i32 %i.r to i64
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d, i64 noundef %i.q, i64 noundef 8) #17
  br label %.lr.ph.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i:  ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.095.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.v = load ptr, ptr %1, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i8 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !278 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.z, i64 %i.aa, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i64 %spec.select1.i.i.i, ptr %2, align 8
  store i8 %i.y, ptr %i.u, align 8
  br i1 %i.z, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !179 ; 3 uses
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !181
  %.not.i.i.i = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !182

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18growAndEmplaceBackIJlEEERlDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %3, align 8, !tbaa !183
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !27
  %i.ah = add nuw i32 %i.ab, 1
  store i32 %i.ah, ptr %i.e, align 8, !tbaa !179
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ai = add nuw i64 %.095.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.q
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !279

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_121readStridedLayoutAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_121readStridedLayoutAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit": ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

.loopexit:                                        ; preds = %bb.h, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ak = load ptr, ptr %3, align 8, !tbaa !183
  %i.al = load i32, ptr %i.e, align 8, !tbaa !179
  %i.am = zext i32 %i.al to i64
  %i.an = call ptr @_ZN4mlir17StridedLayoutAttr3getEPNS_11MLIRContextElN4llvm8ArrayRefIlEE(ptr noundef %0, i64 noundef %i.aj, ptr %i.ak, i64 %i.am) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_121readStridedLayoutAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit", %.loopexit
  %.sroa.07.0 = phi ptr [ %i.an, %.loopexit ], [ null, %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_121readStridedLayoutAttrEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit" ], [ null, %bb.a ]
  %i.ao = load ptr, ptr %3, align 8, !tbaa !183   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ao) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNR4mlir18InFlightDiagnostic6appendIJRA25_KcEEERS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %1) #17
  store i32 3, ptr %2, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122readUnrankedTensorTypeEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE:bb.a
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_114readVectorTypeEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.llvm::FailureOr.381", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.369", align 8 ; 11 uses
  %3 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %4 = alloca %class.anon.564, align 8            ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.352", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !179
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 6, ptr %i.e, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !349
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_114readVectorTypeEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !181
  %i.m = zext i32 %i.l to i64
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef %i.k, i64 noundef 8) #17
  br label %.lr.ph.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i:  ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.095.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !350 ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %spec.select1.i.i.i = select i1 %i.t, i64 %i.u, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i64 %spec.select1.i.i.i, ptr %1, align 8
  store i8 %i.s, ptr %i.o, align 8
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.d, align 8, !tbaa !179  ; 3 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !181
  %.not.i.i.i = icmp ult i32 %i.v, %i.w
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !182

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18growAndEmplaceBackIJlEEERlDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %2, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  store i64 %i.u, ptr %i.aa, align 8, !tbaa !27
  %i.ab = add nuw i32 %i.v, 1
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !179
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ac = add nuw i64 %.095.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.c, !llvm.loop !351

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_114readVectorTypeEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_114readVectorTypeEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit": ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

.loopexit:                                        ; preds = %bb.g, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i8 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %0, ptr %4, align 8, !tbaa !227
  %i.ai = ptrtoint ptr %4 to i64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !183
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !179
  %i.al = zext i32 %i.ak to i64
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.am = call ptr @_ZN4mlir10VectorType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS1_8ArrayRefIlEENS_4TypeENS6_IbEE(ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZN12_GLOBAL__N_114readVectorTypeEPNS1_11MLIRContextERNS1_21DialectBytecodeReaderEE3$_1EES2_l", i64 %i.ai, ptr %i.aj, i64 %i.al, ptr %.sroa.0.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.352") align 8 %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_114readVectorTypeEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit", %bb.i
  %.sroa.07.0 = phi ptr [ %i.am, %bb.i ], [ null, %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_114readVectorTypeEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit" ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.an = load ptr, ptr %2, align 8, !tbaa !183   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.an) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::ArrayRef.352", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::FailureOr.381", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvm::FailureOr.362", align 2 ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.340", align 8 ; 11 uses
  %5 = alloca %"class.llvm::SmallVector.369", align 8 ; 11 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %7 = alloca %class.anon.567, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 40, ptr %i.g, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !179
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 6, ptr %i.j, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.k = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i8 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #17, !inline_history !352
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %"_ZN4mlir21DialectBytecodeReader8readListIbRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.d, align 8, !tbaa !27   ; 4 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !60
  %i.r = icmp ult i64 %i.q, %i.p
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i.i, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.e, i64 noundef %i.p, i64 noundef 1) #17
  br label %.lr.ph.i.i.preheader

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i:  ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.loopexit6, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.thread.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.f
  %.095.i.i = phi i64 [ %i.af, %bb.f ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i8 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #17, !inline_history !353 ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = load i8, ptr %i.c, align 1, !range !82   ; 2 uses
  %spec.select1.i.i.i = select i1 %i.w, i8 %i.x, i8 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i8 %i.v to i16
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i16 %.sroa.2.0.insert.ext.i.i.i, 8
  %i.y = zext i8 %spec.select1.i.i.i to i16
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i, %i.y
  store i16 %.sroa.0.0.insert.insert.i.i.i, ptr %3, align 2
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.z = load i64, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !60
  %.not.i.i.i = icmp ult i64 %i.z, %i.aa
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !182

bb.d:                                             ; preds = %bb.c
  %i.ab = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE18growAndEmplaceBackIJbEEERbDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %4, align 8, !tbaa !57
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.z
  store i8 %i.x, ptr %i.ad, align 1, !tbaa !80
  %i.ae = add nuw i64 %i.z, 1
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.af = add nuw i64 %.095.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond.not.i.i, label %.loopexit6, label %.lr.ph.i.i, !llvm.loop !354

bb.g:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %"_ZN4mlir21DialectBytecodeReader8readListIbRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

"_ZN4mlir21DialectBytecodeReader8readListIbRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit": ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.p

.loopexit6:                                       ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ag = load ptr, ptr %0, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !355
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

bb.h:                                             ; preds = %.loopexit6
  %i.al = load i64, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.am = load i32, ptr %i.j, align 4, !tbaa !181
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.h, i64 noundef %i.al, i64 noundef 8) #17
  br label %.lr.ph.i.i14

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i:  ; preds = %bb.h
  %.not.i.i13 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i13, label %.loopexit, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i14
  %.095.i.i15 = phi i64 [ 0, %.lr.ph.i.i14 ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aq = load ptr, ptr %0, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i8 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !356 ; 2 uses
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  %i.av = load i64, ptr %i.a, align 8             ; 2 uses
  %spec.select1.i.i.i.a = select i1 %i.au, i64 %i.av, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i64 %spec.select1.i.i.i.a, ptr %2, align 8
  store i8 %i.at, ptr %i.ap, align 8
  br i1 %i.au, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !179 ; 3 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !181
  %.not.i.i.i16 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i.i16, label %bb.l, label %bb.k, !prof !182

bb.k:                                             ; preds = %bb.j
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18growAndEmplaceBackIJlEEERlDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = zext i32 %i.aw to i64
  %i.ba = load ptr, ptr %5, align 8, !tbaa !183
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !27
  %i.bc = add nuw i32 %i.aw, 1
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !179
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bd = add nuw i64 %.095.i.i15, 1              ; 2 uses
  %exitcond.not.i.i17 = icmp eq i64 %i.bd, %i.al
  br i1 %exitcond.not.i.i17, label %.loopexit, label %bb.i, !llvm.loop !357

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit"

"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit": ; preds = %.loopexit6, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

.loopexit:                                        ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.be = load ptr, ptr %0, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %0, ptr %7, align 8, !tbaa !227
  %i.bj = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bk = load ptr, ptr %5, align 8, !tbaa !183
  %i.bl = load i32, ptr %i.i, align 8, !tbaa !179
  %i.bm = zext i32 %i.bl to i64
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8, !tbaa !121
  %i.bn = load ptr, ptr %4, align 8, !tbaa !57
  store ptr %i.bn, ptr %1, align 8, !tbaa !358
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !361
  %i.bq = call ptr @_ZN4mlir10VectorType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS1_8ArrayRefIlEENS_4TypeENS6_IbEE(ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS1_11MLIRContextERNS1_21DialectBytecodeReaderEE3$_2EES2_l", i64 %i.bj, ptr %i.bk, i64 %i.bm, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.352") align 8 %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %"_ZN4mlir21DialectBytecodeReader8readListIbRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit", %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit", %bb.o
  %.sroa.010.0 = phi ptr [ %i.bq, %bb.o ], [ null, %"_ZN4mlir21DialectBytecodeReader8readListIlRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_1EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit" ], [ null, %"_ZN4mlir21DialectBytecodeReader8readListIbRZN12_GLOBAL__N_130readVectorTypeWithScalableDimsEPNS_11MLIRContextERS0_E3$_0EEN4llvm13LogicalResultERNS8_15SmallVectorImplIT_EEOT0_.exit" ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.br = load ptr, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.h
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.br) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bt = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.e
  br i1 %i.bu, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.bt) #17
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_113readGraphTypeEPN4mlir11MLIRContextERNS0_21DialectBytecodeReaderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %3 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.401", align 8 ; 11 uses
  %7 = alloca %"class.llvm::SmallVector.401", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !179
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 6, ptr %i.e, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !183
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 6, ptr %i.h, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.i = load ptr, ptr %1, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i8 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !334
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %_ZN4mlir21DialectBytecodeReader9readTypesINS_4TypeEEEN4llvm13LogicalResultERNS3_15SmallVectorImplIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !181
  %i.p = zext i32 %i.o to i64
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.thread.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.c, i64 noundef %i.n, i64 noundef 8) #17
  br label %.lr.ph.i.i.i.preheader

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %.loopexit20, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.thread.i.i.i
  br label %.lr.ph.i.i.i
end_hunk_1
